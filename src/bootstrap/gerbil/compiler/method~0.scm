(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712697256)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133612%_)
        (let* ((_%self133614%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133616%_
                (let ((__tmp133794 (gxc#stx-car-e _%stx133612%_)))
                  (declare (not safe))
                  (method-ref _%self133614%_ __tmp133794))))
          (if _%$e133616%_
              ((lambda (_%method133619%_)
                 (declare (not safe))
                 (_%method133619%_ _%self133614%_ _%stx133612%_))
               _%$e133616%_)
              (let ((__tmp133796 (gxc#stx-car-e _%stx133612%_))
                    (__tmp133795
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133612%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133614%_
                       __tmp133796
                       __tmp133795))))))
    (define gxc#compile-e__1
      (lambda (_%self133623%_ _%stx133624%_)
        (let ((_%$e133626%_
               (let ((__tmp133797 (gxc#stx-car-e _%stx133624%_)))
                 (declare (not safe))
                 (method-ref _%self133623%_ __tmp133797))))
          (if _%$e133626%_
              ((lambda (_%method133629%_)
                 (declare (not safe))
                 (_%method133629%_ _%self133623%_ _%stx133624%_))
               _%$e133626%_)
              (let ((__tmp133799 (gxc#stx-car-e _%stx133624%_))
                    (__tmp133798
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133624%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133623%_
                       __tmp133799
                       __tmp133798))))))
    (define gxc#compile-e
      (lambda _g133801_
        (let ((_g133800_ (let () (declare (not safe)) (##length _g133801_))))
          (cond ((let () (declare (not safe)) (##fx= _g133800_ 1))
                 (apply gxc#compile-e__0 _g133801_))
                ((let () (declare (not safe)) (##fx= _g133800_ 2))
                 (apply gxc#compile-e__1 _g133801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133801_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133610%_)
        (let ((__tmp133802
               (car (let () (declare (not safe)) (gx#stx-e _%stx133610%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133802))))
    (define gxc#void-method (lambda (_%self133607%_ _%stx133608%_) '#!void))
    (define gxc#false-method (lambda (_%self133604%_ _%stx133605%_) '#f))
    (define gxc#true-method (lambda (_%self133601%_ _%stx133602%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133598%_ _%stx133599%_) _%stx133599%_))
    (define gxc#::void-expression::t
      (let ((__tmp133803 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133803
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133595%_
        (apply make-instance gxc#::void-expression::t _%$args133595%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133804
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
        (__make-promise __tmp133804)))
    (define gxc#::void-special-form::t
      (let ((__tmp133805 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133805
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133591%_
        (apply make-instance gxc#::void-special-form::t _%$args133591%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133806
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
        (__make-promise __tmp133806)))
    (define gxc#::void::t
      (let ((__tmp133807
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp133807 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133587%_
        (apply make-instance gxc#::void::t _%$args133587%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133808
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133808)))
    (define gxc#::false-expression::t
      (let ((__tmp133809 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133809
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133583%_
        (apply make-instance gxc#::false-expression::t _%$args133583%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133810
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
        (__make-promise __tmp133810)))
    (define gxc#::false-special-form::t
      (let ((__tmp133811 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133811
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133579%_
        (apply make-instance gxc#::false-special-form::t _%$args133579%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133812
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
        (__make-promise __tmp133812)))
    (define gxc#::false::t
      (let ((__tmp133813
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp133813 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133575%_
        (apply make-instance gxc#::false::t _%$args133575%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133814
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133814)))
    (define gxc#::identity-expression::t
      (let ((__tmp133815 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133815
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133571%_
        (apply make-instance gxc#::identity-expression::t _%$args133571%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133816
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
        (__make-promise __tmp133816)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133817 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133817
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133567%_
        (apply make-instance gxc#::identity-special-form::t _%$args133567%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133818
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
        (__make-promise __tmp133818)))
    (define gxc#::identity::t
      (let ((__tmp133819
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133819
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133563%_
        (apply make-instance gxc#::identity::t _%$args133563%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133820
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133820)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133821 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133821
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133559%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133559%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133822
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
        (__make-promise __tmp133822)))
    (define gxc#::basic-xform::t
      (let ((__tmp133823
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133823
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133555%_
        (apply make-instance gxc#::basic-xform::t _%$args133555%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133824
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
        (__make-promise __tmp133824)))
    (define gxc#apply-begin%
      (lambda (_%self133511%_ _%stx133512%_)
        (let* ((_%g133514133524%_
                (lambda (_%g133515133521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133515133521%_))))
               (_%g133513133551%_
                (lambda (_%g133515133527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133515133527%_))
                      (let ((_%e133517133529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133515133527%_))))
                        (let ((_%hd133518133532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133517133529%_)))
                              (_%tl133519133534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133517133529%_))))
                          ((lambda (_%L133537%_)
                             (for-each
                              (lambda (_%g133546133548%_)
                                (gxc#compile-e__1
                                 _%self133511%_
                                 _%g133546133548%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133537%_))))
                           _%tl133519133534%_)))
                      (_%g133514133524%_ _%g133515133527%_)))))
          (_%g133513133551%_ _%stx133512%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133472%_ _%stx133473%_)
        (let* ((_%g133475133485%_
                (lambda (_%g133476133482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133476133482%_))))
               (_%g133474133508%_
                (lambda (_%g133476133488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133476133488%_))
                      (let ((_%e133478133490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133476133488%_))))
                        (let ((_%hd133479133493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133478133490%_)))
                              (_%tl133480133495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133478133490%_))))
                          ((lambda (_%L133498%_)
                             (gxc#compile-e__1
                              _%self133472%_
                              (last _%L133498%_)))
                           _%tl133480133495%_)))
                      (_%g133475133485%_ _%g133476133488%_)))))
          (_%g133474133508%_ _%stx133473%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133468%_ _%stx133469%_)
        (let ((__tmp133827
               (lambda () (gxc#apply-begin% _%self133468%_ _%stx133469%_)))
              (__tmp133825
               (let ((__tmp133826
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133826 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133827
           gx#current-expander-phi
           __tmp133825))))
    (define gxc#apply-module%
      (lambda (_%self133407%_ _%stx133408%_)
        (let* ((_%g133410133424%_
                (lambda (_%g133411133421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133411133421%_))))
               (_%g133409133465%_
                (lambda (_%g133411133427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133411133427%_))
                      (let ((_%e133414133429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133411133427%_))))
                        (let ((_%hd133415133432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133414133429%_)))
                              (_%tl133416133434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133414133429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133416133434%_))
                              (let ((_%e133417133437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133416133434%_))))
                                (let ((_%hd133418133440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133417133437%_)))
                                      (_%tl133419133442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133417133437%_))))
                                  ((lambda (_%L133445%_ _%L133446%_)
                                     (let* ((_%ctx133459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133446%_)))
                                            (_%ctx-stx133461%_
                                             (##structure-ref
                                              _%ctx133459%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133828
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133407%_
                                                _%ctx-stx133461%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133828
                                        gx#current-expander-context
                                        _%ctx133459%_)))
                                   _%tl133419133442%_
                                   _%hd133418133440%_)))
                              (_%g133410133424%_ _%g133411133427%_))))
                      (_%g133410133424%_ _%g133411133427%_)))))
          (_%g133409133465%_ _%stx133408%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133339%_ _%stx133340%_)
        (let* ((_%g133342133359%_
                (lambda (_%g133343133356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133343133356%_))))
               (_%g133341133404%_
                (lambda (_%g133343133362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133343133362%_))
                      (let ((_%e133346133364%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133343133362%_))))
                        (let ((_%hd133347133367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133346133364%_)))
                              (_%tl133348133369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133346133364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133348133369%_))
                              (let ((_%e133349133372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133348133369%_))))
                                (let ((_%hd133350133375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133349133372%_)))
                                      (_%tl133351133377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133349133372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133351133377%_))
                                      (let ((_%e133352133380%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133351133377%_))))
                                        (let ((_%hd133353133383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133352133380%_)))
                                              (_%tl133354133385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133352133380%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133354133385%_))
                                              ((lambda (_%L133388%_
                                                        _%L133389%_)
                                                 (gxc#compile-e__1
                                                  _%self133339%_
                                                  _%L133388%_))
                                               _%hd133353133383%_
                                               _%hd133350133375%_)
                                              (_%g133342133359%_
                                               _%g133343133362%_))))
                                      (_%g133342133359%_ _%g133343133362%_))))
                              (_%g133342133359%_ _%g133343133362%_))))
                      (_%g133342133359%_ _%g133343133362%_)))))
          (_%g133341133404%_ _%stx133340%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133271%_ _%stx133272%_)
        (let* ((_%g133274133291%_
                (lambda (_%g133275133288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133275133288%_))))
               (_%g133273133336%_
                (lambda (_%g133275133294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133275133294%_))
                      (let ((_%e133278133296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133275133294%_))))
                        (let ((_%hd133279133299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133278133296%_)))
                              (_%tl133280133301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133278133296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133280133301%_))
                              (let ((_%e133281133304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133280133301%_))))
                                (let ((_%hd133282133307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133281133304%_)))
                                      (_%tl133283133309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133281133304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133283133309%_))
                                      (let ((_%e133284133312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133283133309%_))))
                                        (let ((_%hd133285133315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133284133312%_)))
                                              (_%tl133286133317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133284133312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133286133317%_))
                                              ((lambda (_%L133320%_
                                                        _%L133321%_)
                                                 (gxc#compile-e__1
                                                  _%self133271%_
                                                  _%L133320%_))
                                               _%hd133285133315%_
                                               _%hd133282133307%_)
                                              (_%g133274133291%_
                                               _%g133275133294%_))))
                                      (_%g133274133291%_ _%g133275133294%_))))
                              (_%g133274133291%_ _%g133275133294%_))))
                      (_%g133274133291%_ _%g133275133294%_)))))
          (_%g133273133336%_ _%stx133272%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133202%_ _%stx133203%_)
        (let* ((_%g133205133222%_
                (lambda (_%g133206133219%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133206133219%_))))
               (_%g133204133268%_
                (lambda (_%g133206133225%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133206133225%_))
                      (let ((_%e133209133227%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133206133225%_))))
                        (let ((_%hd133210133230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133209133227%_)))
                              (_%tl133211133232%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133209133227%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133211133232%_))
                              (let ((_%e133212133235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133211133232%_))))
                                (let ((_%hd133213133238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133212133235%_)))
                                      (_%tl133214133240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133212133235%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133214133240%_))
                                      (let ((_%e133215133243%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133214133240%_))))
                                        (let ((_%hd133216133246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133215133243%_)))
                                              (_%tl133217133248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133215133243%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133217133248%_))
                                              ((lambda (_%L133251%_
                                                        _%L133252%_)
                                                 (let ((__tmp133831
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133202%_
                                                           _%L133251%_)))
                                                       (__tmp133829
                                                        (let ((__tmp133830
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133830 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133831
                                                    gx#current-expander-phi
                                                    __tmp133829)))
                                               _%hd133216133246%_
                                               _%hd133213133238%_)
                                              (_%g133205133222%_
                                               _%g133206133225%_))))
                                      (_%g133205133222%_ _%g133206133225%_))))
                              (_%g133205133222%_ _%g133206133225%_))))
                      (_%g133205133222%_ _%g133206133225%_)))))
          (_%g133204133268%_ _%stx133203%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133134%_ _%stx133135%_)
        (let* ((_%g133137133154%_
                (lambda (_%g133138133151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133138133151%_))))
               (_%g133136133199%_
                (lambda (_%g133138133157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133138133157%_))
                      (let ((_%e133141133159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133138133157%_))))
                        (let ((_%hd133142133162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133141133159%_)))
                              (_%tl133143133164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133141133159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133143133164%_))
                              (let ((_%e133144133167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133143133164%_))))
                                (let ((_%hd133145133170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133144133167%_)))
                                      (_%tl133146133172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133144133167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133146133172%_))
                                      (let ((_%e133147133175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133146133172%_))))
                                        (let ((_%hd133148133178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133147133175%_)))
                                              (_%tl133149133180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133147133175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133149133180%_))
                                              ((lambda (_%L133183%_
                                                        _%L133184%_)
                                                 (gxc#compile-e__1
                                                  _%self133134%_
                                                  _%L133183%_))
                                               _%hd133148133178%_
                                               _%hd133145133170%_)
                                              (_%g133137133154%_
                                               _%g133138133157%_))))
                                      (_%g133137133154%_ _%g133138133157%_))))
                              (_%g133137133154%_ _%g133138133157%_))))
                      (_%g133137133154%_ _%g133138133157%_)))))
          (_%g133136133199%_ _%stx133135%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133016%_ _%stx133017%_)
        (let* ((_%g133019133047%_
                (lambda (_%g133020133044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133020133044%_))))
               (_%g133018133131%_
                (lambda (_%g133020133050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133020133050%_))
                      (let ((_%e133023133052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133020133050%_))))
                        (let ((_%hd133024133055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133023133052%_)))
                              (_%tl133025133057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133023133052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133025133057%_))
                              (let ((_g133832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133025133057%_
                                        '0))))
                                (begin
                                  (let ((_g133833_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133832_)
                                               (##vector-length _g133832_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133833_ 2)))
                                        (error "Context expects 2 values"
                                               _g133833_)))
                                  (let ((_%target133026133060%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133832_ 0)))
                                        (_%tl133028133062%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133832_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133028133062%_))
                                        (letrec ((_%loop133029133065%_
                                                  (lambda (_%hd133027133068%_
                                                           _%body133033133070%_
                                                           _%hd133034133072%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133027133068%_))
                                                        (let ((_%e133030133075%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133027133068%_))))
                  (let ((_%lp-hd133031133078%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133030133075%_)))
                        (_%lp-tl133032133080%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133030133075%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133031133078%_))
                        (let ((_%e133037133083%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133031133078%_))))
                          (let ((_%hd133038133086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133037133083%_)))
                                (_%tl133039133088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133037133083%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133039133088%_))
                                (let ((_%e133040133091%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133039133088%_))))
                                  (let ((_%hd133041133094%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133040133091%_)))
                                        (_%tl133042133096%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133040133091%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133042133096%_))
                                        (_%loop133029133065%_
                                         _%lp-tl133032133080%_
                                         (cons _%hd133041133094%_
                                               _%body133033133070%_)
                                         (cons _%hd133038133086%_
                                               _%hd133034133072%_))
                                        (_%g133019133047%_
                                         _%g133020133050%_))))
                                (_%g133019133047%_ _%g133020133050%_))))
                        (_%g133019133047%_ _%g133020133050%_))))
                (let ((_%body133035133099%_ (reverse _%body133033133070%_))
                      (_%hd133036133101%_ (reverse _%hd133034133072%_)))
                  ((lambda (_%L133104%_ _%L133105%_)
                     (for-each
                      (lambda (_%g133119133121%_)
                        (gxc#compile-e__1 _%self133016%_ _%g133119133121%_))
                      (let ((__tmp133834
                             (lambda (_%g133123133126%_ _%g133124133128%_)
                               (cons _%g133123133126%_ _%g133124133128%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133834 '() _%L133104%_))))
                   _%body133035133099%_
                   _%hd133036133101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133029133065%_
                                           _%target133026133060%_
                                           '()
                                           '()))
                                        (_%g133019133047%_
                                         _%g133020133050%_)))))
                              (_%g133019133047%_ _%g133020133050%_))))
                      (_%g133019133047%_ _%g133020133050%_)))))
          (_%g133018133131%_ _%stx133017%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132869%_ _%stx132870%_)
        (let* ((_%g132872132907%_
                (lambda (_%g132873132904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132873132904%_))))
               (_%g132871133013%_
                (lambda (_%g132873132910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132873132910%_))
                      (let ((_%e132877132912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132873132910%_))))
                        (let ((_%hd132878132915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132877132912%_)))
                              (_%tl132879132917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132877132912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132879132917%_))
                              (let ((_%e132880132920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132879132917%_))))
                                (let ((_%hd132881132923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132880132920%_)))
                                      (_%tl132882132925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132880132920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132881132923%_))
                                      (let ((_g133835_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132881132923%_
                                                '0))))
                                        (begin
                                          (let ((_g133836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133835_)
                                                       (##vector-length
                                                        _g133835_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133836_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133836_)))
                                          (let ((_%target132883132928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133835_ 0)))
                                                (_%tl132885132930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133835_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132885132930%_))
                                                (letrec ((_%loop132886132933%_
                                                          (lambda (_%hd132884132936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132890132938%_
                           _%hd132891132940%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132884132936%_))
                        (let ((_%e132887132943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132884132936%_))))
                          (let ((_%lp-hd132888132946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132887132943%_)))
                                (_%lp-tl132889132948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132887132943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132888132946%_))
                                (let ((_%e132897132951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132888132946%_))))
                                  (let ((_%hd132898132954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132897132951%_)))
                                        (_%tl132899132956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132897132951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132899132956%_))
                                        (let ((_%e132900132959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132899132956%_))))
                                          (let ((_%hd132901132962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132900132959%_)))
                                                (_%tl132902132964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132900132959%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132902132964%_))
                                                (_%loop132886132933%_
                                                 _%lp-tl132889132948%_
                                                 (cons _%hd132901132962%_
                                                       _%expr132890132938%_)
                                                 (cons _%hd132898132954%_
                                                       _%hd132891132940%_))
                                                (_%g132872132907%_
                                                 _%g132873132910%_))))
                                        (_%g132872132907%_
                                         _%g132873132910%_))))
                                (_%g132872132907%_ _%g132873132910%_))))
                        (let ((_%expr132892132967%_
                               (reverse _%expr132890132938%_))
                              (_%hd132893132969%_
                               (reverse _%hd132891132940%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132882132925%_))
                              (let ((_%e132894132972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132882132925%_))))
                                (let ((_%hd132895132975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132894132972%_)))
                                      (_%tl132896132977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132894132972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132896132977%_))
                                      ((lambda (_%L132980%_
                                                _%L132981%_
                                                _%L132982%_)
                                         (for-each
                                          (lambda (_%g133001133003%_)
                                            (gxc#compile-e__1
                                             _%self132869%_
                                             _%g133001133003%_))
                                          (let ((__tmp133838
                                                 (lambda (_%g133005133008%_
                                                          _%g133006133010%_)
                                                   (cons _%g133005133008%_
                                                         _%g133006133010%_)))
                                                (__tmp133837
                                                 (cons _%L132980%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133838
                                             __tmp133837
                                             _%L132981%_))))
                                       _%hd132895132975%_
                                       _%expr132892132967%_
                                       _%hd132893132969%_)
                                      (_%g132872132907%_ _%g132873132910%_))))
                              (_%g132872132907%_ _%g132873132910%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132886132933%_
                                                   _%target132883132928%_
                                                   '()
                                                   '()))
                                                (_%g132872132907%_
                                                 _%g132873132910%_)))))
                                      (_%g132872132907%_ _%g132873132910%_))))
                              (_%g132872132907%_ _%g132873132910%_))))
                      (_%g132872132907%_ _%g132873132910%_)))))
          (_%g132871133013%_ _%stx132870%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132814%_ _%stx132815%_)
        (let* ((_%g132817132831%_
                (lambda (_%g132818132828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132818132828%_))))
               (_%g132816132866%_
                (lambda (_%g132818132834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132818132834%_))
                      (let ((_%e132821132836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132818132834%_))))
                        (let ((_%hd132822132839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132821132836%_)))
                              (_%tl132823132841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132821132836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132823132841%_))
                              (let ((_%e132824132844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132823132841%_))))
                                (let ((_%hd132825132847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132824132844%_)))
                                      (_%tl132826132849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132824132844%_))))
                                  ((lambda (_%L132852%_ _%L132853%_)
                                     (gxc#compile-e__1
                                      _%self132814%_
                                      (last _%L132852%_)))
                                   _%tl132826132849%_
                                   _%hd132825132847%_)))
                              (_%g132817132831%_ _%g132818132834%_))))
                      (_%g132817132831%_ _%g132818132834%_)))))
          (_%g132816132866%_ _%stx132815%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132746%_ _%stx132747%_)
        (let* ((_%g132749132766%_
                (lambda (_%g132750132763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132750132763%_))))
               (_%g132748132811%_
                (lambda (_%g132750132769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132750132769%_))
                      (let ((_%e132753132771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132750132769%_))))
                        (let ((_%hd132754132774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132753132771%_)))
                              (_%tl132755132776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132753132771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132755132776%_))
                              (let ((_%e132756132779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132755132776%_))))
                                (let ((_%hd132757132782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132756132779%_)))
                                      (_%tl132758132784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132756132779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132758132784%_))
                                      (let ((_%e132759132787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132758132784%_))))
                                        (let ((_%hd132760132790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132759132787%_)))
                                              (_%tl132761132792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132759132787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132761132792%_))
                                              ((lambda (_%L132795%_
                                                        _%L132796%_)
                                                 (gxc#compile-e__1
                                                  _%self132746%_
                                                  _%L132795%_))
                                               _%hd132760132790%_
                                               _%hd132757132782%_)
                                              (_%g132749132766%_
                                               _%g132750132769%_))))
                                      (_%g132749132766%_ _%g132750132769%_))))
                              (_%g132749132766%_ _%g132750132769%_))))
                      (_%g132749132766%_ _%g132750132769%_)))))
          (_%g132748132811%_ _%stx132747%_))))
    (define gxc#apply-operands
      (lambda (_%self132659%_ _%stx132660%_)
        (let* ((_%g132662132681%_
                (lambda (_%g132663132678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132663132678%_))))
               (_%g132661132743%_
                (lambda (_%g132663132684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132663132684%_))
                      (let ((_%e132665132686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132663132684%_))))
                        (let ((_%hd132666132689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132665132686%_)))
                              (_%tl132667132691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132665132686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132667132691%_))
                              (let ((_g133839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132667132691%_
                                        '0))))
                                (begin
                                  (let ((_g133840_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133839_)
                                               (##vector-length _g133839_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133840_ 2)))
                                        (error "Context expects 2 values"
                                               _g133840_)))
                                  (let ((_%target132668132694%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133839_ 0)))
                                        (_%tl132670132696%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133839_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132670132696%_))
                                        (letrec ((_%loop132671132699%_
                                                  (lambda (_%hd132669132702%_
                                                           _%rands132675132704%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132669132702%_))
                                                        (let ((_%e132672132707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132669132702%_))))
                  (let ((_%lp-hd132673132710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132672132707%_)))
                        (_%lp-tl132674132712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132672132707%_))))
                    (_%loop132671132699%_
                     _%lp-tl132674132712%_
                     (cons _%lp-hd132673132710%_ _%rands132675132704%_))))
                (let ((_%rands132676132715%_ (reverse _%rands132675132704%_)))
                  ((lambda (_%L132718%_)
                     (for-each
                      (lambda (_%g132731132733%_)
                        (gxc#compile-e__1 _%self132659%_ _%g132731132733%_))
                      (let ((__tmp133841
                             (lambda (_%g132735132738%_ _%g132736132740%_)
                               (cons _%g132735132738%_ _%g132736132740%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133841 '() _%L132718%_))))
                   _%rands132676132715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132671132699%_
                                           _%target132668132694%_
                                           '()))
                                        (_%g132662132681%_
                                         _%g132663132684%_)))))
                              (_%g132662132681%_ _%g132663132684%_))))
                      (_%g132662132681%_ _%g132663132684%_)))))
          (_%g132661132743%_ _%stx132660%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132656%_ _%src-stx132657%_)
        (let ((__tmp133842
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132657%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132656%_ __tmp133842))))
    (define gxc#xform-begin%
      (lambda (_%self132611%_ _%stx132612%_)
        (let* ((_%g132614132624%_
                (lambda (_%g132615132621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132615132621%_))))
               (_%g132613132653%_
                (lambda (_%g132615132627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132615132627%_))
                      (let ((_%e132617132629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132615132627%_))))
                        (let ((_%hd132618132632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132617132629%_)))
                              (_%tl132619132634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132617132629%_))))
                          ((lambda (_%L132637%_)
                             (let ((_%forms132651%_
                                    (map (lambda (_%g132646132648%_)
                                           (gxc#compile-e__1
                                            _%self132611%_
                                            _%g132646132648%_))
                                         _%L132637%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms132651%_)
                                _%stx132612%_)))
                           _%tl132619132634%_)))
                      (_%g132614132624%_ _%g132615132627%_)))))
          (_%g132613132653%_ _%stx132612%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132565%_ _%stx132566%_)
        (let* ((_%g132568132578%_
                (lambda (_%g132569132575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132569132575%_))))
               (_%g132567132608%_
                (lambda (_%g132569132581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132569132581%_))
                      (let ((_%e132571132583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132569132581%_))))
                        (let ((_%hd132572132586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132571132583%_)))
                              (_%tl132573132588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132571132583%_))))
                          ((lambda (_%L132591%_)
                             (let ((__tmp133845
                                    (lambda ()
                                      (let ((_%forms132606%_
                                             (map (lambda (_%g132601132603%_)
                                                    (gxc#compile-e__1
                                                     _%self132565%_
                                                     _%g132601132603%_))
                                                  _%L132591%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms132606%_)
                                         _%stx132566%_))))
                                   (__tmp133843
                                    (let ((__tmp133844
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133844 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133845
                                gx#current-expander-phi
                                __tmp133843)))
                           _%tl132573132588%_)))
                      (_%g132568132578%_ _%g132569132581%_)))))
          (_%g132567132608%_ _%stx132566%_))))
    (define gxc#xform-module%
      (lambda (_%self132502%_ _%stx132503%_)
        (let* ((_%g132505132519%_
                (lambda (_%g132506132516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132506132516%_))))
               (_%g132504132562%_
                (lambda (_%g132506132522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132506132522%_))
                      (let ((_%e132509132524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132506132522%_))))
                        (let ((_%hd132510132527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132509132524%_)))
                              (_%tl132511132529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132509132524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132511132529%_))
                              (let ((_%e132512132532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132511132529%_))))
                                (let ((_%hd132513132535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132512132532%_)))
                                      (_%tl132514132537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132512132532%_))))
                                  ((lambda (_%L132540%_ _%L132541%_)
                                     (let* ((_%ctx132554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132541%_)))
                                            (_%code132556%_
                                             (##structure-ref
                                              _%ctx132554%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132559%_
                                             (let ((__tmp133846
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self132502%_
                                                       _%code132556%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133846
                                                gx#current-expander-context
                                                _%ctx132554%_))))
                                       (##structure-set!
                                        _%ctx132554%_
                                        _%code132559%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L132541%_
                                                    (cons _%code132559%_ '())))
                                        _%stx132503%_)))
                                   _%tl132514132537%_
                                   _%hd132513132535%_)))
                              (_%g132505132519%_ _%g132506132522%_))))
                      (_%g132505132519%_ _%g132506132522%_)))))
          (_%g132504132562%_ _%stx132503%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132432%_ _%stx132433%_)
        (let* ((_%g132435132452%_
                (lambda (_%g132436132449%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132436132449%_))))
               (_%g132434132499%_
                (lambda (_%g132436132455%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132436132455%_))
                      (let ((_%e132439132457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132436132455%_))))
                        (let ((_%hd132440132460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132439132457%_)))
                              (_%tl132441132462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132439132457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132441132462%_))
                              (let ((_%e132442132465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132441132462%_))))
                                (let ((_%hd132443132468%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132442132465%_)))
                                      (_%tl132444132470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132442132465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132444132470%_))
                                      (let ((_%e132445132473%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132444132470%_))))
                                        (let ((_%hd132446132476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132445132473%_)))
                                              (_%tl132447132478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132445132473%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132447132478%_))
                                              ((lambda (_%L132481%_
                                                        _%L132482%_)
                                                 (let ((_%expr132497%_
                                                        (gxc#compile-e__1
                                                         _%self132432%_
                                                         _%L132481%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L132482%_
                                                                (cons _%expr132497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132433%_)))
                                               _%hd132446132476%_
                                               _%hd132443132468%_)
                                              (_%g132435132452%_
                                               _%g132436132455%_))))
                                      (_%g132435132452%_ _%g132436132455%_))))
                              (_%g132435132452%_ _%g132436132455%_))))
                      (_%g132435132452%_ _%g132436132455%_)))))
          (_%g132434132499%_ _%stx132433%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132361%_ _%stx132362%_)
        (let* ((_%g132364132381%_
                (lambda (_%g132365132378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132365132378%_))))
               (_%g132363132429%_
                (lambda (_%g132365132384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132365132384%_))
                      (let ((_%e132368132386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132365132384%_))))
                        (let ((_%hd132369132389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132368132386%_)))
                              (_%tl132370132391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132368132386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132370132391%_))
                              (let ((_%e132371132394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132370132391%_))))
                                (let ((_%hd132372132397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132371132394%_)))
                                      (_%tl132373132399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132371132394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132373132399%_))
                                      (let ((_%e132374132402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132373132399%_))))
                                        (let ((_%hd132375132405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132374132402%_)))
                                              (_%tl132376132407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132374132402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132376132407%_))
                                              ((lambda (_%L132410%_
                                                        _%L132411%_)
                                                 (let ((__tmp133849
                                                        (lambda ()
                                                          (let ((_%expr132427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132361%_ _%L132410%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132411%_ (cons _%expr132427%_ '())))
                     _%stx132362%_))))
               (__tmp133847
                (let ((__tmp133848
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133848 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133849
                                                    gx#current-expander-phi
                                                    __tmp133847)))
                                               _%hd132375132405%_
                                               _%hd132372132397%_)
                                              (_%g132364132381%_
                                               _%g132365132384%_))))
                                      (_%g132364132381%_ _%g132365132384%_))))
                              (_%g132364132381%_ _%g132365132384%_))))
                      (_%g132364132381%_ _%g132365132384%_)))))
          (_%g132363132429%_ _%stx132362%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132291%_ _%stx132292%_)
        (let* ((_%g132294132311%_
                (lambda (_%g132295132308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132295132308%_))))
               (_%g132293132358%_
                (lambda (_%g132295132314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132295132314%_))
                      (let ((_%e132298132316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132295132314%_))))
                        (let ((_%hd132299132319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132298132316%_)))
                              (_%tl132300132321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132298132316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132300132321%_))
                              (let ((_%e132301132324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132300132321%_))))
                                (let ((_%hd132302132327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132301132324%_)))
                                      (_%tl132303132329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132301132324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132303132329%_))
                                      (let ((_%e132304132332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132303132329%_))))
                                        (let ((_%hd132305132335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132304132332%_)))
                                              (_%tl132306132337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132304132332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132306132337%_))
                                              ((lambda (_%L132340%_
                                                        _%L132341%_)
                                                 (let ((_%expr132356%_
                                                        (gxc#compile-e__1
                                                         _%self132291%_
                                                         _%L132340%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132341%_
                                                                (cons _%expr132356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132292%_)))
                                               _%hd132305132335%_
                                               _%hd132302132327%_)
                                              (_%g132294132311%_
                                               _%g132295132314%_))))
                                      (_%g132294132311%_ _%g132295132314%_))))
                              (_%g132294132311%_ _%g132295132314%_))))
                      (_%g132294132311%_ _%g132295132314%_)))))
          (_%g132293132358%_ _%stx132292%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132229%_ _%stx132230%_)
        (let* ((_%g132232132246%_
                (lambda (_%g132233132243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132233132243%_))))
               (_%g132231132288%_
                (lambda (_%g132233132249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132233132249%_))
                      (let ((_%e132236132251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132233132249%_))))
                        (let ((_%hd132237132254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132236132251%_)))
                              (_%tl132238132256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132236132251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132238132256%_))
                              (let ((_%e132239132259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132238132256%_))))
                                (let ((_%hd132240132262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132239132259%_)))
                                      (_%tl132241132264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132239132259%_))))
                                  ((lambda (_%L132267%_ _%L132268%_)
                                     (let ((__tmp133851
                                            (lambda ()
                                              (let ((_%body132286%_
                                                     (map (lambda (_%g132281132283%_)
                                                            (gxc#compile-e__1
                                                             _%self132229%_
                                                             _%g132281132283%_))
                                                          _%L132267%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132268%_
                                                             _%body132286%_))
                                                 _%stx132230%_))))
                                           (__tmp133850
                                            (gxc#xform-let-locals
                                             (cons _%L132268%_ '()))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133851
                                        gxc#current-compile-local-env
                                        __tmp133850)))
                                   _%tl132241132264%_
                                   _%hd132240132262%_)))
                              (_%g132232132246%_ _%g132233132249%_))))
                      (_%g132232132246%_ _%g132233132249%_)))))
          (_%g132231132288%_ _%stx132230%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132137%_ _%stx132138%_)
        (letrec ((_%clause-e132140%_
                  (lambda (_%clause132181%_)
                    (let* ((_%g132183132194%_
                            (lambda (_%g132184132191%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132184132191%_))))
                           (_%g132182132226%_
                            (lambda (_%g132184132197%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132184132197%_))
                                  (let ((_%e132187132199%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132184132197%_))))
                                    (let ((_%hd132188132202%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132187132199%_)))
                                          (_%tl132189132204%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132187132199%_))))
                                      ((lambda (_%L132207%_ _%L132208%_)
                                         (let ((__tmp133853
                                                (lambda ()
                                                  (let ((_%body132224%_
                                                         (map (lambda (_%g132219132221%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132137%_
                         _%g132219132221%_))
                      _%L132207%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132208%_
                                                          _%body132224%_))))
                                               (__tmp133852
                                                (gxc#xform-let-locals
                                                 (cons _%L132208%_ '()))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133853
                                            gxc#current-compile-local-env
                                            __tmp133852)))
                                       _%tl132189132204%_
                                       _%hd132188132202%_)))
                                  (_%g132183132194%_ _%g132184132197%_)))))
                      (_%g132182132226%_ _%clause132181%_)))))
          (let* ((_%g132142132152%_
                  (lambda (_%g132143132149%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132143132149%_))))
                 (_%g132141132178%_
                  (lambda (_%g132143132155%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132143132155%_))
                        (let ((_%e132145132157%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132143132155%_))))
                          (let ((_%hd132146132160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132145132157%_)))
                                (_%tl132147132162%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132145132157%_))))
                            ((lambda (_%L132165%_)
                               (let ((_%clauses132176%_
                                      (map _%clause-e132140%_ _%L132165%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132176%_)
                                  _%stx132138%_)))
                             _%tl132147132162%_)))
                        (_%g132142132152%_ _%g132143132155%_)))))
            (_%g132141132178%_ _%stx132138%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131891%_ _%stx131892%_)
        (let* ((_%g131894131927%_
                (lambda (_%g131895131924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131895131924%_))))
               (_%g131893132134%_
                (lambda (_%g131895131930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131895131930%_))
                      (let ((_%e131900131932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131895131930%_))))
                        (let ((_%hd131901131935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131900131932%_)))
                              (_%tl131902131937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131900131932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131902131937%_))
                              (let ((_%e131903131940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131902131937%_))))
                                (let ((_%hd131904131943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131903131940%_)))
                                      (_%tl131905131945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131903131940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131904131943%_))
                                      (let ((_g133854_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131904131943%_
                                                '0))))
                                        (begin
                                          (let ((_g133855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133854_)
                                                       (##vector-length
                                                        _g133854_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133855_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133855_)))
                                          (let ((_%target131906131948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133854_ 0)))
                                                (_%tl131908131950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133854_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131908131950%_))
                                                (letrec ((_%loop131909131953%_
                                                          (lambda (_%hd131907131956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131913131958%_
                           _%hd131914131960%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131907131956%_))
                        (let ((_%e131910131963%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131907131956%_))))
                          (let ((_%lp-hd131911131966%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131910131963%_)))
                                (_%lp-tl131912131968%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131910131963%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131911131966%_))
                                (let ((_%e131917131971%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131911131966%_))))
                                  (let ((_%hd131918131974%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131917131971%_)))
                                        (_%tl131919131976%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131917131971%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131919131976%_))
                                        (let ((_%e131920131979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131919131976%_))))
                                          (let ((_%hd131921131982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131920131979%_)))
                                                (_%tl131922131984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131920131979%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131922131984%_))
                                                (_%loop131909131953%_
                                                 _%lp-tl131912131968%_
                                                 (cons _%hd131921131982%_
                                                       _%expr131913131958%_)
                                                 (cons _%hd131918131974%_
                                                       _%hd131914131960%_))
                                                (_%g131894131927%_
                                                 _%g131895131930%_))))
                                        (_%g131894131927%_
                                         _%g131895131930%_))))
                                (_%g131894131927%_ _%g131895131930%_))))
                        (let ((_%expr131915131987%_
                               (reverse _%expr131913131958%_))
                              (_%hd131916131989%_
                               (reverse _%hd131914131960%_)))
                          ((lambda (_%L131992%_
                                    _%L131993%_
                                    _%L131994%_
                                    _%L131995%_)
                             (let* ((_%g132014132030%_
                                     (lambda (_%g132015132027%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132015132027%_))))
                                    (_%g132013132120%_
                                     (lambda (_%g132015132033%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132015132033%_))
                                           (let ((_g133856_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132015132033%_
                                                     '0))))
                                             (begin
                                               (let ((_g133857_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133856_)
                                                            (##vector-length
                                                             _g133856_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133857_)))
                                               (let ((_%target132017132035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133856_
                                                         0)))
                                                     (_%tl132019132037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133856_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132019132037%_))
                                                     (letrec ((_%loop132020132040%_
                                                               (lambda (_%hd132018132043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132024132045%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132018132043%_))
                             (let ((_%e132021132048%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132018132043%_))))
                               (let ((_%lp-hd132022132051%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132021132048%_)))
                                     (_%lp-tl132023132053%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132021132048%_))))
                                 (_%loop132020132040%_
                                  _%lp-tl132023132053%_
                                  (cons _%lp-hd132022132051%_
                                        _%expr132024132045%_))))
                             (let ((_%expr132025132056%_
                                    (reverse _%expr132024132045%_)))
                               ((lambda (_%L132059%_)
                                  (let ((__tmp133860
                                         (lambda ()
                                           (let* ((_%g132073132080%_
                                                   (lambda (_%g132074132077%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132074132077%_))))
                                                  (_%g132072132106%_
                                                   (lambda (_%g132074132083%_)
                                                     ((lambda (_%L132085%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131995%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132059%_
                                  _%L131994%_))
                               (let ((__tmp133861
                                      (lambda (_%g132095132099%_
                                               _%g132096132101%_
                                               _%g132097132103%_)
                                        (cons (cons _%g132096132101%_
                                                    (cons _%g132095132099%_
                                                          '()))
                                              _%g132097132103%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133861
                                  '()
                                  _%L132059%_
                                  _%L131994%_)))
                             _%L132085%_))
                 _%stx131892%_))
              _%g132074132083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132072132106%_
                                              (map (lambda (_%g132108132110%_)
                                                     (gxc#compile-e__1
                                                      _%self131891%_
                                                      _%g132108132110%_))
                                                   _%L131992%_)))))
                                        (__tmp133858
                                         (gxc#xform-let-locals
                                          (let ((__tmp133859
                                                 (lambda (_%g132112132115%_
                                                          _%g132113132117%_)
                                                   (cons _%g132112132115%_
                                                         _%g132113132117%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133859
                                             '()
                                             _%L131994%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp133860
                                     gxc#current-compile-local-env
                                     __tmp133858)))
                                _%expr132025132056%_))))))
               (_%loop132020132040%_ _%target132017132035%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g132014132030%_
                                                      _%g132015132033%_)))))
                                           (_%g132014132030%_
                                            _%g132015132033%_)))))
                               (_%g132013132120%_
                                (map (lambda (_%g132122132124%_)
                                       (gxc#compile-e__1
                                        _%self131891%_
                                        _%g132122132124%_))
                                     (let ((__tmp133862
                                            (lambda (_%g132126132129%_
                                                     _%g132127132131%_)
                                              (cons _%g132126132129%_
                                                    _%g132127132131%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133862
                                        '()
                                        _%L131993%_))))))
                           _%tl131905131945%_
                           _%expr131915131987%_
                           _%hd131916131989%_
                           _%hd131901131935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131909131953%_
                                                   _%target131906131948%_
                                                   '()
                                                   '()))
                                                (_%g131894131927%_
                                                 _%g131895131930%_)))))
                                      (_%g131894131927%_ _%g131895131930%_))))
                              (_%g131894131927%_ _%g131895131930%_))))
                      (_%g131894131927%_ _%g131895131930%_)))))
          (_%g131893132134%_ _%stx131892%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131645%_ _%stx131646%_)
        (let* ((_%g131648131681%_
                (lambda (_%g131649131678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131649131678%_))))
               (_%g131647131888%_
                (lambda (_%g131649131684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131649131684%_))
                      (let ((_%e131654131686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131649131684%_))))
                        (let ((_%hd131655131689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131654131686%_)))
                              (_%tl131656131691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131654131686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131656131691%_))
                              (let ((_%e131657131694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131656131691%_))))
                                (let ((_%hd131658131697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131657131694%_)))
                                      (_%tl131659131699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131657131694%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131658131697%_))
                                      (let ((_g133863_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131658131697%_
                                                '0))))
                                        (begin
                                          (let ((_g133864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133863_)
                                                       (##vector-length
                                                        _g133863_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133864_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133864_)))
                                          (let ((_%target131660131702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133863_ 0)))
                                                (_%tl131662131704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133863_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131662131704%_))
                                                (letrec ((_%loop131663131707%_
                                                          (lambda (_%hd131661131710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131667131712%_
                           _%hd131668131714%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131661131710%_))
                        (let ((_%e131664131717%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131661131710%_))))
                          (let ((_%lp-hd131665131720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131664131717%_)))
                                (_%lp-tl131666131722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131664131717%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131665131720%_))
                                (let ((_%e131671131725%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131665131720%_))))
                                  (let ((_%hd131672131728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131671131725%_)))
                                        (_%tl131673131730%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131671131725%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131673131730%_))
                                        (let ((_%e131674131733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131673131730%_))))
                                          (let ((_%hd131675131736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131674131733%_)))
                                                (_%tl131676131738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131674131733%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131676131738%_))
                                                (_%loop131663131707%_
                                                 _%lp-tl131666131722%_
                                                 (cons _%hd131675131736%_
                                                       _%expr131667131712%_)
                                                 (cons _%hd131672131728%_
                                                       _%hd131668131714%_))
                                                (_%g131648131681%_
                                                 _%g131649131684%_))))
                                        (_%g131648131681%_
                                         _%g131649131684%_))))
                                (_%g131648131681%_ _%g131649131684%_))))
                        (let ((_%expr131669131741%_
                               (reverse _%expr131667131712%_))
                              (_%hd131670131743%_
                               (reverse _%hd131668131714%_)))
                          ((lambda (_%L131746%_
                                    _%L131747%_
                                    _%L131748%_
                                    _%L131749%_)
                             (let ((__tmp133867
                                    (lambda ()
                                      (let* ((_%g131769131785%_
                                              (lambda (_%g131770131782%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131770131782%_))))
                                             (_%g131768131867%_
                                              (lambda (_%g131770131788%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131770131788%_))
                                                    (let ((_g133868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131770131788%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133869_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133868_)
                             (##vector-length _g133868_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133869_ 2)))
                      (error "Context expects 2 values" _g133869_)))
                (let ((_%target131772131790%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133868_ 0)))
                      (_%tl131774131792%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133868_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131774131792%_))
                      (letrec ((_%loop131775131795%_
                                (lambda (_%hd131773131798%_
                                         _%expr131779131800%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131773131798%_))
                                      (let ((_%e131776131803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131773131798%_))))
                                        (let ((_%lp-hd131777131806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131776131803%_)))
                                              (_%lp-tl131778131808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131776131803%_))))
                                          (_%loop131775131795%_
                                           _%lp-tl131778131808%_
                                           (cons _%lp-hd131777131806%_
                                                 _%expr131779131800%_))))
                                      (let ((_%expr131780131811%_
                                             (reverse _%expr131779131800%_)))
                                        ((lambda (_%L131814%_)
                                           (let* ((_%g131828131835%_
                                                   (lambda (_%g131829131832%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131829131832%_))))
                                                  (_%g131827131860%_
                                                   (lambda (_%g131829131838%_)
                                                     ((lambda (_%L131840%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131749%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131814%_
                                  _%L131748%_))
                               (let ((__tmp133870
                                      (lambda (_%g131849131853%_
                                               _%g131850131855%_
                                               _%g131851131857%_)
                                        (cons (cons _%g131850131855%_
                                                    (cons _%g131849131853%_
                                                          '()))
                                              _%g131851131857%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133870
                                  '()
                                  _%L131814%_
                                  _%L131748%_)))
                             _%L131840%_))
                 _%stx131646%_))
              _%g131829131838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131827131860%_
                                              (map (lambda (_%g131862131864%_)
                                                     (gxc#compile-e__1
                                                      _%self131645%_
                                                      _%g131862131864%_))
                                                   _%L131746%_))))
                                         _%expr131780131811%_))))))
                        (_%loop131775131795%_ _%target131772131790%_ '()))
                      (_%g131769131785%_ _%g131770131788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g131769131785%_
                                                     _%g131770131788%_)))))
                                        (_%g131768131867%_
                                         (map (lambda (_%g131869131871%_)
                                                (gxc#compile-e__1
                                                 _%self131645%_
                                                 _%g131869131871%_))
                                              (let ((__tmp133871
                                                     (lambda (_%g131873131876%_
                                                              _%g131874131878%_)
                                                       (cons _%g131873131876%_
                                                             _%g131874131878%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp133871
                                                 '()
                                                 _%L131747%_)))))))
                                   (__tmp133865
                                    (gxc#xform-let-locals
                                     (let ((__tmp133866
                                            (lambda (_%g131880131883%_
                                                     _%g131881131885%_)
                                              (cons _%g131880131883%_
                                                    _%g131881131885%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133866
                                        '()
                                        _%L131748%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133867
                                gxc#current-compile-local-env
                                __tmp133865)))
                           _%tl131659131699%_
                           _%expr131669131741%_
                           _%hd131670131743%_
                           _%hd131655131689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131663131707%_
                                                   _%target131660131702%_
                                                   '()
                                                   '()))
                                                (_%g131648131681%_
                                                 _%g131649131684%_)))))
                                      (_%g131648131681%_ _%g131649131684%_))))
                              (_%g131648131681%_ _%g131649131684%_))))
                      (_%g131648131681%_ _%g131649131684%_)))))
          (_%g131647131888%_ _%stx131646%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131549%_)
        (let _%loop131551%_ ((_%rest131553%_ _%bindings131549%_)
                             (_%locals131554%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131555131563%_ _%rest131553%_)
                 (_%else131557131571%_ (lambda () _%locals131554%_))
                 (_%K131559131633%_
                  (lambda (_%rest131574%_ _%bind131575%_)
                    (let _%loop-bind131577%_ ((_%bind131579%_ _%bind131575%_)
                                              (_%locals131580%_
                                               _%locals131554%_))
                      (let* ((_%bind131581131592%_ _%bind131579%_)
                             (_%E131585131596%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131581131592%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131588131621%_
                               (lambda (_%bind-rest131618%_ _%id131619%_)
                                 (_%loop-bind131577%_
                                  _%bind-rest131618%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131619%_))
                                        _%locals131580%_))))
                              (_%K131587131610%_
                               (lambda (_%id131608%_)
                                 (_%loop131551%_
                                  _%rest131574%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131608%_))
                                        _%locals131580%_))))
                              (_%K131586131601%_
                               (lambda ()
                                 (_%loop131551%_
                                  _%rest131574%_
                                  _%locals131580%_))))
                          (let ((_%try-match131583131615%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131581131592%_))
                                       (let ((_%id131613%_
                                              _%bind131581131592%_))
                                         (_%K131587131610%_ _%id131613%_))
                                       (_%K131586131601%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131581131592%_))
                                (let ((_%tl131590131626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131581131592%_)))
                                      (_%hd131589131624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131581131592%_))))
                                  (let ((_%id131629%_ _%hd131589131624%_)
                                        (_%bind-rest131631%_
                                         _%tl131590131626%_))
                                    (_%K131588131621%_
                                     _%bind-rest131631%_
                                     _%id131629%_)))
                                (_%try-match131583131615%_)))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131555131563%_))
                (let ((_%hd131560131636%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131555131563%_)))
                      (_%tl131561131638%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131555131563%_))))
                  (let* ((_%bind131641%_ _%hd131560131636%_)
                         (_%rest131643%_ _%tl131561131638%_))
                    (_%K131559131633%_ _%rest131643%_ _%bind131641%_)))
                (_%else131557131571%_))))))
    (define gxc#xform-operands
      (lambda (_%self131501%_ _%stx131502%_)
        (let* ((_%g131504131515%_
                (lambda (_%g131505131512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131505131512%_))))
               (_%g131503131546%_
                (lambda (_%g131505131518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131505131518%_))
                      (let ((_%e131508131520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131505131518%_))))
                        (let ((_%hd131509131523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131508131520%_)))
                              (_%tl131510131525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131508131520%_))))
                          ((lambda (_%L131528%_ _%L131529%_)
                             (let ((_%rands131544%_
                                    (map (lambda (_%g131539131541%_)
                                           (gxc#compile-e__1
                                            _%self131501%_
                                            _%g131539131541%_))
                                         _%L131528%_)))
                               (gxc#xform-wrap-source
                                (cons _%L131529%_ _%rands131544%_)
                                _%stx131502%_)))
                           _%tl131510131525%_
                           _%hd131509131523%_)))
                      (_%g131504131515%_ _%g131505131518%_)))))
          (_%g131503131546%_ _%stx131502%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131431%_ _%stx131432%_)
        (let* ((_%g131434131451%_
                (lambda (_%g131435131448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131435131448%_))))
               (_%g131433131498%_
                (lambda (_%g131435131454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131435131454%_))
                      (let ((_%e131438131456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131435131454%_))))
                        (let ((_%hd131439131459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131438131456%_)))
                              (_%tl131440131461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131438131456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131440131461%_))
                              (let ((_%e131441131464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131440131461%_))))
                                (let ((_%hd131442131467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131441131464%_)))
                                      (_%tl131443131469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131441131464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131443131469%_))
                                      (let ((_%e131444131472%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131443131469%_))))
                                        (let ((_%hd131445131475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131444131472%_)))
                                              (_%tl131446131477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131444131472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131446131477%_))
                                              ((lambda (_%L131480%_
                                                        _%L131481%_)
                                                 (let ((_%expr131496%_
                                                        (gxc#compile-e__1
                                                         _%self131431%_
                                                         _%L131480%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L131481%_
                                                                (cons _%expr131496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131432%_)))
                                               _%hd131445131475%_
                                               _%hd131442131467%_)
                                              (_%g131434131451%_
                                               _%g131435131454%_))))
                                      (_%g131434131451%_ _%g131435131454%_))))
                              (_%g131434131451%_ _%g131435131454%_))))
                      (_%g131434131451%_ _%g131435131454%_)))))
          (_%g131433131498%_ _%stx131432%_))))))
