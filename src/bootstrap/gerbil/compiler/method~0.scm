(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712602656)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133588%_)
        (let* ((_%self133590%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133592%_
                (let ((__tmp133770 (gxc#stx-car-e _%stx133588%_)))
                  (declare (not safe))
                  (method-ref _%self133590%_ __tmp133770))))
          (if _%$e133592%_
              ((lambda (_%method133595%_)
                 (declare (not safe))
                 (_%method133595%_ _%self133590%_ _%stx133588%_))
               _%$e133592%_)
              (let ((__tmp133772 (gxc#stx-car-e _%stx133588%_))
                    (__tmp133771
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133588%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133590%_
                       __tmp133772
                       __tmp133771))))))
    (define gxc#compile-e__1
      (lambda (_%self133599%_ _%stx133600%_)
        (let ((_%$e133602%_
               (let ((__tmp133773 (gxc#stx-car-e _%stx133600%_)))
                 (declare (not safe))
                 (method-ref _%self133599%_ __tmp133773))))
          (if _%$e133602%_
              ((lambda (_%method133605%_)
                 (declare (not safe))
                 (_%method133605%_ _%self133599%_ _%stx133600%_))
               _%$e133602%_)
              (let ((__tmp133775 (gxc#stx-car-e _%stx133600%_))
                    (__tmp133774
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133600%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133599%_
                       __tmp133775
                       __tmp133774))))))
    (define gxc#compile-e
      (lambda _g133777_
        (let ((_g133776_ (let () (declare (not safe)) (##length _g133777_))))
          (cond ((let () (declare (not safe)) (##fx= _g133776_ 1))
                 (apply gxc#compile-e__0 _g133777_))
                ((let () (declare (not safe)) (##fx= _g133776_ 2))
                 (apply gxc#compile-e__1 _g133777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133777_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133586%_)
        (let ((__tmp133778
               (car (let () (declare (not safe)) (gx#stx-e _%stx133586%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133778))))
    (define gxc#void-method (lambda (_%self133583%_ _%stx133584%_) '#!void))
    (define gxc#false-method (lambda (_%self133580%_ _%stx133581%_) '#f))
    (define gxc#true-method (lambda (_%self133577%_ _%stx133578%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133574%_ _%stx133575%_) _%stx133575%_))
    (define gxc#::void-expression::t
      (let ((__tmp133779 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133779
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133571%_
        (apply make-instance gxc#::void-expression::t _%$args133571%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133780
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
        (__make-promise __tmp133780)))
    (define gxc#::void-special-form::t
      (let ((__tmp133781 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133781
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133567%_
        (apply make-instance gxc#::void-special-form::t _%$args133567%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133782
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
        (__make-promise __tmp133782)))
    (define gxc#::void::t
      (let ((__tmp133783
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp133783 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133563%_
        (apply make-instance gxc#::void::t _%$args133563%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133784
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133784)))
    (define gxc#::false-expression::t
      (let ((__tmp133785 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133785
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133559%_
        (apply make-instance gxc#::false-expression::t _%$args133559%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133786
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
        (__make-promise __tmp133786)))
    (define gxc#::false-special-form::t
      (let ((__tmp133787 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133787
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133555%_
        (apply make-instance gxc#::false-special-form::t _%$args133555%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133788
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
        (__make-promise __tmp133788)))
    (define gxc#::false::t
      (let ((__tmp133789
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp133789 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133551%_
        (apply make-instance gxc#::false::t _%$args133551%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133790
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133790)))
    (define gxc#::identity-expression::t
      (let ((__tmp133791 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133791
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133547%_
        (apply make-instance gxc#::identity-expression::t _%$args133547%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133792
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
        (__make-promise __tmp133792)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133793 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133793
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133543%_
        (apply make-instance gxc#::identity-special-form::t _%$args133543%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133794
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
        (__make-promise __tmp133794)))
    (define gxc#::identity::t
      (let ((__tmp133795
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133795
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133539%_
        (apply make-instance gxc#::identity::t _%$args133539%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133796
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133796)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133797 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133797
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133535%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133535%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133798
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
        (__make-promise __tmp133798)))
    (define gxc#::basic-xform::t
      (let ((__tmp133799
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133799
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133531%_
        (apply make-instance gxc#::basic-xform::t _%$args133531%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133800
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
        (__make-promise __tmp133800)))
    (define gxc#apply-begin%
      (lambda (_%self133487%_ _%stx133488%_)
        (let* ((_%g133490133500%_
                (lambda (_%g133491133497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133491133497%_))))
               (_%g133489133527%_
                (lambda (_%g133491133503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133491133503%_))
                      (let ((_%e133493133505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133491133503%_))))
                        (let ((_%hd133494133508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133493133505%_)))
                              (_%tl133495133510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133493133505%_))))
                          ((lambda (_%L133513%_)
                             (for-each
                              (lambda (_%g133522133524%_)
                                (gxc#compile-e__1
                                 _%self133487%_
                                 _%g133522133524%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133513%_))))
                           _%tl133495133510%_)))
                      (_%g133490133500%_ _%g133491133503%_)))))
          (_%g133489133527%_ _%stx133488%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133448%_ _%stx133449%_)
        (let* ((_%g133451133461%_
                (lambda (_%g133452133458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133452133458%_))))
               (_%g133450133484%_
                (lambda (_%g133452133464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133452133464%_))
                      (let ((_%e133454133466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133452133464%_))))
                        (let ((_%hd133455133469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133454133466%_)))
                              (_%tl133456133471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133454133466%_))))
                          ((lambda (_%L133474%_)
                             (gxc#compile-e__1
                              _%self133448%_
                              (last _%L133474%_)))
                           _%tl133456133471%_)))
                      (_%g133451133461%_ _%g133452133464%_)))))
          (_%g133450133484%_ _%stx133449%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133444%_ _%stx133445%_)
        (let ((__tmp133803
               (lambda () (gxc#apply-begin% _%self133444%_ _%stx133445%_)))
              (__tmp133801
               (let ((__tmp133802
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133802 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133803
           gx#current-expander-phi
           __tmp133801))))
    (define gxc#apply-module%
      (lambda (_%self133383%_ _%stx133384%_)
        (let* ((_%g133386133400%_
                (lambda (_%g133387133397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133387133397%_))))
               (_%g133385133441%_
                (lambda (_%g133387133403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133387133403%_))
                      (let ((_%e133390133405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133387133403%_))))
                        (let ((_%hd133391133408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133390133405%_)))
                              (_%tl133392133410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133390133405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133392133410%_))
                              (let ((_%e133393133413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133392133410%_))))
                                (let ((_%hd133394133416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133393133413%_)))
                                      (_%tl133395133418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133393133413%_))))
                                  ((lambda (_%L133421%_ _%L133422%_)
                                     (let* ((_%ctx133435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133422%_)))
                                            (_%ctx-stx133437%_
                                             (##structure-ref
                                              _%ctx133435%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133804
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133383%_
                                                _%ctx-stx133437%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133804
                                        gx#current-expander-context
                                        _%ctx133435%_)))
                                   _%tl133395133418%_
                                   _%hd133394133416%_)))
                              (_%g133386133400%_ _%g133387133403%_))))
                      (_%g133386133400%_ _%g133387133403%_)))))
          (_%g133385133441%_ _%stx133384%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133315%_ _%stx133316%_)
        (let* ((_%g133318133335%_
                (lambda (_%g133319133332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133319133332%_))))
               (_%g133317133380%_
                (lambda (_%g133319133338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133319133338%_))
                      (let ((_%e133322133340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133319133338%_))))
                        (let ((_%hd133323133343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133322133340%_)))
                              (_%tl133324133345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133322133340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133324133345%_))
                              (let ((_%e133325133348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133324133345%_))))
                                (let ((_%hd133326133351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133325133348%_)))
                                      (_%tl133327133353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133325133348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133327133353%_))
                                      (let ((_%e133328133356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133327133353%_))))
                                        (let ((_%hd133329133359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133328133356%_)))
                                              (_%tl133330133361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133328133356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133330133361%_))
                                              ((lambda (_%L133364%_
                                                        _%L133365%_)
                                                 (gxc#compile-e__1
                                                  _%self133315%_
                                                  _%L133364%_))
                                               _%hd133329133359%_
                                               _%hd133326133351%_)
                                              (_%g133318133335%_
                                               _%g133319133338%_))))
                                      (_%g133318133335%_ _%g133319133338%_))))
                              (_%g133318133335%_ _%g133319133338%_))))
                      (_%g133318133335%_ _%g133319133338%_)))))
          (_%g133317133380%_ _%stx133316%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133247%_ _%stx133248%_)
        (let* ((_%g133250133267%_
                (lambda (_%g133251133264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133251133264%_))))
               (_%g133249133312%_
                (lambda (_%g133251133270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133251133270%_))
                      (let ((_%e133254133272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133251133270%_))))
                        (let ((_%hd133255133275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133254133272%_)))
                              (_%tl133256133277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133254133272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133256133277%_))
                              (let ((_%e133257133280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133256133277%_))))
                                (let ((_%hd133258133283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133257133280%_)))
                                      (_%tl133259133285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133257133280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133259133285%_))
                                      (let ((_%e133260133288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133259133285%_))))
                                        (let ((_%hd133261133291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133260133288%_)))
                                              (_%tl133262133293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133260133288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133262133293%_))
                                              ((lambda (_%L133296%_
                                                        _%L133297%_)
                                                 (gxc#compile-e__1
                                                  _%self133247%_
                                                  _%L133296%_))
                                               _%hd133261133291%_
                                               _%hd133258133283%_)
                                              (_%g133250133267%_
                                               _%g133251133270%_))))
                                      (_%g133250133267%_ _%g133251133270%_))))
                              (_%g133250133267%_ _%g133251133270%_))))
                      (_%g133250133267%_ _%g133251133270%_)))))
          (_%g133249133312%_ _%stx133248%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133178%_ _%stx133179%_)
        (let* ((_%g133181133198%_
                (lambda (_%g133182133195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133182133195%_))))
               (_%g133180133244%_
                (lambda (_%g133182133201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133182133201%_))
                      (let ((_%e133185133203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133182133201%_))))
                        (let ((_%hd133186133206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133185133203%_)))
                              (_%tl133187133208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133185133203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133187133208%_))
                              (let ((_%e133188133211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133187133208%_))))
                                (let ((_%hd133189133214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133188133211%_)))
                                      (_%tl133190133216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133188133211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133190133216%_))
                                      (let ((_%e133191133219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133190133216%_))))
                                        (let ((_%hd133192133222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133191133219%_)))
                                              (_%tl133193133224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133191133219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133193133224%_))
                                              ((lambda (_%L133227%_
                                                        _%L133228%_)
                                                 (let ((__tmp133807
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133178%_
                                                           _%L133227%_)))
                                                       (__tmp133805
                                                        (let ((__tmp133806
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133806 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133807
                                                    gx#current-expander-phi
                                                    __tmp133805)))
                                               _%hd133192133222%_
                                               _%hd133189133214%_)
                                              (_%g133181133198%_
                                               _%g133182133201%_))))
                                      (_%g133181133198%_ _%g133182133201%_))))
                              (_%g133181133198%_ _%g133182133201%_))))
                      (_%g133181133198%_ _%g133182133201%_)))))
          (_%g133180133244%_ _%stx133179%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133110%_ _%stx133111%_)
        (let* ((_%g133113133130%_
                (lambda (_%g133114133127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133114133127%_))))
               (_%g133112133175%_
                (lambda (_%g133114133133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133114133133%_))
                      (let ((_%e133117133135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133114133133%_))))
                        (let ((_%hd133118133138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133117133135%_)))
                              (_%tl133119133140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133117133135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133119133140%_))
                              (let ((_%e133120133143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133119133140%_))))
                                (let ((_%hd133121133146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133120133143%_)))
                                      (_%tl133122133148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133120133143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133122133148%_))
                                      (let ((_%e133123133151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133122133148%_))))
                                        (let ((_%hd133124133154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133123133151%_)))
                                              (_%tl133125133156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133123133151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133125133156%_))
                                              ((lambda (_%L133159%_
                                                        _%L133160%_)
                                                 (gxc#compile-e__1
                                                  _%self133110%_
                                                  _%L133159%_))
                                               _%hd133124133154%_
                                               _%hd133121133146%_)
                                              (_%g133113133130%_
                                               _%g133114133133%_))))
                                      (_%g133113133130%_ _%g133114133133%_))))
                              (_%g133113133130%_ _%g133114133133%_))))
                      (_%g133113133130%_ _%g133114133133%_)))))
          (_%g133112133175%_ _%stx133111%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self132992%_ _%stx132993%_)
        (let* ((_%g132995133023%_
                (lambda (_%g132996133020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132996133020%_))))
               (_%g132994133107%_
                (lambda (_%g132996133026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132996133026%_))
                      (let ((_%e132999133028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132996133026%_))))
                        (let ((_%hd133000133031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132999133028%_)))
                              (_%tl133001133033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132999133028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133001133033%_))
                              (let ((_g133808_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133001133033%_
                                        '0))))
                                (begin
                                  (let ((_g133809_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133808_)
                                               (##vector-length _g133808_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133809_ 2)))
                                        (error "Context expects 2 values"
                                               _g133809_)))
                                  (let ((_%target133002133036%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133808_ 0)))
                                        (_%tl133004133038%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133808_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133004133038%_))
                                        (letrec ((_%loop133005133041%_
                                                  (lambda (_%hd133003133044%_
                                                           _%body133009133046%_
                                                           _%hd133010133048%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133003133044%_))
                                                        (let ((_%e133006133051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133003133044%_))))
                  (let ((_%lp-hd133007133054%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133006133051%_)))
                        (_%lp-tl133008133056%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133006133051%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133007133054%_))
                        (let ((_%e133013133059%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133007133054%_))))
                          (let ((_%hd133014133062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133013133059%_)))
                                (_%tl133015133064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133013133059%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133015133064%_))
                                (let ((_%e133016133067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133015133064%_))))
                                  (let ((_%hd133017133070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133016133067%_)))
                                        (_%tl133018133072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133016133067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133018133072%_))
                                        (_%loop133005133041%_
                                         _%lp-tl133008133056%_
                                         (cons _%hd133017133070%_
                                               _%body133009133046%_)
                                         (cons _%hd133014133062%_
                                               _%hd133010133048%_))
                                        (_%g132995133023%_
                                         _%g132996133026%_))))
                                (_%g132995133023%_ _%g132996133026%_))))
                        (_%g132995133023%_ _%g132996133026%_))))
                (let ((_%body133011133075%_ (reverse _%body133009133046%_))
                      (_%hd133012133077%_ (reverse _%hd133010133048%_)))
                  ((lambda (_%L133080%_ _%L133081%_)
                     (for-each
                      (lambda (_%g133095133097%_)
                        (gxc#compile-e__1 _%self132992%_ _%g133095133097%_))
                      (let ((__tmp133810
                             (lambda (_%g133099133102%_ _%g133100133104%_)
                               (cons _%g133099133102%_ _%g133100133104%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133810 '() _%L133080%_))))
                   _%body133011133075%_
                   _%hd133012133077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133005133041%_
                                           _%target133002133036%_
                                           '()
                                           '()))
                                        (_%g132995133023%_
                                         _%g132996133026%_)))))
                              (_%g132995133023%_ _%g132996133026%_))))
                      (_%g132995133023%_ _%g132996133026%_)))))
          (_%g132994133107%_ _%stx132993%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self132845%_ _%stx132846%_)
        (let* ((_%g132848132883%_
                (lambda (_%g132849132880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132849132880%_))))
               (_%g132847132989%_
                (lambda (_%g132849132886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132849132886%_))
                      (let ((_%e132853132888%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132849132886%_))))
                        (let ((_%hd132854132891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132853132888%_)))
                              (_%tl132855132893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132853132888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132855132893%_))
                              (let ((_%e132856132896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132855132893%_))))
                                (let ((_%hd132857132899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132856132896%_)))
                                      (_%tl132858132901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132856132896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132857132899%_))
                                      (let ((_g133811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132857132899%_
                                                '0))))
                                        (begin
                                          (let ((_g133812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133811_)
                                                       (##vector-length
                                                        _g133811_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133812_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133812_)))
                                          (let ((_%target132859132904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133811_ 0)))
                                                (_%tl132861132906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133811_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132861132906%_))
                                                (letrec ((_%loop132862132909%_
                                                          (lambda (_%hd132860132912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132866132914%_
                           _%hd132867132916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132860132912%_))
                        (let ((_%e132863132919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132860132912%_))))
                          (let ((_%lp-hd132864132922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132863132919%_)))
                                (_%lp-tl132865132924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132863132919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132864132922%_))
                                (let ((_%e132873132927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132864132922%_))))
                                  (let ((_%hd132874132930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132873132927%_)))
                                        (_%tl132875132932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132873132927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132875132932%_))
                                        (let ((_%e132876132935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132875132932%_))))
                                          (let ((_%hd132877132938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132876132935%_)))
                                                (_%tl132878132940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132876132935%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132878132940%_))
                                                (_%loop132862132909%_
                                                 _%lp-tl132865132924%_
                                                 (cons _%hd132877132938%_
                                                       _%expr132866132914%_)
                                                 (cons _%hd132874132930%_
                                                       _%hd132867132916%_))
                                                (_%g132848132883%_
                                                 _%g132849132886%_))))
                                        (_%g132848132883%_
                                         _%g132849132886%_))))
                                (_%g132848132883%_ _%g132849132886%_))))
                        (let ((_%expr132868132943%_
                               (reverse _%expr132866132914%_))
                              (_%hd132869132945%_
                               (reverse _%hd132867132916%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132858132901%_))
                              (let ((_%e132870132948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132858132901%_))))
                                (let ((_%hd132871132951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132870132948%_)))
                                      (_%tl132872132953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132870132948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132872132953%_))
                                      ((lambda (_%L132956%_
                                                _%L132957%_
                                                _%L132958%_)
                                         (for-each
                                          (lambda (_%g132977132979%_)
                                            (gxc#compile-e__1
                                             _%self132845%_
                                             _%g132977132979%_))
                                          (let ((__tmp133814
                                                 (lambda (_%g132981132984%_
                                                          _%g132982132986%_)
                                                   (cons _%g132981132984%_
                                                         _%g132982132986%_)))
                                                (__tmp133813
                                                 (cons _%L132956%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133814
                                             __tmp133813
                                             _%L132957%_))))
                                       _%hd132871132951%_
                                       _%expr132868132943%_
                                       _%hd132869132945%_)
                                      (_%g132848132883%_ _%g132849132886%_))))
                              (_%g132848132883%_ _%g132849132886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132862132909%_
                                                   _%target132859132904%_
                                                   '()
                                                   '()))
                                                (_%g132848132883%_
                                                 _%g132849132886%_)))))
                                      (_%g132848132883%_ _%g132849132886%_))))
                              (_%g132848132883%_ _%g132849132886%_))))
                      (_%g132848132883%_ _%g132849132886%_)))))
          (_%g132847132989%_ _%stx132846%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132790%_ _%stx132791%_)
        (let* ((_%g132793132807%_
                (lambda (_%g132794132804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132794132804%_))))
               (_%g132792132842%_
                (lambda (_%g132794132810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132794132810%_))
                      (let ((_%e132797132812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132794132810%_))))
                        (let ((_%hd132798132815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132797132812%_)))
                              (_%tl132799132817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132797132812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132799132817%_))
                              (let ((_%e132800132820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132799132817%_))))
                                (let ((_%hd132801132823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132800132820%_)))
                                      (_%tl132802132825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132800132820%_))))
                                  ((lambda (_%L132828%_ _%L132829%_)
                                     (gxc#compile-e__1
                                      _%self132790%_
                                      (last _%L132828%_)))
                                   _%tl132802132825%_
                                   _%hd132801132823%_)))
                              (_%g132793132807%_ _%g132794132810%_))))
                      (_%g132793132807%_ _%g132794132810%_)))))
          (_%g132792132842%_ _%stx132791%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132722%_ _%stx132723%_)
        (let* ((_%g132725132742%_
                (lambda (_%g132726132739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132726132739%_))))
               (_%g132724132787%_
                (lambda (_%g132726132745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132726132745%_))
                      (let ((_%e132729132747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132726132745%_))))
                        (let ((_%hd132730132750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132729132747%_)))
                              (_%tl132731132752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132729132747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132731132752%_))
                              (let ((_%e132732132755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132731132752%_))))
                                (let ((_%hd132733132758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132732132755%_)))
                                      (_%tl132734132760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132732132755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132734132760%_))
                                      (let ((_%e132735132763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132734132760%_))))
                                        (let ((_%hd132736132766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132735132763%_)))
                                              (_%tl132737132768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132735132763%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132737132768%_))
                                              ((lambda (_%L132771%_
                                                        _%L132772%_)
                                                 (gxc#compile-e__1
                                                  _%self132722%_
                                                  _%L132771%_))
                                               _%hd132736132766%_
                                               _%hd132733132758%_)
                                              (_%g132725132742%_
                                               _%g132726132745%_))))
                                      (_%g132725132742%_ _%g132726132745%_))))
                              (_%g132725132742%_ _%g132726132745%_))))
                      (_%g132725132742%_ _%g132726132745%_)))))
          (_%g132724132787%_ _%stx132723%_))))
    (define gxc#apply-operands
      (lambda (_%self132635%_ _%stx132636%_)
        (let* ((_%g132638132657%_
                (lambda (_%g132639132654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132639132654%_))))
               (_%g132637132719%_
                (lambda (_%g132639132660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132639132660%_))
                      (let ((_%e132641132662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132639132660%_))))
                        (let ((_%hd132642132665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132641132662%_)))
                              (_%tl132643132667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132641132662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132643132667%_))
                              (let ((_g133815_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132643132667%_
                                        '0))))
                                (begin
                                  (let ((_g133816_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133815_)
                                               (##vector-length _g133815_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133816_ 2)))
                                        (error "Context expects 2 values"
                                               _g133816_)))
                                  (let ((_%target132644132670%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133815_ 0)))
                                        (_%tl132646132672%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133815_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132646132672%_))
                                        (letrec ((_%loop132647132675%_
                                                  (lambda (_%hd132645132678%_
                                                           _%rands132651132680%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132645132678%_))
                                                        (let ((_%e132648132683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132645132678%_))))
                  (let ((_%lp-hd132649132686%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132648132683%_)))
                        (_%lp-tl132650132688%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132648132683%_))))
                    (_%loop132647132675%_
                     _%lp-tl132650132688%_
                     (cons _%lp-hd132649132686%_ _%rands132651132680%_))))
                (let ((_%rands132652132691%_ (reverse _%rands132651132680%_)))
                  ((lambda (_%L132694%_)
                     (for-each
                      (lambda (_%g132707132709%_)
                        (gxc#compile-e__1 _%self132635%_ _%g132707132709%_))
                      (let ((__tmp133817
                             (lambda (_%g132711132714%_ _%g132712132716%_)
                               (cons _%g132711132714%_ _%g132712132716%_))))
                        (declare (not safe))
                        (__foldr1 __tmp133817 '() _%L132694%_))))
                   _%rands132652132691%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop132647132675%_
                                           _%target132644132670%_
                                           '()))
                                        (_%g132638132657%_
                                         _%g132639132660%_)))))
                              (_%g132638132657%_ _%g132639132660%_))))
                      (_%g132638132657%_ _%g132639132660%_)))))
          (_%g132637132719%_ _%stx132636%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132632%_ _%src-stx132633%_)
        (let ((__tmp133818
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132633%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132632%_ __tmp133818))))
    (define gxc#xform-begin%
      (lambda (_%self132587%_ _%stx132588%_)
        (let* ((_%g132590132600%_
                (lambda (_%g132591132597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132591132597%_))))
               (_%g132589132629%_
                (lambda (_%g132591132603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132591132603%_))
                      (let ((_%e132593132605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132591132603%_))))
                        (let ((_%hd132594132608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132593132605%_)))
                              (_%tl132595132610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132593132605%_))))
                          ((lambda (_%L132613%_)
                             (let ((_%forms132627%_
                                    (map (lambda (_%g132622132624%_)
                                           (gxc#compile-e__1
                                            _%self132587%_
                                            _%g132622132624%_))
                                         _%L132613%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms132627%_)
                                _%stx132588%_)))
                           _%tl132595132610%_)))
                      (_%g132590132600%_ _%g132591132603%_)))))
          (_%g132589132629%_ _%stx132588%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132541%_ _%stx132542%_)
        (let* ((_%g132544132554%_
                (lambda (_%g132545132551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132545132551%_))))
               (_%g132543132584%_
                (lambda (_%g132545132557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132545132557%_))
                      (let ((_%e132547132559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132545132557%_))))
                        (let ((_%hd132548132562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132547132559%_)))
                              (_%tl132549132564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132547132559%_))))
                          ((lambda (_%L132567%_)
                             (let ((__tmp133821
                                    (lambda ()
                                      (let ((_%forms132582%_
                                             (map (lambda (_%g132577132579%_)
                                                    (gxc#compile-e__1
                                                     _%self132541%_
                                                     _%g132577132579%_))
                                                  _%L132567%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms132582%_)
                                         _%stx132542%_))))
                                   (__tmp133819
                                    (let ((__tmp133820
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp133820 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133821
                                gx#current-expander-phi
                                __tmp133819)))
                           _%tl132549132564%_)))
                      (_%g132544132554%_ _%g132545132557%_)))))
          (_%g132543132584%_ _%stx132542%_))))
    (define gxc#xform-module%
      (lambda (_%self132478%_ _%stx132479%_)
        (let* ((_%g132481132495%_
                (lambda (_%g132482132492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132482132492%_))))
               (_%g132480132538%_
                (lambda (_%g132482132498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132482132498%_))
                      (let ((_%e132485132500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132482132498%_))))
                        (let ((_%hd132486132503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132485132500%_)))
                              (_%tl132487132505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132485132500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132487132505%_))
                              (let ((_%e132488132508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132487132505%_))))
                                (let ((_%hd132489132511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132488132508%_)))
                                      (_%tl132490132513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132488132508%_))))
                                  ((lambda (_%L132516%_ _%L132517%_)
                                     (let* ((_%ctx132530%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132517%_)))
                                            (_%code132532%_
                                             (##structure-ref
                                              _%ctx132530%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132535%_
                                             (let ((__tmp133822
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self132478%_
                                                       _%code132532%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp133822
                                                gx#current-expander-context
                                                _%ctx132530%_))))
                                       (##structure-set!
                                        _%ctx132530%_
                                        _%code132535%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L132517%_
                                                    (cons _%code132535%_ '())))
                                        _%stx132479%_)))
                                   _%tl132490132513%_
                                   _%hd132489132511%_)))
                              (_%g132481132495%_ _%g132482132498%_))))
                      (_%g132481132495%_ _%g132482132498%_)))))
          (_%g132480132538%_ _%stx132479%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132408%_ _%stx132409%_)
        (let* ((_%g132411132428%_
                (lambda (_%g132412132425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132412132425%_))))
               (_%g132410132475%_
                (lambda (_%g132412132431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132412132431%_))
                      (let ((_%e132415132433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132412132431%_))))
                        (let ((_%hd132416132436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132415132433%_)))
                              (_%tl132417132438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132415132433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132417132438%_))
                              (let ((_%e132418132441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132417132438%_))))
                                (let ((_%hd132419132444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132418132441%_)))
                                      (_%tl132420132446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132418132441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132420132446%_))
                                      (let ((_%e132421132449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132420132446%_))))
                                        (let ((_%hd132422132452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132421132449%_)))
                                              (_%tl132423132454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132421132449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132423132454%_))
                                              ((lambda (_%L132457%_
                                                        _%L132458%_)
                                                 (let ((_%expr132473%_
                                                        (gxc#compile-e__1
                                                         _%self132408%_
                                                         _%L132457%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L132458%_
                                                                (cons _%expr132473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132409%_)))
                                               _%hd132422132452%_
                                               _%hd132419132444%_)
                                              (_%g132411132428%_
                                               _%g132412132431%_))))
                                      (_%g132411132428%_ _%g132412132431%_))))
                              (_%g132411132428%_ _%g132412132431%_))))
                      (_%g132411132428%_ _%g132412132431%_)))))
          (_%g132410132475%_ _%stx132409%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132337%_ _%stx132338%_)
        (let* ((_%g132340132357%_
                (lambda (_%g132341132354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132341132354%_))))
               (_%g132339132405%_
                (lambda (_%g132341132360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132341132360%_))
                      (let ((_%e132344132362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132341132360%_))))
                        (let ((_%hd132345132365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132344132362%_)))
                              (_%tl132346132367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132344132362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132346132367%_))
                              (let ((_%e132347132370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132346132367%_))))
                                (let ((_%hd132348132373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132347132370%_)))
                                      (_%tl132349132375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132347132370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132349132375%_))
                                      (let ((_%e132350132378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132349132375%_))))
                                        (let ((_%hd132351132381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132350132378%_)))
                                              (_%tl132352132383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132350132378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132352132383%_))
                                              ((lambda (_%L132386%_
                                                        _%L132387%_)
                                                 (let ((__tmp133825
                                                        (lambda ()
                                                          (let ((_%expr132403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132337%_ _%L132386%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132387%_ (cons _%expr132403%_ '())))
                     _%stx132338%_))))
               (__tmp133823
                (let ((__tmp133824
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133824 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133825
                                                    gx#current-expander-phi
                                                    __tmp133823)))
                                               _%hd132351132381%_
                                               _%hd132348132373%_)
                                              (_%g132340132357%_
                                               _%g132341132360%_))))
                                      (_%g132340132357%_ _%g132341132360%_))))
                              (_%g132340132357%_ _%g132341132360%_))))
                      (_%g132340132357%_ _%g132341132360%_)))))
          (_%g132339132405%_ _%stx132338%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132267%_ _%stx132268%_)
        (let* ((_%g132270132287%_
                (lambda (_%g132271132284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132271132284%_))))
               (_%g132269132334%_
                (lambda (_%g132271132290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132271132290%_))
                      (let ((_%e132274132292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132271132290%_))))
                        (let ((_%hd132275132295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132274132292%_)))
                              (_%tl132276132297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132274132292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132276132297%_))
                              (let ((_%e132277132300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132276132297%_))))
                                (let ((_%hd132278132303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132277132300%_)))
                                      (_%tl132279132305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132277132300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132279132305%_))
                                      (let ((_%e132280132308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132279132305%_))))
                                        (let ((_%hd132281132311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132280132308%_)))
                                              (_%tl132282132313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132280132308%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132282132313%_))
                                              ((lambda (_%L132316%_
                                                        _%L132317%_)
                                                 (let ((_%expr132332%_
                                                        (gxc#compile-e__1
                                                         _%self132267%_
                                                         _%L132316%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132317%_
                                                                (cons _%expr132332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132268%_)))
                                               _%hd132281132311%_
                                               _%hd132278132303%_)
                                              (_%g132270132287%_
                                               _%g132271132290%_))))
                                      (_%g132270132287%_ _%g132271132290%_))))
                              (_%g132270132287%_ _%g132271132290%_))))
                      (_%g132270132287%_ _%g132271132290%_)))))
          (_%g132269132334%_ _%stx132268%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132205%_ _%stx132206%_)
        (let* ((_%g132208132222%_
                (lambda (_%g132209132219%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132209132219%_))))
               (_%g132207132264%_
                (lambda (_%g132209132225%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132209132225%_))
                      (let ((_%e132212132227%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132209132225%_))))
                        (let ((_%hd132213132230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132212132227%_)))
                              (_%tl132214132232%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132212132227%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132214132232%_))
                              (let ((_%e132215132235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132214132232%_))))
                                (let ((_%hd132216132238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132215132235%_)))
                                      (_%tl132217132240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132215132235%_))))
                                  ((lambda (_%L132243%_ _%L132244%_)
                                     (let ((__tmp133827
                                            (lambda ()
                                              (let ((_%body132262%_
                                                     (map (lambda (_%g132257132259%_)
                                                            (gxc#compile-e__1
                                                             _%self132205%_
                                                             _%g132257132259%_))
                                                          _%L132243%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132244%_
                                                             _%body132262%_))
                                                 _%stx132206%_))))
                                           (__tmp133826
                                            (gxc#xform-let-locals
                                             (cons _%L132244%_ '()))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133827
                                        gxc#current-compile-local-env
                                        __tmp133826)))
                                   _%tl132217132240%_
                                   _%hd132216132238%_)))
                              (_%g132208132222%_ _%g132209132225%_))))
                      (_%g132208132222%_ _%g132209132225%_)))))
          (_%g132207132264%_ _%stx132206%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132113%_ _%stx132114%_)
        (letrec ((_%clause-e132116%_
                  (lambda (_%clause132157%_)
                    (let* ((_%g132159132170%_
                            (lambda (_%g132160132167%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132160132167%_))))
                           (_%g132158132202%_
                            (lambda (_%g132160132173%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132160132173%_))
                                  (let ((_%e132163132175%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132160132173%_))))
                                    (let ((_%hd132164132178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132163132175%_)))
                                          (_%tl132165132180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132163132175%_))))
                                      ((lambda (_%L132183%_ _%L132184%_)
                                         (let ((__tmp133829
                                                (lambda ()
                                                  (let ((_%body132200%_
                                                         (map (lambda (_%g132195132197%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132113%_
                         _%g132195132197%_))
                      _%L132183%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132184%_
                                                          _%body132200%_))))
                                               (__tmp133828
                                                (gxc#xform-let-locals
                                                 (cons _%L132184%_ '()))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp133829
                                            gxc#current-compile-local-env
                                            __tmp133828)))
                                       _%tl132165132180%_
                                       _%hd132164132178%_)))
                                  (_%g132159132170%_ _%g132160132173%_)))))
                      (_%g132158132202%_ _%clause132157%_)))))
          (let* ((_%g132118132128%_
                  (lambda (_%g132119132125%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132119132125%_))))
                 (_%g132117132154%_
                  (lambda (_%g132119132131%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132119132131%_))
                        (let ((_%e132121132133%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132119132131%_))))
                          (let ((_%hd132122132136%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132121132133%_)))
                                (_%tl132123132138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132121132133%_))))
                            ((lambda (_%L132141%_)
                               (let ((_%clauses132152%_
                                      (map _%clause-e132116%_ _%L132141%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132152%_)
                                  _%stx132114%_)))
                             _%tl132123132138%_)))
                        (_%g132118132128%_ _%g132119132131%_)))))
            (_%g132117132154%_ _%stx132114%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self131867%_ _%stx131868%_)
        (let* ((_%g131870131903%_
                (lambda (_%g131871131900%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131871131900%_))))
               (_%g131869132110%_
                (lambda (_%g131871131906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131871131906%_))
                      (let ((_%e131876131908%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131871131906%_))))
                        (let ((_%hd131877131911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131876131908%_)))
                              (_%tl131878131913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131876131908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131878131913%_))
                              (let ((_%e131879131916%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131878131913%_))))
                                (let ((_%hd131880131919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131879131916%_)))
                                      (_%tl131881131921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131879131916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131880131919%_))
                                      (let ((_g133830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131880131919%_
                                                '0))))
                                        (begin
                                          (let ((_g133831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133830_)
                                                       (##vector-length
                                                        _g133830_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133831_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133831_)))
                                          (let ((_%target131882131924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133830_ 0)))
                                                (_%tl131884131926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133830_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131884131926%_))
                                                (letrec ((_%loop131885131929%_
                                                          (lambda (_%hd131883131932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131889131934%_
                           _%hd131890131936%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131883131932%_))
                        (let ((_%e131886131939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131883131932%_))))
                          (let ((_%lp-hd131887131942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131886131939%_)))
                                (_%lp-tl131888131944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131886131939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131887131942%_))
                                (let ((_%e131893131947%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131887131942%_))))
                                  (let ((_%hd131894131950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131893131947%_)))
                                        (_%tl131895131952%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131893131947%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131895131952%_))
                                        (let ((_%e131896131955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131895131952%_))))
                                          (let ((_%hd131897131958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131896131955%_)))
                                                (_%tl131898131960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131896131955%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131898131960%_))
                                                (_%loop131885131929%_
                                                 _%lp-tl131888131944%_
                                                 (cons _%hd131897131958%_
                                                       _%expr131889131934%_)
                                                 (cons _%hd131894131950%_
                                                       _%hd131890131936%_))
                                                (_%g131870131903%_
                                                 _%g131871131906%_))))
                                        (_%g131870131903%_
                                         _%g131871131906%_))))
                                (_%g131870131903%_ _%g131871131906%_))))
                        (let ((_%expr131891131963%_
                               (reverse _%expr131889131934%_))
                              (_%hd131892131965%_
                               (reverse _%hd131890131936%_)))
                          ((lambda (_%L131968%_
                                    _%L131969%_
                                    _%L131970%_
                                    _%L131971%_)
                             (let* ((_%g131990132006%_
                                     (lambda (_%g131991132003%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g131991132003%_))))
                                    (_%g131989132096%_
                                     (lambda (_%g131991132009%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g131991132009%_))
                                           (let ((_g133832_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g131991132009%_
                                                     '0))))
                                             (begin
                                               (let ((_g133833_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g133832_)
                                                            (##vector-length
                                                             _g133832_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g133833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g133833_)))
                                               (let ((_%target131993132011%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133832_
                                                         0)))
                                                     (_%tl131995132013%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g133832_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl131995132013%_))
                                                     (letrec ((_%loop131996132016%_
                                                               (lambda (_%hd131994132019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132000132021%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd131994132019%_))
                             (let ((_%e131997132024%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd131994132019%_))))
                               (let ((_%lp-hd131998132027%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e131997132024%_)))
                                     (_%lp-tl131999132029%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e131997132024%_))))
                                 (_%loop131996132016%_
                                  _%lp-tl131999132029%_
                                  (cons _%lp-hd131998132027%_
                                        _%expr132000132021%_))))
                             (let ((_%expr132001132032%_
                                    (reverse _%expr132000132021%_)))
                               ((lambda (_%L132035%_)
                                  (let ((__tmp133836
                                         (lambda ()
                                           (let* ((_%g132049132056%_
                                                   (lambda (_%g132050132053%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132050132053%_))))
                                                  (_%g132048132082%_
                                                   (lambda (_%g132050132059%_)
                                                     ((lambda (_%L132061%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131971%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132035%_
                                  _%L131970%_))
                               (let ((__tmp133837
                                      (lambda (_%g132071132075%_
                                               _%g132072132077%_
                                               _%g132073132079%_)
                                        (cons (cons _%g132072132077%_
                                                    (cons _%g132071132075%_
                                                          '()))
                                              _%g132073132079%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133837
                                  '()
                                  _%L132035%_
                                  _%L131970%_)))
                             _%L132061%_))
                 _%stx131868%_))
              _%g132050132059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132048132082%_
                                              (map (lambda (_%g132084132086%_)
                                                     (gxc#compile-e__1
                                                      _%self131867%_
                                                      _%g132084132086%_))
                                                   _%L131968%_)))))
                                        (__tmp133834
                                         (gxc#xform-let-locals
                                          (let ((__tmp133835
                                                 (lambda (_%g132088132091%_
                                                          _%g132089132093%_)
                                                   (cons _%g132088132091%_
                                                         _%g132089132093%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp133835
                                             '()
                                             _%L131970%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp133836
                                     gxc#current-compile-local-env
                                     __tmp133834)))
                                _%expr132001132032%_))))))
               (_%loop131996132016%_ _%target131993132011%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g131990132006%_
                                                      _%g131991132009%_)))))
                                           (_%g131990132006%_
                                            _%g131991132009%_)))))
                               (_%g131989132096%_
                                (map (lambda (_%g132098132100%_)
                                       (gxc#compile-e__1
                                        _%self131867%_
                                        _%g132098132100%_))
                                     (let ((__tmp133838
                                            (lambda (_%g132102132105%_
                                                     _%g132103132107%_)
                                              (cons _%g132102132105%_
                                                    _%g132103132107%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133838
                                        '()
                                        _%L131969%_))))))
                           _%tl131881131921%_
                           _%expr131891131963%_
                           _%hd131892131965%_
                           _%hd131877131911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131885131929%_
                                                   _%target131882131924%_
                                                   '()
                                                   '()))
                                                (_%g131870131903%_
                                                 _%g131871131906%_)))))
                                      (_%g131870131903%_ _%g131871131906%_))))
                              (_%g131870131903%_ _%g131871131906%_))))
                      (_%g131870131903%_ _%g131871131906%_)))))
          (_%g131869132110%_ _%stx131868%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131621%_ _%stx131622%_)
        (let* ((_%g131624131657%_
                (lambda (_%g131625131654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131625131654%_))))
               (_%g131623131864%_
                (lambda (_%g131625131660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131625131660%_))
                      (let ((_%e131630131662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131625131660%_))))
                        (let ((_%hd131631131665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131630131662%_)))
                              (_%tl131632131667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131630131662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131632131667%_))
                              (let ((_%e131633131670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131632131667%_))))
                                (let ((_%hd131634131673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131633131670%_)))
                                      (_%tl131635131675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131633131670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131634131673%_))
                                      (let ((_g133839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131634131673%_
                                                '0))))
                                        (begin
                                          (let ((_g133840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133839_)
                                                       (##vector-length
                                                        _g133839_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133840_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133840_)))
                                          (let ((_%target131636131678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g133839_ 0)))
                                                (_%tl131638131680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g133839_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131638131680%_))
                                                (letrec ((_%loop131639131683%_
                                                          (lambda (_%hd131637131686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131643131688%_
                           _%hd131644131690%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131637131686%_))
                        (let ((_%e131640131693%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131637131686%_))))
                          (let ((_%lp-hd131641131696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131640131693%_)))
                                (_%lp-tl131642131698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131640131693%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131641131696%_))
                                (let ((_%e131647131701%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131641131696%_))))
                                  (let ((_%hd131648131704%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131647131701%_)))
                                        (_%tl131649131706%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131647131701%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131649131706%_))
                                        (let ((_%e131650131709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131649131706%_))))
                                          (let ((_%hd131651131712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131650131709%_)))
                                                (_%tl131652131714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131650131709%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131652131714%_))
                                                (_%loop131639131683%_
                                                 _%lp-tl131642131698%_
                                                 (cons _%hd131651131712%_
                                                       _%expr131643131688%_)
                                                 (cons _%hd131648131704%_
                                                       _%hd131644131690%_))
                                                (_%g131624131657%_
                                                 _%g131625131660%_))))
                                        (_%g131624131657%_
                                         _%g131625131660%_))))
                                (_%g131624131657%_ _%g131625131660%_))))
                        (let ((_%expr131645131717%_
                               (reverse _%expr131643131688%_))
                              (_%hd131646131719%_
                               (reverse _%hd131644131690%_)))
                          ((lambda (_%L131722%_
                                    _%L131723%_
                                    _%L131724%_
                                    _%L131725%_)
                             (let ((__tmp133843
                                    (lambda ()
                                      (let* ((_%g131745131761%_
                                              (lambda (_%g131746131758%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131746131758%_))))
                                             (_%g131744131843%_
                                              (lambda (_%g131746131764%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131746131764%_))
                                                    (let ((_g133844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131746131764%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g133845_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g133844_)
                             (##vector-length _g133844_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133845_ 2)))
                      (error "Context expects 2 values" _g133845_)))
                (let ((_%target131748131766%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133844_ 0)))
                      (_%tl131750131768%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g133844_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131750131768%_))
                      (letrec ((_%loop131751131771%_
                                (lambda (_%hd131749131774%_
                                         _%expr131755131776%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131749131774%_))
                                      (let ((_%e131752131779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131749131774%_))))
                                        (let ((_%lp-hd131753131782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131752131779%_)))
                                              (_%lp-tl131754131784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131752131779%_))))
                                          (_%loop131751131771%_
                                           _%lp-tl131754131784%_
                                           (cons _%lp-hd131753131782%_
                                                 _%expr131755131776%_))))
                                      (let ((_%expr131756131787%_
                                             (reverse _%expr131755131776%_)))
                                        ((lambda (_%L131790%_)
                                           (let* ((_%g131804131811%_
                                                   (lambda (_%g131805131808%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g131805131808%_))))
                                                  (_%g131803131836%_
                                                   (lambda (_%g131805131814%_)
                                                     ((lambda (_%L131816%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L131725%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L131790%_
                                  _%L131724%_))
                               (let ((__tmp133846
                                      (lambda (_%g131825131829%_
                                               _%g131826131831%_
                                               _%g131827131833%_)
                                        (cons (cons _%g131826131831%_
                                                    (cons _%g131825131829%_
                                                          '()))
                                              _%g131827131833%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp133846
                                  '()
                                  _%L131790%_
                                  _%L131724%_)))
                             _%L131816%_))
                 _%stx131622%_))
              _%g131805131814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g131803131836%_
                                              (map (lambda (_%g131838131840%_)
                                                     (gxc#compile-e__1
                                                      _%self131621%_
                                                      _%g131838131840%_))
                                                   _%L131722%_))))
                                         _%expr131756131787%_))))))
                        (_%loop131751131771%_ _%target131748131766%_ '()))
                      (_%g131745131761%_ _%g131746131764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g131745131761%_
                                                     _%g131746131764%_)))))
                                        (_%g131744131843%_
                                         (map (lambda (_%g131845131847%_)
                                                (gxc#compile-e__1
                                                 _%self131621%_
                                                 _%g131845131847%_))
                                              (let ((__tmp133847
                                                     (lambda (_%g131849131852%_
                                                              _%g131850131854%_)
                                                       (cons _%g131849131852%_
                                                             _%g131850131854%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp133847
                                                 '()
                                                 _%L131723%_)))))))
                                   (__tmp133841
                                    (gxc#xform-let-locals
                                     (let ((__tmp133842
                                            (lambda (_%g131856131859%_
                                                     _%g131857131861%_)
                                              (cons _%g131856131859%_
                                                    _%g131857131861%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp133842
                                        '()
                                        _%L131724%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp133843
                                gxc#current-compile-local-env
                                __tmp133841)))
                           _%tl131635131675%_
                           _%expr131645131717%_
                           _%hd131646131719%_
                           _%hd131631131665%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131639131683%_
                                                   _%target131636131678%_
                                                   '()
                                                   '()))
                                                (_%g131624131657%_
                                                 _%g131625131660%_)))))
                                      (_%g131624131657%_ _%g131625131660%_))))
                              (_%g131624131657%_ _%g131625131660%_))))
                      (_%g131624131657%_ _%g131625131660%_)))))
          (_%g131623131864%_ _%stx131622%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131525%_)
        (let _%loop131527%_ ((_%rest131529%_ _%bindings131525%_)
                             (_%locals131530%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131531131539%_ _%rest131529%_)
                 (_%else131533131547%_ (lambda () _%locals131530%_))
                 (_%K131535131609%_
                  (lambda (_%rest131550%_ _%bind131551%_)
                    (let _%loop-bind131553%_ ((_%bind131555%_ _%bind131551%_)
                                              (_%locals131556%_
                                               _%locals131530%_))
                      (let* ((_%bind131557131568%_ _%bind131555%_)
                             (_%E131561131572%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131557131568%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131564131597%_
                               (lambda (_%bind-rest131594%_ _%id131595%_)
                                 (_%loop-bind131553%_
                                  _%bind-rest131594%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131595%_))
                                        _%locals131556%_))))
                              (_%K131563131586%_
                               (lambda (_%id131584%_)
                                 (_%loop131527%_
                                  _%rest131550%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#identifier-symbol _%id131584%_))
                                        _%locals131556%_))))
                              (_%K131562131577%_
                               (lambda ()
                                 (_%loop131527%_
                                  _%rest131550%_
                                  _%locals131556%_))))
                          (let ((_%try-match131559131591%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131557131568%_))
                                       (let ((_%id131589%_
                                              _%bind131557131568%_))
                                         (_%K131563131586%_ _%id131589%_))
                                       (_%K131562131577%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131557131568%_))
                                (let ((_%tl131566131602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131557131568%_)))
                                      (_%hd131565131600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131557131568%_))))
                                  (let ((_%id131605%_ _%hd131565131600%_)
                                        (_%bind-rest131607%_
                                         _%tl131566131602%_))
                                    (_%K131564131597%_
                                     _%bind-rest131607%_
                                     _%id131605%_)))
                                (_%try-match131559131591%_)))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131531131539%_))
                (let ((_%hd131536131612%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131531131539%_)))
                      (_%tl131537131614%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131531131539%_))))
                  (let* ((_%bind131617%_ _%hd131536131612%_)
                         (_%rest131619%_ _%tl131537131614%_))
                    (_%K131535131609%_ _%rest131619%_ _%bind131617%_)))
                (_%else131533131547%_))))))
    (define gxc#xform-operands
      (lambda (_%self131477%_ _%stx131478%_)
        (let* ((_%g131480131491%_
                (lambda (_%g131481131488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131481131488%_))))
               (_%g131479131522%_
                (lambda (_%g131481131494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131481131494%_))
                      (let ((_%e131484131496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131481131494%_))))
                        (let ((_%hd131485131499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131484131496%_)))
                              (_%tl131486131501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131484131496%_))))
                          ((lambda (_%L131504%_ _%L131505%_)
                             (let ((_%rands131520%_
                                    (map (lambda (_%g131515131517%_)
                                           (gxc#compile-e__1
                                            _%self131477%_
                                            _%g131515131517%_))
                                         _%L131504%_)))
                               (gxc#xform-wrap-source
                                (cons _%L131505%_ _%rands131520%_)
                                _%stx131478%_)))
                           _%tl131486131501%_
                           _%hd131485131499%_)))
                      (_%g131480131491%_ _%g131481131494%_)))))
          (_%g131479131522%_ _%stx131478%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131407%_ _%stx131408%_)
        (let* ((_%g131410131427%_
                (lambda (_%g131411131424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131411131424%_))))
               (_%g131409131474%_
                (lambda (_%g131411131430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131411131430%_))
                      (let ((_%e131414131432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131411131430%_))))
                        (let ((_%hd131415131435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131414131432%_)))
                              (_%tl131416131437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131414131432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131416131437%_))
                              (let ((_%e131417131440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131416131437%_))))
                                (let ((_%hd131418131443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131417131440%_)))
                                      (_%tl131419131445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131417131440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131419131445%_))
                                      (let ((_%e131420131448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131419131445%_))))
                                        (let ((_%hd131421131451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131420131448%_)))
                                              (_%tl131422131453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131420131448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131422131453%_))
                                              ((lambda (_%L131456%_
                                                        _%L131457%_)
                                                 (let ((_%expr131472%_
                                                        (gxc#compile-e__1
                                                         _%self131407%_
                                                         _%L131456%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L131457%_
                                                                (cons _%expr131472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131408%_)))
                                               _%hd131421131451%_
                                               _%hd131418131443%_)
                                              (_%g131410131427%_
                                               _%g131411131430%_))))
                                      (_%g131410131427%_ _%g131411131430%_))))
                              (_%g131410131427%_ _%g131411131430%_))))
                      (_%g131410131427%_ _%g131411131430%_)))))
          (_%g131409131474%_ _%stx131408%_))))))
