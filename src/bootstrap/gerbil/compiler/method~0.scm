(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770326748)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161502%_)
        (let* ((_%self161504%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161506%_
                (let ((__tmp161724 (gxc#stx-car-e _%stx161502%_)))
                  (declare (not safe))
                  (method-ref _%self161504%_ __tmp161724))))
          (if _%$e161506%_
              ((lambda (_%method161509%_)
                 (declare (not safe))
                 (let ((_%$e161512%_ (gx#stx-source _%stx161502%_)))
                   (if _%$e161512%_
                       ((lambda (_%source161515%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161509%_ _%self161504%_ _%stx161502%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161515%_ '()))
                                 (let ((_%$e161519%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161519%_ _%$e161519%_ '())))))
                        _%$e161512%_)
                       (_%method161509%_ _%self161504%_ _%stx161502%_))))
               _%$e161506%_)
              (let ((__tmp161726 (gxc#stx-car-e _%stx161502%_))
                    (__tmp161725
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161502%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161504%_
                       __tmp161726
                       __tmp161725))))))
    (define gxc#compile-e__1
      (lambda (_%self161524%_ _%stx161525%_)
        (let ((_%$e161527%_
               (let ((__tmp161727 (gxc#stx-car-e _%stx161525%_)))
                 (declare (not safe))
                 (method-ref _%self161524%_ __tmp161727))))
          (if _%$e161527%_
              ((lambda (_%method161530%_)
                 (declare (not safe))
                 (let ((_%$e161533%_ (gx#stx-source _%stx161525%_)))
                   (if _%$e161533%_
                       ((lambda (_%source161536%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161530%_ _%self161524%_ _%stx161525%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161536%_ '()))
                                 (let ((_%$e161540%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161540%_ _%$e161540%_ '())))))
                        _%$e161533%_)
                       (_%method161530%_ _%self161524%_ _%stx161525%_))))
               _%$e161527%_)
              (let ((__tmp161729 (gxc#stx-car-e _%stx161525%_))
                    (__tmp161728
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161525%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161524%_
                       __tmp161729
                       __tmp161728))))))
    (define gxc#compile-e
      (lambda _g161730_
        (let ((_g161731_ (let () (declare (not safe)) (##length _g161730_))))
          (cond ((let () (declare (not safe)) (##fx= _g161731_ 1))
                 (apply gxc#compile-e__0 _g161730_))
                ((let () (declare (not safe)) (##fx= _g161731_ 2))
                 (apply gxc#compile-e__1 _g161730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161730_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161500%_)
        (let ((__tmp161732
               (car (let () (declare (not safe)) (gx#stx-e _%stx161500%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161732))))
    (define gxc#void-method (lambda (_%self161497%_ _%stx161498%_) '#!void))
    (define gxc#false-method (lambda (_%self161494%_ _%stx161495%_) '#f))
    (define gxc#true-method (lambda (_%self161491%_ _%stx161492%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161488%_ _%stx161489%_) _%stx161489%_))
    (define gxc#::void-expression::t
      (let ((__tmp161733 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161733
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161485%_
        (apply make-instance gxc#::void-expression::t _%$args161485%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161734
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
        (__make-atomic-promise __tmp161734)))
    (define gxc#::void-special-form::t
      (let ((__tmp161735 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161735
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161481%_
        (apply make-instance gxc#::void-special-form::t _%$args161481%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161736
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
        (__make-atomic-promise __tmp161736)))
    (define gxc#::void::t
      (let ((__tmp161737
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161737 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161477%_
        (apply make-instance gxc#::void::t _%$args161477%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161738
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161738)))
    (define gxc#::false-expression::t
      (let ((__tmp161739 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161739
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161473%_
        (apply make-instance gxc#::false-expression::t _%$args161473%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161740
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
        (__make-atomic-promise __tmp161740)))
    (define gxc#::false-special-form::t
      (let ((__tmp161741 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161741
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161469%_
        (apply make-instance gxc#::false-special-form::t _%$args161469%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161742
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
        (__make-atomic-promise __tmp161742)))
    (define gxc#::false::t
      (let ((__tmp161743
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161743 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161465%_
        (apply make-instance gxc#::false::t _%$args161465%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161744
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161744)))
    (define gxc#::identity-expression::t
      (let ((__tmp161745 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161745
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161461%_
        (apply make-instance gxc#::identity-expression::t _%$args161461%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161746
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
        (__make-atomic-promise __tmp161746)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161747 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161747
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161457%_
        (apply make-instance gxc#::identity-special-form::t _%$args161457%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161748
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
        (__make-atomic-promise __tmp161748)))
    (define gxc#::identity::t
      (let ((__tmp161749
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161749
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161453%_
        (apply make-instance gxc#::identity::t _%$args161453%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161750
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161750)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161751 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161751
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161449%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161449%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161752
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
        (__make-atomic-promise __tmp161752)))
    (define gxc#::basic-xform::t
      (let ((__tmp161753
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161753
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161445%_
        (apply make-instance gxc#::basic-xform::t _%$args161445%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161754
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
        (__make-atomic-promise __tmp161754)))
    (define gxc#apply-begin%
      (lambda (_%self161401%_ _%stx161402%_)
        (let* ((_%g161404161414%_
                (lambda (_%g161405161411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161405161411%_))))
               (_%g161403161441%_
                (lambda (_%g161405161417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161405161417%_))
                      (let ((_%e161407161419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161405161417%_))))
                        (let ((_%hd161408161422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161407161419%_)))
                              (_%tl161409161424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161407161419%_))))
                          ((lambda (_%g161406161427%_)
                             (for-each
                              (lambda (_%g161436161438%_)
                                (gxc#compile-e__1
                                 _%self161401%_
                                 _%g161436161438%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161406161427%_))))
                           _%tl161409161424%_)))
                      (_%g161404161414%_ _%g161405161417%_)))))
          (_%g161403161441%_ _%stx161402%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161362%_ _%stx161363%_)
        (let* ((_%g161365161375%_
                (lambda (_%g161366161372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161366161372%_))))
               (_%g161364161398%_
                (lambda (_%g161366161378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161366161378%_))
                      (let ((_%e161368161380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161366161378%_))))
                        (let ((_%hd161369161383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161368161380%_)))
                              (_%tl161370161385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161368161380%_))))
                          ((lambda (_%g161367161388%_)
                             (gxc#compile-e__1
                              _%self161362%_
                              (last _%g161367161388%_)))
                           _%tl161370161385%_)))
                      (_%g161365161375%_ _%g161366161378%_)))))
          (_%g161364161398%_ _%stx161363%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161358%_ _%stx161359%_)
        (let ((__tmp161757
               (lambda () (gxc#apply-begin% _%self161358%_ _%stx161359%_)))
              (__tmp161755
               (let ((__tmp161756
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161756 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161757
           gx#current-expander-phi
           __tmp161755))))
    (define gxc#apply-module%
      (lambda (_%self161297%_ _%stx161298%_)
        (let* ((_%g161300161314%_
                (lambda (_%g161301161311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161301161311%_))))
               (_%g161299161355%_
                (lambda (_%g161301161317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161301161317%_))
                      (let ((_%e161304161319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161301161317%_))))
                        (let ((_%hd161305161322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161304161319%_)))
                              (_%tl161306161324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161304161319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161306161324%_))
                              (let ((_%e161307161327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161306161324%_))))
                                (let ((_%hd161308161330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161307161327%_)))
                                      (_%tl161309161332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161307161327%_))))
                                  ((lambda (_%g161302161335%_
                                            _%g161303161336%_)
                                     (let* ((_%ctx161349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161303161336%_)))
                                            (_%ctx-stx161351%_
                                             (##structure-ref
                                              _%ctx161349%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161758
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161297%_
                                                _%ctx-stx161351%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161758
                                        gx#current-expander-context
                                        _%ctx161349%_)))
                                   _%tl161309161332%_
                                   _%hd161308161330%_)))
                              (_%g161300161314%_ _%g161301161317%_))))
                      (_%g161300161314%_ _%g161301161317%_)))))
          (_%g161299161355%_ _%stx161298%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161229%_ _%stx161230%_)
        (let* ((_%g161232161249%_
                (lambda (_%g161233161246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161233161246%_))))
               (_%g161231161294%_
                (lambda (_%g161233161252%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161233161252%_))
                      (let ((_%e161236161254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161233161252%_))))
                        (let ((_%hd161237161257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161236161254%_)))
                              (_%tl161238161259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161236161254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161238161259%_))
                              (let ((_%e161239161262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161238161259%_))))
                                (let ((_%hd161240161265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161239161262%_)))
                                      (_%tl161241161267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161239161262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161241161267%_))
                                      (let ((_%e161242161270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161241161267%_))))
                                        (let ((_%hd161243161273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161242161270%_)))
                                              (_%tl161244161275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161242161270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161244161275%_))
                                              ((lambda (_%g161234161278%_
                                                        _%g161235161279%_)
                                                 (gxc#compile-e__1
                                                  _%self161229%_
                                                  _%g161234161278%_))
                                               _%hd161243161273%_
                                               _%hd161240161265%_)
                                              (_%g161232161249%_
                                               _%g161233161252%_))))
                                      (_%g161232161249%_ _%g161233161252%_))))
                              (_%g161232161249%_ _%g161233161252%_))))
                      (_%g161232161249%_ _%g161233161252%_)))))
          (_%g161231161294%_ _%stx161230%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161161%_ _%stx161162%_)
        (let* ((_%g161164161181%_
                (lambda (_%g161165161178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161165161178%_))))
               (_%g161163161226%_
                (lambda (_%g161165161184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161165161184%_))
                      (let ((_%e161168161186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161165161184%_))))
                        (let ((_%hd161169161189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161168161186%_)))
                              (_%tl161170161191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161168161186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161170161191%_))
                              (let ((_%e161171161194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161170161191%_))))
                                (let ((_%hd161172161197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161171161194%_)))
                                      (_%tl161173161199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161171161194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161173161199%_))
                                      (let ((_%e161174161202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161173161199%_))))
                                        (let ((_%hd161175161205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161174161202%_)))
                                              (_%tl161176161207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161174161202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161176161207%_))
                                              ((lambda (_%g161166161210%_
                                                        _%g161167161211%_)
                                                 (gxc#compile-e__1
                                                  _%self161161%_
                                                  _%g161166161210%_))
                                               _%hd161175161205%_
                                               _%hd161172161197%_)
                                              (_%g161164161181%_
                                               _%g161165161184%_))))
                                      (_%g161164161181%_ _%g161165161184%_))))
                              (_%g161164161181%_ _%g161165161184%_))))
                      (_%g161164161181%_ _%g161165161184%_)))))
          (_%g161163161226%_ _%stx161162%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161092%_ _%stx161093%_)
        (let* ((_%g161095161112%_
                (lambda (_%g161096161109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161096161109%_))))
               (_%g161094161158%_
                (lambda (_%g161096161115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161096161115%_))
                      (let ((_%e161099161117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161096161115%_))))
                        (let ((_%hd161100161120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161099161117%_)))
                              (_%tl161101161122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161099161117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161101161122%_))
                              (let ((_%e161102161125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161101161122%_))))
                                (let ((_%hd161103161128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161102161125%_)))
                                      (_%tl161104161130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161102161125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161104161130%_))
                                      (let ((_%e161105161133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161104161130%_))))
                                        (let ((_%hd161106161136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161105161133%_)))
                                              (_%tl161107161138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161105161133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161107161138%_))
                                              ((lambda (_%g161097161141%_
                                                        _%g161098161142%_)
                                                 (let ((__tmp161761
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161092%_
                                                           _%g161097161141%_)))
                                                       (__tmp161759
                                                        (let ((__tmp161760
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161760 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161761
                                                    gx#current-expander-phi
                                                    __tmp161759)))
                                               _%hd161106161136%_
                                               _%hd161103161128%_)
                                              (_%g161095161112%_
                                               _%g161096161115%_))))
                                      (_%g161095161112%_ _%g161096161115%_))))
                              (_%g161095161112%_ _%g161096161115%_))))
                      (_%g161095161112%_ _%g161096161115%_)))))
          (_%g161094161158%_ _%stx161093%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161024%_ _%stx161025%_)
        (let* ((_%g161027161044%_
                (lambda (_%g161028161041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161028161041%_))))
               (_%g161026161089%_
                (lambda (_%g161028161047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161028161047%_))
                      (let ((_%e161031161049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161028161047%_))))
                        (let ((_%hd161032161052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161031161049%_)))
                              (_%tl161033161054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161031161049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161033161054%_))
                              (let ((_%e161034161057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161033161054%_))))
                                (let ((_%hd161035161060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161034161057%_)))
                                      (_%tl161036161062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161034161057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161036161062%_))
                                      (let ((_%e161037161065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161036161062%_))))
                                        (let ((_%hd161038161068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161037161065%_)))
                                              (_%tl161039161070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161037161065%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161039161070%_))
                                              ((lambda (_%g161029161073%_
                                                        _%g161030161074%_)
                                                 (gxc#compile-e__1
                                                  _%self161024%_
                                                  _%g161029161073%_))
                                               _%hd161038161068%_
                                               _%hd161035161060%_)
                                              (_%g161027161044%_
                                               _%g161028161047%_))))
                                      (_%g161027161044%_ _%g161028161047%_))))
                              (_%g161027161044%_ _%g161028161047%_))))
                      (_%g161027161044%_ _%g161028161047%_)))))
          (_%g161026161089%_ _%stx161025%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self160910%_ _%stx160911%_)
        (let* ((_%g160913160941%_
                (lambda (_%g160914160938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160914160938%_))))
               (_%g160912161021%_
                (lambda (_%g160914160944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160914160944%_))
                      (let ((_%e160917160946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160914160944%_))))
                        (let ((_%hd160918160949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160917160946%_)))
                              (_%tl160919160951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160917160946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160919160951%_))
                              (let ((_g161762_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160919160951%_
                                        '0))))
                                (begin
                                  (let ((_g161763_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161762_)
                                               (##values-length _g161762_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161763_ 2)))
                                        (error "Context expects 2 values"
                                               _g161763_)))
                                  (let ((_%target160920160954%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161762_ 0)))
                                        (_%tl160922160956%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161762_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160922160956%_))
                                        (letrec ((_%loop160923160959%_
                                                  (lambda (_%hd160921160962%_
                                                           _%body160927160964%_
                                                           _%hd160928160965%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160921160962%_))
                                                        (let ((_%e160924160967%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160921160962%_))))
                  (let ((_%lp-hd160925160970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160924160967%_)))
                        (_%lp-tl160926160972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160924160967%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd160925160970%_))
                        (let ((_%e160931160975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd160925160970%_))))
                          (let ((_%hd160932160978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160931160975%_)))
                                (_%tl160933160980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160931160975%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl160933160980%_))
                                (let ((_%e160934160983%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl160933160980%_))))
                                  (let ((_%hd160935160986%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160934160983%_)))
                                        (_%tl160936160988%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160934160983%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160936160988%_))
                                        (_%loop160923160959%_
                                         _%lp-tl160926160972%_
                                         (cons _%hd160935160986%_
                                               _%body160927160964%_)
                                         (cons _%hd160932160978%_
                                               _%hd160928160965%_))
                                        (_%g160913160941%_
                                         _%g160914160944%_))))
                                (_%g160913160941%_ _%g160914160944%_))))
                        (_%g160913160941%_ _%g160914160944%_))))
                (let ((_%body160929160991%_ (reverse _%body160927160964%_))
                      (_%hd160930160992%_ (reverse _%hd160928160965%_)))
                  ((lambda (_%g160915160994%_ _%g160916160995%_)
                     (for-each
                      (lambda (_%g161009161011%_)
                        (gxc#compile-e__1 _%self160910%_ _%g161009161011%_))
                      (let ((__tmp161764
                             (lambda (_%g161013161016%_ _%g161014161018%_)
                               (cons _%g161013161016%_ _%g161014161018%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161764 '() _%g160915160994%_))))
                   _%body160929160991%_
                   _%hd160930160992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160923160959%_
                                           _%target160920160954%_
                                           '()
                                           '()))
                                        (_%g160913160941%_
                                         _%g160914160944%_)))))
                              (_%g160913160941%_ _%g160914160944%_))))
                      (_%g160913160941%_ _%g160914160944%_)))))
          (_%g160912161021%_ _%stx160911%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160767%_ _%stx160768%_)
        (let* ((_%g160770160805%_
                (lambda (_%g160771160802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160771160802%_))))
               (_%g160769160907%_
                (lambda (_%g160771160808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160771160808%_))
                      (let ((_%e160775160810%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160771160808%_))))
                        (let ((_%hd160776160813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160775160810%_)))
                              (_%tl160777160815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160775160810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160777160815%_))
                              (let ((_%e160778160818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160777160815%_))))
                                (let ((_%hd160779160821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160778160818%_)))
                                      (_%tl160780160823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160778160818%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160779160821%_))
                                      (let ((_g161765_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160779160821%_
                                                '0))))
                                        (begin
                                          (let ((_g161766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161765_)
                                                       (##values-length
                                                        _g161765_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161766_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161766_)))
                                          (let ((_%target160781160826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161765_ 0)))
                                                (_%tl160783160828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161765_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160783160828%_))
                                                (letrec ((_%loop160784160831%_
                                                          (lambda (_%hd160782160834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160788160836%_
                           _%hd160789160837%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160782160834%_))
                        (let ((_%e160785160839%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160782160834%_))))
                          (let ((_%lp-hd160786160842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160785160839%_)))
                                (_%lp-tl160787160844%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160785160839%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160786160842%_))
                                (let ((_%e160792160847%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160786160842%_))))
                                  (let ((_%hd160793160850%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160792160847%_)))
                                        (_%tl160794160852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160792160847%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160794160852%_))
                                        (let ((_%e160795160855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160794160852%_))))
                                          (let ((_%hd160796160858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160795160855%_)))
                                                (_%tl160797160860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160795160855%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160797160860%_))
                                                (_%loop160784160831%_
                                                 _%lp-tl160787160844%_
                                                 (cons _%hd160796160858%_
                                                       _%expr160788160836%_)
                                                 (cons _%hd160793160850%_
                                                       _%hd160789160837%_))
                                                (_%g160770160805%_
                                                 _%g160771160808%_))))
                                        (_%g160770160805%_
                                         _%g160771160808%_))))
                                (_%g160770160805%_ _%g160771160808%_))))
                        (let ((_%expr160790160863%_
                               (reverse _%expr160788160836%_))
                              (_%hd160791160864%_
                               (reverse _%hd160789160837%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160780160823%_))
                              (let ((_%e160798160866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160780160823%_))))
                                (let ((_%hd160799160869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160798160866%_)))
                                      (_%tl160800160871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160798160866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160800160871%_))
                                      ((lambda (_%g160772160874%_
                                                _%g160773160875%_
                                                _%g160774160876%_)
                                         (for-each
                                          (lambda (_%g160895160897%_)
                                            (gxc#compile-e__1
                                             _%self160767%_
                                             _%g160895160897%_))
                                          (let ((__tmp161768
                                                 (lambda (_%g160899160902%_
                                                          _%g160900160904%_)
                                                   (cons _%g160899160902%_
                                                         _%g160900160904%_)))
                                                (__tmp161767
                                                 (cons _%g160772160874%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161768
                                             __tmp161767
                                             _%g160773160875%_))))
                                       _%hd160799160869%_
                                       _%expr160790160863%_
                                       _%hd160791160864%_)
                                      (_%g160770160805%_ _%g160771160808%_))))
                              (_%g160770160805%_ _%g160771160808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160784160831%_
                                                   _%target160781160826%_
                                                   '()
                                                   '()))
                                                (_%g160770160805%_
                                                 _%g160771160808%_)))))
                                      (_%g160770160805%_ _%g160771160808%_))))
                              (_%g160770160805%_ _%g160771160808%_))))
                      (_%g160770160805%_ _%g160771160808%_)))))
          (_%g160769160907%_ _%stx160768%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160712%_ _%stx160713%_)
        (let* ((_%g160715160729%_
                (lambda (_%g160716160726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160716160726%_))))
               (_%g160714160764%_
                (lambda (_%g160716160732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160716160732%_))
                      (let ((_%e160719160734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160716160732%_))))
                        (let ((_%hd160720160737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160719160734%_)))
                              (_%tl160721160739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160719160734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160721160739%_))
                              (let ((_%e160722160742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160721160739%_))))
                                (let ((_%hd160723160745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160722160742%_)))
                                      (_%tl160724160747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160722160742%_))))
                                  ((lambda (_%g160717160750%_
                                            _%g160718160751%_)
                                     (gxc#compile-e__1
                                      _%self160712%_
                                      (last _%g160717160750%_)))
                                   _%tl160724160747%_
                                   _%hd160723160745%_)))
                              (_%g160715160729%_ _%g160716160732%_))))
                      (_%g160715160729%_ _%g160716160732%_)))))
          (_%g160714160764%_ _%stx160713%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160644%_ _%stx160645%_)
        (let* ((_%g160647160664%_
                (lambda (_%g160648160661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160648160661%_))))
               (_%g160646160709%_
                (lambda (_%g160648160667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160648160667%_))
                      (let ((_%e160651160669%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160648160667%_))))
                        (let ((_%hd160652160672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160651160669%_)))
                              (_%tl160653160674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160651160669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160653160674%_))
                              (let ((_%e160654160677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160653160674%_))))
                                (let ((_%hd160655160680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160654160677%_)))
                                      (_%tl160656160682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160654160677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160656160682%_))
                                      (let ((_%e160657160685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160656160682%_))))
                                        (let ((_%hd160658160688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160657160685%_)))
                                              (_%tl160659160690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160657160685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160659160690%_))
                                              ((lambda (_%g160649160693%_
                                                        _%g160650160694%_)
                                                 (gxc#compile-e__1
                                                  _%self160644%_
                                                  _%g160649160693%_))
                                               _%hd160658160688%_
                                               _%hd160655160680%_)
                                              (_%g160647160664%_
                                               _%g160648160667%_))))
                                      (_%g160647160664%_ _%g160648160667%_))))
                              (_%g160647160664%_ _%g160648160667%_))))
                      (_%g160647160664%_ _%g160648160667%_)))))
          (_%g160646160709%_ _%stx160645%_))))
    (define gxc#apply-operands
      (lambda (_%self160559%_ _%stx160560%_)
        (let* ((_%g160562160581%_
                (lambda (_%g160563160578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160563160578%_))))
               (_%g160561160641%_
                (lambda (_%g160563160584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160563160584%_))
                      (let ((_%e160565160586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160563160584%_))))
                        (let ((_%hd160566160589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160565160586%_)))
                              (_%tl160567160591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160565160586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160567160591%_))
                              (let ((_g161769_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160567160591%_
                                        '0))))
                                (begin
                                  (let ((_g161770_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161769_)
                                               (##values-length _g161769_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161770_ 2)))
                                        (error "Context expects 2 values"
                                               _g161770_)))
                                  (let ((_%target160568160594%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161769_ 0)))
                                        (_%tl160570160596%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161769_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160570160596%_))
                                        (letrec ((_%loop160571160599%_
                                                  (lambda (_%hd160569160602%_
                                                           _%rands160575160604%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160569160602%_))
                                                        (let ((_%e160572160606%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160569160602%_))))
                  (let ((_%lp-hd160573160609%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160572160606%_)))
                        (_%lp-tl160574160611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160572160606%_))))
                    (_%loop160571160599%_
                     _%lp-tl160574160611%_
                     (cons _%lp-hd160573160609%_ _%rands160575160604%_))))
                (let ((_%rands160576160614%_ (reverse _%rands160575160604%_)))
                  ((lambda (_%g160564160616%_)
                     (for-each
                      (lambda (_%g160629160631%_)
                        (gxc#compile-e__1 _%self160559%_ _%g160629160631%_))
                      (let ((__tmp161771
                             (lambda (_%g160633160636%_ _%g160634160638%_)
                               (cons _%g160633160636%_ _%g160634160638%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161771 '() _%g160564160616%_))))
                   _%rands160576160614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160571160599%_
                                           _%target160568160594%_
                                           '()))
                                        (_%g160562160581%_
                                         _%g160563160584%_)))))
                              (_%g160562160581%_ _%g160563160584%_))))
                      (_%g160562160581%_ _%g160563160584%_)))))
          (_%g160561160641%_ _%stx160560%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160556%_ _%src-stx160557%_)
        (let ((__tmp161772
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160557%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160556%_ __tmp161772))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160552%_ _%src-stx160553%_ _%ctx160554%_)
        (gxc#compile-e__1
         _%ctx160554%_
         (gxc#xform-wrap-source _%stx160552%_ _%src-stx160553%_))))
    (define gxc#xform-begin%
      (lambda (_%self160507%_ _%stx160508%_)
        (let* ((_%g160510160520%_
                (lambda (_%g160511160517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160511160517%_))))
               (_%g160509160549%_
                (lambda (_%g160511160523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160511160523%_))
                      (let ((_%e160513160525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160511160523%_))))
                        (let ((_%hd160514160528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160513160525%_)))
                              (_%tl160515160530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160513160525%_))))
                          ((lambda (_%g160512160533%_)
                             (let ((_%forms160547%_
                                    (map (lambda (_%g160542160544%_)
                                           (gxc#compile-e__1
                                            _%self160507%_
                                            _%g160542160544%_))
                                         _%g160512160533%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160547%_)
                                _%stx160508%_)))
                           _%tl160515160530%_)))
                      (_%g160510160520%_ _%g160511160523%_)))))
          (_%g160509160549%_ _%stx160508%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160461%_ _%stx160462%_)
        (let* ((_%g160464160474%_
                (lambda (_%g160465160471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160465160471%_))))
               (_%g160463160504%_
                (lambda (_%g160465160477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160465160477%_))
                      (let ((_%e160467160479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160465160477%_))))
                        (let ((_%hd160468160482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160467160479%_)))
                              (_%tl160469160484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160467160479%_))))
                          ((lambda (_%g160466160487%_)
                             (let ((__tmp161775
                                    (lambda ()
                                      (let ((_%forms160502%_
                                             (map (lambda (_%g160497160499%_)
                                                    (gxc#compile-e__1
                                                     _%self160461%_
                                                     _%g160497160499%_))
                                                  _%g160466160487%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160502%_)
                                         _%stx160462%_))))
                                   (__tmp161773
                                    (let ((__tmp161774
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161774 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161775
                                gx#current-expander-phi
                                __tmp161773)))
                           _%tl160469160484%_)))
                      (_%g160464160474%_ _%g160465160477%_)))))
          (_%g160463160504%_ _%stx160462%_))))
    (define gxc#xform-module%
      (lambda (_%self160398%_ _%stx160399%_)
        (let* ((_%g160401160415%_
                (lambda (_%g160402160412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160402160412%_))))
               (_%g160400160458%_
                (lambda (_%g160402160418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160402160418%_))
                      (let ((_%e160405160420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160402160418%_))))
                        (let ((_%hd160406160423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160405160420%_)))
                              (_%tl160407160425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160405160420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160407160425%_))
                              (let ((_%e160408160428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160407160425%_))))
                                (let ((_%hd160409160431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160408160428%_)))
                                      (_%tl160410160433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160408160428%_))))
                                  ((lambda (_%g160403160436%_
                                            _%g160404160437%_)
                                     (let* ((_%ctx160450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160404160437%_)))
                                            (_%code160452%_
                                             (##structure-ref
                                              _%ctx160450%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160455%_
                                             (let ((__tmp161776
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160398%_
                                                       _%code160452%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161776
                                                gx#current-expander-context
                                                _%ctx160450%_))))
                                       (##structure-set!
                                        _%ctx160450%_
                                        _%code160455%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160404160437%_
                                                    (cons _%code160455%_ '())))
                                        _%stx160399%_)))
                                   _%tl160410160433%_
                                   _%hd160409160431%_)))
                              (_%g160401160415%_ _%g160402160418%_))))
                      (_%g160401160415%_ _%g160402160418%_)))))
          (_%g160400160458%_ _%stx160399%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160328%_ _%stx160329%_)
        (let* ((_%g160331160348%_
                (lambda (_%g160332160345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160332160345%_))))
               (_%g160330160395%_
                (lambda (_%g160332160351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160332160351%_))
                      (let ((_%e160335160353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160332160351%_))))
                        (let ((_%hd160336160356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160335160353%_)))
                              (_%tl160337160358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160335160353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160337160358%_))
                              (let ((_%e160338160361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160337160358%_))))
                                (let ((_%hd160339160364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160338160361%_)))
                                      (_%tl160340160366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160338160361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160340160366%_))
                                      (let ((_%e160341160369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160340160366%_))))
                                        (let ((_%hd160342160372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160341160369%_)))
                                              (_%tl160343160374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160341160369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160343160374%_))
                                              ((lambda (_%g160333160377%_
                                                        _%g160334160378%_)
                                                 (let ((_%expr160393%_
                                                        (gxc#compile-e__1
                                                         _%self160328%_
                                                         _%g160333160377%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160334160378%_
                                                                (cons _%expr160393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160329%_)))
                                               _%hd160342160372%_
                                               _%hd160339160364%_)
                                              (_%g160331160348%_
                                               _%g160332160351%_))))
                                      (_%g160331160348%_ _%g160332160351%_))))
                              (_%g160331160348%_ _%g160332160351%_))))
                      (_%g160331160348%_ _%g160332160351%_)))))
          (_%g160330160395%_ _%stx160329%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160257%_ _%stx160258%_)
        (let* ((_%g160260160277%_
                (lambda (_%g160261160274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160261160274%_))))
               (_%g160259160325%_
                (lambda (_%g160261160280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160261160280%_))
                      (let ((_%e160264160282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160261160280%_))))
                        (let ((_%hd160265160285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160264160282%_)))
                              (_%tl160266160287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160264160282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160266160287%_))
                              (let ((_%e160267160290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160266160287%_))))
                                (let ((_%hd160268160293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160267160290%_)))
                                      (_%tl160269160295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160267160290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160269160295%_))
                                      (let ((_%e160270160298%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160269160295%_))))
                                        (let ((_%hd160271160301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160270160298%_)))
                                              (_%tl160272160303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160270160298%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160272160303%_))
                                              ((lambda (_%g160262160306%_
                                                        _%g160263160307%_)
                                                 (let ((__tmp161779
                                                        (lambda ()
                                                          (let ((_%expr160323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160257%_ _%g160262160306%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160263160307%_ (cons _%expr160323%_ '())))
                     _%stx160258%_))))
               (__tmp161777
                (let ((__tmp161778
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161778 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161779
                                                    gx#current-expander-phi
                                                    __tmp161777)))
                                               _%hd160271160301%_
                                               _%hd160268160293%_)
                                              (_%g160260160277%_
                                               _%g160261160280%_))))
                                      (_%g160260160277%_ _%g160261160280%_))))
                              (_%g160260160277%_ _%g160261160280%_))))
                      (_%g160260160277%_ _%g160261160280%_)))))
          (_%g160259160325%_ _%stx160258%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160187%_ _%stx160188%_)
        (let* ((_%g160190160207%_
                (lambda (_%g160191160204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160191160204%_))))
               (_%g160189160254%_
                (lambda (_%g160191160210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160191160210%_))
                      (let ((_%e160194160212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160191160210%_))))
                        (let ((_%hd160195160215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160194160212%_)))
                              (_%tl160196160217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160194160212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160196160217%_))
                              (let ((_%e160197160220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160196160217%_))))
                                (let ((_%hd160198160223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160197160220%_)))
                                      (_%tl160199160225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160197160220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160199160225%_))
                                      (let ((_%e160200160228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160199160225%_))))
                                        (let ((_%hd160201160231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160200160228%_)))
                                              (_%tl160202160233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160200160228%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160202160233%_))
                                              ((lambda (_%g160192160236%_
                                                        _%g160193160237%_)
                                                 (let ((_%expr160252%_
                                                        (gxc#compile-e__1
                                                         _%self160187%_
                                                         _%g160192160236%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160193160237%_
                                                                (cons _%expr160252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160188%_)))
                                               _%hd160201160231%_
                                               _%hd160198160223%_)
                                              (_%g160190160207%_
                                               _%g160191160210%_))))
                                      (_%g160190160207%_ _%g160191160210%_))))
                              (_%g160190160207%_ _%g160191160210%_))))
                      (_%g160190160207%_ _%g160191160210%_)))))
          (_%g160189160254%_ _%stx160188%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160125%_ _%stx160126%_)
        (let* ((_%g160128160142%_
                (lambda (_%g160129160139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160129160139%_))))
               (_%g160127160184%_
                (lambda (_%g160129160145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160129160145%_))
                      (let ((_%e160132160147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160129160145%_))))
                        (let ((_%hd160133160150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160132160147%_)))
                              (_%tl160134160152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160132160147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160134160152%_))
                              (let ((_%e160135160155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160134160152%_))))
                                (let ((_%hd160136160158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160135160155%_)))
                                      (_%tl160137160160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160135160155%_))))
                                  ((lambda (_%g160130160163%_
                                            _%g160131160164%_)
                                     (let ((__tmp161781
                                            (lambda ()
                                              (let ((_%body160182%_
                                                     (map (lambda (_%g160177160179%_)
                                                            (gxc#compile-e__1
                                                             _%self160125%_
                                                             _%g160177160179%_))
                                                          _%g160130160163%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160131160164%_
                                                             _%body160182%_))
                                                 _%stx160126%_))))
                                           (__tmp161780
                                            (gxc#xform-let-locals
                                             _%g160131160164%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161781
                                        gxc#current-compile-local-env
                                        __tmp161780)))
                                   _%tl160137160160%_
                                   _%hd160136160158%_)))
                              (_%g160128160142%_ _%g160129160145%_))))
                      (_%g160128160142%_ _%g160129160145%_)))))
          (_%g160127160184%_ _%stx160126%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160033%_ _%stx160034%_)
        (letrec ((_%clause-e160036%_
                  (lambda (_%clause160077%_)
                    (let* ((_%g160079160090%_
                            (lambda (_%g160080160087%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160080160087%_))))
                           (_%g160078160122%_
                            (lambda (_%g160080160093%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160080160093%_))
                                  (let ((_%e160083160095%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160080160093%_))))
                                    (let ((_%hd160084160098%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160083160095%_)))
                                          (_%tl160085160100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160083160095%_))))
                                      ((lambda (_%g160081160103%_
                                                _%g160082160104%_)
                                         (let ((__tmp161783
                                                (lambda ()
                                                  (let ((_%body160120%_
                                                         (map (lambda (_%g160115160117%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160033%_
                         _%g160115160117%_))
                      _%g160081160103%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160082160104%_
                                                          _%body160120%_))))
                                               (__tmp161782
                                                (gxc#xform-let-locals
                                                 _%g160082160104%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161783
                                            gxc#current-compile-local-env
                                            __tmp161782)))
                                       _%tl160085160100%_
                                       _%hd160084160098%_)))
                                  (_%g160079160090%_ _%g160080160093%_)))))
                      (_%g160078160122%_ _%clause160077%_)))))
          (let* ((_%g160038160048%_
                  (lambda (_%g160039160045%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160039160045%_))))
                 (_%g160037160074%_
                  (lambda (_%g160039160051%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160039160051%_))
                        (let ((_%e160041160053%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160039160051%_))))
                          (let ((_%hd160042160056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160041160053%_)))
                                (_%tl160043160058%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160041160053%_))))
                            ((lambda (_%g160040160061%_)
                               (let ((_%clauses160072%_
                                      (map _%clause-e160036%_
                                           _%g160040160061%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160072%_)
                                  _%stx160034%_)))
                             _%tl160043160058%_)))
                        (_%g160038160048%_ _%g160039160051%_)))))
            (_%g160037160074%_ _%stx160034%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159793%_ _%stx159794%_)
        (let* ((_%g159796159829%_
                (lambda (_%g159797159826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159797159826%_))))
               (_%g159795160030%_
                (lambda (_%g159797159832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159797159832%_))
                      (let ((_%e159802159834%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159797159832%_))))
                        (let ((_%hd159803159837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159802159834%_)))
                              (_%tl159804159839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159802159834%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159804159839%_))
                              (let ((_%e159805159842%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159804159839%_))))
                                (let ((_%hd159806159845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159805159842%_)))
                                      (_%tl159807159847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159805159842%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159806159845%_))
                                      (let ((_g161784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159806159845%_
                                                '0))))
                                        (begin
                                          (let ((_g161785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161784_)
                                                       (##values-length
                                                        _g161784_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161785_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161785_)))
                                          (let ((_%target159808159850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161784_ 0)))
                                                (_%tl159810159852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161784_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159810159852%_))
                                                (letrec ((_%loop159811159855%_
                                                          (lambda (_%hd159809159858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159815159860%_
                           _%hd159816159861%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159809159858%_))
                        (let ((_%e159812159863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159809159858%_))))
                          (let ((_%lp-hd159813159866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159812159863%_)))
                                (_%lp-tl159814159868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159812159863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159813159866%_))
                                (let ((_%e159819159871%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159813159866%_))))
                                  (let ((_%hd159820159874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159819159871%_)))
                                        (_%tl159821159876%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159819159871%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159821159876%_))
                                        (let ((_%e159822159879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159821159876%_))))
                                          (let ((_%hd159823159882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159822159879%_)))
                                                (_%tl159824159884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159822159879%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159824159884%_))
                                                (_%loop159811159855%_
                                                 _%lp-tl159814159868%_
                                                 (cons _%hd159823159882%_
                                                       _%expr159815159860%_)
                                                 (cons _%hd159820159874%_
                                                       _%hd159816159861%_))
                                                (_%g159796159829%_
                                                 _%g159797159832%_))))
                                        (_%g159796159829%_
                                         _%g159797159832%_))))
                                (_%g159796159829%_ _%g159797159832%_))))
                        (let ((_%expr159817159887%_
                               (reverse _%expr159815159860%_))
                              (_%hd159818159888%_
                               (reverse _%hd159816159861%_)))
                          ((lambda (_%g159798159890%_
                                    _%g159799159891%_
                                    _%g159800159892%_
                                    _%g159801159893%_)
                             (let* ((_%g159912159928%_
                                     (lambda (_%g159913159925%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g159913159925%_))))
                                    (_%g159911160016%_
                                     (lambda (_%g159913159931%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g159913159931%_))
                                           (let ((_g161786_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g159913159931%_
                                                     '0))))
                                             (begin
                                               (let ((_g161787_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161786_)
                                                            (##values-length
                                                             _g161786_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161787_)))
                                               (let ((_%target159915159933%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161786_
                                                         0)))
                                                     (_%tl159917159935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161786_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl159917159935%_))
                                                     (letrec ((_%loop159918159938%_
                                                               (lambda (_%hd159916159941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr159922159943%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd159916159941%_))
                             (let ((_%e159919159945%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd159916159941%_))))
                               (let ((_%lp-hd159920159948%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e159919159945%_)))
                                     (_%lp-tl159921159950%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e159919159945%_))))
                                 (_%loop159918159938%_
                                  _%lp-tl159921159950%_
                                  (cons _%lp-hd159920159948%_
                                        _%expr159922159943%_))))
                             (let ((_%expr159923159953%_
                                    (reverse _%expr159922159943%_)))
                               ((lambda (_%g159914159955%_)
                                  (let ((__tmp161790
                                         (lambda ()
                                           (let* ((_%g159969159976%_
                                                   (lambda (_%g159970159973%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159970159973%_))))
                                                  (_%g159968160002%_
                                                   (lambda (_%g159970159979%_)
                                                     ((lambda (_%g159971159981%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159801159893%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159914159955%_
                                  _%g159800159892%_))
                               (let ((__tmp161791
                                      (lambda (_%g159991159995%_
                                               _%g159992159997%_
                                               _%g159993159999%_)
                                        (cons (cons _%g159992159997%_
                                                    (cons _%g159991159995%_
                                                          '()))
                                              _%g159993159999%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161791
                                  '()
                                  _%g159914159955%_
                                  _%g159800159892%_)))
                             _%g159971159981%_))
                 _%stx159794%_))
              _%g159970159979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159968160002%_
                                              (map (lambda (_%g160004160006%_)
                                                     (gxc#compile-e__1
                                                      _%self159793%_
                                                      _%g160004160006%_))
                                                   _%g159798159890%_)))))
                                        (__tmp161788
                                         (gxc#xform-let-locals
                                          (let ((__tmp161789
                                                 (lambda (_%g160008160011%_
                                                          _%g160009160013%_)
                                                   (cons _%g160008160011%_
                                                         _%g160009160013%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161789
                                             '()
                                             _%g159800159892%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161790
                                     gxc#current-compile-local-env
                                     __tmp161788)))
                                _%expr159923159953%_))))))
               (_%loop159918159938%_ _%target159915159933%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g159912159928%_
                                                      _%g159913159931%_)))))
                                           (_%g159912159928%_
                                            _%g159913159931%_)))))
                               (_%g159911160016%_
                                (map (lambda (_%g160018160020%_)
                                       (gxc#compile-e__1
                                        _%self159793%_
                                        _%g160018160020%_))
                                     (let ((__tmp161792
                                            (lambda (_%g160022160025%_
                                                     _%g160023160027%_)
                                              (cons _%g160022160025%_
                                                    _%g160023160027%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161792
                                        '()
                                        _%g159799159891%_))))))
                           _%tl159807159847%_
                           _%expr159817159887%_
                           _%hd159818159888%_
                           _%hd159803159837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159811159855%_
                                                   _%target159808159850%_
                                                   '()
                                                   '()))
                                                (_%g159796159829%_
                                                 _%g159797159832%_)))))
                                      (_%g159796159829%_ _%g159797159832%_))))
                              (_%g159796159829%_ _%g159797159832%_))))
                      (_%g159796159829%_ _%g159797159832%_)))))
          (_%g159795160030%_ _%stx159794%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159553%_ _%stx159554%_)
        (let* ((_%g159556159589%_
                (lambda (_%g159557159586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159557159586%_))))
               (_%g159555159790%_
                (lambda (_%g159557159592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159557159592%_))
                      (let ((_%e159562159594%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159557159592%_))))
                        (let ((_%hd159563159597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159562159594%_)))
                              (_%tl159564159599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159562159594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159564159599%_))
                              (let ((_%e159565159602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159564159599%_))))
                                (let ((_%hd159566159605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159565159602%_)))
                                      (_%tl159567159607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159565159602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159566159605%_))
                                      (let ((_g161793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159566159605%_
                                                '0))))
                                        (begin
                                          (let ((_g161794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161793_)
                                                       (##values-length
                                                        _g161793_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161794_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161794_)))
                                          (let ((_%target159568159610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161793_ 0)))
                                                (_%tl159570159612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161793_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159570159612%_))
                                                (letrec ((_%loop159571159615%_
                                                          (lambda (_%hd159569159618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159575159620%_
                           _%hd159576159621%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159569159618%_))
                        (let ((_%e159572159623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159569159618%_))))
                          (let ((_%lp-hd159573159626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159572159623%_)))
                                (_%lp-tl159574159628%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159572159623%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159573159626%_))
                                (let ((_%e159579159631%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159573159626%_))))
                                  (let ((_%hd159580159634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159579159631%_)))
                                        (_%tl159581159636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159579159631%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159581159636%_))
                                        (let ((_%e159582159639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159581159636%_))))
                                          (let ((_%hd159583159642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159582159639%_)))
                                                (_%tl159584159644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159582159639%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159584159644%_))
                                                (_%loop159571159615%_
                                                 _%lp-tl159574159628%_
                                                 (cons _%hd159583159642%_
                                                       _%expr159575159620%_)
                                                 (cons _%hd159580159634%_
                                                       _%hd159576159621%_))
                                                (_%g159556159589%_
                                                 _%g159557159592%_))))
                                        (_%g159556159589%_
                                         _%g159557159592%_))))
                                (_%g159556159589%_ _%g159557159592%_))))
                        (let ((_%expr159577159647%_
                               (reverse _%expr159575159620%_))
                              (_%hd159578159648%_
                               (reverse _%hd159576159621%_)))
                          ((lambda (_%g159558159650%_
                                    _%g159559159651%_
                                    _%g159560159652%_
                                    _%g159561159653%_)
                             (let ((__tmp161797
                                    (lambda ()
                                      (let* ((_%g159673159689%_
                                              (lambda (_%g159674159686%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159674159686%_))))
                                             (_%g159672159769%_
                                              (lambda (_%g159674159692%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159674159692%_))
                                                    (let ((_g161798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159674159692%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161798_)
                             (##values-length _g161798_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161799_ 2)))
                      (error "Context expects 2 values" _g161799_)))
                (let ((_%target159676159694%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161798_ 0)))
                      (_%tl159678159696%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161798_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159678159696%_))
                      (letrec ((_%loop159679159699%_
                                (lambda (_%hd159677159702%_
                                         _%expr159683159704%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159677159702%_))
                                      (let ((_%e159680159706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159677159702%_))))
                                        (let ((_%lp-hd159681159709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159680159706%_)))
                                              (_%lp-tl159682159711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159680159706%_))))
                                          (_%loop159679159699%_
                                           _%lp-tl159682159711%_
                                           (cons _%lp-hd159681159709%_
                                                 _%expr159683159704%_))))
                                      (let ((_%expr159684159714%_
                                             (reverse _%expr159683159704%_)))
                                        ((lambda (_%g159675159716%_)
                                           (let* ((_%g159730159737%_
                                                   (lambda (_%g159731159734%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159731159734%_))))
                                                  (_%g159729159762%_
                                                   (lambda (_%g159731159740%_)
                                                     ((lambda (_%g159732159742%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159561159653%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159675159716%_
                                  _%g159560159652%_))
                               (let ((__tmp161800
                                      (lambda (_%g159751159755%_
                                               _%g159752159757%_
                                               _%g159753159759%_)
                                        (cons (cons _%g159752159757%_
                                                    (cons _%g159751159755%_
                                                          '()))
                                              _%g159753159759%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161800
                                  '()
                                  _%g159675159716%_
                                  _%g159560159652%_)))
                             _%g159732159742%_))
                 _%stx159554%_))
              _%g159731159740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159729159762%_
                                              (map (lambda (_%g159764159766%_)
                                                     (gxc#compile-e__1
                                                      _%self159553%_
                                                      _%g159764159766%_))
                                                   _%g159558159650%_))))
                                         _%expr159684159714%_))))))
                        (_%loop159679159699%_ _%target159676159694%_ '()))
                      (_%g159673159689%_ _%g159674159692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159673159689%_
                                                     _%g159674159692%_)))))
                                        (_%g159672159769%_
                                         (map (lambda (_%g159771159773%_)
                                                (gxc#compile-e__1
                                                 _%self159553%_
                                                 _%g159771159773%_))
                                              (let ((__tmp161801
                                                     (lambda (_%g159775159778%_
                                                              _%g159776159780%_)
                                                       (cons _%g159775159778%_
                                                             _%g159776159780%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161801
                                                 '()
                                                 _%g159559159651%_)))))))
                                   (__tmp161795
                                    (gxc#xform-let-locals
                                     (let ((__tmp161796
                                            (lambda (_%g159782159785%_
                                                     _%g159783159787%_)
                                              (cons _%g159782159785%_
                                                    _%g159783159787%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161796
                                        '()
                                        _%g159560159652%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161797
                                gxc#current-compile-local-env
                                __tmp161795)))
                           _%tl159567159607%_
                           _%expr159577159647%_
                           _%hd159578159648%_
                           _%hd159563159597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159571159615%_
                                                   _%target159568159610%_
                                                   '()
                                                   '()))
                                                (_%g159556159589%_
                                                 _%g159557159592%_)))))
                                      (_%g159556159589%_ _%g159557159592%_))))
                              (_%g159556159589%_ _%g159557159592%_))))
                      (_%g159556159589%_ _%g159557159592%_)))))
          (_%g159555159790%_ _%stx159554%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159420%_)
        (letrec ((_%flatten159422%_
                  (lambda (_%maybe-lst159480%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159480%_))
                        (cons _%maybe-lst159480%_ '())
                        (let _%loop159482%_ ((_%rest159484%_
                                              _%maybe-lst159480%_)
                                             (_%result159485%_ '()))
                          (let* ((_%__stx161689161690%_ _%rest159484%_)
                                 (_%g159489159501%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161689161690%_)))))
                            (let ((_%__kont161691161692%_
                                   (lambda (_%g159491159539%_
                                            _%g159492159540%_)
                                     (_%loop159482%_
                                      _%g159491159539%_
                                      (let ((__tmp161802
                                             (_%flatten159422%_
                                              _%g159492159540%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159485%_
                                         __tmp161802)))))
                                  (_%__kont161693161694%_
                                   (lambda (_%g159496159513%_)
                                     (cons _%g159496159513%_
                                           _%result159485%_)))
                                  (_%__kont161695161696%_
                                   (lambda () _%result159485%_)))
                              (let ((_%g159487159526%_
                                     (lambda ()
                                       (let ((_%g159496159513%_
                                              _%__stx161689161690%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159496159513%_))
                                             (_%__kont161693161694%_
                                              _%g159496159513%_)
                                             (_%__kont161695161696%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161689161690%_))
                                    (let ((_%e159493159531%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161689161690%_))))
                                      (let ((_%tl159495159536%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159493159531%_)))
                                            (_%hd159494159534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159493159531%_))))
                                        (_%__kont161691161692%_
                                         _%tl159495159536%_
                                         _%hd159494159534%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159487159526%_)))))))))))
          (let _%loop159424%_ ((_%rest159426%_
                                (_%flatten159422%_ _%bindings159420%_))
                               (_%locals159427%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159428159439%_ _%rest159426%_)
                   (_%E159432159443%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159428159439%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159435159468%_
                     (lambda (_%rest159465%_ _%id159466%_)
                       (_%loop159424%_
                        _%rest159465%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159466%_))
                              _%locals159427%_))))
                    (_%K159434159457%_
                     (lambda (_%id159455%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159455%_))
                             _%locals159427%_)))
                    (_%K159433159448%_ (lambda () _%locals159427%_)))
                (let ((_%try-match159430159462%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159428159439%_))
                             (let ((_%id159460%_ _%rest159428159439%_))
                               (_%K159434159457%_ _%id159460%_))
                             (_%K159433159448%_)))))
                  (if (pair? _%rest159428159439%_)
                      (let ((_%tl159437159473%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159428159439%_)))
                            (_%hd159436159471%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159428159439%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159436159471%_))
                            (let ((_%id159476%_ _%hd159436159471%_)
                                  (_%rest159478%_ _%tl159437159473%_))
                              (_%K159435159468%_ _%rest159478%_ _%id159476%_))
                            (_%K159433159448%_)))
                      (_%try-match159430159462%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159372%_ _%stx159373%_)
        (let* ((_%g159375159386%_
                (lambda (_%g159376159383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159376159383%_))))
               (_%g159374159417%_
                (lambda (_%g159376159389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159376159389%_))
                      (let ((_%e159379159391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159376159389%_))))
                        (let ((_%hd159380159394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159379159391%_)))
                              (_%tl159381159396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159379159391%_))))
                          ((lambda (_%g159377159399%_ _%g159378159400%_)
                             (let ((_%rands159415%_
                                    (map (lambda (_%g159410159412%_)
                                           (gxc#compile-e__1
                                            _%self159372%_
                                            _%g159410159412%_))
                                         _%g159377159399%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159378159400%_ _%rands159415%_)
                                _%stx159373%_)))
                           _%tl159381159396%_
                           _%hd159380159394%_)))
                      (_%g159375159386%_ _%g159376159389%_)))))
          (_%g159374159417%_ _%stx159373%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159302%_ _%stx159303%_)
        (let* ((_%g159305159322%_
                (lambda (_%g159306159319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159306159319%_))))
               (_%g159304159369%_
                (lambda (_%g159306159325%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159306159325%_))
                      (let ((_%e159309159327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159306159325%_))))
                        (let ((_%hd159310159330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159309159327%_)))
                              (_%tl159311159332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159309159327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159311159332%_))
                              (let ((_%e159312159335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159311159332%_))))
                                (let ((_%hd159313159338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159312159335%_)))
                                      (_%tl159314159340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159312159335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159314159340%_))
                                      (let ((_%e159315159343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159314159340%_))))
                                        (let ((_%hd159316159346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159315159343%_)))
                                              (_%tl159317159348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159315159343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159317159348%_))
                                              ((lambda (_%g159307159351%_
                                                        _%g159308159352%_)
                                                 (let ((_%expr159367%_
                                                        (gxc#compile-e__1
                                                         _%self159302%_
                                                         _%g159307159351%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159308159352%_
                                                                (cons _%expr159367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159303%_)))
                                               _%hd159316159346%_
                                               _%hd159313159338%_)
                                              (_%g159305159322%_
                                               _%g159306159325%_))))
                                      (_%g159305159322%_ _%g159306159325%_))))
                              (_%g159305159322%_ _%g159306159325%_))))
                      (_%g159305159322%_ _%g159306159325%_)))))
          (_%g159304159369%_ _%stx159303%_))))))
