(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712993616)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx135783%_)
        (let* ((_%self135785%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e135787%_
                (let ((__tmp135983 (gxc#stx-car-e _%stx135783%_)))
                  (declare (not safe))
                  (method-ref _%self135785%_ __tmp135983))))
          (if _%$e135787%_
              ((lambda (_%method135790%_)
                 (declare (not safe))
                 (_%method135790%_ _%self135785%_ _%stx135783%_))
               _%$e135787%_)
              (let ((__tmp135985 (gxc#stx-car-e _%stx135783%_))
                    (__tmp135984
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135783%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135785%_
                       __tmp135985
                       __tmp135984))))))
    (define gxc#compile-e__1
      (lambda (_%self135794%_ _%stx135795%_)
        (let ((_%$e135797%_
               (let ((__tmp135986 (gxc#stx-car-e _%stx135795%_)))
                 (declare (not safe))
                 (method-ref _%self135794%_ __tmp135986))))
          (if _%$e135797%_
              ((lambda (_%method135800%_)
                 (declare (not safe))
                 (_%method135800%_ _%self135794%_ _%stx135795%_))
               _%$e135797%_)
              (let ((__tmp135988 (gxc#stx-car-e _%stx135795%_))
                    (__tmp135987
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135795%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135794%_
                       __tmp135988
                       __tmp135987))))))
    (define gxc#compile-e
      (lambda _g135990_
        (let ((_g135989_ (let () (declare (not safe)) (##length _g135990_))))
          (cond ((let () (declare (not safe)) (##fx= _g135989_ 1))
                 (apply gxc#compile-e__0 _g135990_))
                ((let () (declare (not safe)) (##fx= _g135989_ 2))
                 (apply gxc#compile-e__1 _g135990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g135990_))))))
    (define gxc#stx-car-e
      (lambda (_%stx135781%_)
        (let ((__tmp135991
               (car (let () (declare (not safe)) (gx#stx-e _%stx135781%_)))))
          (declare (not safe))
          (gx#stx-e __tmp135991))))
    (define gxc#void-method (lambda (_%self135778%_ _%stx135779%_) '#!void))
    (define gxc#false-method (lambda (_%self135775%_ _%stx135776%_) '#f))
    (define gxc#true-method (lambda (_%self135772%_ _%stx135773%_) '#t))
    (define gxc#identity-method
      (lambda (_%self135769%_ _%stx135770%_) _%stx135770%_))
    (define gxc#::void-expression::t
      (let ((__tmp135992 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp135992
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args135766%_
        (apply make-instance gxc#::void-expression::t _%$args135766%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp135993
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
        (__make-promise __tmp135993)))
    (define gxc#::void-special-form::t
      (let ((__tmp135994 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp135994
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args135762%_
        (apply make-instance gxc#::void-special-form::t _%$args135762%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp135995
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
        (__make-promise __tmp135995)))
    (define gxc#::void::t
      (let ((__tmp135996
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp135996 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args135758%_
        (apply make-instance gxc#::void::t _%$args135758%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp135997
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135997)))
    (define gxc#::false-expression::t
      (let ((__tmp135998 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp135998
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args135754%_
        (apply make-instance gxc#::false-expression::t _%$args135754%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp135999
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
        (__make-promise __tmp135999)))
    (define gxc#::false-special-form::t
      (let ((__tmp136000 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp136000
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args135750%_
        (apply make-instance gxc#::false-special-form::t _%$args135750%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp136001
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
        (__make-promise __tmp136001)))
    (define gxc#::false::t
      (let ((__tmp136002
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp136002 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args135746%_
        (apply make-instance gxc#::false::t _%$args135746%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp136003
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136003)))
    (define gxc#::identity-expression::t
      (let ((__tmp136004 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp136004
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args135742%_
        (apply make-instance gxc#::identity-expression::t _%$args135742%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp136005
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
        (__make-promise __tmp136005)))
    (define gxc#::identity-special-form::t
      (let ((__tmp136006 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp136006
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args135738%_
        (apply make-instance gxc#::identity-special-form::t _%$args135738%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp136007
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
        (__make-promise __tmp136007)))
    (define gxc#::identity::t
      (let ((__tmp136008
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp136008
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args135734%_
        (apply make-instance gxc#::identity::t _%$args135734%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp136009
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136009)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp136010 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp136010
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args135730%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args135730%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp136011
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
        (__make-promise __tmp136011)))
    (define gxc#::basic-xform::t
      (let ((__tmp136012
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp136012
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args135726%_
        (apply make-instance gxc#::basic-xform::t _%$args135726%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp136013
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
        (__make-promise __tmp136013)))
    (define gxc#apply-begin%
      (lambda (_%self135682%_ _%stx135683%_)
        (let* ((_%g135685135695%_
                (lambda (_%g135686135692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135686135692%_))))
               (_%g135684135722%_
                (lambda (_%g135686135698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135686135698%_))
                      (let ((_%e135688135700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135686135698%_))))
                        (let ((_%hd135689135703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135688135700%_)))
                              (_%tl135690135705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135688135700%_))))
                          ((lambda (_%L135708%_)
                             (for-each
                              (lambda (_%g135717135719%_)
                                (gxc#compile-e__1
                                 _%self135682%_
                                 _%g135717135719%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L135708%_))))
                           _%tl135690135705%_)))
                      (_%g135685135695%_ _%g135686135698%_)))))
          (_%g135684135722%_ _%stx135683%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135643%_ _%stx135644%_)
        (let* ((_%g135646135656%_
                (lambda (_%g135647135653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135647135653%_))))
               (_%g135645135679%_
                (lambda (_%g135647135659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135647135659%_))
                      (let ((_%e135649135661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135647135659%_))))
                        (let ((_%hd135650135664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135649135661%_)))
                              (_%tl135651135666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135649135661%_))))
                          ((lambda (_%L135669%_)
                             (gxc#compile-e__1
                              _%self135643%_
                              (last _%L135669%_)))
                           _%tl135651135666%_)))
                      (_%g135646135656%_ _%g135647135659%_)))))
          (_%g135645135679%_ _%stx135644%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135639%_ _%stx135640%_)
        (let ((__tmp136016
               (lambda () (gxc#apply-begin% _%self135639%_ _%stx135640%_)))
              (__tmp136014
               (let ((__tmp136015
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp136015 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp136016
           gx#current-expander-phi
           __tmp136014))))
    (define gxc#apply-module%
      (lambda (_%self135578%_ _%stx135579%_)
        (let* ((_%g135581135595%_
                (lambda (_%g135582135592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135582135592%_))))
               (_%g135580135636%_
                (lambda (_%g135582135598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135582135598%_))
                      (let ((_%e135585135600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135582135598%_))))
                        (let ((_%hd135586135603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135585135600%_)))
                              (_%tl135587135605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135585135600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135587135605%_))
                              (let ((_%e135588135608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135587135605%_))))
                                (let ((_%hd135589135611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135588135608%_)))
                                      (_%tl135590135613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135588135608%_))))
                                  ((lambda (_%L135616%_ _%L135617%_)
                                     (let* ((_%ctx135630%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135617%_)))
                                            (_%ctx-stx135632%_
                                             (##structure-ref
                                              _%ctx135630%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp136017
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135578%_
                                                _%ctx-stx135632%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136017
                                        gx#current-expander-context
                                        _%ctx135630%_)))
                                   _%tl135590135613%_
                                   _%hd135589135611%_)))
                              (_%g135581135595%_ _%g135582135598%_))))
                      (_%g135581135595%_ _%g135582135598%_)))))
          (_%g135580135636%_ _%stx135579%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135510%_ _%stx135511%_)
        (let* ((_%g135513135530%_
                (lambda (_%g135514135527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135514135527%_))))
               (_%g135512135575%_
                (lambda (_%g135514135533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135514135533%_))
                      (let ((_%e135517135535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135514135533%_))))
                        (let ((_%hd135518135538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135517135535%_)))
                              (_%tl135519135540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135517135535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135519135540%_))
                              (let ((_%e135520135543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135519135540%_))))
                                (let ((_%hd135521135546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135520135543%_)))
                                      (_%tl135522135548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135520135543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135522135548%_))
                                      (let ((_%e135523135551%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135522135548%_))))
                                        (let ((_%hd135524135554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135523135551%_)))
                                              (_%tl135525135556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135523135551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135525135556%_))
                                              ((lambda (_%L135559%_
                                                        _%L135560%_)
                                                 (gxc#compile-e__1
                                                  _%self135510%_
                                                  _%L135559%_))
                                               _%hd135524135554%_
                                               _%hd135521135546%_)
                                              (_%g135513135530%_
                                               _%g135514135533%_))))
                                      (_%g135513135530%_ _%g135514135533%_))))
                              (_%g135513135530%_ _%g135514135533%_))))
                      (_%g135513135530%_ _%g135514135533%_)))))
          (_%g135512135575%_ _%stx135511%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135442%_ _%stx135443%_)
        (let* ((_%g135445135462%_
                (lambda (_%g135446135459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135446135459%_))))
               (_%g135444135507%_
                (lambda (_%g135446135465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135446135465%_))
                      (let ((_%e135449135467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135446135465%_))))
                        (let ((_%hd135450135470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135449135467%_)))
                              (_%tl135451135472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135449135467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135451135472%_))
                              (let ((_%e135452135475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135451135472%_))))
                                (let ((_%hd135453135478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135452135475%_)))
                                      (_%tl135454135480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135452135475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135454135480%_))
                                      (let ((_%e135455135483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135454135480%_))))
                                        (let ((_%hd135456135486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135455135483%_)))
                                              (_%tl135457135488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135455135483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135457135488%_))
                                              ((lambda (_%L135491%_
                                                        _%L135492%_)
                                                 (gxc#compile-e__1
                                                  _%self135442%_
                                                  _%L135491%_))
                                               _%hd135456135486%_
                                               _%hd135453135478%_)
                                              (_%g135445135462%_
                                               _%g135446135465%_))))
                                      (_%g135445135462%_ _%g135446135465%_))))
                              (_%g135445135462%_ _%g135446135465%_))))
                      (_%g135445135462%_ _%g135446135465%_)))))
          (_%g135444135507%_ _%stx135443%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135373%_ _%stx135374%_)
        (let* ((_%g135376135393%_
                (lambda (_%g135377135390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135377135390%_))))
               (_%g135375135439%_
                (lambda (_%g135377135396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135377135396%_))
                      (let ((_%e135380135398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135377135396%_))))
                        (let ((_%hd135381135401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135380135398%_)))
                              (_%tl135382135403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135380135398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135382135403%_))
                              (let ((_%e135383135406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135382135403%_))))
                                (let ((_%hd135384135409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135383135406%_)))
                                      (_%tl135385135411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135383135406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135385135411%_))
                                      (let ((_%e135386135414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135385135411%_))))
                                        (let ((_%hd135387135417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135386135414%_)))
                                              (_%tl135388135419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135386135414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135388135419%_))
                                              ((lambda (_%L135422%_
                                                        _%L135423%_)
                                                 (let ((__tmp136020
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135373%_
                                                           _%L135422%_)))
                                                       (__tmp136018
                                                        (let ((__tmp136019
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136019 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136020
                                                    gx#current-expander-phi
                                                    __tmp136018)))
                                               _%hd135387135417%_
                                               _%hd135384135409%_)
                                              (_%g135376135393%_
                                               _%g135377135396%_))))
                                      (_%g135376135393%_ _%g135377135396%_))))
                              (_%g135376135393%_ _%g135377135396%_))))
                      (_%g135376135393%_ _%g135377135396%_)))))
          (_%g135375135439%_ _%stx135374%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135305%_ _%stx135306%_)
        (let* ((_%g135308135325%_
                (lambda (_%g135309135322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135309135322%_))))
               (_%g135307135370%_
                (lambda (_%g135309135328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135309135328%_))
                      (let ((_%e135312135330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135309135328%_))))
                        (let ((_%hd135313135333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135312135330%_)))
                              (_%tl135314135335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135312135330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135314135335%_))
                              (let ((_%e135315135338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135314135335%_))))
                                (let ((_%hd135316135341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135315135338%_)))
                                      (_%tl135317135343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135315135338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135317135343%_))
                                      (let ((_%e135318135346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135317135343%_))))
                                        (let ((_%hd135319135349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135318135346%_)))
                                              (_%tl135320135351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135318135346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135320135351%_))
                                              ((lambda (_%L135354%_
                                                        _%L135355%_)
                                                 (gxc#compile-e__1
                                                  _%self135305%_
                                                  _%L135354%_))
                                               _%hd135319135349%_
                                               _%hd135316135341%_)
                                              (_%g135308135325%_
                                               _%g135309135328%_))))
                                      (_%g135308135325%_ _%g135309135328%_))))
                              (_%g135308135325%_ _%g135309135328%_))))
                      (_%g135308135325%_ _%g135309135328%_)))))
          (_%g135307135370%_ _%stx135306%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135187%_ _%stx135188%_)
        (let* ((_%g135190135218%_
                (lambda (_%g135191135215%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135191135215%_))))
               (_%g135189135302%_
                (lambda (_%g135191135221%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135191135221%_))
                      (let ((_%e135194135223%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135191135221%_))))
                        (let ((_%hd135195135226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135194135223%_)))
                              (_%tl135196135228%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135194135223%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135196135228%_))
                              (let ((_g136021_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135196135228%_
                                        '0))))
                                (begin
                                  (let ((_g136022_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136021_)
                                               (##vector-length _g136021_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136022_ 2)))
                                        (error "Context expects 2 values"
                                               _g136022_)))
                                  (let ((_%target135197135231%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136021_ 0)))
                                        (_%tl135199135233%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136021_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135199135233%_))
                                        (letrec ((_%loop135200135236%_
                                                  (lambda (_%hd135198135239%_
                                                           _%body135204135241%_
                                                           _%hd135205135243%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135198135239%_))
                                                        (let ((_%e135201135246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135198135239%_))))
                  (let ((_%lp-hd135202135249%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135201135246%_)))
                        (_%lp-tl135203135251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135201135246%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135202135249%_))
                        (let ((_%e135208135254%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135202135249%_))))
                          (let ((_%hd135209135257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135208135254%_)))
                                (_%tl135210135259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135208135254%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135210135259%_))
                                (let ((_%e135211135262%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135210135259%_))))
                                  (let ((_%hd135212135265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135211135262%_)))
                                        (_%tl135213135267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135211135262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135213135267%_))
                                        (_%loop135200135236%_
                                         _%lp-tl135203135251%_
                                         (cons _%hd135212135265%_
                                               _%body135204135241%_)
                                         (cons _%hd135209135257%_
                                               _%hd135205135243%_))
                                        (_%g135190135218%_
                                         _%g135191135221%_))))
                                (_%g135190135218%_ _%g135191135221%_))))
                        (_%g135190135218%_ _%g135191135221%_))))
                (let ((_%body135206135270%_ (reverse _%body135204135241%_))
                      (_%hd135207135272%_ (reverse _%hd135205135243%_)))
                  ((lambda (_%L135275%_ _%L135276%_)
                     (for-each
                      (lambda (_%g135290135292%_)
                        (gxc#compile-e__1 _%self135187%_ _%g135290135292%_))
                      (let ((__tmp136023
                             (lambda (_%g135294135297%_ _%g135295135299%_)
                               (cons _%g135294135297%_ _%g135295135299%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136023 '() _%L135275%_))))
                   _%body135206135270%_
                   _%hd135207135272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135200135236%_
                                           _%target135197135231%_
                                           '()
                                           '()))
                                        (_%g135190135218%_
                                         _%g135191135221%_)))))
                              (_%g135190135218%_ _%g135191135221%_))))
                      (_%g135190135218%_ _%g135191135221%_)))))
          (_%g135189135302%_ _%stx135188%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self135040%_ _%stx135041%_)
        (let* ((_%g135043135078%_
                (lambda (_%g135044135075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135044135075%_))))
               (_%g135042135184%_
                (lambda (_%g135044135081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135044135081%_))
                      (let ((_%e135048135083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135044135081%_))))
                        (let ((_%hd135049135086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135048135083%_)))
                              (_%tl135050135088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135048135083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135050135088%_))
                              (let ((_%e135051135091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135050135088%_))))
                                (let ((_%hd135052135094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135051135091%_)))
                                      (_%tl135053135096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135051135091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135052135094%_))
                                      (let ((_g136024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135052135094%_
                                                '0))))
                                        (begin
                                          (let ((_g136025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136024_)
                                                       (##vector-length
                                                        _g136024_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136025_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136025_)))
                                          (let ((_%target135054135099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136024_ 0)))
                                                (_%tl135056135101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136024_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135056135101%_))
                                                (letrec ((_%loop135057135104%_
                                                          (lambda (_%hd135055135107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135061135109%_
                           _%hd135062135111%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135055135107%_))
                        (let ((_%e135058135114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135055135107%_))))
                          (let ((_%lp-hd135059135117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135058135114%_)))
                                (_%lp-tl135060135119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135058135114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135059135117%_))
                                (let ((_%e135068135122%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135059135117%_))))
                                  (let ((_%hd135069135125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135068135122%_)))
                                        (_%tl135070135127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135068135122%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135070135127%_))
                                        (let ((_%e135071135130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135070135127%_))))
                                          (let ((_%hd135072135133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135071135130%_)))
                                                (_%tl135073135135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135071135130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135073135135%_))
                                                (_%loop135057135104%_
                                                 _%lp-tl135060135119%_
                                                 (cons _%hd135072135133%_
                                                       _%expr135061135109%_)
                                                 (cons _%hd135069135125%_
                                                       _%hd135062135111%_))
                                                (_%g135043135078%_
                                                 _%g135044135081%_))))
                                        (_%g135043135078%_
                                         _%g135044135081%_))))
                                (_%g135043135078%_ _%g135044135081%_))))
                        (let ((_%expr135063135138%_
                               (reverse _%expr135061135109%_))
                              (_%hd135064135140%_
                               (reverse _%hd135062135111%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135053135096%_))
                              (let ((_%e135065135143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135053135096%_))))
                                (let ((_%hd135066135146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135065135143%_)))
                                      (_%tl135067135148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135065135143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135067135148%_))
                                      ((lambda (_%L135151%_
                                                _%L135152%_
                                                _%L135153%_)
                                         (for-each
                                          (lambda (_%g135172135174%_)
                                            (gxc#compile-e__1
                                             _%self135040%_
                                             _%g135172135174%_))
                                          (let ((__tmp136027
                                                 (lambda (_%g135176135179%_
                                                          _%g135177135181%_)
                                                   (cons _%g135176135179%_
                                                         _%g135177135181%_)))
                                                (__tmp136026
                                                 (cons _%L135151%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136027
                                             __tmp136026
                                             _%L135152%_))))
                                       _%hd135066135146%_
                                       _%expr135063135138%_
                                       _%hd135064135140%_)
                                      (_%g135043135078%_ _%g135044135081%_))))
                              (_%g135043135078%_ _%g135044135081%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135057135104%_
                                                   _%target135054135099%_
                                                   '()
                                                   '()))
                                                (_%g135043135078%_
                                                 _%g135044135081%_)))))
                                      (_%g135043135078%_ _%g135044135081%_))))
                              (_%g135043135078%_ _%g135044135081%_))))
                      (_%g135043135078%_ _%g135044135081%_)))))
          (_%g135042135184%_ _%stx135041%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self134985%_ _%stx134986%_)
        (let* ((_%g134988135002%_
                (lambda (_%g134989134999%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134989134999%_))))
               (_%g134987135037%_
                (lambda (_%g134989135005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134989135005%_))
                      (let ((_%e134992135007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134989135005%_))))
                        (let ((_%hd134993135010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134992135007%_)))
                              (_%tl134994135012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134992135007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134994135012%_))
                              (let ((_%e134995135015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134994135012%_))))
                                (let ((_%hd134996135018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134995135015%_)))
                                      (_%tl134997135020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134995135015%_))))
                                  ((lambda (_%L135023%_ _%L135024%_)
                                     (gxc#compile-e__1
                                      _%self134985%_
                                      (last _%L135023%_)))
                                   _%tl134997135020%_
                                   _%hd134996135018%_)))
                              (_%g134988135002%_ _%g134989135005%_))))
                      (_%g134988135002%_ _%g134989135005%_)))))
          (_%g134987135037%_ _%stx134986%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self134917%_ _%stx134918%_)
        (let* ((_%g134920134937%_
                (lambda (_%g134921134934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134921134934%_))))
               (_%g134919134982%_
                (lambda (_%g134921134940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134921134940%_))
                      (let ((_%e134924134942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134921134940%_))))
                        (let ((_%hd134925134945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134924134942%_)))
                              (_%tl134926134947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134924134942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134926134947%_))
                              (let ((_%e134927134950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134926134947%_))))
                                (let ((_%hd134928134953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134927134950%_)))
                                      (_%tl134929134955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134927134950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134929134955%_))
                                      (let ((_%e134930134958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134929134955%_))))
                                        (let ((_%hd134931134961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134930134958%_)))
                                              (_%tl134932134963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134930134958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134932134963%_))
                                              ((lambda (_%L134966%_
                                                        _%L134967%_)
                                                 (gxc#compile-e__1
                                                  _%self134917%_
                                                  _%L134966%_))
                                               _%hd134931134961%_
                                               _%hd134928134953%_)
                                              (_%g134920134937%_
                                               _%g134921134940%_))))
                                      (_%g134920134937%_ _%g134921134940%_))))
                              (_%g134920134937%_ _%g134921134940%_))))
                      (_%g134920134937%_ _%g134921134940%_)))))
          (_%g134919134982%_ _%stx134918%_))))
    (define gxc#apply-operands
      (lambda (_%self134830%_ _%stx134831%_)
        (let* ((_%g134833134852%_
                (lambda (_%g134834134849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134834134849%_))))
               (_%g134832134914%_
                (lambda (_%g134834134855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134834134855%_))
                      (let ((_%e134836134857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134834134855%_))))
                        (let ((_%hd134837134860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134836134857%_)))
                              (_%tl134838134862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134836134857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134838134862%_))
                              (let ((_g136028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134838134862%_
                                        '0))))
                                (begin
                                  (let ((_g136029_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136028_)
                                               (##vector-length _g136028_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136029_ 2)))
                                        (error "Context expects 2 values"
                                               _g136029_)))
                                  (let ((_%target134839134865%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136028_ 0)))
                                        (_%tl134841134867%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136028_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134841134867%_))
                                        (letrec ((_%loop134842134870%_
                                                  (lambda (_%hd134840134873%_
                                                           _%rands134846134875%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134840134873%_))
                                                        (let ((_%e134843134878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134840134873%_))))
                  (let ((_%lp-hd134844134881%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134843134878%_)))
                        (_%lp-tl134845134883%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134843134878%_))))
                    (_%loop134842134870%_
                     _%lp-tl134845134883%_
                     (cons _%lp-hd134844134881%_ _%rands134846134875%_))))
                (let ((_%rands134847134886%_ (reverse _%rands134846134875%_)))
                  ((lambda (_%L134889%_)
                     (for-each
                      (lambda (_%g134902134904%_)
                        (gxc#compile-e__1 _%self134830%_ _%g134902134904%_))
                      (let ((__tmp136030
                             (lambda (_%g134906134909%_ _%g134907134911%_)
                               (cons _%g134906134909%_ _%g134907134911%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136030 '() _%L134889%_))))
                   _%rands134847134886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134842134870%_
                                           _%target134839134865%_
                                           '()))
                                        (_%g134833134852%_
                                         _%g134834134855%_)))))
                              (_%g134833134852%_ _%g134834134855%_))))
                      (_%g134833134852%_ _%g134834134855%_)))))
          (_%g134832134914%_ _%stx134831%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx134827%_ _%src-stx134828%_)
        (let ((__tmp136031
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx134828%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx134827%_ __tmp136031))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx134823%_ _%src-stx134824%_ _%ctx134825%_)
        (gxc#compile-e__1
         _%ctx134825%_
         (gxc#xform-wrap-source _%stx134823%_ _%src-stx134824%_))))
    (define gxc#xform-begin%
      (lambda (_%self134778%_ _%stx134779%_)
        (let* ((_%g134781134791%_
                (lambda (_%g134782134788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134782134788%_))))
               (_%g134780134820%_
                (lambda (_%g134782134794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134782134794%_))
                      (let ((_%e134784134796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134782134794%_))))
                        (let ((_%hd134785134799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134784134796%_)))
                              (_%tl134786134801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134784134796%_))))
                          ((lambda (_%L134804%_)
                             (let ((_%forms134818%_
                                    (map (lambda (_%g134813134815%_)
                                           (gxc#compile-e__1
                                            _%self134778%_
                                            _%g134813134815%_))
                                         _%L134804%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms134818%_)
                                _%stx134779%_)))
                           _%tl134786134801%_)))
                      (_%g134781134791%_ _%g134782134794%_)))))
          (_%g134780134820%_ _%stx134779%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self134732%_ _%stx134733%_)
        (let* ((_%g134735134745%_
                (lambda (_%g134736134742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134736134742%_))))
               (_%g134734134775%_
                (lambda (_%g134736134748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134736134748%_))
                      (let ((_%e134738134750%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134736134748%_))))
                        (let ((_%hd134739134753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134738134750%_)))
                              (_%tl134740134755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134738134750%_))))
                          ((lambda (_%L134758%_)
                             (let ((__tmp136034
                                    (lambda ()
                                      (let ((_%forms134773%_
                                             (map (lambda (_%g134768134770%_)
                                                    (gxc#compile-e__1
                                                     _%self134732%_
                                                     _%g134768134770%_))
                                                  _%L134758%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms134773%_)
                                         _%stx134733%_))))
                                   (__tmp136032
                                    (let ((__tmp136033
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp136033 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136034
                                gx#current-expander-phi
                                __tmp136032)))
                           _%tl134740134755%_)))
                      (_%g134735134745%_ _%g134736134748%_)))))
          (_%g134734134775%_ _%stx134733%_))))
    (define gxc#xform-module%
      (lambda (_%self134669%_ _%stx134670%_)
        (let* ((_%g134672134686%_
                (lambda (_%g134673134683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134673134683%_))))
               (_%g134671134729%_
                (lambda (_%g134673134689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134673134689%_))
                      (let ((_%e134676134691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134673134689%_))))
                        (let ((_%hd134677134694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134676134691%_)))
                              (_%tl134678134696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134676134691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134678134696%_))
                              (let ((_%e134679134699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134678134696%_))))
                                (let ((_%hd134680134702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134679134699%_)))
                                      (_%tl134681134704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134679134699%_))))
                                  ((lambda (_%L134707%_ _%L134708%_)
                                     (let* ((_%ctx134721%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134708%_)))
                                            (_%code134723%_
                                             (##structure-ref
                                              _%ctx134721%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code134726%_
                                             (let ((__tmp136035
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self134669%_
                                                       _%code134723%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp136035
                                                gx#current-expander-context
                                                _%ctx134721%_))))
                                       (##structure-set!
                                        _%ctx134721%_
                                        _%code134726%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L134708%_
                                                    (cons _%code134726%_ '())))
                                        _%stx134670%_)))
                                   _%tl134681134704%_
                                   _%hd134680134702%_)))
                              (_%g134672134686%_ _%g134673134689%_))))
                      (_%g134672134686%_ _%g134673134689%_)))))
          (_%g134671134729%_ _%stx134670%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134599%_ _%stx134600%_)
        (let* ((_%g134602134619%_
                (lambda (_%g134603134616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134603134616%_))))
               (_%g134601134666%_
                (lambda (_%g134603134622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134603134622%_))
                      (let ((_%e134606134624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134603134622%_))))
                        (let ((_%hd134607134627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134606134624%_)))
                              (_%tl134608134629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134606134624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134608134629%_))
                              (let ((_%e134609134632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134608134629%_))))
                                (let ((_%hd134610134635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134609134632%_)))
                                      (_%tl134611134637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134609134632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134611134637%_))
                                      (let ((_%e134612134640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134611134637%_))))
                                        (let ((_%hd134613134643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134612134640%_)))
                                              (_%tl134614134645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134612134640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134614134645%_))
                                              ((lambda (_%L134648%_
                                                        _%L134649%_)
                                                 (let ((_%expr134664%_
                                                        (gxc#compile-e__1
                                                         _%self134599%_
                                                         _%L134648%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134649%_
                                                                (cons _%expr134664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134600%_)))
                                               _%hd134613134643%_
                                               _%hd134610134635%_)
                                              (_%g134602134619%_
                                               _%g134603134622%_))))
                                      (_%g134602134619%_ _%g134603134622%_))))
                              (_%g134602134619%_ _%g134603134622%_))))
                      (_%g134602134619%_ _%g134603134622%_)))))
          (_%g134601134666%_ _%stx134600%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134528%_ _%stx134529%_)
        (let* ((_%g134531134548%_
                (lambda (_%g134532134545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134532134545%_))))
               (_%g134530134596%_
                (lambda (_%g134532134551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134532134551%_))
                      (let ((_%e134535134553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134532134551%_))))
                        (let ((_%hd134536134556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134535134553%_)))
                              (_%tl134537134558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134535134553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134537134558%_))
                              (let ((_%e134538134561%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134537134558%_))))
                                (let ((_%hd134539134564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134538134561%_)))
                                      (_%tl134540134566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134538134561%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134540134566%_))
                                      (let ((_%e134541134569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134540134566%_))))
                                        (let ((_%hd134542134572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134541134569%_)))
                                              (_%tl134543134574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134541134569%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134543134574%_))
                                              ((lambda (_%L134577%_
                                                        _%L134578%_)
                                                 (let ((__tmp136038
                                                        (lambda ()
                                                          (let ((_%expr134594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134528%_ _%L134577%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134578%_ (cons _%expr134594%_ '())))
                     _%stx134529%_))))
               (__tmp136036
                (let ((__tmp136037
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136037 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136038
                                                    gx#current-expander-phi
                                                    __tmp136036)))
                                               _%hd134542134572%_
                                               _%hd134539134564%_)
                                              (_%g134531134548%_
                                               _%g134532134551%_))))
                                      (_%g134531134548%_ _%g134532134551%_))))
                              (_%g134531134548%_ _%g134532134551%_))))
                      (_%g134531134548%_ _%g134532134551%_)))))
          (_%g134530134596%_ _%stx134529%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134458%_ _%stx134459%_)
        (let* ((_%g134461134478%_
                (lambda (_%g134462134475%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134462134475%_))))
               (_%g134460134525%_
                (lambda (_%g134462134481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134462134481%_))
                      (let ((_%e134465134483%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134462134481%_))))
                        (let ((_%hd134466134486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134465134483%_)))
                              (_%tl134467134488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134465134483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134467134488%_))
                              (let ((_%e134468134491%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134467134488%_))))
                                (let ((_%hd134469134494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134468134491%_)))
                                      (_%tl134470134496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134468134491%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134470134496%_))
                                      (let ((_%e134471134499%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134470134496%_))))
                                        (let ((_%hd134472134502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134471134499%_)))
                                              (_%tl134473134504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134471134499%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134473134504%_))
                                              ((lambda (_%L134507%_
                                                        _%L134508%_)
                                                 (let ((_%expr134523%_
                                                        (gxc#compile-e__1
                                                         _%self134458%_
                                                         _%L134507%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134508%_
                                                                (cons _%expr134523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134459%_)))
                                               _%hd134472134502%_
                                               _%hd134469134494%_)
                                              (_%g134461134478%_
                                               _%g134462134481%_))))
                                      (_%g134461134478%_ _%g134462134481%_))))
                              (_%g134461134478%_ _%g134462134481%_))))
                      (_%g134461134478%_ _%g134462134481%_)))))
          (_%g134460134525%_ _%stx134459%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134396%_ _%stx134397%_)
        (let* ((_%g134399134413%_
                (lambda (_%g134400134410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134400134410%_))))
               (_%g134398134455%_
                (lambda (_%g134400134416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134400134416%_))
                      (let ((_%e134403134418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134400134416%_))))
                        (let ((_%hd134404134421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134403134418%_)))
                              (_%tl134405134423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134403134418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134405134423%_))
                              (let ((_%e134406134426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134405134423%_))))
                                (let ((_%hd134407134429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134406134426%_)))
                                      (_%tl134408134431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134406134426%_))))
                                  ((lambda (_%L134434%_ _%L134435%_)
                                     (let ((__tmp136040
                                            (lambda ()
                                              (let ((_%body134453%_
                                                     (map (lambda (_%g134448134450%_)
                                                            (gxc#compile-e__1
                                                             _%self134396%_
                                                             _%g134448134450%_))
                                                          _%L134434%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134435%_
                                                             _%body134453%_))
                                                 _%stx134397%_))))
                                           (__tmp136039
                                            (gxc#xform-let-locals
                                             _%L134435%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136040
                                        gxc#current-compile-local-env
                                        __tmp136039)))
                                   _%tl134408134431%_
                                   _%hd134407134429%_)))
                              (_%g134399134413%_ _%g134400134416%_))))
                      (_%g134399134413%_ _%g134400134416%_)))))
          (_%g134398134455%_ _%stx134397%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134304%_ _%stx134305%_)
        (letrec ((_%clause-e134307%_
                  (lambda (_%clause134348%_)
                    (let* ((_%g134350134361%_
                            (lambda (_%g134351134358%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134351134358%_))))
                           (_%g134349134393%_
                            (lambda (_%g134351134364%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134351134364%_))
                                  (let ((_%e134354134366%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134351134364%_))))
                                    (let ((_%hd134355134369%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134354134366%_)))
                                          (_%tl134356134371%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134354134366%_))))
                                      ((lambda (_%L134374%_ _%L134375%_)
                                         (let ((__tmp136042
                                                (lambda ()
                                                  (let ((_%body134391%_
                                                         (map (lambda (_%g134386134388%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134304%_
                         _%g134386134388%_))
                      _%L134374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134375%_
                                                          _%body134391%_))))
                                               (__tmp136041
                                                (gxc#xform-let-locals
                                                 _%L134375%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp136042
                                            gxc#current-compile-local-env
                                            __tmp136041)))
                                       _%tl134356134371%_
                                       _%hd134355134369%_)))
                                  (_%g134350134361%_ _%g134351134364%_)))))
                      (_%g134349134393%_ _%clause134348%_)))))
          (let* ((_%g134309134319%_
                  (lambda (_%g134310134316%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134310134316%_))))
                 (_%g134308134345%_
                  (lambda (_%g134310134322%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134310134322%_))
                        (let ((_%e134312134324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134310134322%_))))
                          (let ((_%hd134313134327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134312134324%_)))
                                (_%tl134314134329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134312134324%_))))
                            ((lambda (_%L134332%_)
                               (let ((_%clauses134343%_
                                      (map _%clause-e134307%_ _%L134332%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134343%_)
                                  _%stx134305%_)))
                             _%tl134314134329%_)))
                        (_%g134309134319%_ _%g134310134322%_)))))
            (_%g134308134345%_ _%stx134305%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134058%_ _%stx134059%_)
        (let* ((_%g134061134094%_
                (lambda (_%g134062134091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134062134091%_))))
               (_%g134060134301%_
                (lambda (_%g134062134097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134062134097%_))
                      (let ((_%e134067134099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134062134097%_))))
                        (let ((_%hd134068134102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134067134099%_)))
                              (_%tl134069134104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134067134099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134069134104%_))
                              (let ((_%e134070134107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134069134104%_))))
                                (let ((_%hd134071134110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134070134107%_)))
                                      (_%tl134072134112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134070134107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134071134110%_))
                                      (let ((_g136043_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134071134110%_
                                                '0))))
                                        (begin
                                          (let ((_g136044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136043_)
                                                       (##vector-length
                                                        _g136043_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136044_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136044_)))
                                          (let ((_%target134073134115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136043_ 0)))
                                                (_%tl134075134117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136043_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134075134117%_))
                                                (letrec ((_%loop134076134120%_
                                                          (lambda (_%hd134074134123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134080134125%_
                           _%hd134081134127%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134074134123%_))
                        (let ((_%e134077134130%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134074134123%_))))
                          (let ((_%lp-hd134078134133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134077134130%_)))
                                (_%lp-tl134079134135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134077134130%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134078134133%_))
                                (let ((_%e134084134138%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134078134133%_))))
                                  (let ((_%hd134085134141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134084134138%_)))
                                        (_%tl134086134143%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134084134138%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134086134143%_))
                                        (let ((_%e134087134146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134086134143%_))))
                                          (let ((_%hd134088134149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134087134146%_)))
                                                (_%tl134089134151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134087134146%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134089134151%_))
                                                (_%loop134076134120%_
                                                 _%lp-tl134079134135%_
                                                 (cons _%hd134088134149%_
                                                       _%expr134080134125%_)
                                                 (cons _%hd134085134141%_
                                                       _%hd134081134127%_))
                                                (_%g134061134094%_
                                                 _%g134062134097%_))))
                                        (_%g134061134094%_
                                         _%g134062134097%_))))
                                (_%g134061134094%_ _%g134062134097%_))))
                        (let ((_%expr134082134154%_
                               (reverse _%expr134080134125%_))
                              (_%hd134083134156%_
                               (reverse _%hd134081134127%_)))
                          ((lambda (_%L134159%_
                                    _%L134160%_
                                    _%L134161%_
                                    _%L134162%_)
                             (let* ((_%g134181134197%_
                                     (lambda (_%g134182134194%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134182134194%_))))
                                    (_%g134180134287%_
                                     (lambda (_%g134182134200%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134182134200%_))
                                           (let ((_g136045_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134182134200%_
                                                     '0))))
                                             (begin
                                               (let ((_g136046_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g136045_)
                                                            (##vector-length
                                                             _g136045_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g136046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g136046_)))
                                               (let ((_%target134184134202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136045_
                                                         0)))
                                                     (_%tl134186134204%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136045_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134186134204%_))
                                                     (letrec ((_%loop134187134207%_
                                                               (lambda (_%hd134185134210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134191134212%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134185134210%_))
                             (let ((_%e134188134215%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134185134210%_))))
                               (let ((_%lp-hd134189134218%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134188134215%_)))
                                     (_%lp-tl134190134220%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134188134215%_))))
                                 (_%loop134187134207%_
                                  _%lp-tl134190134220%_
                                  (cons _%lp-hd134189134218%_
                                        _%expr134191134212%_))))
                             (let ((_%expr134192134223%_
                                    (reverse _%expr134191134212%_)))
                               ((lambda (_%L134226%_)
                                  (let ((__tmp136049
                                         (lambda ()
                                           (let* ((_%g134240134247%_
                                                   (lambda (_%g134241134244%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134241134244%_))))
                                                  (_%g134239134273%_
                                                   (lambda (_%g134241134250%_)
                                                     ((lambda (_%L134252%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134162%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134226%_
                                  _%L134161%_))
                               (let ((__tmp136050
                                      (lambda (_%g134262134266%_
                                               _%g134263134268%_
                                               _%g134264134270%_)
                                        (cons (cons _%g134263134268%_
                                                    (cons _%g134262134266%_
                                                          '()))
                                              _%g134264134270%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136050
                                  '()
                                  _%L134226%_
                                  _%L134161%_)))
                             _%L134252%_))
                 _%stx134059%_))
              _%g134241134250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134239134273%_
                                              (map (lambda (_%g134275134277%_)
                                                     (gxc#compile-e__1
                                                      _%self134058%_
                                                      _%g134275134277%_))
                                                   _%L134159%_)))))
                                        (__tmp136047
                                         (gxc#xform-let-locals
                                          (let ((__tmp136048
                                                 (lambda (_%g134279134282%_
                                                          _%g134280134284%_)
                                                   (cons _%g134279134282%_
                                                         _%g134280134284%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136048
                                             '()
                                             _%L134161%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp136049
                                     gxc#current-compile-local-env
                                     __tmp136047)))
                                _%expr134192134223%_))))))
               (_%loop134187134207%_ _%target134184134202%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134181134197%_
                                                      _%g134182134200%_)))))
                                           (_%g134181134197%_
                                            _%g134182134200%_)))))
                               (_%g134180134287%_
                                (map (lambda (_%g134289134291%_)
                                       (gxc#compile-e__1
                                        _%self134058%_
                                        _%g134289134291%_))
                                     (let ((__tmp136051
                                            (lambda (_%g134293134296%_
                                                     _%g134294134298%_)
                                              (cons _%g134293134296%_
                                                    _%g134294134298%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136051
                                        '()
                                        _%L134160%_))))))
                           _%tl134072134112%_
                           _%expr134082134154%_
                           _%hd134083134156%_
                           _%hd134068134102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134076134120%_
                                                   _%target134073134115%_
                                                   '()
                                                   '()))
                                                (_%g134061134094%_
                                                 _%g134062134097%_)))))
                                      (_%g134061134094%_ _%g134062134097%_))))
                              (_%g134061134094%_ _%g134062134097%_))))
                      (_%g134061134094%_ _%g134062134097%_)))))
          (_%g134060134301%_ _%stx134059%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self133812%_ _%stx133813%_)
        (let* ((_%g133815133848%_
                (lambda (_%g133816133845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133816133845%_))))
               (_%g133814134055%_
                (lambda (_%g133816133851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133816133851%_))
                      (let ((_%e133821133853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133816133851%_))))
                        (let ((_%hd133822133856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133821133853%_)))
                              (_%tl133823133858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133821133853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133823133858%_))
                              (let ((_%e133824133861%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133823133858%_))))
                                (let ((_%hd133825133864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133824133861%_)))
                                      (_%tl133826133866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133824133861%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133825133864%_))
                                      (let ((_g136052_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133825133864%_
                                                '0))))
                                        (begin
                                          (let ((_g136053_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136052_)
                                                       (##vector-length
                                                        _g136052_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136053_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136053_)))
                                          (let ((_%target133827133869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136052_ 0)))
                                                (_%tl133829133871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136052_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133829133871%_))
                                                (letrec ((_%loop133830133874%_
                                                          (lambda (_%hd133828133877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133834133879%_
                           _%hd133835133881%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133828133877%_))
                        (let ((_%e133831133884%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133828133877%_))))
                          (let ((_%lp-hd133832133887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133831133884%_)))
                                (_%lp-tl133833133889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133831133884%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133832133887%_))
                                (let ((_%e133838133892%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133832133887%_))))
                                  (let ((_%hd133839133895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133838133892%_)))
                                        (_%tl133840133897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133838133892%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133840133897%_))
                                        (let ((_%e133841133900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133840133897%_))))
                                          (let ((_%hd133842133903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133841133900%_)))
                                                (_%tl133843133905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133841133900%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133843133905%_))
                                                (_%loop133830133874%_
                                                 _%lp-tl133833133889%_
                                                 (cons _%hd133842133903%_
                                                       _%expr133834133879%_)
                                                 (cons _%hd133839133895%_
                                                       _%hd133835133881%_))
                                                (_%g133815133848%_
                                                 _%g133816133851%_))))
                                        (_%g133815133848%_
                                         _%g133816133851%_))))
                                (_%g133815133848%_ _%g133816133851%_))))
                        (let ((_%expr133836133908%_
                               (reverse _%expr133834133879%_))
                              (_%hd133837133910%_
                               (reverse _%hd133835133881%_)))
                          ((lambda (_%L133913%_
                                    _%L133914%_
                                    _%L133915%_
                                    _%L133916%_)
                             (let ((__tmp136056
                                    (lambda ()
                                      (let* ((_%g133936133952%_
                                              (lambda (_%g133937133949%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g133937133949%_))))
                                             (_%g133935134034%_
                                              (lambda (_%g133937133955%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g133937133955%_))
                                                    (let ((_g136057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g133937133955%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136058_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g136057_)
                             (##vector-length _g136057_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136058_ 2)))
                      (error "Context expects 2 values" _g136058_)))
                (let ((_%target133939133957%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136057_ 0)))
                      (_%tl133941133959%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136057_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl133941133959%_))
                      (letrec ((_%loop133942133962%_
                                (lambda (_%hd133940133965%_
                                         _%expr133946133967%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd133940133965%_))
                                      (let ((_%e133943133970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd133940133965%_))))
                                        (let ((_%lp-hd133944133973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133943133970%_)))
                                              (_%lp-tl133945133975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133943133970%_))))
                                          (_%loop133942133962%_
                                           _%lp-tl133945133975%_
                                           (cons _%lp-hd133944133973%_
                                                 _%expr133946133967%_))))
                                      (let ((_%expr133947133978%_
                                             (reverse _%expr133946133967%_)))
                                        ((lambda (_%L133981%_)
                                           (let* ((_%g133995134002%_
                                                   (lambda (_%g133996133999%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133996133999%_))))
                                                  (_%g133994134027%_
                                                   (lambda (_%g133996134005%_)
                                                     ((lambda (_%L134007%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133916%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133981%_
                                  _%L133915%_))
                               (let ((__tmp136059
                                      (lambda (_%g134016134020%_
                                               _%g134017134022%_
                                               _%g134018134024%_)
                                        (cons (cons _%g134017134022%_
                                                    (cons _%g134016134020%_
                                                          '()))
                                              _%g134018134024%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136059
                                  '()
                                  _%L133981%_
                                  _%L133915%_)))
                             _%L134007%_))
                 _%stx133813%_))
              _%g133996134005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133994134027%_
                                              (map (lambda (_%g134029134031%_)
                                                     (gxc#compile-e__1
                                                      _%self133812%_
                                                      _%g134029134031%_))
                                                   _%L133913%_))))
                                         _%expr133947133978%_))))))
                        (_%loop133942133962%_ _%target133939133957%_ '()))
                      (_%g133936133952%_ _%g133937133955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133936133952%_
                                                     _%g133937133955%_)))))
                                        (_%g133935134034%_
                                         (map (lambda (_%g134036134038%_)
                                                (gxc#compile-e__1
                                                 _%self133812%_
                                                 _%g134036134038%_))
                                              (let ((__tmp136060
                                                     (lambda (_%g134040134043%_
                                                              _%g134041134045%_)
                                                       (cons _%g134040134043%_
                                                             _%g134041134045%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136060
                                                 '()
                                                 _%L133914%_)))))))
                                   (__tmp136054
                                    (gxc#xform-let-locals
                                     (let ((__tmp136055
                                            (lambda (_%g134047134050%_
                                                     _%g134048134052%_)
                                              (cons _%g134047134050%_
                                                    _%g134048134052%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136055
                                        '()
                                        _%L133915%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136056
                                gxc#current-compile-local-env
                                __tmp136054)))
                           _%tl133826133866%_
                           _%expr133836133908%_
                           _%hd133837133910%_
                           _%hd133822133856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133830133874%_
                                                   _%target133827133869%_
                                                   '()
                                                   '()))
                                                (_%g133815133848%_
                                                 _%g133816133851%_)))))
                                      (_%g133815133848%_ _%g133816133851%_))))
                              (_%g133815133848%_ _%g133816133851%_))))
                      (_%g133815133848%_ _%g133816133851%_)))))
          (_%g133814134055%_ _%stx133813%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings133679%_)
        (letrec ((_%flatten133681%_
                  (lambda (_%maybe-lst133739%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst133739%_))
                        (cons _%maybe-lst133739%_ '())
                        (let _%loop133741%_ ((_%rest133743%_
                                              _%maybe-lst133739%_)
                                             (_%result133744%_ '()))
                          (let* ((_%__stx135948135949%_ _%rest133743%_)
                                 (_%g133748133760%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx135948135949%_)))))
                            (let ((_%__kont135950135951%_
                                   (lambda (_%L133798%_ _%L133799%_)
                                     (_%loop133741%_
                                      _%L133798%_
                                      (let ((__tmp136061
                                             (_%flatten133681%_ _%L133799%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result133744%_
                                         __tmp136061)))))
                                  (_%__kont135952135953%_
                                   (lambda (_%L133772%_)
                                     (cons _%L133772%_ _%result133744%_)))
                                  (_%__kont135954135955%_
                                   (lambda () _%result133744%_)))
                              (let ((_%g133746133785%_
                                     (lambda ()
                                       (let ((_%L133772%_
                                              _%__stx135948135949%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L133772%_))
                                             (_%__kont135952135953%_
                                              _%L133772%_)
                                             (_%__kont135954135955%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx135948135949%_))
                                    (let ((_%e133752133790%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx135948135949%_))))
                                      (let ((_%tl133754133795%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133752133790%_)))
                                            (_%hd133753133793%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133752133790%_))))
                                        (_%__kont135950135951%_
                                         _%tl133754133795%_
                                         _%hd133753133793%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g133746133785%_)))))))))))
          (let _%loop133683%_ ((_%rest133685%_
                                (_%flatten133681%_ _%bindings133679%_))
                               (_%locals133686%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest133687133698%_ _%rest133685%_)
                   (_%E133691133702%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest133687133698%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K133694133727%_
                     (lambda (_%rest133724%_ _%id133725%_)
                       (_%loop133683%_
                        _%rest133724%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id133725%_))
                              _%locals133686%_))))
                    (_%K133693133716%_
                     (lambda (_%id133714%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id133714%_))
                             _%locals133686%_)))
                    (_%K133692133707%_ (lambda () _%locals133686%_)))
                (let ((_%try-match133689133721%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest133687133698%_))
                             (let ((_%id133719%_ _%rest133687133698%_))
                               (_%K133693133716%_ _%id133719%_))
                             (_%K133692133707%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest133687133698%_))
                      (let ((_%tl133696133732%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest133687133698%_)))
                            (_%hd133695133730%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest133687133698%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd133695133730%_))
                            (let ((_%id133735%_ _%hd133695133730%_)
                                  (_%rest133737%_ _%tl133696133732%_))
                              (_%K133694133727%_ _%rest133737%_ _%id133735%_))
                            (_%K133692133707%_)))
                      (_%try-match133689133721%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133631%_ _%stx133632%_)
        (let* ((_%g133634133645%_
                (lambda (_%g133635133642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133635133642%_))))
               (_%g133633133676%_
                (lambda (_%g133635133648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133635133648%_))
                      (let ((_%e133638133650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133635133648%_))))
                        (let ((_%hd133639133653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133638133650%_)))
                              (_%tl133640133655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133638133650%_))))
                          ((lambda (_%L133658%_ _%L133659%_)
                             (let ((_%rands133674%_
                                    (map (lambda (_%g133669133671%_)
                                           (gxc#compile-e__1
                                            _%self133631%_
                                            _%g133669133671%_))
                                         _%L133658%_)))
                               (gxc#xform-wrap-source
                                (cons _%L133659%_ _%rands133674%_)
                                _%stx133632%_)))
                           _%tl133640133655%_
                           _%hd133639133653%_)))
                      (_%g133634133645%_ _%g133635133648%_)))))
          (_%g133633133676%_ _%stx133632%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133561%_ _%stx133562%_)
        (let* ((_%g133564133581%_
                (lambda (_%g133565133578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133565133578%_))))
               (_%g133563133628%_
                (lambda (_%g133565133584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133565133584%_))
                      (let ((_%e133568133586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133565133584%_))))
                        (let ((_%hd133569133589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133568133586%_)))
                              (_%tl133570133591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133568133586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133570133591%_))
                              (let ((_%e133571133594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133570133591%_))))
                                (let ((_%hd133572133597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133571133594%_)))
                                      (_%tl133573133599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133571133594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133573133599%_))
                                      (let ((_%e133574133602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133573133599%_))))
                                        (let ((_%hd133575133605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133574133602%_)))
                                              (_%tl133576133607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133574133602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133576133607%_))
                                              ((lambda (_%L133610%_
                                                        _%L133611%_)
                                                 (let ((_%expr133626%_
                                                        (gxc#compile-e__1
                                                         _%self133561%_
                                                         _%L133610%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133611%_
                                                                (cons _%expr133626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133562%_)))
                                               _%hd133575133605%_
                                               _%hd133572133597%_)
                                              (_%g133564133581%_
                                               _%g133565133584%_))))
                                      (_%g133564133581%_ _%g133565133584%_))))
                              (_%g133564133581%_ _%g133565133584%_))))
                      (_%g133564133581%_ _%g133565133584%_)))))
          (_%g133563133628%_ _%stx133562%_))))))
