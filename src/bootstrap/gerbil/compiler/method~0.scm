(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712643208)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133587%_)
        (let* ((_%self133589%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133591%_
                (let ((__tmp133769 (gxc#stx-car-e _%stx133587%_)))
                  (declare (not safe))
                  (method-ref _%self133589%_ __tmp133769))))
          (if _%$e133591%_
              ((lambda (_%method133594%_)
                 (declare (not safe))
                 (_%method133594%_ _%self133589%_ _%stx133587%_))
               _%$e133591%_)
              (let ((__tmp133771 (gxc#stx-car-e _%stx133587%_))
                    (__tmp133770
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133587%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133589%_
                       __tmp133771
                       __tmp133770))))))
    (define gxc#compile-e__1
      (lambda (_%self133598%_ _%stx133599%_)
        (let ((_%$e133601%_
               (let ((__tmp133772 (gxc#stx-car-e _%stx133599%_)))
                 (declare (not safe))
                 (method-ref _%self133598%_ __tmp133772))))
          (if _%$e133601%_
              ((lambda (_%method133604%_)
                 (declare (not safe))
                 (_%method133604%_ _%self133598%_ _%stx133599%_))
               _%$e133601%_)
              (let ((__tmp133774 (gxc#stx-car-e _%stx133599%_))
                    (__tmp133773
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133599%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133598%_
                       __tmp133774
                       __tmp133773))))))
    (define gxc#compile-e
      (lambda _g133776_
        (let ((_g133775_ (let () (declare (not safe)) (##length _g133776_))))
          (cond ((let () (declare (not safe)) (##fx= _g133775_ 1))
                 (apply gxc#compile-e__0 _g133776_))
                ((let () (declare (not safe)) (##fx= _g133775_ 2))
                 (apply gxc#compile-e__1 _g133776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133776_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133585%_)
        (let ((__tmp133777
               (car (let () (declare (not safe)) (gx#stx-e _%stx133585%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133777))))
    (define gxc#void-method (lambda (_%self133582%_ _%stx133583%_) '#!void))
    (define gxc#false-method (lambda (_%self133579%_ _%stx133580%_) '#f))
    (define gxc#true-method (lambda (_%self133576%_ _%stx133577%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133573%_ _%stx133574%_) _%stx133574%_))
    (define gxc#::void-expression::t
      (let ((__tmp133778 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133778
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133570%_
        (apply make-instance gxc#::void-expression::t _%$args133570%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133779
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
        (__make-promise __tmp133779)))
    (define gxc#::void-special-form::t
      (let ((__tmp133780 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133780
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133566%_
        (apply make-instance gxc#::void-special-form::t _%$args133566%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133781
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
        (__make-promise __tmp133781)))
    (define gxc#::void::t
      (let ((__tmp133782
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp133782 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133562%_
        (apply make-instance gxc#::void::t _%$args133562%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133783
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133783)))
    (define gxc#::false-expression::t
      (let ((__tmp133784 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133784
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133558%_
        (apply make-instance gxc#::false-expression::t _%$args133558%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133785
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
        (__make-promise __tmp133785)))
    (define gxc#::false-special-form::t
      (let ((__tmp133786 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133786
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133554%_
        (apply make-instance gxc#::false-special-form::t _%$args133554%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133787
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
        (__make-promise __tmp133787)))
    (define gxc#::false::t
      (let ((__tmp133788
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp133788 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133550%_
        (apply make-instance gxc#::false::t _%$args133550%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133789
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133789)))
    (define gxc#::identity-expression::t
      (let ((__tmp133790 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133790
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133546%_
        (apply make-instance gxc#::identity-expression::t _%$args133546%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133791
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
        (__make-promise __tmp133791)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133792 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133792
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133542%_
        (apply make-instance gxc#::identity-special-form::t _%$args133542%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133793
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
        (__make-promise __tmp133793)))
    (define gxc#::identity::t
      (let ((__tmp133794
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133794
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133538%_
        (apply make-instance gxc#::identity::t _%$args133538%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133795
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133795)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133796 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133796
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133534%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133534%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133797
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
        (__make-promise __tmp133797)))
    (define gxc#::basic-xform::t
      (let ((__tmp133798
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133798
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133530%_
        (apply make-instance gxc#::basic-xform::t _%$args133530%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133799
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
        (__make-promise __tmp133799)))
    (define gxc#apply-begin%
      (lambda (_%self133486%_ _%stx133487%_)
        (let* ((_%g133489133499%_
                (lambda (_%g133490133496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133490133496%_))))
               (_%g133488133526%_
                (lambda (_%g133490133502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133490133502%_))
                      (let ((_%e133492133504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133490133502%_))))
                        (let ((_%hd133493133507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133492133504%_)))
                              (_%tl133494133509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133492133504%_))))
                          ((lambda (_%L133512%_)
                             (for-each
                              (lambda (_%g133521133523%_)
                                (gxc#compile-e__1
                                 _%self133486%_
                                 _%g133521133523%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133512%_))))
                           _%tl133494133509%_)))
                      (_%g133489133499%_ _%g133490133502%_)))))
          (_%g133488133526%_ _%stx133487%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133447%_ _%stx133448%_)
        (let* ((_%g133450133460%_
                (lambda (_%g133451133457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133451133457%_))))
               (_%g133449133483%_
                (lambda (_%g133451133463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133451133463%_))
                      (let ((_%e133453133465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133451133463%_))))
                        (let ((_%hd133454133468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133453133465%_)))
                              (_%tl133455133470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133453133465%_))))
                          ((lambda (_%L133473%_)
                             (gxc#compile-e__1
                              _%self133447%_
                              (last _%L133473%_)))
                           _%tl133455133470%_)))
                      (_%g133450133460%_ _%g133451133463%_)))))
          (_%g133449133483%_ _%stx133448%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133443%_ _%stx133444%_)
        (let ((__tmp133802
               (lambda () (gxc#apply-begin% _%self133443%_ _%stx133444%_)))
              (__tmp133800
               (let ((__tmp133801
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133801 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133802
           gx#current-expander-phi
           __tmp133800))))
    (define gxc#apply-module%
      (lambda (_%self133382%_ _%stx133383%_)
        (let* ((_%g133385133399%_
                (lambda (_%g133386133396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133386133396%_))))
               (_%g133384133440%_
                (lambda (_%g133386133402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133386133402%_))
                      (let ((_%e133389133404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133386133402%_))))
                        (let ((_%hd133390133407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133389133404%_)))
                              (_%tl133391133409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133389133404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133391133409%_))
                              (let ((_%e133392133412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133391133409%_))))
                                (let ((_%hd133393133415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133392133412%_)))
                                      (_%tl133394133417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133392133412%_))))
                                  ((lambda (_%L133420%_ _%L133421%_)
                                     (let* ((_%ctx133434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133421%_)))
                                            (_%ctx-stx133436%_
                                             (##structure-ref
                                              _%ctx133434%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133803
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133382%_
                                                _%ctx-stx133436%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133803
                                        gx#current-expander-context
                                        _%ctx133434%_)))
                                   _%tl133394133417%_
                                   _%hd133393133415%_)))
                              (_%g133385133399%_ _%g133386133402%_))))
                      (_%g133385133399%_ _%g133386133402%_)))))
          (_%g133384133440%_ _%stx133383%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133314%_ _%stx133315%_)
        (let* ((_%g133317133334%_
                (lambda (_%g133318133331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133318133331%_))))
               (_%g133316133379%_
                (lambda (_%g133318133337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133318133337%_))
                      (let ((_%e133321133339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133318133337%_))))
                        (let ((_%hd133322133342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133321133339%_)))
                              (_%tl133323133344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133321133339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133323133344%_))
                              (let ((_%e133324133347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133323133344%_))))
                                (let ((_%hd133325133350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133324133347%_)))
                                      (_%tl133326133352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133324133347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133326133352%_))
                                      (let ((_%e133327133355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133326133352%_))))
                                        (let ((_%hd133328133358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133327133355%_)))
                                              (_%tl133329133360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133327133355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133329133360%_))
                                              ((lambda (_%L133363%_
                                                        _%L133364%_)
                                                 (gxc#compile-e__1
                                                  _%self133314%_
                                                  _%L133363%_))
                                               _%hd133328133358%_
                                               _%hd133325133350%_)
                                              (_%g133317133334%_
                                               _%g133318133337%_))))
                                      (_%g133317133334%_ _%g133318133337%_))))
                              (_%g133317133334%_ _%g133318133337%_))))
                      (_%g133317133334%_ _%g133318133337%_)))))
          (_%g133316133379%_ _%stx133315%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133246%_ _%stx133247%_)
        (let* ((_%g133249133266%_
                (lambda (_%g133250133263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133250133263%_))))
               (_%g133248133311%_
                (lambda (_%g133250133269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133250133269%_))
                      (let ((_%e133253133271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133250133269%_))))
                        (let ((_%hd133254133274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133253133271%_)))
                              (_%tl133255133276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133253133271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133255133276%_))
                              (let ((_%e133256133279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133255133276%_))))
                                (let ((_%hd133257133282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133256133279%_)))
                                      (_%tl133258133284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133256133279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133258133284%_))
                                      (let ((_%e133259133287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133258133284%_))))
                                        (let ((_%hd133260133290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133259133287%_)))
                                              (_%tl133261133292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133259133287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133261133292%_))
                                              ((lambda (_%L133295%_
                                                        _%L133296%_)
                                                 (gxc#compile-e__1
                                                  _%self133246%_
                                                  _%L133295%_))
                                               _%hd133260133290%_
                                               _%hd133257133282%_)
                                              (_%g133249133266%_
                                               _%g133250133269%_))))
                                      (_%g133249133266%_ _%g133250133269%_))))
                              (_%g133249133266%_ _%g133250133269%_))))
                      (_%g133249133266%_ _%g133250133269%_)))))
          (_%g133248133311%_ _%stx133247%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133177%_ _%stx133178%_)
        (let* ((_%g133180133197%_
                (lambda (_%g133181133194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133181133194%_))))
               (_%g133179133243%_
                (lambda (_%g133181133200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133181133200%_))
                      (let ((_%e133184133202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133181133200%_))))
                        (let ((_%hd133185133205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133184133202%_)))
                              (_%tl133186133207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133184133202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133186133207%_))
                              (let ((_%e133187133210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133186133207%_))))
                                (let ((_%hd133188133213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133187133210%_)))
                                      (_%tl133189133215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133187133210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133189133215%_))
                                      (let ((_%e133190133218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133189133215%_))))
                                        (let ((_%hd133191133221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133190133218%_)))
                                              (_%tl133192133223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133190133218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133192133223%_))
                                              ((lambda (_%L133226%_
                                                        _%L133227%_)
                                                 (let ((__tmp133806
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133177%_
                                                           _%L133226%_)))
                                                       (__tmp133804
                                                        (let ((__tmp133805
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133805 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133806
                                                    gx#current-expander-phi
                                                    __tmp133804)))
                                               _%hd133191133221%_
                                               _%hd133188133213%_)
                                              (_%g133180133197%_
                                               _%g133181133200%_))))
                                      (_%g133180133197%_ _%g133181133200%_))))
                              (_%g133180133197%_ _%g133181133200%_))))
                      (_%g133180133197%_ _%g133181133200%_)))))
          (_%g133179133243%_ _%stx133178%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133109%_ _%stx133110%_)
        (let* ((_%g133112133129%_
                (lambda (_%g133113133126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133113133126%_))))
               (_%g133111133174%_
                (lambda (_%g133113133132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133113133132%_))
                      (let ((_%e133116133134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133113133132%_))))
                        (let ((_%hd133117133137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133116133134%_)))
                              (_%tl133118133139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133116133134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133118133139%_))
                              (let ((_%e133119133142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133118133139%_))))
                                (let ((_%hd133120133145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133119133142%_)))
                                      (_%tl133121133147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133119133142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133121133147%_))
                                      (let ((_%e133122133150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133121133147%_))))
                                        (let ((_%hd133123133153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133122133150%_)))
                                              (_%tl133124133155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133122133150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133124133155%_))
                                              ((lambda (_%L133158%_
                                                        _%L133159%_)
                                                 (gxc#compile-e__1
                                                  _%self133109%_
                                                  _%L133158%_))
                                               _%hd133123133153%_
                                               _%hd133120133145%_)
                                              (_%g133112133129%_
                                               _%g133113133132%_))))
                                      (_%g133112133129%_ _%g133113133132%_))))
                              (_%g133112133129%_ _%g133113133132%_))))
                      (_%g133112133129%_ _%g133113133132%_)))))
          (_%g133111133174%_ _%stx133110%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self132991%_ _%stx132992%_)
        (let* ((_%g132994133022%_
                (lambda (_%g132995133019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132995133019%_))))
               (_%g132993133106%_
                (lambda (_%g132995133025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132995133025%_))
                      (let ((_%e132998133027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132995133025%_))))
                        (let ((_%hd132999133030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132998133027%_)))
                              (_%tl133000133032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132998133027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133000133032%_))
                              (let ((_g133807_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133000133032%_
                                        '0))))
                                (begin
                                  (let ((_g133808_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133807_)
                                               (##vector-length _g133807_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133808_ 2)))
                                        (error "Context expects 2 values"
                                               _g133808_)))
                                  (let ((_%target133001133035%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133807_ 0)))
                                        (_%tl133003133037%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133807_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133003133037%_))
                                        (letrec ((_%loop133004133040%_
                                                  (lambda (_%hd133002133043%_
                                                           _%body133008133045%_
                                                           _%hd133009133047%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133002133043%_))
                                                        (let ((_%e133005133050%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133002133043%_))))
                  (let ((_%lp-hd133006133053%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133005133050%_)))
                        (_%lp-tl133007133055%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133005133050%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133006133053%_))
                        (let ((_%e133012133058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133006133053%_))))
                          (let ((_%hd133013133061%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133012133058%_)))
                                (_%tl133014133063%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133012133058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133014133063%_))
                                (let ((_%e133015133066%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133014133063%_))))
                                  (let ((_%hd133016133069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133015133066%_)))
                                        (_%tl133017133071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133015133066%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133017133071%_))
                                        (_%loop133004133040%_
                                         _%lp-tl133007133055%_
                                         (cons _%hd133016133069%_
                                               _%body133008133045%_)
                                         (cons _%hd133013133061%_
                                               _%hd133009133047%_))
                                        (_%g132994133022%_
                                         _%g132995133025%_))))
                                (_%g132994133022%_ _%g132995133025%_))))
                        (_%g132994133022%_ _%g132995133025%_))))
                (let ((_%body133010133074%_ (reverse _%body133008133045%_))
                      (_%hd133011133076%_ (reverse _%hd133009133047%_)))
                  ((lambda (_%L133079%_ _%L133080%_)
                     (for-each
                      (lambda (_%g133094133096%_)
                        (gxc#compile-e__1 _%self132991%_ _%g133094133096%_))
                      (let ((__tmp133809
                             (lambda (_%g133098133101%_ _%g133099133103%_)
                               (cons _%g133098133101%_ _%g133099133103%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133809 '() _%L133079%_))))
                   _%body133010133074%_
                   _%hd133011133076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133004133040%_
                                           _%target133001133035%_
                                           '()
                                           '()))
                                        (_%g132994133022%_
                                         _%g132995133025%_)))))
                              (_%g132994133022%_ _%g132995133025%_))))
                      (_%g132994133022%_ _%g132995133025%_)))))
          (_%g132993133106%_ _%stx132992%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132844%_ _%stx132845%_)
        (let* ((_%g132847132882%_
                (lambda (_%g132848132879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132848132879%_))))
               (_%g132846132988%_
                (lambda (_%g132848132885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132848132885%_))
                      (let ((_%e132852132887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132848132885%_))))
                        (let ((_%hd132853132890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132852132887%_)))
                              (_%tl132854132892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132852132887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132854132892%_))
                              (let ((_%e132855132895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132854132892%_))))
                                (let ((_%hd132856132898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132855132895%_)))
                                      (_%tl132857132900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132855132895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132856132898%_))
                                      (let ((_g133810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132856132898%_
                                                '0))))
                                        (begin
                                          (let ((_g133811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133810_)
                                                       (##vector-length
                                                        _g133810_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133811_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133811_)))
                                          (let ((_%target132858132903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133810_ 0)))
                                                (_%tl132860132905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133810_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132860132905%_))
                                                (letrec ((_%loop132861132908%_
                                                          (lambda (_%hd132859132911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132865132913%_
                           _%hd132866132915%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132859132911%_))
                        (let ((_%e132862132918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132859132911%_))))
                          (let ((_%lp-hd132863132921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132862132918%_)))
                                (_%lp-tl132864132923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132862132918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132863132921%_))
                                (let ((_%e132872132926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132863132921%_))))
                                  (let ((_%hd132873132929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132872132926%_)))
                                        (_%tl132874132931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132872132926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132874132931%_))
                                        (let ((_%e132875132934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132874132931%_))))
                                          (let ((_%hd132876132937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132875132934%_)))
                                                (_%tl132877132939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132875132934%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132877132939%_))
                                                (_%loop132861132908%_
                                                 _%lp-tl132864132923%_
                                                 (cons _%hd132876132937%_
                                                       _%expr132865132913%_)
                                                 (cons _%hd132873132929%_
                                                       _%hd132866132915%_))
                                                (_%g132847132882%_
                                                 _%g132848132885%_))))
                                        (_%g132847132882%_
                                         _%g132848132885%_))))
                                (_%g132847132882%_ _%g132848132885%_))))
                        (let ((_%expr132867132942%_
                               (reverse _%expr132865132913%_))
                              (_%hd132868132944%_
                               (reverse _%hd132866132915%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132857132900%_))
                              (let ((_%e132869132947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132857132900%_))))
                                (let ((_%hd132870132950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132869132947%_)))
                                      (_%tl132871132952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132869132947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132871132952%_))
                                      ((lambda (_%L132955%_
                                                _%L132956%_
                                                _%L132957%_)
                                         (for-each
                                          (lambda (_%g132976132978%_)
                                            (gxc#compile-e__1
                                             _%self132844%_
                                             _%g132976132978%_))
                                          (let ((__tmp133813
                                                 (lambda (_%g132980132983%_
                                                          _%g132981132985%_)
                                                   (cons _%g132980132983%_
                                                         _%g132981132985%_)))
                                                (__tmp133812
                                                 (cons _%L132955%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133813
                                             __tmp133812
                                             _%L132956%_))))
                                       _%hd132870132950%_
                                       _%expr132867132942%_
                                       _%hd132868132944%_)
                                      (_%g132847132882%_ _%g132848132885%_))))
                              (_%g132847132882%_ _%g132848132885%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132861132908%_
                                                   _%target132858132903%_
                                                   '()
                                                   '()))
                                                (_%g132847132882%_
                                                 _%g132848132885%_)))))
                                      (_%g132847132882%_ _%g132848132885%_))))
                              (_%g132847132882%_ _%g132848132885%_))))
                      (_%g132847132882%_ _%g132848132885%_)))))
          (_%g132846132988%_ _%stx132845%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132789%_ _%stx132790%_)
        (let* ((_%g132792132806%_
                (lambda (_%g132793132803%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132793132803%_))))
               (_%g132791132841%_
                (lambda (_%g132793132809%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132793132809%_))
                      (let ((_%e132796132811%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132793132809%_))))
                        (let ((_%hd132797132814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132796132811%_)))
                              (_%tl132798132816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132796132811%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132798132816%_))
                              (let ((_%e132799132819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132798132816%_))))
                                (let ((_%hd132800132822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132799132819%_)))
                                      (_%tl132801132824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132799132819%_))))
                                  ((lambda (_%L132827%_ _%L132828%_)
                                     (gxc#compile-e__1
                                      _%self132789%_
                                      (last _%L132827%_)))
                                   _%tl132801132824%_
                                   _%hd132800132822%_)))
                              (_%g132792132806%_ _%g132793132809%_))))
                      (_%g132792132806%_ _%g132793132809%_)))))
          (_%g132791132841%_ _%stx132790%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132721%_ _%stx132722%_)
        (let* ((_%g132724132741%_
                (lambda (_%g132725132738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132725132738%_))))
               (_%g132723132786%_
                (lambda (_%g132725132744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132725132744%_))
                      (let ((_%e132728132746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132725132744%_))))
                        (let ((_%hd132729132749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132728132746%_)))
                              (_%tl132730132751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132728132746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132730132751%_))
                              (let ((_%e132731132754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132730132751%_))))
                                (let ((_%hd132732132757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132731132754%_)))
                                      (_%tl132733132759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132731132754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132733132759%_))
                                      (let ((_%e132734132762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132733132759%_))))
                                        (let ((_%hd132735132765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132734132762%_)))
                                              (_%tl132736132767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132734132762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132736132767%_))
                                              ((lambda (_%L132770%_
                                                        _%L132771%_)
                                                 (gxc#compile-e__1
                                                  _%self132721%_
                                                  _%L132770%_))
                                               _%hd132735132765%_
                                               _%hd132732132757%_)
                                              (_%g132724132741%_
                                               _%g132725132744%_))))
                                      (_%g132724132741%_ _%g132725132744%_))))
                              (_%g132724132741%_ _%g132725132744%_))))
                      (_%g132724132741%_ _%g132725132744%_)))))
          (_%g132723132786%_ _%stx132722%_))))
    (define gxc#apply-operands
      (lambda (_%self132634%_ _%stx132635%_)
        (let* ((_%g132637132656%_
                (lambda (_%g132638132653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132638132653%_))))
               (_%g132636132718%_
                (lambda (_%g132638132659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132638132659%_))
                      (let ((_%e132640132661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132638132659%_))))
                        (let ((_%hd132641132664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132640132661%_)))
                              (_%tl132642132666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132640132661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132642132666%_))
                              (let ((_g133814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132642132666%_
                                        '0))))
                                (begin
                                  (let ((_g133815_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133814_)
                                               (##vector-length _g133814_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133815_ 2)))
                                        (error "Context expects 2 values"
                                               _g133815_)))
                                  (let ((_%target132643132669%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133814_ 0)))
                                        (_%tl132645132671%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133814_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132645132671%_))
                                        (letrec ((_%loop132646132674%_
                                                  (lambda (_%hd132644132677%_
                                                           _%rands132650132679%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132644132677%_))
                                                        (let ((_%e132647132682%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132644132677%_))))
                  (let ((_%lp-hd132648132685%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132647132682%_)))
                        (_%lp-tl132649132687%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132647132682%_))))
                    (_%loop132646132674%_
                     _%lp-tl132649132687%_
                     (cons _%lp-hd132648132685%_ _%rands132650132679%_))))
                (let ((_%rands132651132690%_ (reverse _%rands132650132679%_)))
                  ((lambda (_%L132693%_)
                     (for-each
                      (lambda (_%g132706132708%_)
                        (gxc#compile-e__1 _%self132634%_ _%g132706132708%_))
                      (let ((__tmp133816
                             (lambda (_%g132710132713%_ _%g132711132715%_)
                               (cons _%g132710132713%_ _%g132711132715%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133816 '() _%L132693%_))))
                   _%rands132651132690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132646132674%_
                                           _%target132643132669%_
                                           '()))
                                        (_%g132637132656%_
                                         _%g132638132659%_)))))
                              (_%g132637132656%_ _%g132638132659%_))))
                      (_%g132637132656%_ _%g132638132659%_)))))
          (_%g132636132718%_ _%stx132635%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132631%_ _%src-stx132632%_)
        (let ((__tmp133817
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132632%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132631%_ __tmp133817))))
    (define gxc#xform-begin%
      (lambda (_%self132586%_ _%stx132587%_)
        (let* ((_%g132589132599%_
                (lambda (_%g132590132596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132590132596%_))))
               (_%g132588132628%_
                (lambda (_%g132590132602%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132590132602%_))
                      (let ((_%e132592132604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132590132602%_))))
                        (let ((_%hd132593132607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132592132604%_)))
                              (_%tl132594132609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132592132604%_))))
                          ((lambda (_%L132612%_)
                             (let ((_%forms132626%_
                                    (map (lambda (_%g132621132623%_)
                                           (gxc#compile-e__1
                                            _%self132586%_
                                            _%g132621132623%_))
                                         _%L132612%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms132626%_)
                                _%stx132587%_)))
                           _%tl132594132609%_)))
                      (_%g132589132599%_ _%g132590132602%_)))))
          (_%g132588132628%_ _%stx132587%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132540%_ _%stx132541%_)
        (let* ((_%g132543132553%_
                (lambda (_%g132544132550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132544132550%_))))
               (_%g132542132583%_
                (lambda (_%g132544132556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132544132556%_))
                      (let ((_%e132546132558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132544132556%_))))
                        (let ((_%hd132547132561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132546132558%_)))
                              (_%tl132548132563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132546132558%_))))
                          ((lambda (_%L132566%_)
                             (let ((__tmp133820
                                    (lambda ()
                                      (let ((_%forms132581%_
                                             (map (lambda (_%g132576132578%_)
                                                    (gxc#compile-e__1
                                                     _%self132540%_
                                                     _%g132576132578%_))
                                                  _%L132566%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms132581%_)
                                         _%stx132541%_))))
                                   (__tmp133818
                                    (let ((__tmp133819
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133819 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133820
                                gx#current-expander-phi
                                __tmp133818)))
                           _%tl132548132563%_)))
                      (_%g132543132553%_ _%g132544132556%_)))))
          (_%g132542132583%_ _%stx132541%_))))
    (define gxc#xform-module%
      (lambda (_%self132477%_ _%stx132478%_)
        (let* ((_%g132480132494%_
                (lambda (_%g132481132491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132481132491%_))))
               (_%g132479132537%_
                (lambda (_%g132481132497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132481132497%_))
                      (let ((_%e132484132499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132481132497%_))))
                        (let ((_%hd132485132502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132484132499%_)))
                              (_%tl132486132504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132484132499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132486132504%_))
                              (let ((_%e132487132507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132486132504%_))))
                                (let ((_%hd132488132510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132487132507%_)))
                                      (_%tl132489132512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132487132507%_))))
                                  ((lambda (_%L132515%_ _%L132516%_)
                                     (let* ((_%ctx132529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132516%_)))
                                            (_%code132531%_
                                             (##structure-ref
                                              _%ctx132529%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132534%_
                                             (let ((__tmp133821
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self132477%_
                                                       _%code132531%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133821
                                                gx#current-expander-context
                                                _%ctx132529%_))))
                                       (##structure-set!
                                        _%ctx132529%_
                                        _%code132534%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L132516%_
                                                    (cons _%code132534%_ '())))
                                        _%stx132478%_)))
                                   _%tl132489132512%_
                                   _%hd132488132510%_)))
                              (_%g132480132494%_ _%g132481132497%_))))
                      (_%g132480132494%_ _%g132481132497%_)))))
          (_%g132479132537%_ _%stx132478%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132407%_ _%stx132408%_)
        (let* ((_%g132410132427%_
                (lambda (_%g132411132424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132411132424%_))))
               (_%g132409132474%_
                (lambda (_%g132411132430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132411132430%_))
                      (let ((_%e132414132432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132411132430%_))))
                        (let ((_%hd132415132435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132414132432%_)))
                              (_%tl132416132437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132414132432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132416132437%_))
                              (let ((_%e132417132440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132416132437%_))))
                                (let ((_%hd132418132443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132417132440%_)))
                                      (_%tl132419132445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132417132440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132419132445%_))
                                      (let ((_%e132420132448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132419132445%_))))
                                        (let ((_%hd132421132451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132420132448%_)))
                                              (_%tl132422132453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132420132448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132422132453%_))
                                              ((lambda (_%L132456%_
                                                        _%L132457%_)
                                                 (let ((_%expr132472%_
                                                        (gxc#compile-e__1
                                                         _%self132407%_
                                                         _%L132456%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L132457%_
                                                                (cons _%expr132472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132408%_)))
                                               _%hd132421132451%_
                                               _%hd132418132443%_)
                                              (_%g132410132427%_
                                               _%g132411132430%_))))
                                      (_%g132410132427%_ _%g132411132430%_))))
                              (_%g132410132427%_ _%g132411132430%_))))
                      (_%g132410132427%_ _%g132411132430%_)))))
          (_%g132409132474%_ _%stx132408%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132336%_ _%stx132337%_)
        (let* ((_%g132339132356%_
                (lambda (_%g132340132353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132340132353%_))))
               (_%g132338132404%_
                (lambda (_%g132340132359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132340132359%_))
                      (let ((_%e132343132361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132340132359%_))))
                        (let ((_%hd132344132364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132343132361%_)))
                              (_%tl132345132366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132343132361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132345132366%_))
                              (let ((_%e132346132369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132345132366%_))))
                                (let ((_%hd132347132372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132346132369%_)))
                                      (_%tl132348132374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132346132369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132348132374%_))
                                      (let ((_%e132349132377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132348132374%_))))
                                        (let ((_%hd132350132380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132349132377%_)))
                                              (_%tl132351132382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132349132377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132351132382%_))
                                              ((lambda (_%L132385%_
                                                        _%L132386%_)
                                                 (let ((__tmp133824
                                                        (lambda ()
                                                          (let ((_%expr132402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132336%_ _%L132385%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132386%_ (cons _%expr132402%_ '())))
                     _%stx132337%_))))
               (__tmp133822
                (let ((__tmp133823
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133823 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133824
                                                    gx#current-expander-phi
                                                    __tmp133822)))
                                               _%hd132350132380%_
                                               _%hd132347132372%_)
                                              (_%g132339132356%_
                                               _%g132340132359%_))))
                                      (_%g132339132356%_ _%g132340132359%_))))
                              (_%g132339132356%_ _%g132340132359%_))))
                      (_%g132339132356%_ _%g132340132359%_)))))
          (_%g132338132404%_ _%stx132337%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132266%_ _%stx132267%_)
        (let* ((_%g132269132286%_
                (lambda (_%g132270132283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132270132283%_))))
               (_%g132268132333%_
                (lambda (_%g132270132289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132270132289%_))
                      (let ((_%e132273132291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132270132289%_))))
                        (let ((_%hd132274132294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132273132291%_)))
                              (_%tl132275132296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132273132291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132275132296%_))
                              (let ((_%e132276132299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132275132296%_))))
                                (let ((_%hd132277132302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132276132299%_)))
                                      (_%tl132278132304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132276132299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132278132304%_))
                                      (let ((_%e132279132307%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132278132304%_))))
                                        (let ((_%hd132280132310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132279132307%_)))
                                              (_%tl132281132312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132279132307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132281132312%_))
                                              ((lambda (_%L132315%_
                                                        _%L132316%_)
                                                 (let ((_%expr132331%_
                                                        (gxc#compile-e__1
                                                         _%self132266%_
                                                         _%L132315%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132316%_
                                                                (cons _%expr132331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132267%_)))
                                               _%hd132280132310%_
                                               _%hd132277132302%_)
                                              (_%g132269132286%_
                                               _%g132270132289%_))))
                                      (_%g132269132286%_ _%g132270132289%_))))
                              (_%g132269132286%_ _%g132270132289%_))))
                      (_%g132269132286%_ _%g132270132289%_)))))
          (_%g132268132333%_ _%stx132267%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132204%_ _%stx132205%_)
        (let* ((_%g132207132221%_
                (lambda (_%g132208132218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132208132218%_))))
               (_%g132206132263%_
                (lambda (_%g132208132224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132208132224%_))
                      (let ((_%e132211132226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132208132224%_))))
                        (let ((_%hd132212132229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132211132226%_)))
                              (_%tl132213132231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132211132226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132213132231%_))
                              (let ((_%e132214132234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132213132231%_))))
                                (let ((_%hd132215132237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132214132234%_)))
                                      (_%tl132216132239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132214132234%_))))
                                  ((lambda (_%L132242%_ _%L132243%_)
                                     (let ((__tmp133826
                                            (lambda ()
                                              (let ((_%body132261%_
                                                     (map (lambda (_%g132256132258%_)
                                                            (gxc#compile-e__1
                                                             _%self132204%_
                                                             _%g132256132258%_))
                                                          _%L132242%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132243%_
                                                             _%body132261%_))
                                                 _%stx132205%_))))
                                           (__tmp133825
                                            (gxc#xform-let-locals
                                             (cons _%L132243%_ '()))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133826
                                        gxc#current-compile-local-env
                                        __tmp133825)))
                                   _%tl132216132239%_
                                   _%hd132215132237%_)))
                              (_%g132207132221%_ _%g132208132224%_))))
                      (_%g132207132221%_ _%g132208132224%_)))))
          (_%g132206132263%_ _%stx132205%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132112%_ _%stx132113%_)
        (letrec ((_%clause-e132115%_
                  (lambda (_%clause132156%_)
                    (let* ((_%g132158132169%_
                            (lambda (_%g132159132166%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132159132166%_))))
                           (_%g132157132201%_
                            (lambda (_%g132159132172%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132159132172%_))
                                  (let ((_%e132162132174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132159132172%_))))
                                    (let ((_%hd132163132177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132162132174%_)))
                                          (_%tl132164132179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132162132174%_))))
                                      ((lambda (_%L132182%_ _%L132183%_)
                                         (let ((__tmp133828
                                                (lambda ()
                                                  (let ((_%body132199%_
                                                         (map (lambda (_%g132194132196%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132112%_
                         _%g132194132196%_))
                      _%L132182%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132183%_
                                                          _%body132199%_))))
                                               (__tmp133827
                                                (gxc#xform-let-locals
                                                 (cons _%L132183%_ '()))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133828
                                            gxc#current-compile-local-env
                                            __tmp133827)))
                                       _%tl132164132179%_
                                       _%hd132163132177%_)))
                                  (_%g132158132169%_ _%g132159132172%_)))))
                      (_%g132157132201%_ _%clause132156%_)))))
          (let* ((_%g132117132127%_
                  (lambda (_%g132118132124%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132118132124%_))))
                 (_%g132116132153%_
                  (lambda (_%g132118132130%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132118132130%_))
                        (let ((_%e132120132132%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132118132130%_))))
                          (let ((_%hd132121132135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132120132132%_)))
                                (_%tl132122132137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132120132132%_))))
                            ((lambda (_%L132140%_)
                               (let ((_%clauses132151%_
                                      (map _%clause-e132115%_ _%L132140%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132151%_)
                                  _%stx132113%_)))
                             _%tl132122132137%_)))
                        (_%g132117132127%_ _%g132118132130%_)))))
            (_%g132116132153%_ _%stx132113%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131866%_ _%stx131867%_)
        (let* ((_%g131869131902%_
                (lambda (_%g131870131899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131870131899%_))))
               (_%g131868132109%_
                (lambda (_%g131870131905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131870131905%_))
                      (let ((_%e131875131907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131870131905%_))))
                        (let ((_%hd131876131910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131875131907%_)))
                              (_%tl131877131912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131875131907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131877131912%_))
                              (let ((_%e131878131915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131877131912%_))))
                                (let ((_%hd131879131918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131878131915%_)))
                                      (_%tl131880131920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131878131915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131879131918%_))
                                      (let ((_g133829_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131879131918%_
                                                '0))))
                                        (begin
                                          (let ((_g133830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133829_)
                                                       (##vector-length
                                                        _g133829_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133830_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133830_)))
                                          (let ((_%target131881131923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133829_ 0)))
                                                (_%tl131883131925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133829_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131883131925%_))
                                                (letrec ((_%loop131884131928%_
                                                          (lambda (_%hd131882131931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131888131933%_
                           _%hd131889131935%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131882131931%_))
                        (let ((_%e131885131938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131882131931%_))))
                          (let ((_%lp-hd131886131941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131885131938%_)))
                                (_%lp-tl131887131943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131885131938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131886131941%_))
                                (let ((_%e131892131946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131886131941%_))))
                                  (let ((_%hd131893131949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131892131946%_)))
                                        (_%tl131894131951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131892131946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131894131951%_))
                                        (let ((_%e131895131954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131894131951%_))))
                                          (let ((_%hd131896131957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131895131954%_)))
                                                (_%tl131897131959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131895131954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131897131959%_))
                                                (_%loop131884131928%_
                                                 _%lp-tl131887131943%_
                                                 (cons _%hd131896131957%_
                                                       _%expr131888131933%_)
                                                 (cons _%hd131893131949%_
                                                       _%hd131889131935%_))
                                                (_%g131869131902%_
                                                 _%g131870131905%_))))
                                        (_%g131869131902%_
                                         _%g131870131905%_))))
                                (_%g131869131902%_ _%g131870131905%_))))
                        (let ((_%expr131890131962%_
                               (reverse _%expr131888131933%_))
                              (_%hd131891131964%_
                               (reverse _%hd131889131935%_)))
                          ((lambda (_%L131967%_
                                    _%L131968%_
                                    _%L131969%_
                                    _%L131970%_)
                             (let* ((_%g131989132005%_
                                     (lambda (_%g131990132002%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g131990132002%_))))
                                    (_%g131988132095%_
                                     (lambda (_%g131990132008%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g131990132008%_))
                                           (let ((_g133831_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g131990132008%_
                                                     '0))))
                                             (begin
                                               (let ((_g133832_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133831_)
                                                            (##vector-length
                                                             _g133831_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133832_)))
                                               (let ((_%target131992132010%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133831_
                                                         0)))
                                                     (_%tl131994132012%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133831_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl131994132012%_))
                                                     (letrec ((_%loop131995132015%_
                                                               (lambda (_%hd131993132018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr131999132020%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd131993132018%_))
                             (let ((_%e131996132023%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd131993132018%_))))
                               (let ((_%lp-hd131997132026%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e131996132023%_)))
                                     (_%lp-tl131998132028%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e131996132023%_))))
                                 (_%loop131995132015%_
                                  _%lp-tl131998132028%_
                                  (cons _%lp-hd131997132026%_
                                        _%expr131999132020%_))))
                             (let ((_%expr132000132031%_
                                    (reverse _%expr131999132020%_)))
                               ((lambda (_%L132034%_)
                                  (let ((__tmp133835
                                         (lambda ()
                                           (let* ((_%g132048132055%_
                                                   (lambda (_%g132049132052%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132049132052%_))))
                                                  (_%g132047132081%_
                                                   (lambda (_%g132049132058%_)
                                                     ((lambda (_%L132060%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131970%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132034%_
                                  _%L131969%_))
                               (let ((__tmp133836
                                      (lambda (_%g132070132074%_
                                               _%g132071132076%_
                                               _%g132072132078%_)
                                        (cons (cons _%g132071132076%_
                                                    (cons _%g132070132074%_
                                                          '()))
                                              _%g132072132078%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133836
                                  '()
                                  _%L132034%_
                                  _%L131969%_)))
                             _%L132060%_))
                 _%stx131867%_))
              _%g132049132058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132047132081%_
                                              (map (lambda (_%g132083132085%_)
                                                     (gxc#compile-e__1
                                                      _%self131866%_
                                                      _%g132083132085%_))
                                                   _%L131967%_)))))
                                        (__tmp133833
                                         (gxc#xform-let-locals
                                          (let ((__tmp133834
                                                 (lambda (_%g132087132090%_
                                                          _%g132088132092%_)
                                                   (cons _%g132087132090%_
                                                         _%g132088132092%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133834
                                             '()
                                             _%L131969%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp133835
                                     gxc#current-compile-local-env
                                     __tmp133833)))
                                _%expr132000132031%_))))))
               (_%loop131995132015%_ _%target131992132010%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g131989132005%_
                                                      _%g131990132008%_)))))
                                           (_%g131989132005%_
                                            _%g131990132008%_)))))
                               (_%g131988132095%_
                                (map (lambda (_%g132097132099%_)
                                       (gxc#compile-e__1
                                        _%self131866%_
                                        _%g132097132099%_))
                                     (let ((__tmp133837
                                            (lambda (_%g132101132104%_
                                                     _%g132102132106%_)
                                              (cons _%g132101132104%_
                                                    _%g132102132106%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133837
                                        '()
                                        _%L131968%_))))))
                           _%tl131880131920%_
                           _%expr131890131962%_
                           _%hd131891131964%_
                           _%hd131876131910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131884131928%_
                                                   _%target131881131923%_
                                                   '()
                                                   '()))
                                                (_%g131869131902%_
                                                 _%g131870131905%_)))))
                                      (_%g131869131902%_ _%g131870131905%_))))
                              (_%g131869131902%_ _%g131870131905%_))))
                      (_%g131869131902%_ _%g131870131905%_)))))
          (_%g131868132109%_ _%stx131867%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131620%_ _%stx131621%_)
        (let* ((_%g131623131656%_
                (lambda (_%g131624131653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131624131653%_))))
               (_%g131622131863%_
                (lambda (_%g131624131659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131624131659%_))
                      (let ((_%e131629131661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131624131659%_))))
                        (let ((_%hd131630131664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131629131661%_)))
                              (_%tl131631131666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131629131661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131631131666%_))
                              (let ((_%e131632131669%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131631131666%_))))
                                (let ((_%hd131633131672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131632131669%_)))
                                      (_%tl131634131674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131632131669%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131633131672%_))
                                      (let ((_g133838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131633131672%_
                                                '0))))
                                        (begin
                                          (let ((_g133839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133838_)
                                                       (##vector-length
                                                        _g133838_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133839_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133839_)))
                                          (let ((_%target131635131677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133838_ 0)))
                                                (_%tl131637131679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133838_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131637131679%_))
                                                (letrec ((_%loop131638131682%_
                                                          (lambda (_%hd131636131685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131642131687%_
                           _%hd131643131689%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131636131685%_))
                        (let ((_%e131639131692%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131636131685%_))))
                          (let ((_%lp-hd131640131695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131639131692%_)))
                                (_%lp-tl131641131697%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131639131692%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131640131695%_))
                                (let ((_%e131646131700%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131640131695%_))))
                                  (let ((_%hd131647131703%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131646131700%_)))
                                        (_%tl131648131705%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131646131700%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131648131705%_))
                                        (let ((_%e131649131708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131648131705%_))))
                                          (let ((_%hd131650131711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131649131708%_)))
                                                (_%tl131651131713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131649131708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131651131713%_))
                                                (_%loop131638131682%_
                                                 _%lp-tl131641131697%_
                                                 (cons _%hd131650131711%_
                                                       _%expr131642131687%_)
                                                 (cons _%hd131647131703%_
                                                       _%hd131643131689%_))
                                                (_%g131623131656%_
                                                 _%g131624131659%_))))
                                        (_%g131623131656%_
                                         _%g131624131659%_))))
                                (_%g131623131656%_ _%g131624131659%_))))
                        (let ((_%expr131644131716%_
                               (reverse _%expr131642131687%_))
                              (_%hd131645131718%_
                               (reverse _%hd131643131689%_)))
                          ((lambda (_%L131721%_
                                    _%L131722%_
                                    _%L131723%_
                                    _%L131724%_)
                             (let ((__tmp133842
                                    (lambda ()
                                      (let* ((_%g131744131760%_
                                              (lambda (_%g131745131757%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131745131757%_))))
                                             (_%g131743131842%_
                                              (lambda (_%g131745131763%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131745131763%_))
                                                    (let ((_g133843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131745131763%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133844_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133843_)
                             (##vector-length _g133843_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133844_ 2)))
                      (error "Context expects 2 values" _g133844_)))
                (let ((_%target131747131765%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133843_ 0)))
                      (_%tl131749131767%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133843_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131749131767%_))
                      (letrec ((_%loop131750131770%_
                                (lambda (_%hd131748131773%_
                                         _%expr131754131775%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131748131773%_))
                                      (let ((_%e131751131778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131748131773%_))))
                                        (let ((_%lp-hd131752131781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131751131778%_)))
                                              (_%lp-tl131753131783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131751131778%_))))
                                          (_%loop131750131770%_
                                           _%lp-tl131753131783%_
                                           (cons _%lp-hd131752131781%_
                                                 _%expr131754131775%_))))
                                      (let ((_%expr131755131786%_
                                             (reverse _%expr131754131775%_)))
                                        ((lambda (_%L131789%_)
                                           (let* ((_%g131803131810%_
                                                   (lambda (_%g131804131807%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131804131807%_))))
                                                  (_%g131802131835%_
                                                   (lambda (_%g131804131813%_)
                                                     ((lambda (_%L131815%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131724%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131789%_
                                  _%L131723%_))
                               (let ((__tmp133845
                                      (lambda (_%g131824131828%_
                                               _%g131825131830%_
                                               _%g131826131832%_)
                                        (cons (cons _%g131825131830%_
                                                    (cons _%g131824131828%_
                                                          '()))
                                              _%g131826131832%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133845
                                  '()
                                  _%L131789%_
                                  _%L131723%_)))
                             _%L131815%_))
                 _%stx131621%_))
              _%g131804131813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131802131835%_
                                              (map (lambda (_%g131837131839%_)
                                                     (gxc#compile-e__1
                                                      _%self131620%_
                                                      _%g131837131839%_))
                                                   _%L131721%_))))
                                         _%expr131755131786%_))))))
                        (_%loop131750131770%_ _%target131747131765%_ '()))
                      (_%g131744131760%_ _%g131745131763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g131744131760%_
                                                     _%g131745131763%_)))))
                                        (_%g131743131842%_
                                         (map (lambda (_%g131844131846%_)
                                                (gxc#compile-e__1
                                                 _%self131620%_
                                                 _%g131844131846%_))
                                              (let ((__tmp133846
                                                     (lambda (_%g131848131851%_
                                                              _%g131849131853%_)
                                                       (cons _%g131848131851%_
                                                             _%g131849131853%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp133846
                                                 '()
                                                 _%L131722%_)))))))
                                   (__tmp133840
                                    (gxc#xform-let-locals
                                     (let ((__tmp133841
                                            (lambda (_%g131855131858%_
                                                     _%g131856131860%_)
                                              (cons _%g131855131858%_
                                                    _%g131856131860%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133841
                                        '()
                                        _%L131723%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133842
                                gxc#current-compile-local-env
                                __tmp133840)))
                           _%tl131634131674%_
                           _%expr131644131716%_
                           _%hd131645131718%_
                           _%hd131630131664%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131638131682%_
                                                   _%target131635131677%_
                                                   '()
                                                   '()))
                                                (_%g131623131656%_
                                                 _%g131624131659%_)))))
                                      (_%g131623131656%_ _%g131624131659%_))))
                              (_%g131623131656%_ _%g131624131659%_))))
                      (_%g131623131656%_ _%g131624131659%_)))))
          (_%g131622131863%_ _%stx131621%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131524%_)
        (let _%loop131526%_ ((_%rest131528%_ _%bindings131524%_)
                             (_%locals131529%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131530131538%_ _%rest131528%_)
                 (_%else131532131546%_ (lambda () _%locals131529%_))
                 (_%K131534131608%_
                  (lambda (_%rest131549%_ _%bind131550%_)
                    (let _%loop-bind131552%_ ((_%bind131554%_ _%bind131550%_)
                                              (_%locals131555%_
                                               _%locals131529%_))
                      (let* ((_%bind131556131567%_ _%bind131554%_)
                             (_%E131560131571%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131556131567%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131563131596%_
                               (lambda (_%bind-rest131593%_ _%id131594%_)
                                 (_%loop-bind131552%_
                                  _%bind-rest131593%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131594%_))
                                        _%locals131555%_))))
                              (_%K131562131585%_
                               (lambda (_%id131583%_)
                                 (_%loop131526%_
                                  _%rest131549%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131583%_))
                                        _%locals131555%_))))
                              (_%K131561131576%_
                               (lambda ()
                                 (_%loop131526%_
                                  _%rest131549%_
                                  _%locals131555%_))))
                          (let ((_%try-match131558131590%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131556131567%_))
                                       (let ((_%id131588%_
                                              _%bind131556131567%_))
                                         (_%K131562131585%_ _%id131588%_))
                                       (_%K131561131576%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131556131567%_))
                                (let ((_%tl131565131601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131556131567%_)))
                                      (_%hd131564131599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131556131567%_))))
                                  (let ((_%id131604%_ _%hd131564131599%_)
                                        (_%bind-rest131606%_
                                         _%tl131565131601%_))
                                    (_%K131563131596%_
                                     _%bind-rest131606%_
                                     _%id131604%_)))
                                (_%try-match131558131590%_)))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131530131538%_))
                (let ((_%hd131535131611%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131530131538%_)))
                      (_%tl131536131613%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131530131538%_))))
                  (let* ((_%bind131616%_ _%hd131535131611%_)
                         (_%rest131618%_ _%tl131536131613%_))
                    (_%K131534131608%_ _%rest131618%_ _%bind131616%_)))
                (_%else131532131546%_))))))
    (define gxc#xform-operands
      (lambda (_%self131476%_ _%stx131477%_)
        (let* ((_%g131479131490%_
                (lambda (_%g131480131487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131480131487%_))))
               (_%g131478131521%_
                (lambda (_%g131480131493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131480131493%_))
                      (let ((_%e131483131495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131480131493%_))))
                        (let ((_%hd131484131498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131483131495%_)))
                              (_%tl131485131500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131483131495%_))))
                          ((lambda (_%L131503%_ _%L131504%_)
                             (let ((_%rands131519%_
                                    (map (lambda (_%g131514131516%_)
                                           (gxc#compile-e__1
                                            _%self131476%_
                                            _%g131514131516%_))
                                         _%L131503%_)))
                               (gxc#xform-wrap-source
                                (cons _%L131504%_ _%rands131519%_)
                                _%stx131477%_)))
                           _%tl131485131500%_
                           _%hd131484131498%_)))
                      (_%g131479131490%_ _%g131480131493%_)))))
          (_%g131478131521%_ _%stx131477%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131406%_ _%stx131407%_)
        (let* ((_%g131409131426%_
                (lambda (_%g131410131423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131410131423%_))))
               (_%g131408131473%_
                (lambda (_%g131410131429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131410131429%_))
                      (let ((_%e131413131431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131410131429%_))))
                        (let ((_%hd131414131434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131413131431%_)))
                              (_%tl131415131436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131413131431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131415131436%_))
                              (let ((_%e131416131439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131415131436%_))))
                                (let ((_%hd131417131442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131416131439%_)))
                                      (_%tl131418131444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131416131439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131418131444%_))
                                      (let ((_%e131419131447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131418131444%_))))
                                        (let ((_%hd131420131450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131419131447%_)))
                                              (_%tl131421131452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131419131447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131421131452%_))
                                              ((lambda (_%L131455%_
                                                        _%L131456%_)
                                                 (let ((_%expr131471%_
                                                        (gxc#compile-e__1
                                                         _%self131406%_
                                                         _%L131455%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L131456%_
                                                                (cons _%expr131471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131407%_)))
                                               _%hd131420131450%_
                                               _%hd131417131442%_)
                                              (_%g131409131426%_
                                               _%g131410131429%_))))
                                      (_%g131409131426%_ _%g131410131429%_))))
                              (_%g131409131426%_ _%g131410131429%_))))
                      (_%g131409131426%_ _%g131410131429%_)))))
          (_%g131408131473%_ _%stx131407%_))))))
