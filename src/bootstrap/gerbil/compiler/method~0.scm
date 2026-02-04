(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770248971)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161459%_)
        (let* ((_%self161461%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161463%_
                (let ((__tmp161681 (gxc#stx-car-e _%stx161459%_)))
                  (declare (not safe))
                  (method-ref _%self161461%_ __tmp161681))))
          (if _%$e161463%_
              ((lambda (_%method161466%_)
                 (declare (not safe))
                 (let ((_%$e161469%_ (gx#stx-source _%stx161459%_)))
                   (if _%$e161469%_
                       ((lambda (_%source161472%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161466%_ _%self161461%_ _%stx161459%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161472%_ '()))
                                 (let ((_%$e161476%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161476%_ _%$e161476%_ '())))))
                        _%$e161469%_)
                       (_%method161466%_ _%self161461%_ _%stx161459%_))))
               _%$e161463%_)
              (let ((__tmp161683 (gxc#stx-car-e _%stx161459%_))
                    (__tmp161682
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161459%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161461%_
                       __tmp161683
                       __tmp161682))))))
    (define gxc#compile-e__1
      (lambda (_%self161481%_ _%stx161482%_)
        (let ((_%$e161484%_
               (let ((__tmp161684 (gxc#stx-car-e _%stx161482%_)))
                 (declare (not safe))
                 (method-ref _%self161481%_ __tmp161684))))
          (if _%$e161484%_
              ((lambda (_%method161487%_)
                 (declare (not safe))
                 (let ((_%$e161490%_ (gx#stx-source _%stx161482%_)))
                   (if _%$e161490%_
                       ((lambda (_%source161493%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161487%_ _%self161481%_ _%stx161482%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161493%_ '()))
                                 (let ((_%$e161497%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161497%_ _%$e161497%_ '())))))
                        _%$e161490%_)
                       (_%method161487%_ _%self161481%_ _%stx161482%_))))
               _%$e161484%_)
              (let ((__tmp161686 (gxc#stx-car-e _%stx161482%_))
                    (__tmp161685
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161482%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161481%_
                       __tmp161686
                       __tmp161685))))))
    (define gxc#compile-e
      (lambda _g161687_
        (let ((_g161688_ (let () (declare (not safe)) (##length _g161687_))))
          (cond ((let () (declare (not safe)) (##fx= _g161688_ 1))
                 (apply gxc#compile-e__0 _g161687_))
                ((let () (declare (not safe)) (##fx= _g161688_ 2))
                 (apply gxc#compile-e__1 _g161687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161687_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161457%_)
        (let ((__tmp161689
               (car (let () (declare (not safe)) (gx#stx-e _%stx161457%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161689))))
    (define gxc#void-method (lambda (_%self161454%_ _%stx161455%_) '#!void))
    (define gxc#false-method (lambda (_%self161451%_ _%stx161452%_) '#f))
    (define gxc#true-method (lambda (_%self161448%_ _%stx161449%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161445%_ _%stx161446%_) _%stx161446%_))
    (define gxc#::void-expression::t
      (let ((__tmp161690 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161690
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161442%_
        (apply make-instance gxc#::void-expression::t _%$args161442%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161691
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
        (__make-atomic-promise __tmp161691)))
    (define gxc#::void-special-form::t
      (let ((__tmp161692 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161692
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161438%_
        (apply make-instance gxc#::void-special-form::t _%$args161438%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161693
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
        (__make-atomic-promise __tmp161693)))
    (define gxc#::void::t
      (let ((__tmp161694
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161694 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161434%_
        (apply make-instance gxc#::void::t _%$args161434%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161695
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161695)))
    (define gxc#::false-expression::t
      (let ((__tmp161696 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161696
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161430%_
        (apply make-instance gxc#::false-expression::t _%$args161430%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161697
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
        (__make-atomic-promise __tmp161697)))
    (define gxc#::false-special-form::t
      (let ((__tmp161698 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161698
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161426%_
        (apply make-instance gxc#::false-special-form::t _%$args161426%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161699
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
        (__make-atomic-promise __tmp161699)))
    (define gxc#::false::t
      (let ((__tmp161700
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161700 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161422%_
        (apply make-instance gxc#::false::t _%$args161422%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161701
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161701)))
    (define gxc#::identity-expression::t
      (let ((__tmp161702 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161702
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161418%_
        (apply make-instance gxc#::identity-expression::t _%$args161418%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161703
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
        (__make-atomic-promise __tmp161703)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161704 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161704
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161414%_
        (apply make-instance gxc#::identity-special-form::t _%$args161414%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161705
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
        (__make-atomic-promise __tmp161705)))
    (define gxc#::identity::t
      (let ((__tmp161706
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161706
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161410%_
        (apply make-instance gxc#::identity::t _%$args161410%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161707
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161707)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161708 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161708
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161406%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161406%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161709
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
        (__make-atomic-promise __tmp161709)))
    (define gxc#::basic-xform::t
      (let ((__tmp161710
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161710
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161402%_
        (apply make-instance gxc#::basic-xform::t _%$args161402%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161711
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
        (__make-atomic-promise __tmp161711)))
    (define gxc#apply-begin%
      (lambda (_%self161358%_ _%stx161359%_)
        (let* ((_%g161361161371%_
                (lambda (_%g161362161368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161362161368%_))))
               (_%g161360161398%_
                (lambda (_%g161362161374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161362161374%_))
                      (let ((_%e161364161376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161362161374%_))))
                        (let ((_%hd161365161379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161364161376%_)))
                              (_%tl161366161381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161364161376%_))))
                          ((lambda (_%g161363161384%_)
                             (for-each
                              (lambda (_%g161393161395%_)
                                (gxc#compile-e__1
                                 _%self161358%_
                                 _%g161393161395%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161363161384%_))))
                           _%tl161366161381%_)))
                      (_%g161361161371%_ _%g161362161374%_)))))
          (_%g161360161398%_ _%stx161359%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161319%_ _%stx161320%_)
        (let* ((_%g161322161332%_
                (lambda (_%g161323161329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161323161329%_))))
               (_%g161321161355%_
                (lambda (_%g161323161335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161323161335%_))
                      (let ((_%e161325161337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161323161335%_))))
                        (let ((_%hd161326161340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161325161337%_)))
                              (_%tl161327161342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161325161337%_))))
                          ((lambda (_%g161324161345%_)
                             (gxc#compile-e__1
                              _%self161319%_
                              (last _%g161324161345%_)))
                           _%tl161327161342%_)))
                      (_%g161322161332%_ _%g161323161335%_)))))
          (_%g161321161355%_ _%stx161320%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161315%_ _%stx161316%_)
        (let ((__tmp161714
               (lambda () (gxc#apply-begin% _%self161315%_ _%stx161316%_)))
              (__tmp161712
               (let ((__tmp161713
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161713 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161714
           gx#current-expander-phi
           __tmp161712))))
    (define gxc#apply-module%
      (lambda (_%self161254%_ _%stx161255%_)
        (let* ((_%g161257161271%_
                (lambda (_%g161258161268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161258161268%_))))
               (_%g161256161312%_
                (lambda (_%g161258161274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161258161274%_))
                      (let ((_%e161261161276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161258161274%_))))
                        (let ((_%hd161262161279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161261161276%_)))
                              (_%tl161263161281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161261161276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161263161281%_))
                              (let ((_%e161264161284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161263161281%_))))
                                (let ((_%hd161265161287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161264161284%_)))
                                      (_%tl161266161289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161264161284%_))))
                                  ((lambda (_%g161259161292%_
                                            _%g161260161293%_)
                                     (let* ((_%ctx161306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161260161293%_)))
                                            (_%ctx-stx161308%_
                                             (##structure-ref
                                              _%ctx161306%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161715
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161254%_
                                                _%ctx-stx161308%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161715
                                        gx#current-expander-context
                                        _%ctx161306%_)))
                                   _%tl161266161289%_
                                   _%hd161265161287%_)))
                              (_%g161257161271%_ _%g161258161274%_))))
                      (_%g161257161271%_ _%g161258161274%_)))))
          (_%g161256161312%_ _%stx161255%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161186%_ _%stx161187%_)
        (let* ((_%g161189161206%_
                (lambda (_%g161190161203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161190161203%_))))
               (_%g161188161251%_
                (lambda (_%g161190161209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161190161209%_))
                      (let ((_%e161193161211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161190161209%_))))
                        (let ((_%hd161194161214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161193161211%_)))
                              (_%tl161195161216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161193161211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161195161216%_))
                              (let ((_%e161196161219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161195161216%_))))
                                (let ((_%hd161197161222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161196161219%_)))
                                      (_%tl161198161224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161196161219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161198161224%_))
                                      (let ((_%e161199161227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161198161224%_))))
                                        (let ((_%hd161200161230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161199161227%_)))
                                              (_%tl161201161232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161199161227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161201161232%_))
                                              ((lambda (_%g161191161235%_
                                                        _%g161192161236%_)
                                                 (gxc#compile-e__1
                                                  _%self161186%_
                                                  _%g161191161235%_))
                                               _%hd161200161230%_
                                               _%hd161197161222%_)
                                              (_%g161189161206%_
                                               _%g161190161209%_))))
                                      (_%g161189161206%_ _%g161190161209%_))))
                              (_%g161189161206%_ _%g161190161209%_))))
                      (_%g161189161206%_ _%g161190161209%_)))))
          (_%g161188161251%_ _%stx161187%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161118%_ _%stx161119%_)
        (let* ((_%g161121161138%_
                (lambda (_%g161122161135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161122161135%_))))
               (_%g161120161183%_
                (lambda (_%g161122161141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161122161141%_))
                      (let ((_%e161125161143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161122161141%_))))
                        (let ((_%hd161126161146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161125161143%_)))
                              (_%tl161127161148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161125161143%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161127161148%_))
                              (let ((_%e161128161151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161127161148%_))))
                                (let ((_%hd161129161154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161128161151%_)))
                                      (_%tl161130161156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161128161151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161130161156%_))
                                      (let ((_%e161131161159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161130161156%_))))
                                        (let ((_%hd161132161162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161131161159%_)))
                                              (_%tl161133161164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161131161159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161133161164%_))
                                              ((lambda (_%g161123161167%_
                                                        _%g161124161168%_)
                                                 (gxc#compile-e__1
                                                  _%self161118%_
                                                  _%g161123161167%_))
                                               _%hd161132161162%_
                                               _%hd161129161154%_)
                                              (_%g161121161138%_
                                               _%g161122161141%_))))
                                      (_%g161121161138%_ _%g161122161141%_))))
                              (_%g161121161138%_ _%g161122161141%_))))
                      (_%g161121161138%_ _%g161122161141%_)))))
          (_%g161120161183%_ _%stx161119%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161049%_ _%stx161050%_)
        (let* ((_%g161052161069%_
                (lambda (_%g161053161066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161053161066%_))))
               (_%g161051161115%_
                (lambda (_%g161053161072%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161053161072%_))
                      (let ((_%e161056161074%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161053161072%_))))
                        (let ((_%hd161057161077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161056161074%_)))
                              (_%tl161058161079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161056161074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161058161079%_))
                              (let ((_%e161059161082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161058161079%_))))
                                (let ((_%hd161060161085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161059161082%_)))
                                      (_%tl161061161087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161059161082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161061161087%_))
                                      (let ((_%e161062161090%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161061161087%_))))
                                        (let ((_%hd161063161093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161062161090%_)))
                                              (_%tl161064161095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161062161090%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161064161095%_))
                                              ((lambda (_%g161054161098%_
                                                        _%g161055161099%_)
                                                 (let ((__tmp161718
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161049%_
                                                           _%g161054161098%_)))
                                                       (__tmp161716
                                                        (let ((__tmp161717
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161717 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161718
                                                    gx#current-expander-phi
                                                    __tmp161716)))
                                               _%hd161063161093%_
                                               _%hd161060161085%_)
                                              (_%g161052161069%_
                                               _%g161053161072%_))))
                                      (_%g161052161069%_ _%g161053161072%_))))
                              (_%g161052161069%_ _%g161053161072%_))))
                      (_%g161052161069%_ _%g161053161072%_)))))
          (_%g161051161115%_ _%stx161050%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self160981%_ _%stx160982%_)
        (let* ((_%g160984161001%_
                (lambda (_%g160985160998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160985160998%_))))
               (_%g160983161046%_
                (lambda (_%g160985161004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160985161004%_))
                      (let ((_%e160988161006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160985161004%_))))
                        (let ((_%hd160989161009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160988161006%_)))
                              (_%tl160990161011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160988161006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160990161011%_))
                              (let ((_%e160991161014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160990161011%_))))
                                (let ((_%hd160992161017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160991161014%_)))
                                      (_%tl160993161019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160991161014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160993161019%_))
                                      (let ((_%e160994161022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160993161019%_))))
                                        (let ((_%hd160995161025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160994161022%_)))
                                              (_%tl160996161027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160994161022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160996161027%_))
                                              ((lambda (_%g160986161030%_
                                                        _%g160987161031%_)
                                                 (gxc#compile-e__1
                                                  _%self160981%_
                                                  _%g160986161030%_))
                                               _%hd160995161025%_
                                               _%hd160992161017%_)
                                              (_%g160984161001%_
                                               _%g160985161004%_))))
                                      (_%g160984161001%_ _%g160985161004%_))))
                              (_%g160984161001%_ _%g160985161004%_))))
                      (_%g160984161001%_ _%g160985161004%_)))))
          (_%g160983161046%_ _%stx160982%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self160867%_ _%stx160868%_)
        (let* ((_%g160870160898%_
                (lambda (_%g160871160895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160871160895%_))))
               (_%g160869160978%_
                (lambda (_%g160871160901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160871160901%_))
                      (let ((_%e160874160903%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160871160901%_))))
                        (let ((_%hd160875160906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160874160903%_)))
                              (_%tl160876160908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160874160903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160876160908%_))
                              (let ((_g161719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160876160908%_
                                        '0))))
                                (begin
                                  (let ((_g161720_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161719_)
                                               (##values-length _g161719_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161720_ 2)))
                                        (error "Context expects 2 values"
                                               _g161720_)))
                                  (let ((_%target160877160911%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161719_ 0)))
                                        (_%tl160879160913%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161719_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160879160913%_))
                                        (letrec ((_%loop160880160916%_
                                                  (lambda (_%hd160878160919%_
                                                           _%body160884160921%_
                                                           _%hd160885160922%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160878160919%_))
                                                        (let ((_%e160881160924%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160878160919%_))))
                  (let ((_%lp-hd160882160927%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160881160924%_)))
                        (_%lp-tl160883160929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160881160924%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd160882160927%_))
                        (let ((_%e160888160932%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd160882160927%_))))
                          (let ((_%hd160889160935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160888160932%_)))
                                (_%tl160890160937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160888160932%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl160890160937%_))
                                (let ((_%e160891160940%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl160890160937%_))))
                                  (let ((_%hd160892160943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160891160940%_)))
                                        (_%tl160893160945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160891160940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160893160945%_))
                                        (_%loop160880160916%_
                                         _%lp-tl160883160929%_
                                         (cons _%hd160892160943%_
                                               _%body160884160921%_)
                                         (cons _%hd160889160935%_
                                               _%hd160885160922%_))
                                        (_%g160870160898%_
                                         _%g160871160901%_))))
                                (_%g160870160898%_ _%g160871160901%_))))
                        (_%g160870160898%_ _%g160871160901%_))))
                (let ((_%body160886160948%_ (reverse _%body160884160921%_))
                      (_%hd160887160949%_ (reverse _%hd160885160922%_)))
                  ((lambda (_%g160872160951%_ _%g160873160952%_)
                     (for-each
                      (lambda (_%g160966160968%_)
                        (gxc#compile-e__1 _%self160867%_ _%g160966160968%_))
                      (let ((__tmp161721
                             (lambda (_%g160970160973%_ _%g160971160975%_)
                               (cons _%g160970160973%_ _%g160971160975%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161721 '() _%g160872160951%_))))
                   _%body160886160948%_
                   _%hd160887160949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160880160916%_
                                           _%target160877160911%_
                                           '()
                                           '()))
                                        (_%g160870160898%_
                                         _%g160871160901%_)))))
                              (_%g160870160898%_ _%g160871160901%_))))
                      (_%g160870160898%_ _%g160871160901%_)))))
          (_%g160869160978%_ _%stx160868%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160724%_ _%stx160725%_)
        (let* ((_%g160727160762%_
                (lambda (_%g160728160759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160728160759%_))))
               (_%g160726160864%_
                (lambda (_%g160728160765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160728160765%_))
                      (let ((_%e160732160767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160728160765%_))))
                        (let ((_%hd160733160770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160732160767%_)))
                              (_%tl160734160772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160732160767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160734160772%_))
                              (let ((_%e160735160775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160734160772%_))))
                                (let ((_%hd160736160778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160735160775%_)))
                                      (_%tl160737160780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160735160775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160736160778%_))
                                      (let ((_g161722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160736160778%_
                                                '0))))
                                        (begin
                                          (let ((_g161723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161722_)
                                                       (##values-length
                                                        _g161722_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161723_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161723_)))
                                          (let ((_%target160738160783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161722_ 0)))
                                                (_%tl160740160785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161722_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160740160785%_))
                                                (letrec ((_%loop160741160788%_
                                                          (lambda (_%hd160739160791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160745160793%_
                           _%hd160746160794%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160739160791%_))
                        (let ((_%e160742160796%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160739160791%_))))
                          (let ((_%lp-hd160743160799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160742160796%_)))
                                (_%lp-tl160744160801%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160742160796%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160743160799%_))
                                (let ((_%e160749160804%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160743160799%_))))
                                  (let ((_%hd160750160807%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160749160804%_)))
                                        (_%tl160751160809%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160749160804%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160751160809%_))
                                        (let ((_%e160752160812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160751160809%_))))
                                          (let ((_%hd160753160815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160752160812%_)))
                                                (_%tl160754160817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160752160812%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160754160817%_))
                                                (_%loop160741160788%_
                                                 _%lp-tl160744160801%_
                                                 (cons _%hd160753160815%_
                                                       _%expr160745160793%_)
                                                 (cons _%hd160750160807%_
                                                       _%hd160746160794%_))
                                                (_%g160727160762%_
                                                 _%g160728160765%_))))
                                        (_%g160727160762%_
                                         _%g160728160765%_))))
                                (_%g160727160762%_ _%g160728160765%_))))
                        (let ((_%expr160747160820%_
                               (reverse _%expr160745160793%_))
                              (_%hd160748160821%_
                               (reverse _%hd160746160794%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160737160780%_))
                              (let ((_%e160755160823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160737160780%_))))
                                (let ((_%hd160756160826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160755160823%_)))
                                      (_%tl160757160828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160755160823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160757160828%_))
                                      ((lambda (_%g160729160831%_
                                                _%g160730160832%_
                                                _%g160731160833%_)
                                         (for-each
                                          (lambda (_%g160852160854%_)
                                            (gxc#compile-e__1
                                             _%self160724%_
                                             _%g160852160854%_))
                                          (let ((__tmp161725
                                                 (lambda (_%g160856160859%_
                                                          _%g160857160861%_)
                                                   (cons _%g160856160859%_
                                                         _%g160857160861%_)))
                                                (__tmp161724
                                                 (cons _%g160729160831%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161725
                                             __tmp161724
                                             _%g160730160832%_))))
                                       _%hd160756160826%_
                                       _%expr160747160820%_
                                       _%hd160748160821%_)
                                      (_%g160727160762%_ _%g160728160765%_))))
                              (_%g160727160762%_ _%g160728160765%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160741160788%_
                                                   _%target160738160783%_
                                                   '()
                                                   '()))
                                                (_%g160727160762%_
                                                 _%g160728160765%_)))))
                                      (_%g160727160762%_ _%g160728160765%_))))
                              (_%g160727160762%_ _%g160728160765%_))))
                      (_%g160727160762%_ _%g160728160765%_)))))
          (_%g160726160864%_ _%stx160725%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160669%_ _%stx160670%_)
        (let* ((_%g160672160686%_
                (lambda (_%g160673160683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160673160683%_))))
               (_%g160671160721%_
                (lambda (_%g160673160689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160673160689%_))
                      (let ((_%e160676160691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160673160689%_))))
                        (let ((_%hd160677160694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160676160691%_)))
                              (_%tl160678160696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160676160691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160678160696%_))
                              (let ((_%e160679160699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160678160696%_))))
                                (let ((_%hd160680160702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160679160699%_)))
                                      (_%tl160681160704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160679160699%_))))
                                  ((lambda (_%g160674160707%_
                                            _%g160675160708%_)
                                     (gxc#compile-e__1
                                      _%self160669%_
                                      (last _%g160674160707%_)))
                                   _%tl160681160704%_
                                   _%hd160680160702%_)))
                              (_%g160672160686%_ _%g160673160689%_))))
                      (_%g160672160686%_ _%g160673160689%_)))))
          (_%g160671160721%_ _%stx160670%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160601%_ _%stx160602%_)
        (let* ((_%g160604160621%_
                (lambda (_%g160605160618%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160605160618%_))))
               (_%g160603160666%_
                (lambda (_%g160605160624%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160605160624%_))
                      (let ((_%e160608160626%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160605160624%_))))
                        (let ((_%hd160609160629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160608160626%_)))
                              (_%tl160610160631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160608160626%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160610160631%_))
                              (let ((_%e160611160634%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160610160631%_))))
                                (let ((_%hd160612160637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160611160634%_)))
                                      (_%tl160613160639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160611160634%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160613160639%_))
                                      (let ((_%e160614160642%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160613160639%_))))
                                        (let ((_%hd160615160645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160614160642%_)))
                                              (_%tl160616160647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160614160642%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160616160647%_))
                                              ((lambda (_%g160606160650%_
                                                        _%g160607160651%_)
                                                 (gxc#compile-e__1
                                                  _%self160601%_
                                                  _%g160606160650%_))
                                               _%hd160615160645%_
                                               _%hd160612160637%_)
                                              (_%g160604160621%_
                                               _%g160605160624%_))))
                                      (_%g160604160621%_ _%g160605160624%_))))
                              (_%g160604160621%_ _%g160605160624%_))))
                      (_%g160604160621%_ _%g160605160624%_)))))
          (_%g160603160666%_ _%stx160602%_))))
    (define gxc#apply-operands
      (lambda (_%self160516%_ _%stx160517%_)
        (let* ((_%g160519160538%_
                (lambda (_%g160520160535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160520160535%_))))
               (_%g160518160598%_
                (lambda (_%g160520160541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160520160541%_))
                      (let ((_%e160522160543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160520160541%_))))
                        (let ((_%hd160523160546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160522160543%_)))
                              (_%tl160524160548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160522160543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160524160548%_))
                              (let ((_g161726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160524160548%_
                                        '0))))
                                (begin
                                  (let ((_g161727_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161726_)
                                               (##values-length _g161726_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161727_ 2)))
                                        (error "Context expects 2 values"
                                               _g161727_)))
                                  (let ((_%target160525160551%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161726_ 0)))
                                        (_%tl160527160553%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161726_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160527160553%_))
                                        (letrec ((_%loop160528160556%_
                                                  (lambda (_%hd160526160559%_
                                                           _%rands160532160561%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160526160559%_))
                                                        (let ((_%e160529160563%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160526160559%_))))
                  (let ((_%lp-hd160530160566%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160529160563%_)))
                        (_%lp-tl160531160568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160529160563%_))))
                    (_%loop160528160556%_
                     _%lp-tl160531160568%_
                     (cons _%lp-hd160530160566%_ _%rands160532160561%_))))
                (let ((_%rands160533160571%_ (reverse _%rands160532160561%_)))
                  ((lambda (_%g160521160573%_)
                     (for-each
                      (lambda (_%g160586160588%_)
                        (gxc#compile-e__1 _%self160516%_ _%g160586160588%_))
                      (let ((__tmp161728
                             (lambda (_%g160590160593%_ _%g160591160595%_)
                               (cons _%g160590160593%_ _%g160591160595%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161728 '() _%g160521160573%_))))
                   _%rands160533160571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160528160556%_
                                           _%target160525160551%_
                                           '()))
                                        (_%g160519160538%_
                                         _%g160520160541%_)))))
                              (_%g160519160538%_ _%g160520160541%_))))
                      (_%g160519160538%_ _%g160520160541%_)))))
          (_%g160518160598%_ _%stx160517%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160513%_ _%src-stx160514%_)
        (let ((__tmp161729
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160514%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160513%_ __tmp161729))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160509%_ _%src-stx160510%_ _%ctx160511%_)
        (gxc#compile-e__1
         _%ctx160511%_
         (gxc#xform-wrap-source _%stx160509%_ _%src-stx160510%_))))
    (define gxc#xform-begin%
      (lambda (_%self160464%_ _%stx160465%_)
        (let* ((_%g160467160477%_
                (lambda (_%g160468160474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160468160474%_))))
               (_%g160466160506%_
                (lambda (_%g160468160480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160468160480%_))
                      (let ((_%e160470160482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160468160480%_))))
                        (let ((_%hd160471160485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160470160482%_)))
                              (_%tl160472160487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160470160482%_))))
                          ((lambda (_%g160469160490%_)
                             (let ((_%forms160504%_
                                    (map (lambda (_%g160499160501%_)
                                           (gxc#compile-e__1
                                            _%self160464%_
                                            _%g160499160501%_))
                                         _%g160469160490%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160504%_)
                                _%stx160465%_)))
                           _%tl160472160487%_)))
                      (_%g160467160477%_ _%g160468160480%_)))))
          (_%g160466160506%_ _%stx160465%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160418%_ _%stx160419%_)
        (let* ((_%g160421160431%_
                (lambda (_%g160422160428%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160422160428%_))))
               (_%g160420160461%_
                (lambda (_%g160422160434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160422160434%_))
                      (let ((_%e160424160436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160422160434%_))))
                        (let ((_%hd160425160439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160424160436%_)))
                              (_%tl160426160441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160424160436%_))))
                          ((lambda (_%g160423160444%_)
                             (let ((__tmp161732
                                    (lambda ()
                                      (let ((_%forms160459%_
                                             (map (lambda (_%g160454160456%_)
                                                    (gxc#compile-e__1
                                                     _%self160418%_
                                                     _%g160454160456%_))
                                                  _%g160423160444%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160459%_)
                                         _%stx160419%_))))
                                   (__tmp161730
                                    (let ((__tmp161731
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161731 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161732
                                gx#current-expander-phi
                                __tmp161730)))
                           _%tl160426160441%_)))
                      (_%g160421160431%_ _%g160422160434%_)))))
          (_%g160420160461%_ _%stx160419%_))))
    (define gxc#xform-module%
      (lambda (_%self160355%_ _%stx160356%_)
        (let* ((_%g160358160372%_
                (lambda (_%g160359160369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160359160369%_))))
               (_%g160357160415%_
                (lambda (_%g160359160375%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160359160375%_))
                      (let ((_%e160362160377%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160359160375%_))))
                        (let ((_%hd160363160380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160362160377%_)))
                              (_%tl160364160382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160362160377%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160364160382%_))
                              (let ((_%e160365160385%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160364160382%_))))
                                (let ((_%hd160366160388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160365160385%_)))
                                      (_%tl160367160390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160365160385%_))))
                                  ((lambda (_%g160360160393%_
                                            _%g160361160394%_)
                                     (let* ((_%ctx160407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160361160394%_)))
                                            (_%code160409%_
                                             (##structure-ref
                                              _%ctx160407%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160412%_
                                             (let ((__tmp161733
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160355%_
                                                       _%code160409%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161733
                                                gx#current-expander-context
                                                _%ctx160407%_))))
                                       (##structure-set!
                                        _%ctx160407%_
                                        _%code160412%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160361160394%_
                                                    (cons _%code160412%_ '())))
                                        _%stx160356%_)))
                                   _%tl160367160390%_
                                   _%hd160366160388%_)))
                              (_%g160358160372%_ _%g160359160375%_))))
                      (_%g160358160372%_ _%g160359160375%_)))))
          (_%g160357160415%_ _%stx160356%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160285%_ _%stx160286%_)
        (let* ((_%g160288160305%_
                (lambda (_%g160289160302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160289160302%_))))
               (_%g160287160352%_
                (lambda (_%g160289160308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160289160308%_))
                      (let ((_%e160292160310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160289160308%_))))
                        (let ((_%hd160293160313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160292160310%_)))
                              (_%tl160294160315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160292160310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160294160315%_))
                              (let ((_%e160295160318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160294160315%_))))
                                (let ((_%hd160296160321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160295160318%_)))
                                      (_%tl160297160323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160295160318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160297160323%_))
                                      (let ((_%e160298160326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160297160323%_))))
                                        (let ((_%hd160299160329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160298160326%_)))
                                              (_%tl160300160331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160298160326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160300160331%_))
                                              ((lambda (_%g160290160334%_
                                                        _%g160291160335%_)
                                                 (let ((_%expr160350%_
                                                        (gxc#compile-e__1
                                                         _%self160285%_
                                                         _%g160290160334%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160291160335%_
                                                                (cons _%expr160350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160286%_)))
                                               _%hd160299160329%_
                                               _%hd160296160321%_)
                                              (_%g160288160305%_
                                               _%g160289160308%_))))
                                      (_%g160288160305%_ _%g160289160308%_))))
                              (_%g160288160305%_ _%g160289160308%_))))
                      (_%g160288160305%_ _%g160289160308%_)))))
          (_%g160287160352%_ _%stx160286%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160214%_ _%stx160215%_)
        (let* ((_%g160217160234%_
                (lambda (_%g160218160231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160218160231%_))))
               (_%g160216160282%_
                (lambda (_%g160218160237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160218160237%_))
                      (let ((_%e160221160239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160218160237%_))))
                        (let ((_%hd160222160242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160221160239%_)))
                              (_%tl160223160244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160221160239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160223160244%_))
                              (let ((_%e160224160247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160223160244%_))))
                                (let ((_%hd160225160250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160224160247%_)))
                                      (_%tl160226160252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160224160247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160226160252%_))
                                      (let ((_%e160227160255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160226160252%_))))
                                        (let ((_%hd160228160258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160227160255%_)))
                                              (_%tl160229160260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160227160255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160229160260%_))
                                              ((lambda (_%g160219160263%_
                                                        _%g160220160264%_)
                                                 (let ((__tmp161736
                                                        (lambda ()
                                                          (let ((_%expr160280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160214%_ _%g160219160263%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160220160264%_ (cons _%expr160280%_ '())))
                     _%stx160215%_))))
               (__tmp161734
                (let ((__tmp161735
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161735 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161736
                                                    gx#current-expander-phi
                                                    __tmp161734)))
                                               _%hd160228160258%_
                                               _%hd160225160250%_)
                                              (_%g160217160234%_
                                               _%g160218160237%_))))
                                      (_%g160217160234%_ _%g160218160237%_))))
                              (_%g160217160234%_ _%g160218160237%_))))
                      (_%g160217160234%_ _%g160218160237%_)))))
          (_%g160216160282%_ _%stx160215%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160144%_ _%stx160145%_)
        (let* ((_%g160147160164%_
                (lambda (_%g160148160161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160148160161%_))))
               (_%g160146160211%_
                (lambda (_%g160148160167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160148160167%_))
                      (let ((_%e160151160169%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160148160167%_))))
                        (let ((_%hd160152160172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160151160169%_)))
                              (_%tl160153160174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160151160169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160153160174%_))
                              (let ((_%e160154160177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160153160174%_))))
                                (let ((_%hd160155160180%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160154160177%_)))
                                      (_%tl160156160182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160154160177%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160156160182%_))
                                      (let ((_%e160157160185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160156160182%_))))
                                        (let ((_%hd160158160188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160157160185%_)))
                                              (_%tl160159160190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160157160185%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160159160190%_))
                                              ((lambda (_%g160149160193%_
                                                        _%g160150160194%_)
                                                 (let ((_%expr160209%_
                                                        (gxc#compile-e__1
                                                         _%self160144%_
                                                         _%g160149160193%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160150160194%_
                                                                (cons _%expr160209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160145%_)))
                                               _%hd160158160188%_
                                               _%hd160155160180%_)
                                              (_%g160147160164%_
                                               _%g160148160167%_))))
                                      (_%g160147160164%_ _%g160148160167%_))))
                              (_%g160147160164%_ _%g160148160167%_))))
                      (_%g160147160164%_ _%g160148160167%_)))))
          (_%g160146160211%_ _%stx160145%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160082%_ _%stx160083%_)
        (let* ((_%g160085160099%_
                (lambda (_%g160086160096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160086160096%_))))
               (_%g160084160141%_
                (lambda (_%g160086160102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160086160102%_))
                      (let ((_%e160089160104%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160086160102%_))))
                        (let ((_%hd160090160107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160089160104%_)))
                              (_%tl160091160109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160089160104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160091160109%_))
                              (let ((_%e160092160112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160091160109%_))))
                                (let ((_%hd160093160115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160092160112%_)))
                                      (_%tl160094160117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160092160112%_))))
                                  ((lambda (_%g160087160120%_
                                            _%g160088160121%_)
                                     (let ((__tmp161738
                                            (lambda ()
                                              (let ((_%body160139%_
                                                     (map (lambda (_%g160134160136%_)
                                                            (gxc#compile-e__1
                                                             _%self160082%_
                                                             _%g160134160136%_))
                                                          _%g160087160120%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160088160121%_
                                                             _%body160139%_))
                                                 _%stx160083%_))))
                                           (__tmp161737
                                            (gxc#xform-let-locals
                                             _%g160088160121%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161738
                                        gxc#current-compile-local-env
                                        __tmp161737)))
                                   _%tl160094160117%_
                                   _%hd160093160115%_)))
                              (_%g160085160099%_ _%g160086160102%_))))
                      (_%g160085160099%_ _%g160086160102%_)))))
          (_%g160084160141%_ _%stx160083%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self159990%_ _%stx159991%_)
        (letrec ((_%clause-e159993%_
                  (lambda (_%clause160034%_)
                    (let* ((_%g160036160047%_
                            (lambda (_%g160037160044%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160037160044%_))))
                           (_%g160035160079%_
                            (lambda (_%g160037160050%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160037160050%_))
                                  (let ((_%e160040160052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160037160050%_))))
                                    (let ((_%hd160041160055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160040160052%_)))
                                          (_%tl160042160057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160040160052%_))))
                                      ((lambda (_%g160038160060%_
                                                _%g160039160061%_)
                                         (let ((__tmp161740
                                                (lambda ()
                                                  (let ((_%body160077%_
                                                         (map (lambda (_%g160072160074%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self159990%_
                         _%g160072160074%_))
                      _%g160038160060%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160039160061%_
                                                          _%body160077%_))))
                                               (__tmp161739
                                                (gxc#xform-let-locals
                                                 _%g160039160061%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161740
                                            gxc#current-compile-local-env
                                            __tmp161739)))
                                       _%tl160042160057%_
                                       _%hd160041160055%_)))
                                  (_%g160036160047%_ _%g160037160050%_)))))
                      (_%g160035160079%_ _%clause160034%_)))))
          (let* ((_%g159995160005%_
                  (lambda (_%g159996160002%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g159996160002%_))))
                 (_%g159994160031%_
                  (lambda (_%g159996160008%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g159996160008%_))
                        (let ((_%e159998160010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g159996160008%_))))
                          (let ((_%hd159999160013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159998160010%_)))
                                (_%tl160000160015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159998160010%_))))
                            ((lambda (_%g159997160018%_)
                               (let ((_%clauses160029%_
                                      (map _%clause-e159993%_
                                           _%g159997160018%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160029%_)
                                  _%stx159991%_)))
                             _%tl160000160015%_)))
                        (_%g159995160005%_ _%g159996160008%_)))))
            (_%g159994160031%_ _%stx159991%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159750%_ _%stx159751%_)
        (let* ((_%g159753159786%_
                (lambda (_%g159754159783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159754159783%_))))
               (_%g159752159987%_
                (lambda (_%g159754159789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159754159789%_))
                      (let ((_%e159759159791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159754159789%_))))
                        (let ((_%hd159760159794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159759159791%_)))
                              (_%tl159761159796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159759159791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159761159796%_))
                              (let ((_%e159762159799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159761159796%_))))
                                (let ((_%hd159763159802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159762159799%_)))
                                      (_%tl159764159804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159762159799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159763159802%_))
                                      (let ((_g161741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159763159802%_
                                                '0))))
                                        (begin
                                          (let ((_g161742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161741_)
                                                       (##values-length
                                                        _g161741_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161742_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161742_)))
                                          (let ((_%target159765159807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161741_ 0)))
                                                (_%tl159767159809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161741_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159767159809%_))
                                                (letrec ((_%loop159768159812%_
                                                          (lambda (_%hd159766159815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159772159817%_
                           _%hd159773159818%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159766159815%_))
                        (let ((_%e159769159820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159766159815%_))))
                          (let ((_%lp-hd159770159823%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159769159820%_)))
                                (_%lp-tl159771159825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159769159820%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159770159823%_))
                                (let ((_%e159776159828%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159770159823%_))))
                                  (let ((_%hd159777159831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159776159828%_)))
                                        (_%tl159778159833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159776159828%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159778159833%_))
                                        (let ((_%e159779159836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159778159833%_))))
                                          (let ((_%hd159780159839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159779159836%_)))
                                                (_%tl159781159841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159779159836%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159781159841%_))
                                                (_%loop159768159812%_
                                                 _%lp-tl159771159825%_
                                                 (cons _%hd159780159839%_
                                                       _%expr159772159817%_)
                                                 (cons _%hd159777159831%_
                                                       _%hd159773159818%_))
                                                (_%g159753159786%_
                                                 _%g159754159789%_))))
                                        (_%g159753159786%_
                                         _%g159754159789%_))))
                                (_%g159753159786%_ _%g159754159789%_))))
                        (let ((_%expr159774159844%_
                               (reverse _%expr159772159817%_))
                              (_%hd159775159845%_
                               (reverse _%hd159773159818%_)))
                          ((lambda (_%g159755159847%_
                                    _%g159756159848%_
                                    _%g159757159849%_
                                    _%g159758159850%_)
                             (let* ((_%g159869159885%_
                                     (lambda (_%g159870159882%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g159870159882%_))))
                                    (_%g159868159973%_
                                     (lambda (_%g159870159888%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g159870159888%_))
                                           (let ((_g161743_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g159870159888%_
                                                     '0))))
                                             (begin
                                               (let ((_g161744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161743_)
                                                            (##values-length
                                                             _g161743_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161744_)))
                                               (let ((_%target159872159890%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161743_
                                                         0)))
                                                     (_%tl159874159892%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161743_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl159874159892%_))
                                                     (letrec ((_%loop159875159895%_
                                                               (lambda (_%hd159873159898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr159879159900%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd159873159898%_))
                             (let ((_%e159876159902%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd159873159898%_))))
                               (let ((_%lp-hd159877159905%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e159876159902%_)))
                                     (_%lp-tl159878159907%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e159876159902%_))))
                                 (_%loop159875159895%_
                                  _%lp-tl159878159907%_
                                  (cons _%lp-hd159877159905%_
                                        _%expr159879159900%_))))
                             (let ((_%expr159880159910%_
                                    (reverse _%expr159879159900%_)))
                               ((lambda (_%g159871159912%_)
                                  (let ((__tmp161747
                                         (lambda ()
                                           (let* ((_%g159926159933%_
                                                   (lambda (_%g159927159930%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159927159930%_))))
                                                  (_%g159925159959%_
                                                   (lambda (_%g159927159936%_)
                                                     ((lambda (_%g159928159938%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159758159850%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159871159912%_
                                  _%g159757159849%_))
                               (let ((__tmp161748
                                      (lambda (_%g159948159952%_
                                               _%g159949159954%_
                                               _%g159950159956%_)
                                        (cons (cons _%g159949159954%_
                                                    (cons _%g159948159952%_
                                                          '()))
                                              _%g159950159956%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161748
                                  '()
                                  _%g159871159912%_
                                  _%g159757159849%_)))
                             _%g159928159938%_))
                 _%stx159751%_))
              _%g159927159936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159925159959%_
                                              (map (lambda (_%g159961159963%_)
                                                     (gxc#compile-e__1
                                                      _%self159750%_
                                                      _%g159961159963%_))
                                                   _%g159755159847%_)))))
                                        (__tmp161745
                                         (gxc#xform-let-locals
                                          (let ((__tmp161746
                                                 (lambda (_%g159965159968%_
                                                          _%g159966159970%_)
                                                   (cons _%g159965159968%_
                                                         _%g159966159970%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161746
                                             '()
                                             _%g159757159849%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161747
                                     gxc#current-compile-local-env
                                     __tmp161745)))
                                _%expr159880159910%_))))))
               (_%loop159875159895%_ _%target159872159890%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g159869159885%_
                                                      _%g159870159888%_)))))
                                           (_%g159869159885%_
                                            _%g159870159888%_)))))
                               (_%g159868159973%_
                                (map (lambda (_%g159975159977%_)
                                       (gxc#compile-e__1
                                        _%self159750%_
                                        _%g159975159977%_))
                                     (let ((__tmp161749
                                            (lambda (_%g159979159982%_
                                                     _%g159980159984%_)
                                              (cons _%g159979159982%_
                                                    _%g159980159984%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161749
                                        '()
                                        _%g159756159848%_))))))
                           _%tl159764159804%_
                           _%expr159774159844%_
                           _%hd159775159845%_
                           _%hd159760159794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159768159812%_
                                                   _%target159765159807%_
                                                   '()
                                                   '()))
                                                (_%g159753159786%_
                                                 _%g159754159789%_)))))
                                      (_%g159753159786%_ _%g159754159789%_))))
                              (_%g159753159786%_ _%g159754159789%_))))
                      (_%g159753159786%_ _%g159754159789%_)))))
          (_%g159752159987%_ _%stx159751%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159510%_ _%stx159511%_)
        (let* ((_%g159513159546%_
                (lambda (_%g159514159543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159514159543%_))))
               (_%g159512159747%_
                (lambda (_%g159514159549%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159514159549%_))
                      (let ((_%e159519159551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159514159549%_))))
                        (let ((_%hd159520159554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159519159551%_)))
                              (_%tl159521159556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159519159551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159521159556%_))
                              (let ((_%e159522159559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159521159556%_))))
                                (let ((_%hd159523159562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159522159559%_)))
                                      (_%tl159524159564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159522159559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159523159562%_))
                                      (let ((_g161750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159523159562%_
                                                '0))))
                                        (begin
                                          (let ((_g161751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161750_)
                                                       (##values-length
                                                        _g161750_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161751_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161751_)))
                                          (let ((_%target159525159567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161750_ 0)))
                                                (_%tl159527159569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161750_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159527159569%_))
                                                (letrec ((_%loop159528159572%_
                                                          (lambda (_%hd159526159575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159532159577%_
                           _%hd159533159578%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159526159575%_))
                        (let ((_%e159529159580%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159526159575%_))))
                          (let ((_%lp-hd159530159583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159529159580%_)))
                                (_%lp-tl159531159585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159529159580%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159530159583%_))
                                (let ((_%e159536159588%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159530159583%_))))
                                  (let ((_%hd159537159591%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159536159588%_)))
                                        (_%tl159538159593%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159536159588%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159538159593%_))
                                        (let ((_%e159539159596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159538159593%_))))
                                          (let ((_%hd159540159599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159539159596%_)))
                                                (_%tl159541159601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159539159596%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159541159601%_))
                                                (_%loop159528159572%_
                                                 _%lp-tl159531159585%_
                                                 (cons _%hd159540159599%_
                                                       _%expr159532159577%_)
                                                 (cons _%hd159537159591%_
                                                       _%hd159533159578%_))
                                                (_%g159513159546%_
                                                 _%g159514159549%_))))
                                        (_%g159513159546%_
                                         _%g159514159549%_))))
                                (_%g159513159546%_ _%g159514159549%_))))
                        (let ((_%expr159534159604%_
                               (reverse _%expr159532159577%_))
                              (_%hd159535159605%_
                               (reverse _%hd159533159578%_)))
                          ((lambda (_%g159515159607%_
                                    _%g159516159608%_
                                    _%g159517159609%_
                                    _%g159518159610%_)
                             (let ((__tmp161754
                                    (lambda ()
                                      (let* ((_%g159630159646%_
                                              (lambda (_%g159631159643%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159631159643%_))))
                                             (_%g159629159726%_
                                              (lambda (_%g159631159649%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159631159649%_))
                                                    (let ((_g161755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159631159649%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161756_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161755_)
                             (##values-length _g161755_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161756_ 2)))
                      (error "Context expects 2 values" _g161756_)))
                (let ((_%target159633159651%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161755_ 0)))
                      (_%tl159635159653%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161755_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159635159653%_))
                      (letrec ((_%loop159636159656%_
                                (lambda (_%hd159634159659%_
                                         _%expr159640159661%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159634159659%_))
                                      (let ((_%e159637159663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159634159659%_))))
                                        (let ((_%lp-hd159638159666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159637159663%_)))
                                              (_%lp-tl159639159668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159637159663%_))))
                                          (_%loop159636159656%_
                                           _%lp-tl159639159668%_
                                           (cons _%lp-hd159638159666%_
                                                 _%expr159640159661%_))))
                                      (let ((_%expr159641159671%_
                                             (reverse _%expr159640159661%_)))
                                        ((lambda (_%g159632159673%_)
                                           (let* ((_%g159687159694%_
                                                   (lambda (_%g159688159691%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159688159691%_))))
                                                  (_%g159686159719%_
                                                   (lambda (_%g159688159697%_)
                                                     ((lambda (_%g159689159699%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159518159610%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159632159673%_
                                  _%g159517159609%_))
                               (let ((__tmp161757
                                      (lambda (_%g159708159712%_
                                               _%g159709159714%_
                                               _%g159710159716%_)
                                        (cons (cons _%g159709159714%_
                                                    (cons _%g159708159712%_
                                                          '()))
                                              _%g159710159716%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161757
                                  '()
                                  _%g159632159673%_
                                  _%g159517159609%_)))
                             _%g159689159699%_))
                 _%stx159511%_))
              _%g159688159697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159686159719%_
                                              (map (lambda (_%g159721159723%_)
                                                     (gxc#compile-e__1
                                                      _%self159510%_
                                                      _%g159721159723%_))
                                                   _%g159515159607%_))))
                                         _%expr159641159671%_))))))
                        (_%loop159636159656%_ _%target159633159651%_ '()))
                      (_%g159630159646%_ _%g159631159649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159630159646%_
                                                     _%g159631159649%_)))))
                                        (_%g159629159726%_
                                         (map (lambda (_%g159728159730%_)
                                                (gxc#compile-e__1
                                                 _%self159510%_
                                                 _%g159728159730%_))
                                              (let ((__tmp161758
                                                     (lambda (_%g159732159735%_
                                                              _%g159733159737%_)
                                                       (cons _%g159732159735%_
                                                             _%g159733159737%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161758
                                                 '()
                                                 _%g159516159608%_)))))))
                                   (__tmp161752
                                    (gxc#xform-let-locals
                                     (let ((__tmp161753
                                            (lambda (_%g159739159742%_
                                                     _%g159740159744%_)
                                              (cons _%g159739159742%_
                                                    _%g159740159744%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161753
                                        '()
                                        _%g159517159609%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161754
                                gxc#current-compile-local-env
                                __tmp161752)))
                           _%tl159524159564%_
                           _%expr159534159604%_
                           _%hd159535159605%_
                           _%hd159520159554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159528159572%_
                                                   _%target159525159567%_
                                                   '()
                                                   '()))
                                                (_%g159513159546%_
                                                 _%g159514159549%_)))))
                                      (_%g159513159546%_ _%g159514159549%_))))
                              (_%g159513159546%_ _%g159514159549%_))))
                      (_%g159513159546%_ _%g159514159549%_)))))
          (_%g159512159747%_ _%stx159511%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159377%_)
        (letrec ((_%flatten159379%_
                  (lambda (_%maybe-lst159437%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159437%_))
                        (cons _%maybe-lst159437%_ '())
                        (let _%loop159439%_ ((_%rest159441%_
                                              _%maybe-lst159437%_)
                                             (_%result159442%_ '()))
                          (let* ((_%__stx161646161647%_ _%rest159441%_)
                                 (_%g159446159458%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161646161647%_)))))
                            (let ((_%__kont161648161649%_
                                   (lambda (_%g159448159496%_
                                            _%g159449159497%_)
                                     (_%loop159439%_
                                      _%g159448159496%_
                                      (let ((__tmp161759
                                             (_%flatten159379%_
                                              _%g159449159497%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159442%_
                                         __tmp161759)))))
                                  (_%__kont161650161651%_
                                   (lambda (_%g159453159470%_)
                                     (cons _%g159453159470%_
                                           _%result159442%_)))
                                  (_%__kont161652161653%_
                                   (lambda () _%result159442%_)))
                              (let ((_%g159444159483%_
                                     (lambda ()
                                       (let ((_%g159453159470%_
                                              _%__stx161646161647%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159453159470%_))
                                             (_%__kont161650161651%_
                                              _%g159453159470%_)
                                             (_%__kont161652161653%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161646161647%_))
                                    (let ((_%e159450159488%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161646161647%_))))
                                      (let ((_%tl159452159493%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159450159488%_)))
                                            (_%hd159451159491%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159450159488%_))))
                                        (_%__kont161648161649%_
                                         _%tl159452159493%_
                                         _%hd159451159491%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159444159483%_)))))))))))
          (let _%loop159381%_ ((_%rest159383%_
                                (_%flatten159379%_ _%bindings159377%_))
                               (_%locals159384%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159385159396%_ _%rest159383%_)
                   (_%E159389159400%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159385159396%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159392159425%_
                     (lambda (_%rest159422%_ _%id159423%_)
                       (_%loop159381%_
                        _%rest159422%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159423%_))
                              _%locals159384%_))))
                    (_%K159391159414%_
                     (lambda (_%id159412%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159412%_))
                             _%locals159384%_)))
                    (_%K159390159405%_ (lambda () _%locals159384%_)))
                (let ((_%try-match159387159419%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159385159396%_))
                             (let ((_%id159417%_ _%rest159385159396%_))
                               (_%K159391159414%_ _%id159417%_))
                             (_%K159390159405%_)))))
                  (if (pair? _%rest159385159396%_)
                      (let ((_%tl159394159430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159385159396%_)))
                            (_%hd159393159428%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159385159396%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159393159428%_))
                            (let ((_%id159433%_ _%hd159393159428%_)
                                  (_%rest159435%_ _%tl159394159430%_))
                              (_%K159392159425%_ _%rest159435%_ _%id159433%_))
                            (_%K159390159405%_)))
                      (_%try-match159387159419%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159329%_ _%stx159330%_)
        (let* ((_%g159332159343%_
                (lambda (_%g159333159340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159333159340%_))))
               (_%g159331159374%_
                (lambda (_%g159333159346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159333159346%_))
                      (let ((_%e159336159348%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159333159346%_))))
                        (let ((_%hd159337159351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159336159348%_)))
                              (_%tl159338159353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159336159348%_))))
                          ((lambda (_%g159334159356%_ _%g159335159357%_)
                             (let ((_%rands159372%_
                                    (map (lambda (_%g159367159369%_)
                                           (gxc#compile-e__1
                                            _%self159329%_
                                            _%g159367159369%_))
                                         _%g159334159356%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159335159357%_ _%rands159372%_)
                                _%stx159330%_)))
                           _%tl159338159353%_
                           _%hd159337159351%_)))
                      (_%g159332159343%_ _%g159333159346%_)))))
          (_%g159331159374%_ _%stx159330%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159259%_ _%stx159260%_)
        (let* ((_%g159262159279%_
                (lambda (_%g159263159276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159263159276%_))))
               (_%g159261159326%_
                (lambda (_%g159263159282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159263159282%_))
                      (let ((_%e159266159284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159263159282%_))))
                        (let ((_%hd159267159287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159266159284%_)))
                              (_%tl159268159289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159266159284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159268159289%_))
                              (let ((_%e159269159292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159268159289%_))))
                                (let ((_%hd159270159295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159269159292%_)))
                                      (_%tl159271159297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159269159292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159271159297%_))
                                      (let ((_%e159272159300%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159271159297%_))))
                                        (let ((_%hd159273159303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159272159300%_)))
                                              (_%tl159274159305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159272159300%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159274159305%_))
                                              ((lambda (_%g159264159308%_
                                                        _%g159265159309%_)
                                                 (let ((_%expr159324%_
                                                        (gxc#compile-e__1
                                                         _%self159259%_
                                                         _%g159264159308%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159265159309%_
                                                                (cons _%expr159324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159260%_)))
                                               _%hd159273159303%_
                                               _%hd159270159295%_)
                                              (_%g159262159279%_
                                               _%g159263159282%_))))
                                      (_%g159262159279%_ _%g159263159282%_))))
                              (_%g159262159279%_ _%g159263159282%_))))
                      (_%g159262159279%_ _%g159263159282%_)))))
          (_%g159261159326%_ _%stx159260%_))))))
