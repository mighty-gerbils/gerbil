(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712773526)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134565%_)
        (let* ((_%self134567%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134569%_
                (let ((__tmp134765 (gxc#stx-car-e _%stx134565%_)))
                  (declare (not safe))
                  (method-ref _%self134567%_ __tmp134765))))
          (if _%$e134569%_
              ((lambda (_%method134572%_)
                 (declare (not safe))
                 (_%method134572%_ _%self134567%_ _%stx134565%_))
               _%$e134569%_)
              (let ((__tmp134767 (gxc#stx-car-e _%stx134565%_))
                    (__tmp134766
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134565%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134567%_
                       __tmp134767
                       __tmp134766))))))
    (define gxc#compile-e__1
      (lambda (_%self134576%_ _%stx134577%_)
        (let ((_%$e134579%_
               (let ((__tmp134768 (gxc#stx-car-e _%stx134577%_)))
                 (declare (not safe))
                 (method-ref _%self134576%_ __tmp134768))))
          (if _%$e134579%_
              ((lambda (_%method134582%_)
                 (declare (not safe))
                 (_%method134582%_ _%self134576%_ _%stx134577%_))
               _%$e134579%_)
              (let ((__tmp134770 (gxc#stx-car-e _%stx134577%_))
                    (__tmp134769
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134577%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134576%_
                       __tmp134770
                       __tmp134769))))))
    (define gxc#compile-e
      (lambda _g134772_
        (let ((_g134771_ (let () (declare (not safe)) (##length _g134772_))))
          (cond ((let () (declare (not safe)) (##fx= _g134771_ 1))
                 (apply gxc#compile-e__0 _g134772_))
                ((let () (declare (not safe)) (##fx= _g134771_ 2))
                 (apply gxc#compile-e__1 _g134772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134772_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134563%_)
        (let ((__tmp134773
               (car (let () (declare (not safe)) (gx#stx-e _%stx134563%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134773))))
    (define gxc#void-method (lambda (_%self134560%_ _%stx134561%_) '#!void))
    (define gxc#false-method (lambda (_%self134557%_ _%stx134558%_) '#f))
    (define gxc#true-method (lambda (_%self134554%_ _%stx134555%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134551%_ _%stx134552%_) _%stx134552%_))
    (define gxc#::void-expression::t
      (let ((__tmp134774 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134774
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134548%_
        (apply make-instance gxc#::void-expression::t _%$args134548%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134775
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
        (__make-promise __tmp134775)))
    (define gxc#::void-special-form::t
      (let ((__tmp134776 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134776
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134544%_
        (apply make-instance gxc#::void-special-form::t _%$args134544%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134777
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
        (__make-promise __tmp134777)))
    (define gxc#::void::t
      (let ((__tmp134778
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134778 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134540%_
        (apply make-instance gxc#::void::t _%$args134540%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134779
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134779)))
    (define gxc#::false-expression::t
      (let ((__tmp134780 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134780
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134536%_
        (apply make-instance gxc#::false-expression::t _%$args134536%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134781
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
        (__make-promise __tmp134781)))
    (define gxc#::false-special-form::t
      (let ((__tmp134782 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134782
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134532%_
        (apply make-instance gxc#::false-special-form::t _%$args134532%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134783
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
        (__make-promise __tmp134783)))
    (define gxc#::false::t
      (let ((__tmp134784
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134784 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134528%_
        (apply make-instance gxc#::false::t _%$args134528%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134785
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134785)))
    (define gxc#::identity-expression::t
      (let ((__tmp134786 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134786
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134524%_
        (apply make-instance gxc#::identity-expression::t _%$args134524%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134787
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
        (__make-promise __tmp134787)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134788 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134788
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134520%_
        (apply make-instance gxc#::identity-special-form::t _%$args134520%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134789
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
        (__make-promise __tmp134789)))
    (define gxc#::identity::t
      (let ((__tmp134790
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134790
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134516%_
        (apply make-instance gxc#::identity::t _%$args134516%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134791
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134791)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134792 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134792
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134512%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134512%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134793
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
        (__make-promise __tmp134793)))
    (define gxc#::basic-xform::t
      (let ((__tmp134794
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134794
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134508%_
        (apply make-instance gxc#::basic-xform::t _%$args134508%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134795
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
        (__make-promise __tmp134795)))
    (define gxc#apply-begin%
      (lambda (_%self134464%_ _%stx134465%_)
        (let* ((_%g134467134477%_
                (lambda (_%g134468134474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134468134474%_))))
               (_%g134466134504%_
                (lambda (_%g134468134480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134468134480%_))
                      (let ((_%e134470134482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134468134480%_))))
                        (let ((_%hd134471134485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134470134482%_)))
                              (_%tl134472134487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134470134482%_))))
                          ((lambda (_%L134490%_)
                             (for-each
                              (lambda (_%g134499134501%_)
                                (gxc#compile-e__1
                                 _%self134464%_
                                 _%g134499134501%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134490%_))))
                           _%tl134472134487%_)))
                      (_%g134467134477%_ _%g134468134480%_)))))
          (_%g134466134504%_ _%stx134465%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134425%_ _%stx134426%_)
        (let* ((_%g134428134438%_
                (lambda (_%g134429134435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134429134435%_))))
               (_%g134427134461%_
                (lambda (_%g134429134441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134429134441%_))
                      (let ((_%e134431134443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134429134441%_))))
                        (let ((_%hd134432134446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134431134443%_)))
                              (_%tl134433134448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134431134443%_))))
                          ((lambda (_%L134451%_)
                             (gxc#compile-e__1
                              _%self134425%_
                              (last _%L134451%_)))
                           _%tl134433134448%_)))
                      (_%g134428134438%_ _%g134429134441%_)))))
          (_%g134427134461%_ _%stx134426%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134421%_ _%stx134422%_)
        (let ((__tmp134798
               (lambda () (gxc#apply-begin% _%self134421%_ _%stx134422%_)))
              (__tmp134796
               (let ((__tmp134797
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134797 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134798
           gx#current-expander-phi
           __tmp134796))))
    (define gxc#apply-module%
      (lambda (_%self134360%_ _%stx134361%_)
        (let* ((_%g134363134377%_
                (lambda (_%g134364134374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134364134374%_))))
               (_%g134362134418%_
                (lambda (_%g134364134380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134364134380%_))
                      (let ((_%e134367134382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134364134380%_))))
                        (let ((_%hd134368134385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134367134382%_)))
                              (_%tl134369134387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134367134382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134369134387%_))
                              (let ((_%e134370134390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134369134387%_))))
                                (let ((_%hd134371134393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134370134390%_)))
                                      (_%tl134372134395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134370134390%_))))
                                  ((lambda (_%L134398%_ _%L134399%_)
                                     (let* ((_%ctx134412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134399%_)))
                                            (_%ctx-stx134414%_
                                             (##structure-ref
                                              _%ctx134412%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134799
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self134360%_
                                                _%ctx-stx134414%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134799
                                        gx#current-expander-context
                                        _%ctx134412%_)))
                                   _%tl134372134395%_
                                   _%hd134371134393%_)))
                              (_%g134363134377%_ _%g134364134380%_))))
                      (_%g134363134377%_ _%g134364134380%_)))))
          (_%g134362134418%_ _%stx134361%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134292%_ _%stx134293%_)
        (let* ((_%g134295134312%_
                (lambda (_%g134296134309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134296134309%_))))
               (_%g134294134357%_
                (lambda (_%g134296134315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134296134315%_))
                      (let ((_%e134299134317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134296134315%_))))
                        (let ((_%hd134300134320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134299134317%_)))
                              (_%tl134301134322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134299134317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134301134322%_))
                              (let ((_%e134302134325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134301134322%_))))
                                (let ((_%hd134303134328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134302134325%_)))
                                      (_%tl134304134330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134302134325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134304134330%_))
                                      (let ((_%e134305134333%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134304134330%_))))
                                        (let ((_%hd134306134336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134305134333%_)))
                                              (_%tl134307134338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134305134333%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134307134338%_))
                                              ((lambda (_%L134341%_
                                                        _%L134342%_)
                                                 (gxc#compile-e__1
                                                  _%self134292%_
                                                  _%L134341%_))
                                               _%hd134306134336%_
                                               _%hd134303134328%_)
                                              (_%g134295134312%_
                                               _%g134296134315%_))))
                                      (_%g134295134312%_ _%g134296134315%_))))
                              (_%g134295134312%_ _%g134296134315%_))))
                      (_%g134295134312%_ _%g134296134315%_)))))
          (_%g134294134357%_ _%stx134293%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134224%_ _%stx134225%_)
        (let* ((_%g134227134244%_
                (lambda (_%g134228134241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134228134241%_))))
               (_%g134226134289%_
                (lambda (_%g134228134247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134228134247%_))
                      (let ((_%e134231134249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134228134247%_))))
                        (let ((_%hd134232134252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134231134249%_)))
                              (_%tl134233134254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134231134249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134233134254%_))
                              (let ((_%e134234134257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134233134254%_))))
                                (let ((_%hd134235134260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134234134257%_)))
                                      (_%tl134236134262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134234134257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134236134262%_))
                                      (let ((_%e134237134265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134236134262%_))))
                                        (let ((_%hd134238134268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134237134265%_)))
                                              (_%tl134239134270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134237134265%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134239134270%_))
                                              ((lambda (_%L134273%_
                                                        _%L134274%_)
                                                 (gxc#compile-e__1
                                                  _%self134224%_
                                                  _%L134273%_))
                                               _%hd134238134268%_
                                               _%hd134235134260%_)
                                              (_%g134227134244%_
                                               _%g134228134247%_))))
                                      (_%g134227134244%_ _%g134228134247%_))))
                              (_%g134227134244%_ _%g134228134247%_))))
                      (_%g134227134244%_ _%g134228134247%_)))))
          (_%g134226134289%_ _%stx134225%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self134155%_ _%stx134156%_)
        (let* ((_%g134158134175%_
                (lambda (_%g134159134172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134159134172%_))))
               (_%g134157134221%_
                (lambda (_%g134159134178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134159134178%_))
                      (let ((_%e134162134180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134159134178%_))))
                        (let ((_%hd134163134183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134162134180%_)))
                              (_%tl134164134185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134162134180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134164134185%_))
                              (let ((_%e134165134188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134164134185%_))))
                                (let ((_%hd134166134191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134165134188%_)))
                                      (_%tl134167134193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134165134188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134167134193%_))
                                      (let ((_%e134168134196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134167134193%_))))
                                        (let ((_%hd134169134199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134168134196%_)))
                                              (_%tl134170134201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134168134196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134170134201%_))
                                              ((lambda (_%L134204%_
                                                        _%L134205%_)
                                                 (let ((__tmp134802
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self134155%_
                                                           _%L134204%_)))
                                                       (__tmp134800
                                                        (let ((__tmp134801
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134801 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134802
                                                    gx#current-expander-phi
                                                    __tmp134800)))
                                               _%hd134169134199%_
                                               _%hd134166134191%_)
                                              (_%g134158134175%_
                                               _%g134159134178%_))))
                                      (_%g134158134175%_ _%g134159134178%_))))
                              (_%g134158134175%_ _%g134159134178%_))))
                      (_%g134158134175%_ _%g134159134178%_)))))
          (_%g134157134221%_ _%stx134156%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self134087%_ _%stx134088%_)
        (let* ((_%g134090134107%_
                (lambda (_%g134091134104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134091134104%_))))
               (_%g134089134152%_
                (lambda (_%g134091134110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134091134110%_))
                      (let ((_%e134094134112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134091134110%_))))
                        (let ((_%hd134095134115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134094134112%_)))
                              (_%tl134096134117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134094134112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134096134117%_))
                              (let ((_%e134097134120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134096134117%_))))
                                (let ((_%hd134098134123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134097134120%_)))
                                      (_%tl134099134125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134097134120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134099134125%_))
                                      (let ((_%e134100134128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134099134125%_))))
                                        (let ((_%hd134101134131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134100134128%_)))
                                              (_%tl134102134133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134100134128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134102134133%_))
                                              ((lambda (_%L134136%_
                                                        _%L134137%_)
                                                 (gxc#compile-e__1
                                                  _%self134087%_
                                                  _%L134136%_))
                                               _%hd134101134131%_
                                               _%hd134098134123%_)
                                              (_%g134090134107%_
                                               _%g134091134110%_))))
                                      (_%g134090134107%_ _%g134091134110%_))))
                              (_%g134090134107%_ _%g134091134110%_))))
                      (_%g134090134107%_ _%g134091134110%_)))))
          (_%g134089134152%_ _%stx134088%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133969%_ _%stx133970%_)
        (let* ((_%g133972134000%_
                (lambda (_%g133973133997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133973133997%_))))
               (_%g133971134084%_
                (lambda (_%g133973134003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133973134003%_))
                      (let ((_%e133976134005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133973134003%_))))
                        (let ((_%hd133977134008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133976134005%_)))
                              (_%tl133978134010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133976134005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133978134010%_))
                              (let ((_g134803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133978134010%_
                                        '0))))
                                (begin
                                  (let ((_g134804_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134803_)
                                               (##vector-length _g134803_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134804_ 2)))
                                        (error "Context expects 2 values"
                                               _g134804_)))
                                  (let ((_%target133979134013%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134803_ 0)))
                                        (_%tl133981134015%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134803_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133981134015%_))
                                        (letrec ((_%loop133982134018%_
                                                  (lambda (_%hd133980134021%_
                                                           _%body133986134023%_
                                                           _%hd133987134025%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133980134021%_))
                                                        (let ((_%e133983134028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133980134021%_))))
                  (let ((_%lp-hd133984134031%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133983134028%_)))
                        (_%lp-tl133985134033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133983134028%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133984134031%_))
                        (let ((_%e133990134036%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133984134031%_))))
                          (let ((_%hd133991134039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133990134036%_)))
                                (_%tl133992134041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133990134036%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133992134041%_))
                                (let ((_%e133993134044%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133992134041%_))))
                                  (let ((_%hd133994134047%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133993134044%_)))
                                        (_%tl133995134049%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133993134044%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133995134049%_))
                                        (_%loop133982134018%_
                                         _%lp-tl133985134033%_
                                         (cons _%hd133994134047%_
                                               _%body133986134023%_)
                                         (cons _%hd133991134039%_
                                               _%hd133987134025%_))
                                        (_%g133972134000%_
                                         _%g133973134003%_))))
                                (_%g133972134000%_ _%g133973134003%_))))
                        (_%g133972134000%_ _%g133973134003%_))))
                (let ((_%body133988134052%_ (reverse _%body133986134023%_))
                      (_%hd133989134054%_ (reverse _%hd133987134025%_)))
                  ((lambda (_%L134057%_ _%L134058%_)
                     (for-each
                      (lambda (_%g134072134074%_)
                        (gxc#compile-e__1 _%self133969%_ _%g134072134074%_))
                      (let ((__tmp134805
                             (lambda (_%g134076134079%_ _%g134077134081%_)
                               (cons _%g134076134079%_ _%g134077134081%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134805 '() _%L134057%_))))
                   _%body133988134052%_
                   _%hd133989134054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133982134018%_
                                           _%target133979134013%_
                                           '()
                                           '()))
                                        (_%g133972134000%_
                                         _%g133973134003%_)))))
                              (_%g133972134000%_ _%g133973134003%_))))
                      (_%g133972134000%_ _%g133973134003%_)))))
          (_%g133971134084%_ _%stx133970%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133822%_ _%stx133823%_)
        (let* ((_%g133825133860%_
                (lambda (_%g133826133857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133826133857%_))))
               (_%g133824133966%_
                (lambda (_%g133826133863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133826133863%_))
                      (let ((_%e133830133865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133826133863%_))))
                        (let ((_%hd133831133868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133830133865%_)))
                              (_%tl133832133870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133830133865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133832133870%_))
                              (let ((_%e133833133873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133832133870%_))))
                                (let ((_%hd133834133876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133833133873%_)))
                                      (_%tl133835133878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133833133873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133834133876%_))
                                      (let ((_g134806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133834133876%_
                                                '0))))
                                        (begin
                                          (let ((_g134807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134806_)
                                                       (##vector-length
                                                        _g134806_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134807_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134807_)))
                                          (let ((_%target133836133881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134806_ 0)))
                                                (_%tl133838133883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134806_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133838133883%_))
                                                (letrec ((_%loop133839133886%_
                                                          (lambda (_%hd133837133889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133843133891%_
                           _%hd133844133893%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133837133889%_))
                        (let ((_%e133840133896%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133837133889%_))))
                          (let ((_%lp-hd133841133899%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133840133896%_)))
                                (_%lp-tl133842133901%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133840133896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133841133899%_))
                                (let ((_%e133850133904%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133841133899%_))))
                                  (let ((_%hd133851133907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133850133904%_)))
                                        (_%tl133852133909%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133850133904%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133852133909%_))
                                        (let ((_%e133853133912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133852133909%_))))
                                          (let ((_%hd133854133915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133853133912%_)))
                                                (_%tl133855133917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133853133912%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133855133917%_))
                                                (_%loop133839133886%_
                                                 _%lp-tl133842133901%_
                                                 (cons _%hd133854133915%_
                                                       _%expr133843133891%_)
                                                 (cons _%hd133851133907%_
                                                       _%hd133844133893%_))
                                                (_%g133825133860%_
                                                 _%g133826133863%_))))
                                        (_%g133825133860%_
                                         _%g133826133863%_))))
                                (_%g133825133860%_ _%g133826133863%_))))
                        (let ((_%expr133845133920%_
                               (reverse _%expr133843133891%_))
                              (_%hd133846133922%_
                               (reverse _%hd133844133893%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133835133878%_))
                              (let ((_%e133847133925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133835133878%_))))
                                (let ((_%hd133848133928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133847133925%_)))
                                      (_%tl133849133930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133847133925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133849133930%_))
                                      ((lambda (_%L133933%_
                                                _%L133934%_
                                                _%L133935%_)
                                         (for-each
                                          (lambda (_%g133954133956%_)
                                            (gxc#compile-e__1
                                             _%self133822%_
                                             _%g133954133956%_))
                                          (let ((__tmp134809
                                                 (lambda (_%g133958133961%_
                                                          _%g133959133963%_)
                                                   (cons _%g133958133961%_
                                                         _%g133959133963%_)))
                                                (__tmp134808
                                                 (cons _%L133933%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134809
                                             __tmp134808
                                             _%L133934%_))))
                                       _%hd133848133928%_
                                       _%expr133845133920%_
                                       _%hd133846133922%_)
                                      (_%g133825133860%_ _%g133826133863%_))))
                              (_%g133825133860%_ _%g133826133863%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133839133886%_
                                                   _%target133836133881%_
                                                   '()
                                                   '()))
                                                (_%g133825133860%_
                                                 _%g133826133863%_)))))
                                      (_%g133825133860%_ _%g133826133863%_))))
                              (_%g133825133860%_ _%g133826133863%_))))
                      (_%g133825133860%_ _%g133826133863%_)))))
          (_%g133824133966%_ _%stx133823%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133767%_ _%stx133768%_)
        (let* ((_%g133770133784%_
                (lambda (_%g133771133781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133771133781%_))))
               (_%g133769133819%_
                (lambda (_%g133771133787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133771133787%_))
                      (let ((_%e133774133789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133771133787%_))))
                        (let ((_%hd133775133792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133774133789%_)))
                              (_%tl133776133794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133774133789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133776133794%_))
                              (let ((_%e133777133797%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133776133794%_))))
                                (let ((_%hd133778133800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133777133797%_)))
                                      (_%tl133779133802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133777133797%_))))
                                  ((lambda (_%L133805%_ _%L133806%_)
                                     (gxc#compile-e__1
                                      _%self133767%_
                                      (last _%L133805%_)))
                                   _%tl133779133802%_
                                   _%hd133778133800%_)))
                              (_%g133770133784%_ _%g133771133787%_))))
                      (_%g133770133784%_ _%g133771133787%_)))))
          (_%g133769133819%_ _%stx133768%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133699%_ _%stx133700%_)
        (let* ((_%g133702133719%_
                (lambda (_%g133703133716%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133703133716%_))))
               (_%g133701133764%_
                (lambda (_%g133703133722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133703133722%_))
                      (let ((_%e133706133724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133703133722%_))))
                        (let ((_%hd133707133727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133706133724%_)))
                              (_%tl133708133729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133706133724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133708133729%_))
                              (let ((_%e133709133732%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133708133729%_))))
                                (let ((_%hd133710133735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133709133732%_)))
                                      (_%tl133711133737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133709133732%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133711133737%_))
                                      (let ((_%e133712133740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133711133737%_))))
                                        (let ((_%hd133713133743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133712133740%_)))
                                              (_%tl133714133745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133712133740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133714133745%_))
                                              ((lambda (_%L133748%_
                                                        _%L133749%_)
                                                 (gxc#compile-e__1
                                                  _%self133699%_
                                                  _%L133748%_))
                                               _%hd133713133743%_
                                               _%hd133710133735%_)
                                              (_%g133702133719%_
                                               _%g133703133722%_))))
                                      (_%g133702133719%_ _%g133703133722%_))))
                              (_%g133702133719%_ _%g133703133722%_))))
                      (_%g133702133719%_ _%g133703133722%_)))))
          (_%g133701133764%_ _%stx133700%_))))
    (define gxc#apply-operands
      (lambda (_%self133612%_ _%stx133613%_)
        (let* ((_%g133615133634%_
                (lambda (_%g133616133631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133616133631%_))))
               (_%g133614133696%_
                (lambda (_%g133616133637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133616133637%_))
                      (let ((_%e133618133639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133616133637%_))))
                        (let ((_%hd133619133642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133618133639%_)))
                              (_%tl133620133644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133618133639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133620133644%_))
                              (let ((_g134810_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133620133644%_
                                        '0))))
                                (begin
                                  (let ((_g134811_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134810_)
                                               (##vector-length _g134810_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134811_ 2)))
                                        (error "Context expects 2 values"
                                               _g134811_)))
                                  (let ((_%target133621133647%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134810_ 0)))
                                        (_%tl133623133649%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134810_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133623133649%_))
                                        (letrec ((_%loop133624133652%_
                                                  (lambda (_%hd133622133655%_
                                                           _%rands133628133657%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133622133655%_))
                                                        (let ((_%e133625133660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133622133655%_))))
                  (let ((_%lp-hd133626133663%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133625133660%_)))
                        (_%lp-tl133627133665%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133625133660%_))))
                    (_%loop133624133652%_
                     _%lp-tl133627133665%_
                     (cons _%lp-hd133626133663%_ _%rands133628133657%_))))
                (let ((_%rands133629133668%_ (reverse _%rands133628133657%_)))
                  ((lambda (_%L133671%_)
                     (for-each
                      (lambda (_%g133684133686%_)
                        (gxc#compile-e__1 _%self133612%_ _%g133684133686%_))
                      (let ((__tmp134812
                             (lambda (_%g133688133691%_ _%g133689133693%_)
                               (cons _%g133688133691%_ _%g133689133693%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134812 '() _%L133671%_))))
                   _%rands133629133668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133624133652%_
                                           _%target133621133647%_
                                           '()))
                                        (_%g133615133634%_
                                         _%g133616133637%_)))))
                              (_%g133615133634%_ _%g133616133637%_))))
                      (_%g133615133634%_ _%g133616133637%_)))))
          (_%g133614133696%_ _%stx133613%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133609%_ _%src-stx133610%_)
        (let ((__tmp134813
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133610%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133609%_ __tmp134813))))
    (define gxc#xform-begin%
      (lambda (_%self133564%_ _%stx133565%_)
        (let* ((_%g133567133577%_
                (lambda (_%g133568133574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133568133574%_))))
               (_%g133566133606%_
                (lambda (_%g133568133580%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133568133580%_))
                      (let ((_%e133570133582%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133568133580%_))))
                        (let ((_%hd133571133585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133570133582%_)))
                              (_%tl133572133587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133570133582%_))))
                          ((lambda (_%L133590%_)
                             (let ((_%forms133604%_
                                    (map (lambda (_%g133599133601%_)
                                           (gxc#compile-e__1
                                            _%self133564%_
                                            _%g133599133601%_))
                                         _%L133590%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms133604%_)
                                _%stx133565%_)))
                           _%tl133572133587%_)))
                      (_%g133567133577%_ _%g133568133580%_)))))
          (_%g133566133606%_ _%stx133565%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133518%_ _%stx133519%_)
        (let* ((_%g133521133531%_
                (lambda (_%g133522133528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133522133528%_))))
               (_%g133520133561%_
                (lambda (_%g133522133534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133522133534%_))
                      (let ((_%e133524133536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133522133534%_))))
                        (let ((_%hd133525133539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133524133536%_)))
                              (_%tl133526133541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133524133536%_))))
                          ((lambda (_%L133544%_)
                             (let ((__tmp134816
                                    (lambda ()
                                      (let ((_%forms133559%_
                                             (map (lambda (_%g133554133556%_)
                                                    (gxc#compile-e__1
                                                     _%self133518%_
                                                     _%g133554133556%_))
                                                  _%L133544%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms133559%_)
                                         _%stx133519%_))))
                                   (__tmp134814
                                    (let ((__tmp134815
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134815 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134816
                                gx#current-expander-phi
                                __tmp134814)))
                           _%tl133526133541%_)))
                      (_%g133521133531%_ _%g133522133534%_)))))
          (_%g133520133561%_ _%stx133519%_))))
    (define gxc#xform-module%
      (lambda (_%self133455%_ _%stx133456%_)
        (let* ((_%g133458133472%_
                (lambda (_%g133459133469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133459133469%_))))
               (_%g133457133515%_
                (lambda (_%g133459133475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133459133475%_))
                      (let ((_%e133462133477%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133459133475%_))))
                        (let ((_%hd133463133480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133462133477%_)))
                              (_%tl133464133482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133462133477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133464133482%_))
                              (let ((_%e133465133485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133464133482%_))))
                                (let ((_%hd133466133488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133465133485%_)))
                                      (_%tl133467133490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133465133485%_))))
                                  ((lambda (_%L133493%_ _%L133494%_)
                                     (let* ((_%ctx133507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133494%_)))
                                            (_%code133509%_
                                             (##structure-ref
                                              _%ctx133507%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133512%_
                                             (let ((__tmp134817
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self133455%_
                                                       _%code133509%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134817
                                                gx#current-expander-context
                                                _%ctx133507%_))))
                                       (##structure-set!
                                        _%ctx133507%_
                                        _%code133512%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L133494%_
                                                    (cons _%code133512%_ '())))
                                        _%stx133456%_)))
                                   _%tl133467133490%_
                                   _%hd133466133488%_)))
                              (_%g133458133472%_ _%g133459133475%_))))
                      (_%g133458133472%_ _%g133459133475%_)))))
          (_%g133457133515%_ _%stx133456%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133385%_ _%stx133386%_)
        (let* ((_%g133388133405%_
                (lambda (_%g133389133402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133389133402%_))))
               (_%g133387133452%_
                (lambda (_%g133389133408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133389133408%_))
                      (let ((_%e133392133410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133389133408%_))))
                        (let ((_%hd133393133413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133392133410%_)))
                              (_%tl133394133415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133392133410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133394133415%_))
                              (let ((_%e133395133418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133394133415%_))))
                                (let ((_%hd133396133421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133395133418%_)))
                                      (_%tl133397133423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133395133418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133397133423%_))
                                      (let ((_%e133398133426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133397133423%_))))
                                        (let ((_%hd133399133429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133398133426%_)))
                                              (_%tl133400133431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133398133426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133400133431%_))
                                              ((lambda (_%L133434%_
                                                        _%L133435%_)
                                                 (let ((_%expr133450%_
                                                        (gxc#compile-e__1
                                                         _%self133385%_
                                                         _%L133434%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L133435%_
                                                                (cons _%expr133450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133386%_)))
                                               _%hd133399133429%_
                                               _%hd133396133421%_)
                                              (_%g133388133405%_
                                               _%g133389133408%_))))
                                      (_%g133388133405%_ _%g133389133408%_))))
                              (_%g133388133405%_ _%g133389133408%_))))
                      (_%g133388133405%_ _%g133389133408%_)))))
          (_%g133387133452%_ _%stx133386%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133314%_ _%stx133315%_)
        (let* ((_%g133317133334%_
                (lambda (_%g133318133331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133318133331%_))))
               (_%g133316133382%_
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
                                                 (let ((__tmp134820
                                                        (lambda ()
                                                          (let ((_%expr133380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self133314%_ _%L133363%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L133364%_ (cons _%expr133380%_ '())))
                     _%stx133315%_))))
               (__tmp134818
                (let ((__tmp134819
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134819 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134820
                                                    gx#current-expander-phi
                                                    __tmp134818)))
                                               _%hd133328133358%_
                                               _%hd133325133350%_)
                                              (_%g133317133334%_
                                               _%g133318133337%_))))
                                      (_%g133317133334%_ _%g133318133337%_))))
                              (_%g133317133334%_ _%g133318133337%_))))
                      (_%g133317133334%_ _%g133318133337%_)))))
          (_%g133316133382%_ _%stx133315%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133244%_ _%stx133245%_)
        (let* ((_%g133247133264%_
                (lambda (_%g133248133261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133248133261%_))))
               (_%g133246133311%_
                (lambda (_%g133248133267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133248133267%_))
                      (let ((_%e133251133269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133248133267%_))))
                        (let ((_%hd133252133272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133251133269%_)))
                              (_%tl133253133274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133251133269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133253133274%_))
                              (let ((_%e133254133277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133253133274%_))))
                                (let ((_%hd133255133280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133254133277%_)))
                                      (_%tl133256133282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133254133277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133256133282%_))
                                      (let ((_%e133257133285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133256133282%_))))
                                        (let ((_%hd133258133288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133257133285%_)))
                                              (_%tl133259133290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133257133285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133259133290%_))
                                              ((lambda (_%L133293%_
                                                        _%L133294%_)
                                                 (let ((_%expr133309%_
                                                        (gxc#compile-e__1
                                                         _%self133244%_
                                                         _%L133293%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L133294%_
                                                                (cons _%expr133309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133245%_)))
                                               _%hd133258133288%_
                                               _%hd133255133280%_)
                                              (_%g133247133264%_
                                               _%g133248133267%_))))
                                      (_%g133247133264%_ _%g133248133267%_))))
                              (_%g133247133264%_ _%g133248133267%_))))
                      (_%g133247133264%_ _%g133248133267%_)))))
          (_%g133246133311%_ _%stx133245%_))))
    (define gxc#xform-lambda%
      (lambda (_%self133182%_ _%stx133183%_)
        (let* ((_%g133185133199%_
                (lambda (_%g133186133196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133186133196%_))))
               (_%g133184133241%_
                (lambda (_%g133186133202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133186133202%_))
                      (let ((_%e133189133204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133186133202%_))))
                        (let ((_%hd133190133207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133189133204%_)))
                              (_%tl133191133209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133189133204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133191133209%_))
                              (let ((_%e133192133212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133191133209%_))))
                                (let ((_%hd133193133215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133192133212%_)))
                                      (_%tl133194133217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133192133212%_))))
                                  ((lambda (_%L133220%_ _%L133221%_)
                                     (let ((__tmp134822
                                            (lambda ()
                                              (let ((_%body133239%_
                                                     (map (lambda (_%g133234133236%_)
                                                            (gxc#compile-e__1
                                                             _%self133182%_
                                                             _%g133234133236%_))
                                                          _%L133220%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L133221%_
                                                             _%body133239%_))
                                                 _%stx133183%_))))
                                           (__tmp134821
                                            (gxc#xform-let-locals
                                             _%L133221%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134822
                                        gxc#current-compile-local-env
                                        __tmp134821)))
                                   _%tl133194133217%_
                                   _%hd133193133215%_)))
                              (_%g133185133199%_ _%g133186133202%_))))
                      (_%g133185133199%_ _%g133186133202%_)))))
          (_%g133184133241%_ _%stx133183%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self133090%_ _%stx133091%_)
        (letrec ((_%clause-e133093%_
                  (lambda (_%clause133134%_)
                    (let* ((_%g133136133147%_
                            (lambda (_%g133137133144%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g133137133144%_))))
                           (_%g133135133179%_
                            (lambda (_%g133137133150%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g133137133150%_))
                                  (let ((_%e133140133152%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g133137133150%_))))
                                    (let ((_%hd133141133155%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e133140133152%_)))
                                          (_%tl133142133157%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e133140133152%_))))
                                      ((lambda (_%L133160%_ _%L133161%_)
                                         (let ((__tmp134824
                                                (lambda ()
                                                  (let ((_%body133177%_
                                                         (map (lambda (_%g133172133174%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self133090%_
                         _%g133172133174%_))
                      _%L133160%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L133161%_
                                                          _%body133177%_))))
                                               (__tmp134823
                                                (gxc#xform-let-locals
                                                 _%L133161%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134824
                                            gxc#current-compile-local-env
                                            __tmp134823)))
                                       _%tl133142133157%_
                                       _%hd133141133155%_)))
                                  (_%g133136133147%_ _%g133137133150%_)))))
                      (_%g133135133179%_ _%clause133134%_)))))
          (let* ((_%g133095133105%_
                  (lambda (_%g133096133102%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g133096133102%_))))
                 (_%g133094133131%_
                  (lambda (_%g133096133108%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g133096133108%_))
                        (let ((_%e133098133110%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g133096133108%_))))
                          (let ((_%hd133099133113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133098133110%_)))
                                (_%tl133100133115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133098133110%_))))
                            ((lambda (_%L133118%_)
                               (let ((_%clauses133129%_
                                      (map _%clause-e133093%_ _%L133118%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses133129%_)
                                  _%stx133091%_)))
                             _%tl133100133115%_)))
                        (_%g133095133105%_ _%g133096133108%_)))))
            (_%g133094133131%_ _%stx133091%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132844%_ _%stx132845%_)
        (let* ((_%g132847132880%_
                (lambda (_%g132848132877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132848132877%_))))
               (_%g132846133087%_
                (lambda (_%g132848132883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132848132883%_))
                      (let ((_%e132853132885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132848132883%_))))
                        (let ((_%hd132854132888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132853132885%_)))
                              (_%tl132855132890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132853132885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132855132890%_))
                              (let ((_%e132856132893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132855132890%_))))
                                (let ((_%hd132857132896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132856132893%_)))
                                      (_%tl132858132898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132856132893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132857132896%_))
                                      (let ((_g134825_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132857132896%_
                                                '0))))
                                        (begin
                                          (let ((_g134826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134825_)
                                                       (##vector-length
                                                        _g134825_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134826_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134826_)))
                                          (let ((_%target132859132901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134825_ 0)))
                                                (_%tl132861132903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134825_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132861132903%_))
                                                (letrec ((_%loop132862132906%_
                                                          (lambda (_%hd132860132909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132866132911%_
                           _%hd132867132913%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132860132909%_))
                        (let ((_%e132863132916%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132860132909%_))))
                          (let ((_%lp-hd132864132919%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132863132916%_)))
                                (_%lp-tl132865132921%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132863132916%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132864132919%_))
                                (let ((_%e132870132924%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132864132919%_))))
                                  (let ((_%hd132871132927%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132870132924%_)))
                                        (_%tl132872132929%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132870132924%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132872132929%_))
                                        (let ((_%e132873132932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132872132929%_))))
                                          (let ((_%hd132874132935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132873132932%_)))
                                                (_%tl132875132937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132873132932%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132875132937%_))
                                                (_%loop132862132906%_
                                                 _%lp-tl132865132921%_
                                                 (cons _%hd132874132935%_
                                                       _%expr132866132911%_)
                                                 (cons _%hd132871132927%_
                                                       _%hd132867132913%_))
                                                (_%g132847132880%_
                                                 _%g132848132883%_))))
                                        (_%g132847132880%_
                                         _%g132848132883%_))))
                                (_%g132847132880%_ _%g132848132883%_))))
                        (let ((_%expr132868132940%_
                               (reverse _%expr132866132911%_))
                              (_%hd132869132942%_
                               (reverse _%hd132867132913%_)))
                          ((lambda (_%L132945%_
                                    _%L132946%_
                                    _%L132947%_
                                    _%L132948%_)
                             (let* ((_%g132967132983%_
                                     (lambda (_%g132968132980%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132968132980%_))))
                                    (_%g132966133073%_
                                     (lambda (_%g132968132986%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132968132986%_))
                                           (let ((_g134827_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132968132986%_
                                                     '0))))
                                             (begin
                                               (let ((_g134828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134827_)
                                                            (##vector-length
                                                             _g134827_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134828_)))
                                               (let ((_%target132970132988%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134827_
                                                         0)))
                                                     (_%tl132972132990%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134827_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132972132990%_))
                                                     (letrec ((_%loop132973132993%_
                                                               (lambda (_%hd132971132996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132977132998%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132971132996%_))
                             (let ((_%e132974133001%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132971132996%_))))
                               (let ((_%lp-hd132975133004%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132974133001%_)))
                                     (_%lp-tl132976133006%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132974133001%_))))
                                 (_%loop132973132993%_
                                  _%lp-tl132976133006%_
                                  (cons _%lp-hd132975133004%_
                                        _%expr132977132998%_))))
                             (let ((_%expr132978133009%_
                                    (reverse _%expr132977132998%_)))
                               ((lambda (_%L133012%_)
                                  (let ((__tmp134831
                                         (lambda ()
                                           (let* ((_%g133026133033%_
                                                   (lambda (_%g133027133030%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133027133030%_))))
                                                  (_%g133025133059%_
                                                   (lambda (_%g133027133036%_)
                                                     ((lambda (_%L133038%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L132948%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133012%_
                                  _%L132947%_))
                               (let ((__tmp134832
                                      (lambda (_%g133048133052%_
                                               _%g133049133054%_
                                               _%g133050133056%_)
                                        (cons (cons _%g133049133054%_
                                                    (cons _%g133048133052%_
                                                          '()))
                                              _%g133050133056%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp134832
                                  '()
                                  _%L133012%_
                                  _%L132947%_)))
                             _%L133038%_))
                 _%stx132845%_))
              _%g133027133036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133025133059%_
                                              (map (lambda (_%g133061133063%_)
                                                     (gxc#compile-e__1
                                                      _%self132844%_
                                                      _%g133061133063%_))
                                                   _%L132945%_)))))
                                        (__tmp134829
                                         (gxc#xform-let-locals
                                          (let ((__tmp134830
                                                 (lambda (_%g133065133068%_
                                                          _%g133066133070%_)
                                                   (cons _%g133065133068%_
                                                         _%g133066133070%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134830
                                             '()
                                             _%L132947%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134831
                                     gxc#current-compile-local-env
                                     __tmp134829)))
                                _%expr132978133009%_))))))
               (_%loop132973132993%_ _%target132970132988%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g132967132983%_
                                                      _%g132968132986%_)))))
                                           (_%g132967132983%_
                                            _%g132968132986%_)))))
                               (_%g132966133073%_
                                (map (lambda (_%g133075133077%_)
                                       (gxc#compile-e__1
                                        _%self132844%_
                                        _%g133075133077%_))
                                     (let ((__tmp134833
                                            (lambda (_%g133079133082%_
                                                     _%g133080133084%_)
                                              (cons _%g133079133082%_
                                                    _%g133080133084%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp134833
                                        '()
                                        _%L132946%_))))))
                           _%tl132858132898%_
                           _%expr132868132940%_
                           _%hd132869132942%_
                           _%hd132854132888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132862132906%_
                                                   _%target132859132901%_
                                                   '()
                                                   '()))
                                                (_%g132847132880%_
                                                 _%g132848132883%_)))))
                                      (_%g132847132880%_ _%g132848132883%_))))
                              (_%g132847132880%_ _%g132848132883%_))))
                      (_%g132847132880%_ _%g132848132883%_)))))
          (_%g132846133087%_ _%stx132845%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132598%_ _%stx132599%_)
        (let* ((_%g132601132634%_
                (lambda (_%g132602132631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132602132631%_))))
               (_%g132600132841%_
                (lambda (_%g132602132637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132602132637%_))
                      (let ((_%e132607132639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132602132637%_))))
                        (let ((_%hd132608132642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132607132639%_)))
                              (_%tl132609132644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132607132639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132609132644%_))
                              (let ((_%e132610132647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132609132644%_))))
                                (let ((_%hd132611132650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132610132647%_)))
                                      (_%tl132612132652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132610132647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132611132650%_))
                                      (let ((_g134834_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132611132650%_
                                                '0))))
                                        (begin
                                          (let ((_g134835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134834_)
                                                       (##vector-length
                                                        _g134834_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134835_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134835_)))
                                          (let ((_%target132613132655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134834_ 0)))
                                                (_%tl132615132657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134834_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132615132657%_))
                                                (letrec ((_%loop132616132660%_
                                                          (lambda (_%hd132614132663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132620132665%_
                           _%hd132621132667%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132614132663%_))
                        (let ((_%e132617132670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132614132663%_))))
                          (let ((_%lp-hd132618132673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132617132670%_)))
                                (_%lp-tl132619132675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132617132670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132618132673%_))
                                (let ((_%e132624132678%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132618132673%_))))
                                  (let ((_%hd132625132681%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132624132678%_)))
                                        (_%tl132626132683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132624132678%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132626132683%_))
                                        (let ((_%e132627132686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132626132683%_))))
                                          (let ((_%hd132628132689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132627132686%_)))
                                                (_%tl132629132691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132627132686%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132629132691%_))
                                                (_%loop132616132660%_
                                                 _%lp-tl132619132675%_
                                                 (cons _%hd132628132689%_
                                                       _%expr132620132665%_)
                                                 (cons _%hd132625132681%_
                                                       _%hd132621132667%_))
                                                (_%g132601132634%_
                                                 _%g132602132637%_))))
                                        (_%g132601132634%_
                                         _%g132602132637%_))))
                                (_%g132601132634%_ _%g132602132637%_))))
                        (let ((_%expr132622132694%_
                               (reverse _%expr132620132665%_))
                              (_%hd132623132696%_
                               (reverse _%hd132621132667%_)))
                          ((lambda (_%L132699%_
                                    _%L132700%_
                                    _%L132701%_
                                    _%L132702%_)
                             (let ((__tmp134838
                                    (lambda ()
                                      (let* ((_%g132722132738%_
                                              (lambda (_%g132723132735%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132723132735%_))))
                                             (_%g132721132820%_
                                              (lambda (_%g132723132741%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132723132741%_))
                                                    (let ((_g134839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132723132741%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134840_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134839_)
                             (##vector-length _g134839_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134840_ 2)))
                      (error "Context expects 2 values" _g134840_)))
                (let ((_%target132725132743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134839_ 0)))
                      (_%tl132727132745%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134839_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132727132745%_))
                      (letrec ((_%loop132728132748%_
                                (lambda (_%hd132726132751%_
                                         _%expr132732132753%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132726132751%_))
                                      (let ((_%e132729132756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132726132751%_))))
                                        (let ((_%lp-hd132730132759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132729132756%_)))
                                              (_%lp-tl132731132761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132729132756%_))))
                                          (_%loop132728132748%_
                                           _%lp-tl132731132761%_
                                           (cons _%lp-hd132730132759%_
                                                 _%expr132732132753%_))))
                                      (let ((_%expr132733132764%_
                                             (reverse _%expr132732132753%_)))
                                        ((lambda (_%L132767%_)
                                           (let* ((_%g132781132788%_
                                                   (lambda (_%g132782132785%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132782132785%_))))
                                                  (_%g132780132813%_
                                                   (lambda (_%g132782132791%_)
                                                     ((lambda (_%L132793%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L132702%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132767%_
                                  _%L132701%_))
                               (let ((__tmp134841
                                      (lambda (_%g132802132806%_
                                               _%g132803132808%_
                                               _%g132804132810%_)
                                        (cons (cons _%g132803132808%_
                                                    (cons _%g132802132806%_
                                                          '()))
                                              _%g132804132810%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp134841
                                  '()
                                  _%L132767%_
                                  _%L132701%_)))
                             _%L132793%_))
                 _%stx132599%_))
              _%g132782132791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132780132813%_
                                              (map (lambda (_%g132815132817%_)
                                                     (gxc#compile-e__1
                                                      _%self132598%_
                                                      _%g132815132817%_))
                                                   _%L132699%_))))
                                         _%expr132733132764%_))))))
                        (_%loop132728132748%_ _%target132725132743%_ '()))
                      (_%g132722132738%_ _%g132723132741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g132722132738%_
                                                     _%g132723132741%_)))))
                                        (_%g132721132820%_
                                         (map (lambda (_%g132822132824%_)
                                                (gxc#compile-e__1
                                                 _%self132598%_
                                                 _%g132822132824%_))
                                              (let ((__tmp134842
                                                     (lambda (_%g132826132829%_
                                                              _%g132827132831%_)
                                                       (cons _%g132826132829%_
                                                             _%g132827132831%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp134842
                                                 '()
                                                 _%L132700%_)))))))
                                   (__tmp134836
                                    (gxc#xform-let-locals
                                     (let ((__tmp134837
                                            (lambda (_%g132833132836%_
                                                     _%g132834132838%_)
                                              (cons _%g132833132836%_
                                                    _%g132834132838%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp134837
                                        '()
                                        _%L132701%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134838
                                gxc#current-compile-local-env
                                __tmp134836)))
                           _%tl132612132652%_
                           _%expr132622132694%_
                           _%hd132623132696%_
                           _%hd132608132642%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132616132660%_
                                                   _%target132613132655%_
                                                   '()
                                                   '()))
                                                (_%g132601132634%_
                                                 _%g132602132637%_)))))
                                      (_%g132601132634%_ _%g132602132637%_))))
                              (_%g132601132634%_ _%g132602132637%_))))
                      (_%g132601132634%_ _%g132602132637%_)))))
          (_%g132600132841%_ _%stx132599%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132465%_)
        (letrec ((_%flatten132467%_
                  (lambda (_%maybe-lst132525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst132525%_))
                        (cons _%maybe-lst132525%_ '())
                        (let _%loop132527%_ ((_%rest132529%_
                                              _%maybe-lst132525%_)
                                             (_%result132530%_ '()))
                          (let* ((_%__stx134730134731%_ _%rest132529%_)
                                 (_%g132534132546%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx134730134731%_)))))
                            (let ((_%__kont134732134733%_
                                   (lambda (_%L132584%_ _%L132585%_)
                                     (_%loop132527%_
                                      _%L132584%_
                                      (let ((__tmp134843
                                             (_%flatten132467%_ _%L132585%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result132530%_
                                         __tmp134843)))))
                                  (_%__kont134734134735%_
                                   (lambda (_%L132558%_)
                                     (cons _%L132558%_ _%result132530%_)))
                                  (_%__kont134736134737%_
                                   (lambda () _%result132530%_)))
                              (let ((_%g132532132571%_
                                     (lambda ()
                                       (let ((_%L132558%_
                                              _%__stx134730134731%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L132558%_))
                                             (_%__kont134734134735%_
                                              _%L132558%_)
                                             (_%__kont134736134737%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx134730134731%_))
                                    (let ((_%e132538132576%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx134730134731%_))))
                                      (let ((_%tl132540132581%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132538132576%_)))
                                            (_%hd132539132579%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132538132576%_))))
                                        (_%__kont134732134733%_
                                         _%tl132540132581%_
                                         _%hd132539132579%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g132532132571%_)))))))))))
          (let _%loop132469%_ ((_%rest132471%_
                                (_%flatten132467%_ _%bindings132465%_))
                               (_%locals132472%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest132473132484%_ _%rest132471%_)
                   (_%E132477132488%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest132473132484%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K132480132513%_
                     (lambda (_%rest132510%_ _%id132511%_)
                       (_%loop132469%_
                        _%rest132510%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id132511%_))
                              _%locals132472%_))))
                    (_%K132479132502%_
                     (lambda (_%id132500%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id132500%_))
                             _%locals132472%_)))
                    (_%K132478132493%_ (lambda () _%locals132472%_)))
                (let ((_%try-match132475132507%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest132473132484%_))
                             (let ((_%id132505%_ _%rest132473132484%_))
                               (_%K132479132502%_ _%id132505%_))
                             (_%K132478132493%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest132473132484%_))
                      (let ((_%tl132482132518%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest132473132484%_)))
                            (_%hd132481132516%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest132473132484%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd132481132516%_))
                            (let ((_%id132521%_ _%hd132481132516%_)
                                  (_%rest132523%_ _%tl132482132518%_))
                              (_%K132480132513%_ _%rest132523%_ _%id132521%_))
                            (_%K132478132493%_)))
                      (_%try-match132475132507%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self132417%_ _%stx132418%_)
        (let* ((_%g132420132431%_
                (lambda (_%g132421132428%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132421132428%_))))
               (_%g132419132462%_
                (lambda (_%g132421132434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132421132434%_))
                      (let ((_%e132424132436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132421132434%_))))
                        (let ((_%hd132425132439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132424132436%_)))
                              (_%tl132426132441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132424132436%_))))
                          ((lambda (_%L132444%_ _%L132445%_)
                             (let ((_%rands132460%_
                                    (map (lambda (_%g132455132457%_)
                                           (gxc#compile-e__1
                                            _%self132417%_
                                            _%g132455132457%_))
                                         _%L132444%_)))
                               (gxc#xform-wrap-source
                                (cons _%L132445%_ _%rands132460%_)
                                _%stx132418%_)))
                           _%tl132426132441%_
                           _%hd132425132439%_)))
                      (_%g132420132431%_ _%g132421132434%_)))))
          (_%g132419132462%_ _%stx132418%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132347%_ _%stx132348%_)
        (let* ((_%g132350132367%_
                (lambda (_%g132351132364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132351132364%_))))
               (_%g132349132414%_
                (lambda (_%g132351132370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132351132370%_))
                      (let ((_%e132354132372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132351132370%_))))
                        (let ((_%hd132355132375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132354132372%_)))
                              (_%tl132356132377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132354132372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132356132377%_))
                              (let ((_%e132357132380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132356132377%_))))
                                (let ((_%hd132358132383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132357132380%_)))
                                      (_%tl132359132385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132357132380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132359132385%_))
                                      (let ((_%e132360132388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132359132385%_))))
                                        (let ((_%hd132361132391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132360132388%_)))
                                              (_%tl132362132393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132360132388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132362132393%_))
                                              ((lambda (_%L132396%_
                                                        _%L132397%_)
                                                 (let ((_%expr132412%_
                                                        (gxc#compile-e__1
                                                         _%self132347%_
                                                         _%L132396%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L132397%_
                                                                (cons _%expr132412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132348%_)))
                                               _%hd132361132391%_
                                               _%hd132358132383%_)
                                              (_%g132350132367%_
                                               _%g132351132370%_))))
                                      (_%g132350132367%_ _%g132351132370%_))))
                              (_%g132350132367%_ _%g132351132370%_))))
                      (_%g132350132367%_ _%g132351132370%_)))))
          (_%g132349132414%_ _%stx132348%_))))))
