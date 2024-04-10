(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712702631)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133649%_)
        (let* ((_%self133651%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133653%_
                (let ((__tmp133831 (gxc#stx-car-e _%stx133649%_)))
                  (declare (not safe))
                  (method-ref _%self133651%_ __tmp133831))))
          (if _%$e133653%_
              ((lambda (_%method133656%_)
                 (declare (not safe))
                 (_%method133656%_ _%self133651%_ _%stx133649%_))
               _%$e133653%_)
              (let ((__tmp133833 (gxc#stx-car-e _%stx133649%_))
                    (__tmp133832
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133649%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133651%_
                       __tmp133833
                       __tmp133832))))))
    (define gxc#compile-e__1
      (lambda (_%self133660%_ _%stx133661%_)
        (let ((_%$e133663%_
               (let ((__tmp133834 (gxc#stx-car-e _%stx133661%_)))
                 (declare (not safe))
                 (method-ref _%self133660%_ __tmp133834))))
          (if _%$e133663%_
              ((lambda (_%method133666%_)
                 (declare (not safe))
                 (_%method133666%_ _%self133660%_ _%stx133661%_))
               _%$e133663%_)
              (let ((__tmp133836 (gxc#stx-car-e _%stx133661%_))
                    (__tmp133835
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133661%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133660%_
                       __tmp133836
                       __tmp133835))))))
    (define gxc#compile-e
      (lambda _g133838_
        (let ((_g133837_ (let () (declare (not safe)) (##length _g133838_))))
          (cond ((let () (declare (not safe)) (##fx= _g133837_ 1))
                 (apply gxc#compile-e__0 _g133838_))
                ((let () (declare (not safe)) (##fx= _g133837_ 2))
                 (apply gxc#compile-e__1 _g133838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133838_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133647%_)
        (let ((__tmp133839
               (car (let () (declare (not safe)) (gx#stx-e _%stx133647%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133839))))
    (define gxc#void-method (lambda (_%self133644%_ _%stx133645%_) '#!void))
    (define gxc#false-method (lambda (_%self133641%_ _%stx133642%_) '#f))
    (define gxc#true-method (lambda (_%self133638%_ _%stx133639%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133635%_ _%stx133636%_) _%stx133636%_))
    (define gxc#::void-expression::t
      (let ((__tmp133840 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133840
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133632%_
        (apply make-instance gxc#::void-expression::t _%$args133632%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133841
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
        (__make-promise __tmp133841)))
    (define gxc#::void-special-form::t
      (let ((__tmp133842 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133842
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133628%_
        (apply make-instance gxc#::void-special-form::t _%$args133628%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133843
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
        (__make-promise __tmp133843)))
    (define gxc#::void::t
      (let ((__tmp133844
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp133844 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133624%_
        (apply make-instance gxc#::void::t _%$args133624%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133845
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133845)))
    (define gxc#::false-expression::t
      (let ((__tmp133846 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133846
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133620%_
        (apply make-instance gxc#::false-expression::t _%$args133620%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133847
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
        (__make-promise __tmp133847)))
    (define gxc#::false-special-form::t
      (let ((__tmp133848 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133848
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133616%_
        (apply make-instance gxc#::false-special-form::t _%$args133616%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133849
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
        (__make-promise __tmp133849)))
    (define gxc#::false::t
      (let ((__tmp133850
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp133850 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133612%_
        (apply make-instance gxc#::false::t _%$args133612%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133851
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133851)))
    (define gxc#::identity-expression::t
      (let ((__tmp133852 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133852
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133608%_
        (apply make-instance gxc#::identity-expression::t _%$args133608%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133853
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
        (__make-promise __tmp133853)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133854 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133854
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133604%_
        (apply make-instance gxc#::identity-special-form::t _%$args133604%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133855
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
        (__make-promise __tmp133855)))
    (define gxc#::identity::t
      (let ((__tmp133856
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133856
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133600%_
        (apply make-instance gxc#::identity::t _%$args133600%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133857
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133857)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133858 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133858
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133596%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133596%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133859
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
        (__make-promise __tmp133859)))
    (define gxc#::basic-xform::t
      (let ((__tmp133860
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133860
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133592%_
        (apply make-instance gxc#::basic-xform::t _%$args133592%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133861
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
        (__make-promise __tmp133861)))
    (define gxc#apply-begin%
      (lambda (_%self133548%_ _%stx133549%_)
        (let* ((_%g133551133561%_
                (lambda (_%g133552133558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133552133558%_))))
               (_%g133550133588%_
                (lambda (_%g133552133564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133552133564%_))
                      (let ((_%e133554133566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133552133564%_))))
                        (let ((_%hd133555133569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133554133566%_)))
                              (_%tl133556133571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133554133566%_))))
                          ((lambda (_%L133574%_)
                             (for-each
                              (lambda (_%g133583133585%_)
                                (gxc#compile-e__1
                                 _%self133548%_
                                 _%g133583133585%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133574%_))))
                           _%tl133556133571%_)))
                      (_%g133551133561%_ _%g133552133564%_)))))
          (_%g133550133588%_ _%stx133549%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133509%_ _%stx133510%_)
        (let* ((_%g133512133522%_
                (lambda (_%g133513133519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133513133519%_))))
               (_%g133511133545%_
                (lambda (_%g133513133525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133513133525%_))
                      (let ((_%e133515133527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133513133525%_))))
                        (let ((_%hd133516133530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133515133527%_)))
                              (_%tl133517133532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133515133527%_))))
                          ((lambda (_%L133535%_)
                             (gxc#compile-e__1
                              _%self133509%_
                              (last _%L133535%_)))
                           _%tl133517133532%_)))
                      (_%g133512133522%_ _%g133513133525%_)))))
          (_%g133511133545%_ _%stx133510%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133505%_ _%stx133506%_)
        (let ((__tmp133864
               (lambda () (gxc#apply-begin% _%self133505%_ _%stx133506%_)))
              (__tmp133862
               (let ((__tmp133863
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133863 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133864
           gx#current-expander-phi
           __tmp133862))))
    (define gxc#apply-module%
      (lambda (_%self133444%_ _%stx133445%_)
        (let* ((_%g133447133461%_
                (lambda (_%g133448133458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133448133458%_))))
               (_%g133446133502%_
                (lambda (_%g133448133464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133448133464%_))
                      (let ((_%e133451133466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133448133464%_))))
                        (let ((_%hd133452133469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133451133466%_)))
                              (_%tl133453133471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133451133466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133453133471%_))
                              (let ((_%e133454133474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133453133471%_))))
                                (let ((_%hd133455133477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133454133474%_)))
                                      (_%tl133456133479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133454133474%_))))
                                  ((lambda (_%L133482%_ _%L133483%_)
                                     (let* ((_%ctx133496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133483%_)))
                                            (_%ctx-stx133498%_
                                             (##structure-ref
                                              _%ctx133496%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133865
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133444%_
                                                _%ctx-stx133498%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133865
                                        gx#current-expander-context
                                        _%ctx133496%_)))
                                   _%tl133456133479%_
                                   _%hd133455133477%_)))
                              (_%g133447133461%_ _%g133448133464%_))))
                      (_%g133447133461%_ _%g133448133464%_)))))
          (_%g133446133502%_ _%stx133445%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133376%_ _%stx133377%_)
        (let* ((_%g133379133396%_
                (lambda (_%g133380133393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133380133393%_))))
               (_%g133378133441%_
                (lambda (_%g133380133399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133380133399%_))
                      (let ((_%e133383133401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133380133399%_))))
                        (let ((_%hd133384133404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133383133401%_)))
                              (_%tl133385133406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133383133401%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133385133406%_))
                              (let ((_%e133386133409%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133385133406%_))))
                                (let ((_%hd133387133412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133386133409%_)))
                                      (_%tl133388133414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133386133409%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133388133414%_))
                                      (let ((_%e133389133417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133388133414%_))))
                                        (let ((_%hd133390133420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133389133417%_)))
                                              (_%tl133391133422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133389133417%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133391133422%_))
                                              ((lambda (_%L133425%_
                                                        _%L133426%_)
                                                 (gxc#compile-e__1
                                                  _%self133376%_
                                                  _%L133425%_))
                                               _%hd133390133420%_
                                               _%hd133387133412%_)
                                              (_%g133379133396%_
                                               _%g133380133399%_))))
                                      (_%g133379133396%_ _%g133380133399%_))))
                              (_%g133379133396%_ _%g133380133399%_))))
                      (_%g133379133396%_ _%g133380133399%_)))))
          (_%g133378133441%_ _%stx133377%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133308%_ _%stx133309%_)
        (let* ((_%g133311133328%_
                (lambda (_%g133312133325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133312133325%_))))
               (_%g133310133373%_
                (lambda (_%g133312133331%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133312133331%_))
                      (let ((_%e133315133333%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133312133331%_))))
                        (let ((_%hd133316133336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133315133333%_)))
                              (_%tl133317133338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133315133333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133317133338%_))
                              (let ((_%e133318133341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133317133338%_))))
                                (let ((_%hd133319133344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133318133341%_)))
                                      (_%tl133320133346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133318133341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133320133346%_))
                                      (let ((_%e133321133349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133320133346%_))))
                                        (let ((_%hd133322133352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133321133349%_)))
                                              (_%tl133323133354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133321133349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133323133354%_))
                                              ((lambda (_%L133357%_
                                                        _%L133358%_)
                                                 (gxc#compile-e__1
                                                  _%self133308%_
                                                  _%L133357%_))
                                               _%hd133322133352%_
                                               _%hd133319133344%_)
                                              (_%g133311133328%_
                                               _%g133312133331%_))))
                                      (_%g133311133328%_ _%g133312133331%_))))
                              (_%g133311133328%_ _%g133312133331%_))))
                      (_%g133311133328%_ _%g133312133331%_)))))
          (_%g133310133373%_ _%stx133309%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133239%_ _%stx133240%_)
        (let* ((_%g133242133259%_
                (lambda (_%g133243133256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133243133256%_))))
               (_%g133241133305%_
                (lambda (_%g133243133262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133243133262%_))
                      (let ((_%e133246133264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133243133262%_))))
                        (let ((_%hd133247133267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133246133264%_)))
                              (_%tl133248133269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133246133264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133248133269%_))
                              (let ((_%e133249133272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133248133269%_))))
                                (let ((_%hd133250133275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133249133272%_)))
                                      (_%tl133251133277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133249133272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133251133277%_))
                                      (let ((_%e133252133280%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133251133277%_))))
                                        (let ((_%hd133253133283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133252133280%_)))
                                              (_%tl133254133285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133252133280%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133254133285%_))
                                              ((lambda (_%L133288%_
                                                        _%L133289%_)
                                                 (let ((__tmp133868
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133239%_
                                                           _%L133288%_)))
                                                       (__tmp133866
                                                        (let ((__tmp133867
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133867 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133868
                                                    gx#current-expander-phi
                                                    __tmp133866)))
                                               _%hd133253133283%_
                                               _%hd133250133275%_)
                                              (_%g133242133259%_
                                               _%g133243133262%_))))
                                      (_%g133242133259%_ _%g133243133262%_))))
                              (_%g133242133259%_ _%g133243133262%_))))
                      (_%g133242133259%_ _%g133243133262%_)))))
          (_%g133241133305%_ _%stx133240%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133171%_ _%stx133172%_)
        (let* ((_%g133174133191%_
                (lambda (_%g133175133188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133175133188%_))))
               (_%g133173133236%_
                (lambda (_%g133175133194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133175133194%_))
                      (let ((_%e133178133196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133175133194%_))))
                        (let ((_%hd133179133199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133178133196%_)))
                              (_%tl133180133201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133178133196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133180133201%_))
                              (let ((_%e133181133204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133180133201%_))))
                                (let ((_%hd133182133207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133181133204%_)))
                                      (_%tl133183133209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133181133204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133183133209%_))
                                      (let ((_%e133184133212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133183133209%_))))
                                        (let ((_%hd133185133215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133184133212%_)))
                                              (_%tl133186133217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133184133212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133186133217%_))
                                              ((lambda (_%L133220%_
                                                        _%L133221%_)
                                                 (gxc#compile-e__1
                                                  _%self133171%_
                                                  _%L133220%_))
                                               _%hd133185133215%_
                                               _%hd133182133207%_)
                                              (_%g133174133191%_
                                               _%g133175133194%_))))
                                      (_%g133174133191%_ _%g133175133194%_))))
                              (_%g133174133191%_ _%g133175133194%_))))
                      (_%g133174133191%_ _%g133175133194%_)))))
          (_%g133173133236%_ _%stx133172%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133053%_ _%stx133054%_)
        (let* ((_%g133056133084%_
                (lambda (_%g133057133081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133057133081%_))))
               (_%g133055133168%_
                (lambda (_%g133057133087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133057133087%_))
                      (let ((_%e133060133089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133057133087%_))))
                        (let ((_%hd133061133092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133060133089%_)))
                              (_%tl133062133094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133060133089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133062133094%_))
                              (let ((_g133869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133062133094%_
                                        '0))))
                                (begin
                                  (let ((_g133870_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133869_)
                                               (##vector-length _g133869_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133870_ 2)))
                                        (error "Context expects 2 values"
                                               _g133870_)))
                                  (let ((_%target133063133097%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133869_ 0)))
                                        (_%tl133065133099%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133869_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133065133099%_))
                                        (letrec ((_%loop133066133102%_
                                                  (lambda (_%hd133064133105%_
                                                           _%body133070133107%_
                                                           _%hd133071133109%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133064133105%_))
                                                        (let ((_%e133067133112%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133064133105%_))))
                  (let ((_%lp-hd133068133115%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133067133112%_)))
                        (_%lp-tl133069133117%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133067133112%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133068133115%_))
                        (let ((_%e133074133120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133068133115%_))))
                          (let ((_%hd133075133123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133074133120%_)))
                                (_%tl133076133125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133074133120%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133076133125%_))
                                (let ((_%e133077133128%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133076133125%_))))
                                  (let ((_%hd133078133131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133077133128%_)))
                                        (_%tl133079133133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133077133128%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133079133133%_))
                                        (_%loop133066133102%_
                                         _%lp-tl133069133117%_
                                         (cons _%hd133078133131%_
                                               _%body133070133107%_)
                                         (cons _%hd133075133123%_
                                               _%hd133071133109%_))
                                        (_%g133056133084%_
                                         _%g133057133087%_))))
                                (_%g133056133084%_ _%g133057133087%_))))
                        (_%g133056133084%_ _%g133057133087%_))))
                (let ((_%body133072133136%_ (reverse _%body133070133107%_))
                      (_%hd133073133138%_ (reverse _%hd133071133109%_)))
                  ((lambda (_%L133141%_ _%L133142%_)
                     (for-each
                      (lambda (_%g133156133158%_)
                        (gxc#compile-e__1 _%self133053%_ _%g133156133158%_))
                      (let ((__tmp133871
                             (lambda (_%g133160133163%_ _%g133161133165%_)
                               (cons _%g133160133163%_ _%g133161133165%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133871 '() _%L133141%_))))
                   _%body133072133136%_
                   _%hd133073133138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133066133102%_
                                           _%target133063133097%_
                                           '()
                                           '()))
                                        (_%g133056133084%_
                                         _%g133057133087%_)))))
                              (_%g133056133084%_ _%g133057133087%_))))
                      (_%g133056133084%_ _%g133057133087%_)))))
          (_%g133055133168%_ _%stx133054%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132906%_ _%stx132907%_)
        (let* ((_%g132909132944%_
                (lambda (_%g132910132941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132910132941%_))))
               (_%g132908133050%_
                (lambda (_%g132910132947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132910132947%_))
                      (let ((_%e132914132949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132910132947%_))))
                        (let ((_%hd132915132952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132914132949%_)))
                              (_%tl132916132954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132914132949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132916132954%_))
                              (let ((_%e132917132957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132916132954%_))))
                                (let ((_%hd132918132960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132917132957%_)))
                                      (_%tl132919132962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132917132957%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132918132960%_))
                                      (let ((_g133872_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132918132960%_
                                                '0))))
                                        (begin
                                          (let ((_g133873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133872_)
                                                       (##vector-length
                                                        _g133872_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133873_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133873_)))
                                          (let ((_%target132920132965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133872_ 0)))
                                                (_%tl132922132967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133872_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132922132967%_))
                                                (letrec ((_%loop132923132970%_
                                                          (lambda (_%hd132921132973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132927132975%_
                           _%hd132928132977%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132921132973%_))
                        (let ((_%e132924132980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132921132973%_))))
                          (let ((_%lp-hd132925132983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132924132980%_)))
                                (_%lp-tl132926132985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132924132980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132925132983%_))
                                (let ((_%e132934132988%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132925132983%_))))
                                  (let ((_%hd132935132991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132934132988%_)))
                                        (_%tl132936132993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132934132988%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132936132993%_))
                                        (let ((_%e132937132996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132936132993%_))))
                                          (let ((_%hd132938132999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132937132996%_)))
                                                (_%tl132939133001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132937132996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132939133001%_))
                                                (_%loop132923132970%_
                                                 _%lp-tl132926132985%_
                                                 (cons _%hd132938132999%_
                                                       _%expr132927132975%_)
                                                 (cons _%hd132935132991%_
                                                       _%hd132928132977%_))
                                                (_%g132909132944%_
                                                 _%g132910132947%_))))
                                        (_%g132909132944%_
                                         _%g132910132947%_))))
                                (_%g132909132944%_ _%g132910132947%_))))
                        (let ((_%expr132929133004%_
                               (reverse _%expr132927132975%_))
                              (_%hd132930133006%_
                               (reverse _%hd132928132977%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132919132962%_))
                              (let ((_%e132931133009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132919132962%_))))
                                (let ((_%hd132932133012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132931133009%_)))
                                      (_%tl132933133014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132931133009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132933133014%_))
                                      ((lambda (_%L133017%_
                                                _%L133018%_
                                                _%L133019%_)
                                         (for-each
                                          (lambda (_%g133038133040%_)
                                            (gxc#compile-e__1
                                             _%self132906%_
                                             _%g133038133040%_))
                                          (let ((__tmp133875
                                                 (lambda (_%g133042133045%_
                                                          _%g133043133047%_)
                                                   (cons _%g133042133045%_
                                                         _%g133043133047%_)))
                                                (__tmp133874
                                                 (cons _%L133017%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133875
                                             __tmp133874
                                             _%L133018%_))))
                                       _%hd132932133012%_
                                       _%expr132929133004%_
                                       _%hd132930133006%_)
                                      (_%g132909132944%_ _%g132910132947%_))))
                              (_%g132909132944%_ _%g132910132947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132923132970%_
                                                   _%target132920132965%_
                                                   '()
                                                   '()))
                                                (_%g132909132944%_
                                                 _%g132910132947%_)))))
                                      (_%g132909132944%_ _%g132910132947%_))))
                              (_%g132909132944%_ _%g132910132947%_))))
                      (_%g132909132944%_ _%g132910132947%_)))))
          (_%g132908133050%_ _%stx132907%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132851%_ _%stx132852%_)
        (let* ((_%g132854132868%_
                (lambda (_%g132855132865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132855132865%_))))
               (_%g132853132903%_
                (lambda (_%g132855132871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132855132871%_))
                      (let ((_%e132858132873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132855132871%_))))
                        (let ((_%hd132859132876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132858132873%_)))
                              (_%tl132860132878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132858132873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132860132878%_))
                              (let ((_%e132861132881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132860132878%_))))
                                (let ((_%hd132862132884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132861132881%_)))
                                      (_%tl132863132886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132861132881%_))))
                                  ((lambda (_%L132889%_ _%L132890%_)
                                     (gxc#compile-e__1
                                      _%self132851%_
                                      (last _%L132889%_)))
                                   _%tl132863132886%_
                                   _%hd132862132884%_)))
                              (_%g132854132868%_ _%g132855132871%_))))
                      (_%g132854132868%_ _%g132855132871%_)))))
          (_%g132853132903%_ _%stx132852%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132783%_ _%stx132784%_)
        (let* ((_%g132786132803%_
                (lambda (_%g132787132800%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132787132800%_))))
               (_%g132785132848%_
                (lambda (_%g132787132806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132787132806%_))
                      (let ((_%e132790132808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132787132806%_))))
                        (let ((_%hd132791132811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132790132808%_)))
                              (_%tl132792132813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132790132808%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132792132813%_))
                              (let ((_%e132793132816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132792132813%_))))
                                (let ((_%hd132794132819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132793132816%_)))
                                      (_%tl132795132821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132793132816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132795132821%_))
                                      (let ((_%e132796132824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132795132821%_))))
                                        (let ((_%hd132797132827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132796132824%_)))
                                              (_%tl132798132829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132796132824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132798132829%_))
                                              ((lambda (_%L132832%_
                                                        _%L132833%_)
                                                 (gxc#compile-e__1
                                                  _%self132783%_
                                                  _%L132832%_))
                                               _%hd132797132827%_
                                               _%hd132794132819%_)
                                              (_%g132786132803%_
                                               _%g132787132806%_))))
                                      (_%g132786132803%_ _%g132787132806%_))))
                              (_%g132786132803%_ _%g132787132806%_))))
                      (_%g132786132803%_ _%g132787132806%_)))))
          (_%g132785132848%_ _%stx132784%_))))
    (define gxc#apply-operands
      (lambda (_%self132696%_ _%stx132697%_)
        (let* ((_%g132699132718%_
                (lambda (_%g132700132715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132700132715%_))))
               (_%g132698132780%_
                (lambda (_%g132700132721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132700132721%_))
                      (let ((_%e132702132723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132700132721%_))))
                        (let ((_%hd132703132726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132702132723%_)))
                              (_%tl132704132728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132702132723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132704132728%_))
                              (let ((_g133876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132704132728%_
                                        '0))))
                                (begin
                                  (let ((_g133877_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133876_)
                                               (##vector-length _g133876_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133877_ 2)))
                                        (error "Context expects 2 values"
                                               _g133877_)))
                                  (let ((_%target132705132731%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133876_ 0)))
                                        (_%tl132707132733%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133876_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132707132733%_))
                                        (letrec ((_%loop132708132736%_
                                                  (lambda (_%hd132706132739%_
                                                           _%rands132712132741%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132706132739%_))
                                                        (let ((_%e132709132744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132706132739%_))))
                  (let ((_%lp-hd132710132747%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132709132744%_)))
                        (_%lp-tl132711132749%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132709132744%_))))
                    (_%loop132708132736%_
                     _%lp-tl132711132749%_
                     (cons _%lp-hd132710132747%_ _%rands132712132741%_))))
                (let ((_%rands132713132752%_ (reverse _%rands132712132741%_)))
                  ((lambda (_%L132755%_)
                     (for-each
                      (lambda (_%g132768132770%_)
                        (gxc#compile-e__1 _%self132696%_ _%g132768132770%_))
                      (let ((__tmp133878
                             (lambda (_%g132772132775%_ _%g132773132777%_)
                               (cons _%g132772132775%_ _%g132773132777%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133878 '() _%L132755%_))))
                   _%rands132713132752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132708132736%_
                                           _%target132705132731%_
                                           '()))
                                        (_%g132699132718%_
                                         _%g132700132721%_)))))
                              (_%g132699132718%_ _%g132700132721%_))))
                      (_%g132699132718%_ _%g132700132721%_)))))
          (_%g132698132780%_ _%stx132697%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132693%_ _%src-stx132694%_)
        (let ((__tmp133879
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132694%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132693%_ __tmp133879))))
    (define gxc#xform-begin%
      (lambda (_%self132648%_ _%stx132649%_)
        (let* ((_%g132651132661%_
                (lambda (_%g132652132658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132652132658%_))))
               (_%g132650132690%_
                (lambda (_%g132652132664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132652132664%_))
                      (let ((_%e132654132666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132652132664%_))))
                        (let ((_%hd132655132669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132654132666%_)))
                              (_%tl132656132671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132654132666%_))))
                          ((lambda (_%L132674%_)
                             (let ((_%forms132688%_
                                    (map (lambda (_%g132683132685%_)
                                           (gxc#compile-e__1
                                            _%self132648%_
                                            _%g132683132685%_))
                                         _%L132674%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms132688%_)
                                _%stx132649%_)))
                           _%tl132656132671%_)))
                      (_%g132651132661%_ _%g132652132664%_)))))
          (_%g132650132690%_ _%stx132649%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132602%_ _%stx132603%_)
        (let* ((_%g132605132615%_
                (lambda (_%g132606132612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132606132612%_))))
               (_%g132604132645%_
                (lambda (_%g132606132618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132606132618%_))
                      (let ((_%e132608132620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132606132618%_))))
                        (let ((_%hd132609132623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132608132620%_)))
                              (_%tl132610132625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132608132620%_))))
                          ((lambda (_%L132628%_)
                             (let ((__tmp133882
                                    (lambda ()
                                      (let ((_%forms132643%_
                                             (map (lambda (_%g132638132640%_)
                                                    (gxc#compile-e__1
                                                     _%self132602%_
                                                     _%g132638132640%_))
                                                  _%L132628%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms132643%_)
                                         _%stx132603%_))))
                                   (__tmp133880
                                    (let ((__tmp133881
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133881 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133882
                                gx#current-expander-phi
                                __tmp133880)))
                           _%tl132610132625%_)))
                      (_%g132605132615%_ _%g132606132618%_)))))
          (_%g132604132645%_ _%stx132603%_))))
    (define gxc#xform-module%
      (lambda (_%self132539%_ _%stx132540%_)
        (let* ((_%g132542132556%_
                (lambda (_%g132543132553%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132543132553%_))))
               (_%g132541132599%_
                (lambda (_%g132543132559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132543132559%_))
                      (let ((_%e132546132561%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132543132559%_))))
                        (let ((_%hd132547132564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132546132561%_)))
                              (_%tl132548132566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132546132561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132548132566%_))
                              (let ((_%e132549132569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132548132566%_))))
                                (let ((_%hd132550132572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132549132569%_)))
                                      (_%tl132551132574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132549132569%_))))
                                  ((lambda (_%L132577%_ _%L132578%_)
                                     (let* ((_%ctx132591%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132578%_)))
                                            (_%code132593%_
                                             (##structure-ref
                                              _%ctx132591%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132596%_
                                             (let ((__tmp133883
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self132539%_
                                                       _%code132593%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133883
                                                gx#current-expander-context
                                                _%ctx132591%_))))
                                       (##structure-set!
                                        _%ctx132591%_
                                        _%code132596%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L132578%_
                                                    (cons _%code132596%_ '())))
                                        _%stx132540%_)))
                                   _%tl132551132574%_
                                   _%hd132550132572%_)))
                              (_%g132542132556%_ _%g132543132559%_))))
                      (_%g132542132556%_ _%g132543132559%_)))))
          (_%g132541132599%_ _%stx132540%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132469%_ _%stx132470%_)
        (let* ((_%g132472132489%_
                (lambda (_%g132473132486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132473132486%_))))
               (_%g132471132536%_
                (lambda (_%g132473132492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132473132492%_))
                      (let ((_%e132476132494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132473132492%_))))
                        (let ((_%hd132477132497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132476132494%_)))
                              (_%tl132478132499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132476132494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132478132499%_))
                              (let ((_%e132479132502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132478132499%_))))
                                (let ((_%hd132480132505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132479132502%_)))
                                      (_%tl132481132507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132479132502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132481132507%_))
                                      (let ((_%e132482132510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132481132507%_))))
                                        (let ((_%hd132483132513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132482132510%_)))
                                              (_%tl132484132515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132482132510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132484132515%_))
                                              ((lambda (_%L132518%_
                                                        _%L132519%_)
                                                 (let ((_%expr132534%_
                                                        (gxc#compile-e__1
                                                         _%self132469%_
                                                         _%L132518%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L132519%_
                                                                (cons _%expr132534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132470%_)))
                                               _%hd132483132513%_
                                               _%hd132480132505%_)
                                              (_%g132472132489%_
                                               _%g132473132492%_))))
                                      (_%g132472132489%_ _%g132473132492%_))))
                              (_%g132472132489%_ _%g132473132492%_))))
                      (_%g132472132489%_ _%g132473132492%_)))))
          (_%g132471132536%_ _%stx132470%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132398%_ _%stx132399%_)
        (let* ((_%g132401132418%_
                (lambda (_%g132402132415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132402132415%_))))
               (_%g132400132466%_
                (lambda (_%g132402132421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132402132421%_))
                      (let ((_%e132405132423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132402132421%_))))
                        (let ((_%hd132406132426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132405132423%_)))
                              (_%tl132407132428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132405132423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132407132428%_))
                              (let ((_%e132408132431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132407132428%_))))
                                (let ((_%hd132409132434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132408132431%_)))
                                      (_%tl132410132436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132408132431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132410132436%_))
                                      (let ((_%e132411132439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132410132436%_))))
                                        (let ((_%hd132412132442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132411132439%_)))
                                              (_%tl132413132444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132411132439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132413132444%_))
                                              ((lambda (_%L132447%_
                                                        _%L132448%_)
                                                 (let ((__tmp133886
                                                        (lambda ()
                                                          (let ((_%expr132464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132398%_ _%L132447%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132448%_ (cons _%expr132464%_ '())))
                     _%stx132399%_))))
               (__tmp133884
                (let ((__tmp133885
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133885 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133886
                                                    gx#current-expander-phi
                                                    __tmp133884)))
                                               _%hd132412132442%_
                                               _%hd132409132434%_)
                                              (_%g132401132418%_
                                               _%g132402132421%_))))
                                      (_%g132401132418%_ _%g132402132421%_))))
                              (_%g132401132418%_ _%g132402132421%_))))
                      (_%g132401132418%_ _%g132402132421%_)))))
          (_%g132400132466%_ _%stx132399%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132328%_ _%stx132329%_)
        (let* ((_%g132331132348%_
                (lambda (_%g132332132345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132332132345%_))))
               (_%g132330132395%_
                (lambda (_%g132332132351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132332132351%_))
                      (let ((_%e132335132353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132332132351%_))))
                        (let ((_%hd132336132356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132335132353%_)))
                              (_%tl132337132358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132335132353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132337132358%_))
                              (let ((_%e132338132361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132337132358%_))))
                                (let ((_%hd132339132364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132338132361%_)))
                                      (_%tl132340132366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132338132361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132340132366%_))
                                      (let ((_%e132341132369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132340132366%_))))
                                        (let ((_%hd132342132372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132341132369%_)))
                                              (_%tl132343132374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132341132369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132343132374%_))
                                              ((lambda (_%L132377%_
                                                        _%L132378%_)
                                                 (let ((_%expr132393%_
                                                        (gxc#compile-e__1
                                                         _%self132328%_
                                                         _%L132377%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132378%_
                                                                (cons _%expr132393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132329%_)))
                                               _%hd132342132372%_
                                               _%hd132339132364%_)
                                              (_%g132331132348%_
                                               _%g132332132351%_))))
                                      (_%g132331132348%_ _%g132332132351%_))))
                              (_%g132331132348%_ _%g132332132351%_))))
                      (_%g132331132348%_ _%g132332132351%_)))))
          (_%g132330132395%_ _%stx132329%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132266%_ _%stx132267%_)
        (let* ((_%g132269132283%_
                (lambda (_%g132270132280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132270132280%_))))
               (_%g132268132325%_
                (lambda (_%g132270132286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132270132286%_))
                      (let ((_%e132273132288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132270132286%_))))
                        (let ((_%hd132274132291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132273132288%_)))
                              (_%tl132275132293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132273132288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132275132293%_))
                              (let ((_%e132276132296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132275132293%_))))
                                (let ((_%hd132277132299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132276132296%_)))
                                      (_%tl132278132301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132276132296%_))))
                                  ((lambda (_%L132304%_ _%L132305%_)
                                     (let ((__tmp133888
                                            (lambda ()
                                              (let ((_%body132323%_
                                                     (map (lambda (_%g132318132320%_)
                                                            (gxc#compile-e__1
                                                             _%self132266%_
                                                             _%g132318132320%_))
                                                          _%L132304%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132305%_
                                                             _%body132323%_))
                                                 _%stx132267%_))))
                                           (__tmp133887
                                            (gxc#xform-let-locals
                                             (cons _%L132305%_ '()))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133888
                                        gxc#current-compile-local-env
                                        __tmp133887)))
                                   _%tl132278132301%_
                                   _%hd132277132299%_)))
                              (_%g132269132283%_ _%g132270132286%_))))
                      (_%g132269132283%_ _%g132270132286%_)))))
          (_%g132268132325%_ _%stx132267%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132174%_ _%stx132175%_)
        (letrec ((_%clause-e132177%_
                  (lambda (_%clause132218%_)
                    (let* ((_%g132220132231%_
                            (lambda (_%g132221132228%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132221132228%_))))
                           (_%g132219132263%_
                            (lambda (_%g132221132234%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132221132234%_))
                                  (let ((_%e132224132236%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132221132234%_))))
                                    (let ((_%hd132225132239%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132224132236%_)))
                                          (_%tl132226132241%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132224132236%_))))
                                      ((lambda (_%L132244%_ _%L132245%_)
                                         (let ((__tmp133890
                                                (lambda ()
                                                  (let ((_%body132261%_
                                                         (map (lambda (_%g132256132258%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132174%_
                         _%g132256132258%_))
                      _%L132244%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132245%_
                                                          _%body132261%_))))
                                               (__tmp133889
                                                (gxc#xform-let-locals
                                                 (cons _%L132245%_ '()))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133890
                                            gxc#current-compile-local-env
                                            __tmp133889)))
                                       _%tl132226132241%_
                                       _%hd132225132239%_)))
                                  (_%g132220132231%_ _%g132221132234%_)))))
                      (_%g132219132263%_ _%clause132218%_)))))
          (let* ((_%g132179132189%_
                  (lambda (_%g132180132186%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132180132186%_))))
                 (_%g132178132215%_
                  (lambda (_%g132180132192%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132180132192%_))
                        (let ((_%e132182132194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132180132192%_))))
                          (let ((_%hd132183132197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132182132194%_)))
                                (_%tl132184132199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132182132194%_))))
                            ((lambda (_%L132202%_)
                               (let ((_%clauses132213%_
                                      (map _%clause-e132177%_ _%L132202%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132213%_)
                                  _%stx132175%_)))
                             _%tl132184132199%_)))
                        (_%g132179132189%_ _%g132180132192%_)))))
            (_%g132178132215%_ _%stx132175%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131928%_ _%stx131929%_)
        (let* ((_%g131931131964%_
                (lambda (_%g131932131961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131932131961%_))))
               (_%g131930132171%_
                (lambda (_%g131932131967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131932131967%_))
                      (let ((_%e131937131969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131932131967%_))))
                        (let ((_%hd131938131972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131937131969%_)))
                              (_%tl131939131974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131937131969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131939131974%_))
                              (let ((_%e131940131977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131939131974%_))))
                                (let ((_%hd131941131980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131940131977%_)))
                                      (_%tl131942131982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131940131977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131941131980%_))
                                      (let ((_g133891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131941131980%_
                                                '0))))
                                        (begin
                                          (let ((_g133892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133891_)
                                                       (##vector-length
                                                        _g133891_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133892_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133892_)))
                                          (let ((_%target131943131985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133891_ 0)))
                                                (_%tl131945131987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133891_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131945131987%_))
                                                (letrec ((_%loop131946131990%_
                                                          (lambda (_%hd131944131993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131950131995%_
                           _%hd131951131997%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131944131993%_))
                        (let ((_%e131947132000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131944131993%_))))
                          (let ((_%lp-hd131948132003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131947132000%_)))
                                (_%lp-tl131949132005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131947132000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131948132003%_))
                                (let ((_%e131954132008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131948132003%_))))
                                  (let ((_%hd131955132011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131954132008%_)))
                                        (_%tl131956132013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131954132008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131956132013%_))
                                        (let ((_%e131957132016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131956132013%_))))
                                          (let ((_%hd131958132019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131957132016%_)))
                                                (_%tl131959132021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131957132016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131959132021%_))
                                                (_%loop131946131990%_
                                                 _%lp-tl131949132005%_
                                                 (cons _%hd131958132019%_
                                                       _%expr131950131995%_)
                                                 (cons _%hd131955132011%_
                                                       _%hd131951131997%_))
                                                (_%g131931131964%_
                                                 _%g131932131967%_))))
                                        (_%g131931131964%_
                                         _%g131932131967%_))))
                                (_%g131931131964%_ _%g131932131967%_))))
                        (let ((_%expr131952132024%_
                               (reverse _%expr131950131995%_))
                              (_%hd131953132026%_
                               (reverse _%hd131951131997%_)))
                          ((lambda (_%L132029%_
                                    _%L132030%_
                                    _%L132031%_
                                    _%L132032%_)
                             (let* ((_%g132051132067%_
                                     (lambda (_%g132052132064%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132052132064%_))))
                                    (_%g132050132157%_
                                     (lambda (_%g132052132070%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132052132070%_))
                                           (let ((_g133893_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132052132070%_
                                                     '0))))
                                             (begin
                                               (let ((_g133894_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133893_)
                                                            (##vector-length
                                                             _g133893_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133894_)))
                                               (let ((_%target132054132072%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133893_
                                                         0)))
                                                     (_%tl132056132074%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133893_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132056132074%_))
                                                     (letrec ((_%loop132057132077%_
                                                               (lambda (_%hd132055132080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132061132082%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132055132080%_))
                             (let ((_%e132058132085%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132055132080%_))))
                               (let ((_%lp-hd132059132088%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132058132085%_)))
                                     (_%lp-tl132060132090%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132058132085%_))))
                                 (_%loop132057132077%_
                                  _%lp-tl132060132090%_
                                  (cons _%lp-hd132059132088%_
                                        _%expr132061132082%_))))
                             (let ((_%expr132062132093%_
                                    (reverse _%expr132061132082%_)))
                               ((lambda (_%L132096%_)
                                  (let ((__tmp133897
                                         (lambda ()
                                           (let* ((_%g132110132117%_
                                                   (lambda (_%g132111132114%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132111132114%_))))
                                                  (_%g132109132143%_
                                                   (lambda (_%g132111132120%_)
                                                     ((lambda (_%L132122%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L132032%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132096%_
                                  _%L132031%_))
                               (let ((__tmp133898
                                      (lambda (_%g132132132136%_
                                               _%g132133132138%_
                                               _%g132134132140%_)
                                        (cons (cons _%g132133132138%_
                                                    (cons _%g132132132136%_
                                                          '()))
                                              _%g132134132140%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133898
                                  '()
                                  _%L132096%_
                                  _%L132031%_)))
                             _%L132122%_))
                 _%stx131929%_))
              _%g132111132120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132109132143%_
                                              (map (lambda (_%g132145132147%_)
                                                     (gxc#compile-e__1
                                                      _%self131928%_
                                                      _%g132145132147%_))
                                                   _%L132029%_)))))
                                        (__tmp133895
                                         (gxc#xform-let-locals
                                          (let ((__tmp133896
                                                 (lambda (_%g132149132152%_
                                                          _%g132150132154%_)
                                                   (cons _%g132149132152%_
                                                         _%g132150132154%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133896
                                             '()
                                             _%L132031%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp133897
                                     gxc#current-compile-local-env
                                     __tmp133895)))
                                _%expr132062132093%_))))))
               (_%loop132057132077%_ _%target132054132072%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g132051132067%_
                                                      _%g132052132070%_)))))
                                           (_%g132051132067%_
                                            _%g132052132070%_)))))
                               (_%g132050132157%_
                                (map (lambda (_%g132159132161%_)
                                       (gxc#compile-e__1
                                        _%self131928%_
                                        _%g132159132161%_))
                                     (let ((__tmp133899
                                            (lambda (_%g132163132166%_
                                                     _%g132164132168%_)
                                              (cons _%g132163132166%_
                                                    _%g132164132168%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133899
                                        '()
                                        _%L132030%_))))))
                           _%tl131942131982%_
                           _%expr131952132024%_
                           _%hd131953132026%_
                           _%hd131938131972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131946131990%_
                                                   _%target131943131985%_
                                                   '()
                                                   '()))
                                                (_%g131931131964%_
                                                 _%g131932131967%_)))))
                                      (_%g131931131964%_ _%g131932131967%_))))
                              (_%g131931131964%_ _%g131932131967%_))))
                      (_%g131931131964%_ _%g131932131967%_)))))
          (_%g131930132171%_ _%stx131929%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131682%_ _%stx131683%_)
        (let* ((_%g131685131718%_
                (lambda (_%g131686131715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131686131715%_))))
               (_%g131684131925%_
                (lambda (_%g131686131721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131686131721%_))
                      (let ((_%e131691131723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131686131721%_))))
                        (let ((_%hd131692131726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131691131723%_)))
                              (_%tl131693131728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131691131723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131693131728%_))
                              (let ((_%e131694131731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131693131728%_))))
                                (let ((_%hd131695131734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131694131731%_)))
                                      (_%tl131696131736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131694131731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131695131734%_))
                                      (let ((_g133900_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131695131734%_
                                                '0))))
                                        (begin
                                          (let ((_g133901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133900_)
                                                       (##vector-length
                                                        _g133900_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133901_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133901_)))
                                          (let ((_%target131697131739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133900_ 0)))
                                                (_%tl131699131741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133900_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131699131741%_))
                                                (letrec ((_%loop131700131744%_
                                                          (lambda (_%hd131698131747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131704131749%_
                           _%hd131705131751%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131698131747%_))
                        (let ((_%e131701131754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131698131747%_))))
                          (let ((_%lp-hd131702131757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131701131754%_)))
                                (_%lp-tl131703131759%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131701131754%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131702131757%_))
                                (let ((_%e131708131762%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131702131757%_))))
                                  (let ((_%hd131709131765%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131708131762%_)))
                                        (_%tl131710131767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131708131762%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131710131767%_))
                                        (let ((_%e131711131770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131710131767%_))))
                                          (let ((_%hd131712131773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131711131770%_)))
                                                (_%tl131713131775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131711131770%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131713131775%_))
                                                (_%loop131700131744%_
                                                 _%lp-tl131703131759%_
                                                 (cons _%hd131712131773%_
                                                       _%expr131704131749%_)
                                                 (cons _%hd131709131765%_
                                                       _%hd131705131751%_))
                                                (_%g131685131718%_
                                                 _%g131686131721%_))))
                                        (_%g131685131718%_
                                         _%g131686131721%_))))
                                (_%g131685131718%_ _%g131686131721%_))))
                        (let ((_%expr131706131778%_
                               (reverse _%expr131704131749%_))
                              (_%hd131707131780%_
                               (reverse _%hd131705131751%_)))
                          ((lambda (_%L131783%_
                                    _%L131784%_
                                    _%L131785%_
                                    _%L131786%_)
                             (let ((__tmp133904
                                    (lambda ()
                                      (let* ((_%g131806131822%_
                                              (lambda (_%g131807131819%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131807131819%_))))
                                             (_%g131805131904%_
                                              (lambda (_%g131807131825%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131807131825%_))
                                                    (let ((_g133905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131807131825%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133906_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133905_)
                             (##vector-length _g133905_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133906_ 2)))
                      (error "Context expects 2 values" _g133906_)))
                (let ((_%target131809131827%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133905_ 0)))
                      (_%tl131811131829%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133905_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131811131829%_))
                      (letrec ((_%loop131812131832%_
                                (lambda (_%hd131810131835%_
                                         _%expr131816131837%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131810131835%_))
                                      (let ((_%e131813131840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131810131835%_))))
                                        (let ((_%lp-hd131814131843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131813131840%_)))
                                              (_%lp-tl131815131845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131813131840%_))))
                                          (_%loop131812131832%_
                                           _%lp-tl131815131845%_
                                           (cons _%lp-hd131814131843%_
                                                 _%expr131816131837%_))))
                                      (let ((_%expr131817131848%_
                                             (reverse _%expr131816131837%_)))
                                        ((lambda (_%L131851%_)
                                           (let* ((_%g131865131872%_
                                                   (lambda (_%g131866131869%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131866131869%_))))
                                                  (_%g131864131897%_
                                                   (lambda (_%g131866131875%_)
                                                     ((lambda (_%L131877%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131786%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131851%_
                                  _%L131785%_))
                               (let ((__tmp133907
                                      (lambda (_%g131886131890%_
                                               _%g131887131892%_
                                               _%g131888131894%_)
                                        (cons (cons _%g131887131892%_
                                                    (cons _%g131886131890%_
                                                          '()))
                                              _%g131888131894%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133907
                                  '()
                                  _%L131851%_
                                  _%L131785%_)))
                             _%L131877%_))
                 _%stx131683%_))
              _%g131866131875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131864131897%_
                                              (map (lambda (_%g131899131901%_)
                                                     (gxc#compile-e__1
                                                      _%self131682%_
                                                      _%g131899131901%_))
                                                   _%L131783%_))))
                                         _%expr131817131848%_))))))
                        (_%loop131812131832%_ _%target131809131827%_ '()))
                      (_%g131806131822%_ _%g131807131825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g131806131822%_
                                                     _%g131807131825%_)))))
                                        (_%g131805131904%_
                                         (map (lambda (_%g131906131908%_)
                                                (gxc#compile-e__1
                                                 _%self131682%_
                                                 _%g131906131908%_))
                                              (let ((__tmp133908
                                                     (lambda (_%g131910131913%_
                                                              _%g131911131915%_)
                                                       (cons _%g131910131913%_
                                                             _%g131911131915%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp133908
                                                 '()
                                                 _%L131784%_)))))))
                                   (__tmp133902
                                    (gxc#xform-let-locals
                                     (let ((__tmp133903
                                            (lambda (_%g131917131920%_
                                                     _%g131918131922%_)
                                              (cons _%g131917131920%_
                                                    _%g131918131922%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133903
                                        '()
                                        _%L131785%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133904
                                gxc#current-compile-local-env
                                __tmp133902)))
                           _%tl131696131736%_
                           _%expr131706131778%_
                           _%hd131707131780%_
                           _%hd131692131726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131700131744%_
                                                   _%target131697131739%_
                                                   '()
                                                   '()))
                                                (_%g131685131718%_
                                                 _%g131686131721%_)))))
                                      (_%g131685131718%_ _%g131686131721%_))))
                              (_%g131685131718%_ _%g131686131721%_))))
                      (_%g131685131718%_ _%g131686131721%_)))))
          (_%g131684131925%_ _%stx131683%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131586%_)
        (let _%loop131588%_ ((_%rest131590%_ _%bindings131586%_)
                             (_%locals131591%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131592131600%_ _%rest131590%_)
                 (_%else131594131608%_ (lambda () _%locals131591%_))
                 (_%K131596131670%_
                  (lambda (_%rest131611%_ _%bind131612%_)
                    (let _%loop-bind131614%_ ((_%bind131616%_ _%bind131612%_)
                                              (_%locals131617%_
                                               _%locals131591%_))
                      (let* ((_%bind131618131629%_ _%bind131616%_)
                             (_%E131622131633%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131618131629%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131625131658%_
                               (lambda (_%bind-rest131655%_ _%id131656%_)
                                 (_%loop-bind131614%_
                                  _%bind-rest131655%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131656%_))
                                        _%locals131617%_))))
                              (_%K131624131647%_
                               (lambda (_%id131645%_)
                                 (_%loop131588%_
                                  _%rest131611%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131645%_))
                                        _%locals131617%_))))
                              (_%K131623131638%_
                               (lambda ()
                                 (_%loop131588%_
                                  _%rest131611%_
                                  _%locals131617%_))))
                          (let ((_%try-match131620131652%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131618131629%_))
                                       (let ((_%id131650%_
                                              _%bind131618131629%_))
                                         (_%K131624131647%_ _%id131650%_))
                                       (_%K131623131638%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131618131629%_))
                                (let ((_%tl131627131663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131618131629%_)))
                                      (_%hd131626131661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131618131629%_))))
                                  (let ((_%id131666%_ _%hd131626131661%_)
                                        (_%bind-rest131668%_
                                         _%tl131627131663%_))
                                    (_%K131625131658%_
                                     _%bind-rest131668%_
                                     _%id131666%_)))
                                (_%try-match131620131652%_)))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131592131600%_))
                (let ((_%hd131597131673%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131592131600%_)))
                      (_%tl131598131675%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131592131600%_))))
                  (let* ((_%bind131678%_ _%hd131597131673%_)
                         (_%rest131680%_ _%tl131598131675%_))
                    (_%K131596131670%_ _%rest131680%_ _%bind131678%_)))
                (_%else131594131608%_))))))
    (define gxc#xform-operands
      (lambda (_%self131538%_ _%stx131539%_)
        (let* ((_%g131541131552%_
                (lambda (_%g131542131549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131542131549%_))))
               (_%g131540131583%_
                (lambda (_%g131542131555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131542131555%_))
                      (let ((_%e131545131557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131542131555%_))))
                        (let ((_%hd131546131560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131545131557%_)))
                              (_%tl131547131562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131545131557%_))))
                          ((lambda (_%L131565%_ _%L131566%_)
                             (let ((_%rands131581%_
                                    (map (lambda (_%g131576131578%_)
                                           (gxc#compile-e__1
                                            _%self131538%_
                                            _%g131576131578%_))
                                         _%L131565%_)))
                               (gxc#xform-wrap-source
                                (cons _%L131566%_ _%rands131581%_)
                                _%stx131539%_)))
                           _%tl131547131562%_
                           _%hd131546131560%_)))
                      (_%g131541131552%_ _%g131542131555%_)))))
          (_%g131540131583%_ _%stx131539%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131468%_ _%stx131469%_)
        (let* ((_%g131471131488%_
                (lambda (_%g131472131485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131472131485%_))))
               (_%g131470131535%_
                (lambda (_%g131472131491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131472131491%_))
                      (let ((_%e131475131493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131472131491%_))))
                        (let ((_%hd131476131496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131475131493%_)))
                              (_%tl131477131498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131475131493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131477131498%_))
                              (let ((_%e131478131501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131477131498%_))))
                                (let ((_%hd131479131504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131478131501%_)))
                                      (_%tl131480131506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131478131501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131480131506%_))
                                      (let ((_%e131481131509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131480131506%_))))
                                        (let ((_%hd131482131512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131481131509%_)))
                                              (_%tl131483131514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131481131509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131483131514%_))
                                              ((lambda (_%L131517%_
                                                        _%L131518%_)
                                                 (let ((_%expr131533%_
                                                        (gxc#compile-e__1
                                                         _%self131468%_
                                                         _%L131517%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L131518%_
                                                                (cons _%expr131533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131469%_)))
                                               _%hd131482131512%_
                                               _%hd131479131504%_)
                                              (_%g131471131488%_
                                               _%g131472131491%_))))
                                      (_%g131471131488%_ _%g131472131491%_))))
                              (_%g131471131488%_ _%g131472131491%_))))
                      (_%g131471131488%_ _%g131472131491%_)))))
          (_%g131470131535%_ _%stx131469%_))))))
