(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712573431)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133476%_)
        (let* ((_%self133478%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133480%_
                (let ((__tmp133658 (gxc#stx-car-e _%stx133476%_)))
                  (declare (not safe))
                  (method-ref _%self133478%_ __tmp133658))))
          (if _%$e133480%_
              ((lambda (_%method133483%_)
                 (declare (not safe))
                 (_%method133483%_ _%self133478%_ _%stx133476%_))
               _%$e133480%_)
              (let ((__tmp133660 (gxc#stx-car-e _%stx133476%_))
                    (__tmp133659
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133476%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133478%_
                       __tmp133660
                       __tmp133659))))))
    (define gxc#compile-e__1
      (lambda (_%self133487%_ _%stx133488%_)
        (let ((_%$e133490%_
               (let ((__tmp133661 (gxc#stx-car-e _%stx133488%_)))
                 (declare (not safe))
                 (method-ref _%self133487%_ __tmp133661))))
          (if _%$e133490%_
              ((lambda (_%method133493%_)
                 (declare (not safe))
                 (_%method133493%_ _%self133487%_ _%stx133488%_))
               _%$e133490%_)
              (let ((__tmp133663 (gxc#stx-car-e _%stx133488%_))
                    (__tmp133662
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133488%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133487%_
                       __tmp133663
                       __tmp133662))))))
    (define gxc#compile-e
      (lambda _g133665_
        (let ((_g133664_ (let () (declare (not safe)) (##length _g133665_))))
          (cond ((let () (declare (not safe)) (##fx= _g133664_ 1))
                 (apply gxc#compile-e__0 _g133665_))
                ((let () (declare (not safe)) (##fx= _g133664_ 2))
                 (apply gxc#compile-e__1 _g133665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133665_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133474%_)
        (let ((__tmp133666
               (car (let () (declare (not safe)) (gx#stx-e _%stx133474%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133666))))
    (define gxc#void-method (lambda (_%self133471%_ _%stx133472%_) '#!void))
    (define gxc#false-method (lambda (_%self133468%_ _%stx133469%_) '#f))
    (define gxc#true-method (lambda (_%self133465%_ _%stx133466%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133462%_ _%stx133463%_) _%stx133463%_))
    (define gxc#::void-expression::t
      (let ((__tmp133667 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133667
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133459%_
        (apply make-instance gxc#::void-expression::t _%$args133459%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133668
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
        (__make-promise __tmp133668)))
    (define gxc#::void-special-form::t
      (let ((__tmp133669 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133669
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133455%_
        (apply make-instance gxc#::void-special-form::t _%$args133455%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133670
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
        (__make-promise __tmp133670)))
    (define gxc#::void::t
      (let ((__tmp133671
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp133671 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133451%_
        (apply make-instance gxc#::void::t _%$args133451%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133672
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133672)))
    (define gxc#::false-expression::t
      (let ((__tmp133673 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133673
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133447%_
        (apply make-instance gxc#::false-expression::t _%$args133447%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133674
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
        (__make-promise __tmp133674)))
    (define gxc#::false-special-form::t
      (let ((__tmp133675 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133675
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133443%_
        (apply make-instance gxc#::false-special-form::t _%$args133443%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133676
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
        (__make-promise __tmp133676)))
    (define gxc#::false::t
      (let ((__tmp133677
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp133677 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133439%_
        (apply make-instance gxc#::false::t _%$args133439%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133678
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133678)))
    (define gxc#::identity-expression::t
      (let ((__tmp133679 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133679
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133435%_
        (apply make-instance gxc#::identity-expression::t _%$args133435%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133680
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
        (__make-promise __tmp133680)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133681 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133681
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133431%_
        (apply make-instance gxc#::identity-special-form::t _%$args133431%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133682
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
        (__make-promise __tmp133682)))
    (define gxc#::identity::t
      (let ((__tmp133683
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133683
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133427%_
        (apply make-instance gxc#::identity::t _%$args133427%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133684
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133684)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133685 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133685
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133423%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133423%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133686
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
        (__make-promise __tmp133686)))
    (define gxc#::basic-xform::t
      (let ((__tmp133687
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133687
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133419%_
        (apply make-instance gxc#::basic-xform::t _%$args133419%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133688
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
        (__make-promise __tmp133688)))
    (define gxc#apply-begin%
      (lambda (_%self133375%_ _%stx133376%_)
        (let* ((_%g133378133388%_
                (lambda (_%g133379133385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133379133385%_))))
               (_%g133377133415%_
                (lambda (_%g133379133391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133379133391%_))
                      (let ((_%e133383133393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133379133391%_))))
                        (let ((_%hd133382133396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133383133393%_)))
                              (_%tl133381133398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133383133393%_))))
                          ((lambda (_%L133401%_)
                             (for-each
                              (lambda (_%g133410133412%_)
                                (gxc#compile-e__1
                                 _%self133375%_
                                 _%g133410133412%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133401%_))))
                           _%tl133381133398%_)))
                      (_%g133378133388%_ _%g133379133391%_)))))
          (_%g133377133415%_ _%stx133376%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133336%_ _%stx133337%_)
        (let* ((_%g133339133349%_
                (lambda (_%g133340133346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133340133346%_))))
               (_%g133338133372%_
                (lambda (_%g133340133352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133340133352%_))
                      (let ((_%e133344133354%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133340133352%_))))
                        (let ((_%hd133343133357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133344133354%_)))
                              (_%tl133342133359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133344133354%_))))
                          ((lambda (_%L133362%_)
                             (gxc#compile-e__1
                              _%self133336%_
                              (last _%L133362%_)))
                           _%tl133342133359%_)))
                      (_%g133339133349%_ _%g133340133352%_)))))
          (_%g133338133372%_ _%stx133337%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133332%_ _%stx133333%_)
        (let ((__tmp133691
               (lambda () (gxc#apply-begin% _%self133332%_ _%stx133333%_)))
              (__tmp133689
               (let ((__tmp133690
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133690 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133691
           gx#current-expander-phi
           __tmp133689))))
    (define gxc#apply-module%
      (lambda (_%self133271%_ _%stx133272%_)
        (let* ((_%g133274133288%_
                (lambda (_%g133275133285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133275133285%_))))
               (_%g133273133329%_
                (lambda (_%g133275133291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133275133291%_))
                      (let ((_%e133280133293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133275133291%_))))
                        (let ((_%hd133279133296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133280133293%_)))
                              (_%tl133278133298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133280133293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133278133298%_))
                              (let ((_%e133283133301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133278133298%_))))
                                (let ((_%hd133282133304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133283133301%_)))
                                      (_%tl133281133306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133283133301%_))))
                                  ((lambda (_%L133309%_ _%L133310%_)
                                     (let* ((_%ctx133323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133310%_)))
                                            (_%ctx-stx133325%_
                                             (##structure-ref
                                              _%ctx133323%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133692
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133271%_
                                                _%ctx-stx133325%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133692
                                        gx#current-expander-context
                                        _%ctx133323%_)))
                                   _%tl133281133306%_
                                   _%hd133282133304%_)))
                              (_%g133274133288%_ _%g133275133291%_))))
                      (_%g133274133288%_ _%g133275133291%_)))))
          (_%g133273133329%_ _%stx133272%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133203%_ _%stx133204%_)
        (let* ((_%g133206133223%_
                (lambda (_%g133207133220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133207133220%_))))
               (_%g133205133268%_
                (lambda (_%g133207133226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133207133226%_))
                      (let ((_%e133212133228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133207133226%_))))
                        (let ((_%hd133211133231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133212133228%_)))
                              (_%tl133210133233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133212133228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133210133233%_))
                              (let ((_%e133215133236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133210133233%_))))
                                (let ((_%hd133214133239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133215133236%_)))
                                      (_%tl133213133241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133215133236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133213133241%_))
                                      (let ((_%e133218133244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133213133241%_))))
                                        (let ((_%hd133217133247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133218133244%_)))
                                              (_%tl133216133249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133218133244%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133216133249%_))
                                              ((lambda (_%L133252%_
                                                        _%L133253%_)
                                                 (gxc#compile-e__1
                                                  _%self133203%_
                                                  _%L133252%_))
                                               _%hd133217133247%_
                                               _%hd133214133239%_)
                                              (_%g133206133223%_
                                               _%g133207133226%_))))
                                      (_%g133206133223%_ _%g133207133226%_))))
                              (_%g133206133223%_ _%g133207133226%_))))
                      (_%g133206133223%_ _%g133207133226%_)))))
          (_%g133205133268%_ _%stx133204%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133135%_ _%stx133136%_)
        (let* ((_%g133138133155%_
                (lambda (_%g133139133152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133139133152%_))))
               (_%g133137133200%_
                (lambda (_%g133139133158%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133139133158%_))
                      (let ((_%e133144133160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133139133158%_))))
                        (let ((_%hd133143133163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133144133160%_)))
                              (_%tl133142133165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133144133160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133142133165%_))
                              (let ((_%e133147133168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133142133165%_))))
                                (let ((_%hd133146133171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133147133168%_)))
                                      (_%tl133145133173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133147133168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133145133173%_))
                                      (let ((_%e133150133176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133145133173%_))))
                                        (let ((_%hd133149133179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133150133176%_)))
                                              (_%tl133148133181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133150133176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133148133181%_))
                                              ((lambda (_%L133184%_
                                                        _%L133185%_)
                                                 (gxc#compile-e__1
                                                  _%self133135%_
                                                  _%L133184%_))
                                               _%hd133149133179%_
                                               _%hd133146133171%_)
                                              (_%g133138133155%_
                                               _%g133139133158%_))))
                                      (_%g133138133155%_ _%g133139133158%_))))
                              (_%g133138133155%_ _%g133139133158%_))))
                      (_%g133138133155%_ _%g133139133158%_)))))
          (_%g133137133200%_ _%stx133136%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133066%_ _%stx133067%_)
        (let* ((_%g133069133086%_
                (lambda (_%g133070133083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133070133083%_))))
               (_%g133068133132%_
                (lambda (_%g133070133089%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133070133089%_))
                      (let ((_%e133075133091%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133070133089%_))))
                        (let ((_%hd133074133094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133075133091%_)))
                              (_%tl133073133096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133075133091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133073133096%_))
                              (let ((_%e133078133099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133073133096%_))))
                                (let ((_%hd133077133102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133078133099%_)))
                                      (_%tl133076133104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133078133099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133076133104%_))
                                      (let ((_%e133081133107%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133076133104%_))))
                                        (let ((_%hd133080133110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133081133107%_)))
                                              (_%tl133079133112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133081133107%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133079133112%_))
                                              ((lambda (_%L133115%_
                                                        _%L133116%_)
                                                 (let ((__tmp133695
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133066%_
                                                           _%L133115%_)))
                                                       (__tmp133693
                                                        (let ((__tmp133694
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133694 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133695
                                                    gx#current-expander-phi
                                                    __tmp133693)))
                                               _%hd133080133110%_
                                               _%hd133077133102%_)
                                              (_%g133069133086%_
                                               _%g133070133089%_))))
                                      (_%g133069133086%_ _%g133070133089%_))))
                              (_%g133069133086%_ _%g133070133089%_))))
                      (_%g133069133086%_ _%g133070133089%_)))))
          (_%g133068133132%_ _%stx133067%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self132998%_ _%stx132999%_)
        (let* ((_%g133001133018%_
                (lambda (_%g133002133015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133002133015%_))))
               (_%g133000133063%_
                (lambda (_%g133002133021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133002133021%_))
                      (let ((_%e133007133023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133002133021%_))))
                        (let ((_%hd133006133026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133007133023%_)))
                              (_%tl133005133028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133007133023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133005133028%_))
                              (let ((_%e133010133031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133005133028%_))))
                                (let ((_%hd133009133034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133010133031%_)))
                                      (_%tl133008133036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133010133031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133008133036%_))
                                      (let ((_%e133013133039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133008133036%_))))
                                        (let ((_%hd133012133042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133013133039%_)))
                                              (_%tl133011133044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133013133039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133011133044%_))
                                              ((lambda (_%L133047%_
                                                        _%L133048%_)
                                                 (gxc#compile-e__1
                                                  _%self132998%_
                                                  _%L133047%_))
                                               _%hd133012133042%_
                                               _%hd133009133034%_)
                                              (_%g133001133018%_
                                               _%g133002133021%_))))
                                      (_%g133001133018%_ _%g133002133021%_))))
                              (_%g133001133018%_ _%g133002133021%_))))
                      (_%g133001133018%_ _%g133002133021%_)))))
          (_%g133000133063%_ _%stx132999%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self132880%_ _%stx132881%_)
        (let* ((_%g132883132911%_
                (lambda (_%g132884132908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132884132908%_))))
               (_%g132882132995%_
                (lambda (_%g132884132914%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132884132914%_))
                      (let ((_%e132889132916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132884132914%_))))
                        (let ((_%hd132888132919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132889132916%_)))
                              (_%tl132887132921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132889132916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132887132921%_))
                              (let ((_g133696_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132887132921%_
                                        '0))))
                                (begin
                                  (let ((_g133697_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133696_)
                                               (##vector-length _g133696_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133697_ 2)))
                                        (error "Context expects 2 values"
                                               _g133697_)))
                                  (let ((_%target132890132924%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133696_ 0)))
                                        (_%tl132892132926%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133696_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132892132926%_))
                                        (letrec ((_%loop132893132929%_
                                                  (lambda (_%hd132891132932%_
                                                           _%body132897132934%_
                                                           _%hd132898132936%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132891132932%_))
                                                        (let ((_%e132894132939%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132891132932%_))))
                  (let ((_%lp-hd132895132942%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132894132939%_)))
                        (_%lp-tl132896132944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132894132939%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd132895132942%_))
                        (let ((_%e132903132947%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd132895132942%_))))
                          (let ((_%hd132902132950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132903132947%_)))
                                (_%tl132901132952%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132903132947%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132901132952%_))
                                (let ((_%e132906132955%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl132901132952%_))))
                                  (let ((_%hd132905132958%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132906132955%_)))
                                        (_%tl132904132960%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132906132955%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132904132960%_))
                                        (_%loop132893132929%_
                                         _%lp-tl132896132944%_
                                         (cons _%hd132905132958%_
                                               _%body132897132934%_)
                                         (cons _%hd132902132950%_
                                               _%hd132898132936%_))
                                        (_%g132883132911%_
                                         _%g132884132914%_))))
                                (_%g132883132911%_ _%g132884132914%_))))
                        (_%g132883132911%_ _%g132884132914%_))))
                (let ((_%body132899132963%_ (reverse _%body132897132934%_))
                      (_%hd132900132965%_ (reverse _%hd132898132936%_)))
                  ((lambda (_%L132968%_ _%L132969%_)
                     (for-each
                      (lambda (_%g132983132985%_)
                        (gxc#compile-e__1 _%self132880%_ _%g132983132985%_))
                      (let ((__tmp133698
                             (lambda (_%g132987132990%_ _%g132988132992%_)
                               (cons _%g132987132990%_ _%g132988132992%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133698 '() _%L132968%_))))
                   _%body132899132963%_
                   _%hd132900132965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132893132929%_
                                           _%target132890132924%_
                                           '()
                                           '()))
                                        (_%g132883132911%_
                                         _%g132884132914%_)))))
                              (_%g132883132911%_ _%g132884132914%_))))
                      (_%g132883132911%_ _%g132884132914%_)))))
          (_%g132882132995%_ _%stx132881%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132733%_ _%stx132734%_)
        (let* ((_%g132736132771%_
                (lambda (_%g132737132768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132737132768%_))))
               (_%g132735132877%_
                (lambda (_%g132737132774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132737132774%_))
                      (let ((_%e132743132776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132737132774%_))))
                        (let ((_%hd132742132779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132743132776%_)))
                              (_%tl132741132781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132743132776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132741132781%_))
                              (let ((_%e132746132784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132741132781%_))))
                                (let ((_%hd132745132787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132746132784%_)))
                                      (_%tl132744132789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132746132784%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132745132787%_))
                                      (let ((_g133699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132745132787%_
                                                '0))))
                                        (begin
                                          (let ((_g133700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133699_)
                                                       (##vector-length
                                                        _g133699_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133700_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133700_)))
                                          (let ((_%target132747132792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133699_ 0)))
                                                (_%tl132749132794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133699_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132749132794%_))
                                                (letrec ((_%loop132750132797%_
                                                          (lambda (_%hd132748132800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132754132802%_
                           _%hd132755132804%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132748132800%_))
                        (let ((_%e132751132807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132748132800%_))))
                          (let ((_%lp-hd132752132810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132751132807%_)))
                                (_%lp-tl132753132812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132751132807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132752132810%_))
                                (let ((_%e132760132815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132752132810%_))))
                                  (let ((_%hd132759132818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132760132815%_)))
                                        (_%tl132758132820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132760132815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132758132820%_))
                                        (let ((_%e132763132823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132758132820%_))))
                                          (let ((_%hd132762132826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132763132823%_)))
                                                (_%tl132761132828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132763132823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132761132828%_))
                                                (_%loop132750132797%_
                                                 _%lp-tl132753132812%_
                                                 (cons _%hd132762132826%_
                                                       _%expr132754132802%_)
                                                 (cons _%hd132759132818%_
                                                       _%hd132755132804%_))
                                                (_%g132736132771%_
                                                 _%g132737132774%_))))
                                        (_%g132736132771%_
                                         _%g132737132774%_))))
                                (_%g132736132771%_ _%g132737132774%_))))
                        (let ((_%expr132756132831%_
                               (reverse _%expr132754132802%_))
                              (_%hd132757132833%_
                               (reverse _%hd132755132804%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132744132789%_))
                              (let ((_%e132766132836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132744132789%_))))
                                (let ((_%hd132765132839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132766132836%_)))
                                      (_%tl132764132841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132766132836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132764132841%_))
                                      ((lambda (_%L132844%_
                                                _%L132845%_
                                                _%L132846%_)
                                         (for-each
                                          (lambda (_%g132865132867%_)
                                            (gxc#compile-e__1
                                             _%self132733%_
                                             _%g132865132867%_))
                                          (let ((__tmp133702
                                                 (lambda (_%g132869132872%_
                                                          _%g132870132874%_)
                                                   (cons _%g132869132872%_
                                                         _%g132870132874%_)))
                                                (__tmp133701
                                                 (cons _%L132844%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133702
                                             __tmp133701
                                             _%L132845%_))))
                                       _%hd132765132839%_
                                       _%expr132756132831%_
                                       _%hd132757132833%_)
                                      (_%g132736132771%_ _%g132737132774%_))))
                              (_%g132736132771%_ _%g132737132774%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132750132797%_
                                                   _%target132747132792%_
                                                   '()
                                                   '()))
                                                (_%g132736132771%_
                                                 _%g132737132774%_)))))
                                      (_%g132736132771%_ _%g132737132774%_))))
                              (_%g132736132771%_ _%g132737132774%_))))
                      (_%g132736132771%_ _%g132737132774%_)))))
          (_%g132735132877%_ _%stx132734%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132678%_ _%stx132679%_)
        (let* ((_%g132681132695%_
                (lambda (_%g132682132692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132682132692%_))))
               (_%g132680132730%_
                (lambda (_%g132682132698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132682132698%_))
                      (let ((_%e132687132700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132682132698%_))))
                        (let ((_%hd132686132703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132687132700%_)))
                              (_%tl132685132705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132687132700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132685132705%_))
                              (let ((_%e132690132708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132685132705%_))))
                                (let ((_%hd132689132711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132690132708%_)))
                                      (_%tl132688132713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132690132708%_))))
                                  ((lambda (_%L132716%_ _%L132717%_)
                                     (gxc#compile-e__1
                                      _%self132678%_
                                      (last _%L132716%_)))
                                   _%tl132688132713%_
                                   _%hd132689132711%_)))
                              (_%g132681132695%_ _%g132682132698%_))))
                      (_%g132681132695%_ _%g132682132698%_)))))
          (_%g132680132730%_ _%stx132679%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132610%_ _%stx132611%_)
        (let* ((_%g132613132630%_
                (lambda (_%g132614132627%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132614132627%_))))
               (_%g132612132675%_
                (lambda (_%g132614132633%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132614132633%_))
                      (let ((_%e132619132635%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132614132633%_))))
                        (let ((_%hd132618132638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132619132635%_)))
                              (_%tl132617132640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132619132635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132617132640%_))
                              (let ((_%e132622132643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132617132640%_))))
                                (let ((_%hd132621132646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132622132643%_)))
                                      (_%tl132620132648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132622132643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132620132648%_))
                                      (let ((_%e132625132651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132620132648%_))))
                                        (let ((_%hd132624132654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132625132651%_)))
                                              (_%tl132623132656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132625132651%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132623132656%_))
                                              ((lambda (_%L132659%_
                                                        _%L132660%_)
                                                 (gxc#compile-e__1
                                                  _%self132610%_
                                                  _%L132659%_))
                                               _%hd132624132654%_
                                               _%hd132621132646%_)
                                              (_%g132613132630%_
                                               _%g132614132633%_))))
                                      (_%g132613132630%_ _%g132614132633%_))))
                              (_%g132613132630%_ _%g132614132633%_))))
                      (_%g132613132630%_ _%g132614132633%_)))))
          (_%g132612132675%_ _%stx132611%_))))
    (define gxc#apply-operands
      (lambda (_%self132523%_ _%stx132524%_)
        (let* ((_%g132526132545%_
                (lambda (_%g132527132542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132527132542%_))))
               (_%g132525132607%_
                (lambda (_%g132527132548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132527132548%_))
                      (let ((_%e132531132550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132527132548%_))))
                        (let ((_%hd132530132553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132531132550%_)))
                              (_%tl132529132555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132531132550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132529132555%_))
                              (let ((_g133703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132529132555%_
                                        '0))))
                                (begin
                                  (let ((_g133704_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133703_)
                                               (##vector-length _g133703_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133704_ 2)))
                                        (error "Context expects 2 values"
                                               _g133704_)))
                                  (let ((_%target132532132558%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133703_ 0)))
                                        (_%tl132534132560%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133703_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132534132560%_))
                                        (letrec ((_%loop132535132563%_
                                                  (lambda (_%hd132533132566%_
                                                           _%rands132539132568%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132533132566%_))
                                                        (let ((_%e132536132571%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132533132566%_))))
                  (let ((_%lp-hd132537132574%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132536132571%_)))
                        (_%lp-tl132538132576%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132536132571%_))))
                    (_%loop132535132563%_
                     _%lp-tl132538132576%_
                     (cons _%lp-hd132537132574%_ _%rands132539132568%_))))
                (let ((_%rands132540132579%_ (reverse _%rands132539132568%_)))
                  ((lambda (_%L132582%_)
                     (for-each
                      (lambda (_%g132595132597%_)
                        (gxc#compile-e__1 _%self132523%_ _%g132595132597%_))
                      (let ((__tmp133705
                             (lambda (_%g132599132602%_ _%g132600132604%_)
                               (cons _%g132599132602%_ _%g132600132604%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133705 '() _%L132582%_))))
                   _%rands132540132579%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132535132563%_
                                           _%target132532132558%_
                                           '()))
                                        (_%g132526132545%_
                                         _%g132527132548%_)))))
                              (_%g132526132545%_ _%g132527132548%_))))
                      (_%g132526132545%_ _%g132527132548%_)))))
          (_%g132525132607%_ _%stx132524%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132520%_ _%src-stx132521%_)
        (let ((__tmp133706
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132521%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132520%_ __tmp133706))))
    (define gxc#xform-begin%
      (lambda (_%self132475%_ _%stx132476%_)
        (let* ((_%g132478132488%_
                (lambda (_%g132479132485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132479132485%_))))
               (_%g132477132517%_
                (lambda (_%g132479132491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132479132491%_))
                      (let ((_%e132483132493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132479132491%_))))
                        (let ((_%hd132482132496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132483132493%_)))
                              (_%tl132481132498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132483132493%_))))
                          ((lambda (_%L132501%_)
                             (let ((_%forms132515%_
                                    (map (lambda (_%g132510132512%_)
                                           (gxc#compile-e__1
                                            _%self132475%_
                                            _%g132510132512%_))
                                         _%L132501%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms132515%_)
                                _%stx132476%_)))
                           _%tl132481132498%_)))
                      (_%g132478132488%_ _%g132479132491%_)))))
          (_%g132477132517%_ _%stx132476%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132429%_ _%stx132430%_)
        (let* ((_%g132432132442%_
                (lambda (_%g132433132439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132433132439%_))))
               (_%g132431132472%_
                (lambda (_%g132433132445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132433132445%_))
                      (let ((_%e132437132447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132433132445%_))))
                        (let ((_%hd132436132450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132437132447%_)))
                              (_%tl132435132452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132437132447%_))))
                          ((lambda (_%L132455%_)
                             (let ((__tmp133709
                                    (lambda ()
                                      (let ((_%forms132470%_
                                             (map (lambda (_%g132465132467%_)
                                                    (gxc#compile-e__1
                                                     _%self132429%_
                                                     _%g132465132467%_))
                                                  _%L132455%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms132470%_)
                                         _%stx132430%_))))
                                   (__tmp133707
                                    (let ((__tmp133708
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133708 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133709
                                gx#current-expander-phi
                                __tmp133707)))
                           _%tl132435132452%_)))
                      (_%g132432132442%_ _%g132433132445%_)))))
          (_%g132431132472%_ _%stx132430%_))))
    (define gxc#xform-module%
      (lambda (_%self132366%_ _%stx132367%_)
        (let* ((_%g132369132383%_
                (lambda (_%g132370132380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132370132380%_))))
               (_%g132368132426%_
                (lambda (_%g132370132386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132370132386%_))
                      (let ((_%e132375132388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132370132386%_))))
                        (let ((_%hd132374132391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132375132388%_)))
                              (_%tl132373132393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132375132388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132373132393%_))
                              (let ((_%e132378132396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132373132393%_))))
                                (let ((_%hd132377132399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132378132396%_)))
                                      (_%tl132376132401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132378132396%_))))
                                  ((lambda (_%L132404%_ _%L132405%_)
                                     (let* ((_%ctx132418%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132405%_)))
                                            (_%code132420%_
                                             (##structure-ref
                                              _%ctx132418%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132423%_
                                             (let ((__tmp133710
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self132366%_
                                                       _%code132420%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133710
                                                gx#current-expander-context
                                                _%ctx132418%_))))
                                       (##structure-set!
                                        _%ctx132418%_
                                        _%code132423%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L132405%_
                                                    (cons _%code132423%_ '())))
                                        _%stx132367%_)))
                                   _%tl132376132401%_
                                   _%hd132377132399%_)))
                              (_%g132369132383%_ _%g132370132386%_))))
                      (_%g132369132383%_ _%g132370132386%_)))))
          (_%g132368132426%_ _%stx132367%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132296%_ _%stx132297%_)
        (let* ((_%g132299132316%_
                (lambda (_%g132300132313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132300132313%_))))
               (_%g132298132363%_
                (lambda (_%g132300132319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132300132319%_))
                      (let ((_%e132305132321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132300132319%_))))
                        (let ((_%hd132304132324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132305132321%_)))
                              (_%tl132303132326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132305132321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132303132326%_))
                              (let ((_%e132308132329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132303132326%_))))
                                (let ((_%hd132307132332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132308132329%_)))
                                      (_%tl132306132334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132308132329%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132306132334%_))
                                      (let ((_%e132311132337%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132306132334%_))))
                                        (let ((_%hd132310132340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132311132337%_)))
                                              (_%tl132309132342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132311132337%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132309132342%_))
                                              ((lambda (_%L132345%_
                                                        _%L132346%_)
                                                 (let ((_%expr132361%_
                                                        (gxc#compile-e__1
                                                         _%self132296%_
                                                         _%L132345%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L132346%_
                                                                (cons _%expr132361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132297%_)))
                                               _%hd132310132340%_
                                               _%hd132307132332%_)
                                              (_%g132299132316%_
                                               _%g132300132319%_))))
                                      (_%g132299132316%_ _%g132300132319%_))))
                              (_%g132299132316%_ _%g132300132319%_))))
                      (_%g132299132316%_ _%g132300132319%_)))))
          (_%g132298132363%_ _%stx132297%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132225%_ _%stx132226%_)
        (let* ((_%g132228132245%_
                (lambda (_%g132229132242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132229132242%_))))
               (_%g132227132293%_
                (lambda (_%g132229132248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132229132248%_))
                      (let ((_%e132234132250%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132229132248%_))))
                        (let ((_%hd132233132253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132234132250%_)))
                              (_%tl132232132255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132234132250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132232132255%_))
                              (let ((_%e132237132258%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132232132255%_))))
                                (let ((_%hd132236132261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132237132258%_)))
                                      (_%tl132235132263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132237132258%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132235132263%_))
                                      (let ((_%e132240132266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132235132263%_))))
                                        (let ((_%hd132239132269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132240132266%_)))
                                              (_%tl132238132271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132240132266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132238132271%_))
                                              ((lambda (_%L132274%_
                                                        _%L132275%_)
                                                 (let ((__tmp133713
                                                        (lambda ()
                                                          (let ((_%expr132291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132225%_ _%L132274%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132275%_ (cons _%expr132291%_ '())))
                     _%stx132226%_))))
               (__tmp133711
                (let ((__tmp133712
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133712 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133713
                                                    gx#current-expander-phi
                                                    __tmp133711)))
                                               _%hd132239132269%_
                                               _%hd132236132261%_)
                                              (_%g132228132245%_
                                               _%g132229132248%_))))
                                      (_%g132228132245%_ _%g132229132248%_))))
                              (_%g132228132245%_ _%g132229132248%_))))
                      (_%g132228132245%_ _%g132229132248%_)))))
          (_%g132227132293%_ _%stx132226%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132155%_ _%stx132156%_)
        (let* ((_%g132158132175%_
                (lambda (_%g132159132172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132159132172%_))))
               (_%g132157132222%_
                (lambda (_%g132159132178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132159132178%_))
                      (let ((_%e132164132180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132159132178%_))))
                        (let ((_%hd132163132183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132164132180%_)))
                              (_%tl132162132185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132164132180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132162132185%_))
                              (let ((_%e132167132188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132162132185%_))))
                                (let ((_%hd132166132191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132167132188%_)))
                                      (_%tl132165132193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132167132188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132165132193%_))
                                      (let ((_%e132170132196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132165132193%_))))
                                        (let ((_%hd132169132199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132170132196%_)))
                                              (_%tl132168132201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132170132196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132168132201%_))
                                              ((lambda (_%L132204%_
                                                        _%L132205%_)
                                                 (let ((_%expr132220%_
                                                        (gxc#compile-e__1
                                                         _%self132155%_
                                                         _%L132204%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132205%_
                                                                (cons _%expr132220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132156%_)))
                                               _%hd132169132199%_
                                               _%hd132166132191%_)
                                              (_%g132158132175%_
                                               _%g132159132178%_))))
                                      (_%g132158132175%_ _%g132159132178%_))))
                              (_%g132158132175%_ _%g132159132178%_))))
                      (_%g132158132175%_ _%g132159132178%_)))))
          (_%g132157132222%_ _%stx132156%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132093%_ _%stx132094%_)
        (let* ((_%g132096132110%_
                (lambda (_%g132097132107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132097132107%_))))
               (_%g132095132152%_
                (lambda (_%g132097132113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132097132113%_))
                      (let ((_%e132102132115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132097132113%_))))
                        (let ((_%hd132101132118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132102132115%_)))
                              (_%tl132100132120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132102132115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132100132120%_))
                              (let ((_%e132105132123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132100132120%_))))
                                (let ((_%hd132104132126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132105132123%_)))
                                      (_%tl132103132128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132105132123%_))))
                                  ((lambda (_%L132131%_ _%L132132%_)
                                     (let ((__tmp133715
                                            (lambda ()
                                              (let ((_%body132150%_
                                                     (map (lambda (_%g132145132147%_)
                                                            (gxc#compile-e__1
                                                             _%self132093%_
                                                             _%g132145132147%_))
                                                          _%L132131%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132132%_
                                                             _%body132150%_))
                                                 _%stx132094%_))))
                                           (__tmp133714
                                            (gxc#xform-let-locals
                                             (cons _%L132132%_ '()))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133715
                                        gxc#current-compile-local-env
                                        __tmp133714)))
                                   _%tl132103132128%_
                                   _%hd132104132126%_)))
                              (_%g132096132110%_ _%g132097132113%_))))
                      (_%g132096132110%_ _%g132097132113%_)))))
          (_%g132095132152%_ _%stx132094%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132001%_ _%stx132002%_)
        (letrec ((_%clause-e132004%_
                  (lambda (_%clause132045%_)
                    (let* ((_%g132047132058%_
                            (lambda (_%g132048132055%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132048132055%_))))
                           (_%g132046132090%_
                            (lambda (_%g132048132061%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132048132061%_))
                                  (let ((_%e132053132063%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132048132061%_))))
                                    (let ((_%hd132052132066%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132053132063%_)))
                                          (_%tl132051132068%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132053132063%_))))
                                      ((lambda (_%L132071%_ _%L132072%_)
                                         (let ((__tmp133717
                                                (lambda ()
                                                  (let ((_%body132088%_
                                                         (map (lambda (_%g132083132085%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132001%_
                         _%g132083132085%_))
                      _%L132071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132072%_
                                                          _%body132088%_))))
                                               (__tmp133716
                                                (gxc#xform-let-locals
                                                 (cons _%L132072%_ '()))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133717
                                            gxc#current-compile-local-env
                                            __tmp133716)))
                                       _%tl132051132068%_
                                       _%hd132052132066%_)))
                                  (_%g132047132058%_ _%g132048132061%_)))))
                      (_%g132046132090%_ _%clause132045%_)))))
          (let* ((_%g132006132016%_
                  (lambda (_%g132007132013%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132007132013%_))))
                 (_%g132005132042%_
                  (lambda (_%g132007132019%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132007132019%_))
                        (let ((_%e132011132021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132007132019%_))))
                          (let ((_%hd132010132024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132011132021%_)))
                                (_%tl132009132026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132011132021%_))))
                            ((lambda (_%L132029%_)
                               (let ((_%clauses132040%_
                                      (map _%clause-e132004%_ _%L132029%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132040%_)
                                  _%stx132002%_)))
                             _%tl132009132026%_)))
                        (_%g132006132016%_ _%g132007132019%_)))))
            (_%g132005132042%_ _%stx132002%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131755%_ _%stx131756%_)
        (let* ((_%g131758131791%_
                (lambda (_%g131759131788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131759131788%_))))
               (_%g131757131998%_
                (lambda (_%g131759131794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131759131794%_))
                      (let ((_%e131766131796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131759131794%_))))
                        (let ((_%hd131765131799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131766131796%_)))
                              (_%tl131764131801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131766131796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131764131801%_))
                              (let ((_%e131769131804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131764131801%_))))
                                (let ((_%hd131768131807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131769131804%_)))
                                      (_%tl131767131809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131769131804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131768131807%_))
                                      (let ((_g133718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131768131807%_
                                                '0))))
                                        (begin
                                          (let ((_g133719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133718_)
                                                       (##vector-length
                                                        _g133718_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133719_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133719_)))
                                          (let ((_%target131770131812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133718_ 0)))
                                                (_%tl131772131814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133718_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131772131814%_))
                                                (letrec ((_%loop131773131817%_
                                                          (lambda (_%hd131771131820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131777131822%_
                           _%hd131778131824%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131771131820%_))
                        (let ((_%e131774131827%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131771131820%_))))
                          (let ((_%lp-hd131775131830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131774131827%_)))
                                (_%lp-tl131776131832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131774131827%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131775131830%_))
                                (let ((_%e131783131835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131775131830%_))))
                                  (let ((_%hd131782131838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131783131835%_)))
                                        (_%tl131781131840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131783131835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131781131840%_))
                                        (let ((_%e131786131843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131781131840%_))))
                                          (let ((_%hd131785131846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131786131843%_)))
                                                (_%tl131784131848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131786131843%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131784131848%_))
                                                (_%loop131773131817%_
                                                 _%lp-tl131776131832%_
                                                 (cons _%hd131785131846%_
                                                       _%expr131777131822%_)
                                                 (cons _%hd131782131838%_
                                                       _%hd131778131824%_))
                                                (_%g131758131791%_
                                                 _%g131759131794%_))))
                                        (_%g131758131791%_
                                         _%g131759131794%_))))
                                (_%g131758131791%_ _%g131759131794%_))))
                        (let ((_%expr131779131851%_
                               (reverse _%expr131777131822%_))
                              (_%hd131780131853%_
                               (reverse _%hd131778131824%_)))
                          ((lambda (_%L131856%_
                                    _%L131857%_
                                    _%L131858%_
                                    _%L131859%_)
                             (let* ((_%g131878131894%_
                                     (lambda (_%g131879131891%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g131879131891%_))))
                                    (_%g131877131984%_
                                     (lambda (_%g131879131897%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g131879131897%_))
                                           (let ((_g133720_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g131879131897%_
                                                     '0))))
                                             (begin
                                               (let ((_g133721_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133720_)
                                                            (##vector-length
                                                             _g133720_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133721_)))
                                               (let ((_%target131881131899%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133720_
                                                         0)))
                                                     (_%tl131883131901%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133720_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl131883131901%_))
                                                     (letrec ((_%loop131884131904%_
                                                               (lambda (_%hd131882131907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr131888131909%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd131882131907%_))
                             (let ((_%e131885131912%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd131882131907%_))))
                               (let ((_%lp-hd131886131915%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e131885131912%_)))
                                     (_%lp-tl131887131917%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e131885131912%_))))
                                 (_%loop131884131904%_
                                  _%lp-tl131887131917%_
                                  (cons _%lp-hd131886131915%_
                                        _%expr131888131909%_))))
                             (let ((_%expr131889131920%_
                                    (reverse _%expr131888131909%_)))
                               ((lambda (_%L131923%_)
                                  (let ((__tmp133724
                                         (lambda ()
                                           (let* ((_%g131937131944%_
                                                   (lambda (_%g131938131941%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131938131941%_))))
                                                  (_%g131936131970%_
                                                   (lambda (_%g131938131947%_)
                                                     ((lambda (_%L131949%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131859%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131923%_
                                  _%L131858%_))
                               (let ((__tmp133725
                                      (lambda (_%g131959131963%_
                                               _%g131960131965%_
                                               _%g131961131967%_)
                                        (cons (cons _%g131960131965%_
                                                    (cons _%g131959131963%_
                                                          '()))
                                              _%g131961131967%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133725
                                  '()
                                  _%L131923%_
                                  _%L131858%_)))
                             _%L131949%_))
                 _%stx131756%_))
              _%g131938131947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131936131970%_
                                              (map (lambda (_%g131972131974%_)
                                                     (gxc#compile-e__1
                                                      _%self131755%_
                                                      _%g131972131974%_))
                                                   _%L131856%_)))))
                                        (__tmp133722
                                         (gxc#xform-let-locals
                                          (let ((__tmp133723
                                                 (lambda (_%g131976131979%_
                                                          _%g131977131981%_)
                                                   (cons _%g131976131979%_
                                                         _%g131977131981%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133723
                                             '()
                                             _%L131858%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp133724
                                     gxc#current-compile-local-env
                                     __tmp133722)))
                                _%expr131889131920%_))))))
               (_%loop131884131904%_ _%target131881131899%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g131878131894%_
                                                      _%g131879131897%_)))))
                                           (_%g131878131894%_
                                            _%g131879131897%_)))))
                               (_%g131877131984%_
                                (map (lambda (_%g131986131988%_)
                                       (gxc#compile-e__1
                                        _%self131755%_
                                        _%g131986131988%_))
                                     (let ((__tmp133726
                                            (lambda (_%g131990131993%_
                                                     _%g131991131995%_)
                                              (cons _%g131990131993%_
                                                    _%g131991131995%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133726
                                        '()
                                        _%L131857%_))))))
                           _%tl131767131809%_
                           _%expr131779131851%_
                           _%hd131780131853%_
                           _%hd131765131799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131773131817%_
                                                   _%target131770131812%_
                                                   '()
                                                   '()))
                                                (_%g131758131791%_
                                                 _%g131759131794%_)))))
                                      (_%g131758131791%_ _%g131759131794%_))))
                              (_%g131758131791%_ _%g131759131794%_))))
                      (_%g131758131791%_ _%g131759131794%_)))))
          (_%g131757131998%_ _%stx131756%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131509%_ _%stx131510%_)
        (let* ((_%g131512131545%_
                (lambda (_%g131513131542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131513131542%_))))
               (_%g131511131752%_
                (lambda (_%g131513131548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131513131548%_))
                      (let ((_%e131520131550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131513131548%_))))
                        (let ((_%hd131519131553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131520131550%_)))
                              (_%tl131518131555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131520131550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131518131555%_))
                              (let ((_%e131523131558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131518131555%_))))
                                (let ((_%hd131522131561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131523131558%_)))
                                      (_%tl131521131563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131523131558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131522131561%_))
                                      (let ((_g133727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131522131561%_
                                                '0))))
                                        (begin
                                          (let ((_g133728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133727_)
                                                       (##vector-length
                                                        _g133727_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133728_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133728_)))
                                          (let ((_%target131524131566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133727_ 0)))
                                                (_%tl131526131568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133727_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131526131568%_))
                                                (letrec ((_%loop131527131571%_
                                                          (lambda (_%hd131525131574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131531131576%_
                           _%hd131532131578%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131525131574%_))
                        (let ((_%e131528131581%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131525131574%_))))
                          (let ((_%lp-hd131529131584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131528131581%_)))
                                (_%lp-tl131530131586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131528131581%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131529131584%_))
                                (let ((_%e131537131589%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131529131584%_))))
                                  (let ((_%hd131536131592%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131537131589%_)))
                                        (_%tl131535131594%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131537131589%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131535131594%_))
                                        (let ((_%e131540131597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131535131594%_))))
                                          (let ((_%hd131539131600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131540131597%_)))
                                                (_%tl131538131602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131540131597%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131538131602%_))
                                                (_%loop131527131571%_
                                                 _%lp-tl131530131586%_
                                                 (cons _%hd131539131600%_
                                                       _%expr131531131576%_)
                                                 (cons _%hd131536131592%_
                                                       _%hd131532131578%_))
                                                (_%g131512131545%_
                                                 _%g131513131548%_))))
                                        (_%g131512131545%_
                                         _%g131513131548%_))))
                                (_%g131512131545%_ _%g131513131548%_))))
                        (let ((_%expr131533131605%_
                               (reverse _%expr131531131576%_))
                              (_%hd131534131607%_
                               (reverse _%hd131532131578%_)))
                          ((lambda (_%L131610%_
                                    _%L131611%_
                                    _%L131612%_
                                    _%L131613%_)
                             (let ((__tmp133731
                                    (lambda ()
                                      (let* ((_%g131633131649%_
                                              (lambda (_%g131634131646%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131634131646%_))))
                                             (_%g131632131731%_
                                              (lambda (_%g131634131652%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131634131652%_))
                                                    (let ((_g133732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131634131652%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133732_)
                             (##vector-length _g133732_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133733_ 2)))
                      (error "Context expects 2 values" _g133733_)))
                (let ((_%target131636131654%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133732_ 0)))
                      (_%tl131638131656%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133732_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131638131656%_))
                      (letrec ((_%loop131639131659%_
                                (lambda (_%hd131637131662%_
                                         _%expr131643131664%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131637131662%_))
                                      (let ((_%e131640131667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131637131662%_))))
                                        (let ((_%lp-hd131641131670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131640131667%_)))
                                              (_%lp-tl131642131672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131640131667%_))))
                                          (_%loop131639131659%_
                                           _%lp-tl131642131672%_
                                           (cons _%lp-hd131641131670%_
                                                 _%expr131643131664%_))))
                                      (let ((_%expr131644131675%_
                                             (reverse _%expr131643131664%_)))
                                        ((lambda (_%L131678%_)
                                           (let* ((_%g131692131699%_
                                                   (lambda (_%g131693131696%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131693131696%_))))
                                                  (_%g131691131724%_
                                                   (lambda (_%g131693131702%_)
                                                     ((lambda (_%L131704%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131613%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131678%_
                                  _%L131612%_))
                               (let ((__tmp133734
                                      (lambda (_%g131713131717%_
                                               _%g131714131719%_
                                               _%g131715131721%_)
                                        (cons (cons _%g131714131719%_
                                                    (cons _%g131713131717%_
                                                          '()))
                                              _%g131715131721%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133734
                                  '()
                                  _%L131678%_
                                  _%L131612%_)))
                             _%L131704%_))
                 _%stx131510%_))
              _%g131693131702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131691131724%_
                                              (map (lambda (_%g131726131728%_)
                                                     (gxc#compile-e__1
                                                      _%self131509%_
                                                      _%g131726131728%_))
                                                   _%L131610%_))))
                                         _%expr131644131675%_))))))
                        (_%loop131639131659%_ _%target131636131654%_ '()))
                      (_%g131633131649%_ _%g131634131652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g131633131649%_
                                                     _%g131634131652%_)))))
                                        (_%g131632131731%_
                                         (map (lambda (_%g131733131735%_)
                                                (gxc#compile-e__1
                                                 _%self131509%_
                                                 _%g131733131735%_))
                                              (let ((__tmp133735
                                                     (lambda (_%g131737131740%_
                                                              _%g131738131742%_)
                                                       (cons _%g131737131740%_
                                                             _%g131738131742%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp133735
                                                 '()
                                                 _%L131611%_)))))))
                                   (__tmp133729
                                    (gxc#xform-let-locals
                                     (let ((__tmp133730
                                            (lambda (_%g131744131747%_
                                                     _%g131745131749%_)
                                              (cons _%g131744131747%_
                                                    _%g131745131749%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133730
                                        '()
                                        _%L131612%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133731
                                gxc#current-compile-local-env
                                __tmp133729)))
                           _%tl131521131563%_
                           _%expr131533131605%_
                           _%hd131534131607%_
                           _%hd131519131553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131527131571%_
                                                   _%target131524131566%_
                                                   '()
                                                   '()))
                                                (_%g131512131545%_
                                                 _%g131513131548%_)))))
                                      (_%g131512131545%_ _%g131513131548%_))))
                              (_%g131512131545%_ _%g131513131548%_))))
                      (_%g131512131545%_ _%g131513131548%_)))))
          (_%g131511131752%_ _%stx131510%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131413%_)
        (let _%loop131415%_ ((_%rest131417%_ _%bindings131413%_)
                             (_%locals131418%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131419131427%_ _%rest131417%_)
                 (_%else131421131435%_ (lambda () _%locals131418%_))
                 (_%K131423131497%_
                  (lambda (_%rest131438%_ _%bind131439%_)
                    (let _%loop-bind131441%_ ((_%bind131443%_ _%bind131439%_)
                                              (_%locals131444%_
                                               _%locals131418%_))
                      (let* ((_%bind131445131456%_ _%bind131443%_)
                             (_%E131449131460%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131445131456%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131452131485%_
                               (lambda (_%bind-rest131482%_ _%id131483%_)
                                 (_%loop-bind131441%_
                                  _%bind-rest131482%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131483%_))
                                        _%locals131444%_))))
                              (_%K131451131474%_
                               (lambda (_%id131472%_)
                                 (_%loop131415%_
                                  _%rest131438%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131472%_))
                                        _%locals131444%_))))
                              (_%K131450131465%_
                               (lambda ()
                                 (_%loop131415%_
                                  _%rest131438%_
                                  _%locals131444%_))))
                          (let ((_%try-match131447131479%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131445131456%_))
                                       (let ((_%id131477%_
                                              _%bind131445131456%_))
                                         (_%K131451131474%_ _%id131477%_))
                                       (_%K131450131465%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131445131456%_))
                                (let ((_%tl131454131490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131445131456%_)))
                                      (_%hd131453131488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131445131456%_))))
                                  (let ((_%id131493%_ _%hd131453131488%_)
                                        (_%bind-rest131495%_
                                         _%tl131454131490%_))
                                    (_%K131452131485%_
                                     _%bind-rest131495%_
                                     _%id131493%_)))
                                (_%try-match131447131479%_)))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131419131427%_))
                (let ((_%hd131424131500%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131419131427%_)))
                      (_%tl131425131502%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131419131427%_))))
                  (let* ((_%bind131505%_ _%hd131424131500%_)
                         (_%rest131507%_ _%tl131425131502%_))
                    (_%K131423131497%_ _%rest131507%_ _%bind131505%_)))
                (_%else131421131435%_))))))
    (define gxc#xform-operands
      (lambda (_%self131365%_ _%stx131366%_)
        (let* ((_%g131368131379%_
                (lambda (_%g131369131376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131369131376%_))))
               (_%g131367131410%_
                (lambda (_%g131369131382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131369131382%_))
                      (let ((_%e131374131384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131369131382%_))))
                        (let ((_%hd131373131387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131374131384%_)))
                              (_%tl131372131389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131374131384%_))))
                          ((lambda (_%L131392%_ _%L131393%_)
                             (let ((_%rands131408%_
                                    (map (lambda (_%g131403131405%_)
                                           (gxc#compile-e__1
                                            _%self131365%_
                                            _%g131403131405%_))
                                         _%L131392%_)))
                               (gxc#xform-wrap-source
                                (cons _%L131393%_ _%rands131408%_)
                                _%stx131366%_)))
                           _%tl131372131389%_
                           _%hd131373131387%_)))
                      (_%g131368131379%_ _%g131369131382%_)))))
          (_%g131367131410%_ _%stx131366%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131295%_ _%stx131296%_)
        (let* ((_%g131298131315%_
                (lambda (_%g131299131312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131299131312%_))))
               (_%g131297131362%_
                (lambda (_%g131299131318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131299131318%_))
                      (let ((_%e131304131320%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131299131318%_))))
                        (let ((_%hd131303131323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131304131320%_)))
                              (_%tl131302131325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131304131320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131302131325%_))
                              (let ((_%e131307131328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131302131325%_))))
                                (let ((_%hd131306131331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131307131328%_)))
                                      (_%tl131305131333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131307131328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131305131333%_))
                                      (let ((_%e131310131336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131305131333%_))))
                                        (let ((_%hd131309131339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131310131336%_)))
                                              (_%tl131308131341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131310131336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131308131341%_))
                                              ((lambda (_%L131344%_
                                                        _%L131345%_)
                                                 (let ((_%expr131360%_
                                                        (gxc#compile-e__1
                                                         _%self131295%_
                                                         _%L131344%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L131345%_
                                                                (cons _%expr131360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131296%_)))
                                               _%hd131309131339%_
                                               _%hd131306131331%_)
                                              (_%g131298131315%_
                                               _%g131299131318%_))))
                                      (_%g131298131315%_ _%g131299131318%_))))
                              (_%g131298131315%_ _%g131299131318%_))))
                      (_%g131298131315%_ _%g131299131318%_)))))
          (_%g131297131362%_ _%stx131296%_))))))
