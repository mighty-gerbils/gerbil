(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712093477)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133837%_)
        (let* ((_%self133839%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133841%_
                (let ((__tmp134019
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133837%_))))
                  (declare (not safe))
                  (method-ref _%self133839%_ __tmp134019))))
          (if _%$e133841%_
              ((lambda (_%method133844%_)
                 (declare (not safe))
                 (_%method133844%_ _%self133839%_ _%stx133837%_))
               _%$e133841%_)
              (let ()
                (let ((__tmp134021
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133837%_)))
                      (__tmp134020
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133837%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133839%_
                         __tmp134021
                         __tmp134020)))))))
    (define gxc#compile-e__1
      (lambda (_%self133848%_ _%stx133849%_)
        (let ((_%$e133851%_
               (let ((__tmp134022
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx133849%_))))
                 (declare (not safe))
                 (method-ref _%self133848%_ __tmp134022))))
          (if _%$e133851%_
              ((lambda (_%method133854%_)
                 (declare (not safe))
                 (_%method133854%_ _%self133848%_ _%stx133849%_))
               _%$e133851%_)
              (let ()
                (let ((__tmp134024
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133849%_)))
                      (__tmp134023
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133849%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133848%_
                         __tmp134024
                         __tmp134023)))))))
    (define gxc#compile-e
      (lambda _g134026_
        (let ((_g134025_ (let () (declare (not safe)) (##length _g134026_))))
          (cond ((let () (declare (not safe)) (##fx= _g134025_ 1))
                 (apply (lambda (_%stx133837%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx133837%_)))
                        _g134026_))
                ((let () (declare (not safe)) (##fx= _g134025_ 2))
                 (apply (lambda (_%self133848%_ _%stx133849%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133848%_ _%stx133849%_)))
                        _g134026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134026_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133835%_)
        (let ((__tmp134027
               (car (let () (declare (not safe)) (gx#stx-e _%stx133835%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134027))))
    (define gxc#void-method (lambda (_%self133832%_ _%stx133833%_) '#!void))
    (define gxc#false-method (lambda (_%self133829%_ _%stx133830%_) '#f))
    (define gxc#true-method (lambda (_%self133826%_ _%stx133827%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133823%_ _%stx133824%_) _%stx133824%_))
    (define gxc#::void-expression::t
      (let ((__tmp134028 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134028
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133820%_
        (apply make-instance gxc#::void-expression::t _%$args133820%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134029
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
        (__make-promise __tmp134029)))
    (define gxc#::void-special-form::t
      (let ((__tmp134030 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134030
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133816%_
        (apply make-instance gxc#::void-special-form::t _%$args133816%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134031
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
        (__make-promise __tmp134031)))
    (define gxc#::void::t
      (let ((__tmp134032
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp134032 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133812%_
        (apply make-instance gxc#::void::t _%$args133812%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134033
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134033)))
    (define gxc#::false-expression::t
      (let ((__tmp134034 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134034
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133808%_
        (apply make-instance gxc#::false-expression::t _%$args133808%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134035
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
        (__make-promise __tmp134035)))
    (define gxc#::false-special-form::t
      (let ((__tmp134036 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134036
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133804%_
        (apply make-instance gxc#::false-special-form::t _%$args133804%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134037
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
        (__make-promise __tmp134037)))
    (define gxc#::false::t
      (let ((__tmp134038
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp134038 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133800%_
        (apply make-instance gxc#::false::t _%$args133800%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134039
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134039)))
    (define gxc#::identity-expression::t
      (let ((__tmp134040 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134040
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133796%_
        (apply make-instance gxc#::identity-expression::t _%$args133796%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134041
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
        (__make-promise __tmp134041)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134042 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134042
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133792%_
        (apply make-instance gxc#::identity-special-form::t _%$args133792%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134043
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
        (__make-promise __tmp134043)))
    (define gxc#::identity::t
      (let ((__tmp134044
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134044
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133788%_
        (apply make-instance gxc#::identity::t _%$args133788%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134045
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134045)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134046 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134046
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133784%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133784%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134047
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
        (__make-promise __tmp134047)))
    (define gxc#::basic-xform::t
      (let ((__tmp134048
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134048
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133780%_
        (apply make-instance gxc#::basic-xform::t _%$args133780%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134049
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
        (__make-promise __tmp134049)))
    (define gxc#apply-begin%
      (lambda (_%self133736%_ _%stx133737%_)
        (let* ((_%g133739133749%_
                (lambda (_%g133740133746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133740133746%_))))
               (_%g133738133776%_
                (lambda (_%g133740133752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133740133752%_))
                      (let ((_%e133744133754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133740133752%_))))
                        (let ((_%hd133743133757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133744133754%_)))
                              (_%tl133742133759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133744133754%_))))
                          ((lambda (_%L133762%_)
                             (for-each
                              (lambda (_%g133771133773%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self133736%_
                                   _%g133771133773%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133762%_))))
                           _%tl133742133759%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133739133749%_ _%g133740133752%_))))))
          (declare (not safe))
          (_%g133738133776%_ _%stx133737%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133697%_ _%stx133698%_)
        (let* ((_%g133700133710%_
                (lambda (_%g133701133707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133701133707%_))))
               (_%g133699133733%_
                (lambda (_%g133701133713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133701133713%_))
                      (let ((_%e133705133715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133701133713%_))))
                        (let ((_%hd133704133718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133705133715%_)))
                              (_%tl133703133720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133705133715%_))))
                          ((lambda (_%L133723%_)
                             (let ((__tmp134050 (last _%L133723%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self133697%_ __tmp134050)))
                           _%tl133703133720%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133700133710%_ _%g133701133713%_))))))
          (declare (not safe))
          (_%g133699133733%_ _%stx133698%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133693%_ _%stx133694%_)
        (let ((__tmp134053
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self133693%_ _%stx133694%_))))
              (__tmp134051
               (let ((__tmp134052
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134052 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134053
           gx#current-expander-phi
           __tmp134051))))
    (define gxc#apply-module%
      (lambda (_%self133632%_ _%stx133633%_)
        (let* ((_%g133635133649%_
                (lambda (_%g133636133646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133636133646%_))))
               (_%g133634133690%_
                (lambda (_%g133636133652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133636133652%_))
                      (let ((_%e133641133654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133636133652%_))))
                        (let ((_%hd133640133657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133641133654%_)))
                              (_%tl133639133659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133641133654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133639133659%_))
                              (let ((_%e133644133662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133639133659%_))))
                                (let ((_%hd133643133665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133644133662%_)))
                                      (_%tl133642133667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133644133662%_))))
                                  ((lambda (_%L133670%_ _%L133671%_)
                                     (let* ((_%ctx133684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133671%_)))
                                            (_%ctx-stx133686%_
                                             (##structure-ref
                                              _%ctx133684%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp134054
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self133632%_
                                                   _%ctx-stx133686%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp134054
                                          gx#current-expander-context
                                          _%ctx133684%_))))
                                   _%tl133642133667%_
                                   _%hd133643133665%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133635133649%_ _%g133636133652%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133635133649%_ _%g133636133652%_))))))
          (declare (not safe))
          (_%g133634133690%_ _%stx133633%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133564%_ _%stx133565%_)
        (let* ((_%g133567133584%_
                (lambda (_%g133568133581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133568133581%_))))
               (_%g133566133629%_
                (lambda (_%g133568133587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133568133587%_))
                      (let ((_%e133573133589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133568133587%_))))
                        (let ((_%hd133572133592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133573133589%_)))
                              (_%tl133571133594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133573133589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133571133594%_))
                              (let ((_%e133576133597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133571133594%_))))
                                (let ((_%hd133575133600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133576133597%_)))
                                      (_%tl133574133602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133576133597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133574133602%_))
                                      (let ((_%e133579133605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133574133602%_))))
                                        (let ((_%hd133578133608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133579133605%_)))
                                              (_%tl133577133610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133579133605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133577133610%_))
                                              ((lambda (_%L133613%_
                                                        _%L133614%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133564%_
                                                    _%L133613%_)))
                                               _%hd133578133608%_
                                               _%hd133575133600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133567133584%_
                                                 _%g133568133587%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133567133584%_
                                         _%g133568133587%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133567133584%_ _%g133568133587%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133567133584%_ _%g133568133587%_))))))
          (declare (not safe))
          (_%g133566133629%_ _%stx133565%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133496%_ _%stx133497%_)
        (let* ((_%g133499133516%_
                (lambda (_%g133500133513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133500133513%_))))
               (_%g133498133561%_
                (lambda (_%g133500133519%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133500133519%_))
                      (let ((_%e133505133521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133500133519%_))))
                        (let ((_%hd133504133524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133505133521%_)))
                              (_%tl133503133526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133505133521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133503133526%_))
                              (let ((_%e133508133529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133503133526%_))))
                                (let ((_%hd133507133532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133508133529%_)))
                                      (_%tl133506133534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133508133529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133506133534%_))
                                      (let ((_%e133511133537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133506133534%_))))
                                        (let ((_%hd133510133540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133511133537%_)))
                                              (_%tl133509133542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133511133537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133509133542%_))
                                              ((lambda (_%L133545%_
                                                        _%L133546%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133496%_
                                                    _%L133545%_)))
                                               _%hd133510133540%_
                                               _%hd133507133532%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133499133516%_
                                                 _%g133500133519%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133499133516%_
                                         _%g133500133519%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133499133516%_ _%g133500133519%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133499133516%_ _%g133500133519%_))))))
          (declare (not safe))
          (_%g133498133561%_ _%stx133497%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133427%_ _%stx133428%_)
        (let* ((_%g133430133447%_
                (lambda (_%g133431133444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133431133444%_))))
               (_%g133429133493%_
                (lambda (_%g133431133450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133431133450%_))
                      (let ((_%e133436133452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133431133450%_))))
                        (let ((_%hd133435133455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133436133452%_)))
                              (_%tl133434133457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133436133452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133434133457%_))
                              (let ((_%e133439133460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133434133457%_))))
                                (let ((_%hd133438133463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133439133460%_)))
                                      (_%tl133437133465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133439133460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133437133465%_))
                                      (let ((_%e133442133468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133437133465%_))))
                                        (let ((_%hd133441133471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133442133468%_)))
                                              (_%tl133440133473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133442133468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133440133473%_))
                                              ((lambda (_%L133476%_
                                                        _%L133477%_)
                                                 (let ((__tmp134057
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133427%_
                                                             _%L133476%_))))
                                                       (__tmp134055
                                                        (let ((__tmp134056
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134056 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134057
                                                    gx#current-expander-phi
                                                    __tmp134055)))
                                               _%hd133441133471%_
                                               _%hd133438133463%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133430133447%_
                                                 _%g133431133450%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133430133447%_
                                         _%g133431133450%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133430133447%_ _%g133431133450%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133430133447%_ _%g133431133450%_))))))
          (declare (not safe))
          (_%g133429133493%_ _%stx133428%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133359%_ _%stx133360%_)
        (let* ((_%g133362133379%_
                (lambda (_%g133363133376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133363133376%_))))
               (_%g133361133424%_
                (lambda (_%g133363133382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133363133382%_))
                      (let ((_%e133368133384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133363133382%_))))
                        (let ((_%hd133367133387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133368133384%_)))
                              (_%tl133366133389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133368133384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133366133389%_))
                              (let ((_%e133371133392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133366133389%_))))
                                (let ((_%hd133370133395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133371133392%_)))
                                      (_%tl133369133397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133371133392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133369133397%_))
                                      (let ((_%e133374133400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133369133397%_))))
                                        (let ((_%hd133373133403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133374133400%_)))
                                              (_%tl133372133405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133374133400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133372133405%_))
                                              ((lambda (_%L133408%_
                                                        _%L133409%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133359%_
                                                    _%L133408%_)))
                                               _%hd133373133403%_
                                               _%hd133370133395%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133362133379%_
                                                 _%g133363133382%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133362133379%_
                                         _%g133363133382%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133362133379%_ _%g133363133382%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133362133379%_ _%g133363133382%_))))))
          (declare (not safe))
          (_%g133361133424%_ _%stx133360%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133241%_ _%stx133242%_)
        (let* ((_%g133244133272%_
                (lambda (_%g133245133269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133245133269%_))))
               (_%g133243133356%_
                (lambda (_%g133245133275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133245133275%_))
                      (let ((_%e133250133277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133245133275%_))))
                        (let ((_%hd133249133280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133250133277%_)))
                              (_%tl133248133282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133250133277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133248133282%_))
                              (let ((_g134058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133248133282%_
                                        '0))))
                                (begin
                                  (let ((_g134059_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134058_)
                                               (##vector-length _g134058_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134059_ 2)))
                                        (error "Context expects 2 values"
                                               _g134059_)))
                                  (let ((_%target133251133285%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134058_ 0)))
                                        (_%tl133253133287%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134058_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133253133287%_))
                                        (letrec ((_%loop133254133290%_
                                                  (lambda (_%hd133252133293%_
                                                           _%body133258133295%_
                                                           _%hd133259133297%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133252133293%_))
                                                        (let ((_%e133255133300%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133252133293%_))))
                  (let ((_%lp-hd133256133303%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133255133300%_)))
                        (_%lp-tl133257133305%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133255133300%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133256133303%_))
                        (let ((_%e133264133308%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133256133303%_))))
                          (let ((_%hd133263133311%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133264133308%_)))
                                (_%tl133262133313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133264133308%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133262133313%_))
                                (let ((_%e133267133316%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133262133313%_))))
                                  (let ((_%hd133266133319%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133267133316%_)))
                                        (_%tl133265133321%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133267133316%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133265133321%_))
                                        (let ((__tmp134061
                                               (cons _%hd133266133319%_
                                                     _%body133258133295%_))
                                              (__tmp134060
                                               (cons _%hd133263133311%_
                                                     _%hd133259133297%_)))
                                          (declare (not safe))
                                          (_%loop133254133290%_
                                           _%lp-tl133257133305%_
                                           __tmp134061
                                           __tmp134060))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133244133272%_
                                           _%g133245133275%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133244133272%_ _%g133245133275%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133244133272%_ _%g133245133275%_)))))
                (let ((_%body133260133324%_ (reverse _%body133258133295%_))
                      (_%hd133261133326%_ (reverse _%hd133259133297%_)))
                  ((lambda (_%L133329%_ _%L133330%_)
                     (for-each
                      (lambda (_%g133344133346%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133241%_ _%g133344133346%_)))
                      (let ((__tmp134062
                             (lambda (_%g133348133351%_ _%g133349133353%_)
                               (cons _%g133348133351%_ _%g133349133353%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134062 '() _%L133329%_))))
                   _%body133260133324%_
                   _%hd133261133326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133254133290%_
                                             _%target133251133285%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133244133272%_
                                           _%g133245133275%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133244133272%_ _%g133245133275%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133244133272%_ _%g133245133275%_))))))
          (declare (not safe))
          (_%g133243133356%_ _%stx133242%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133094%_ _%stx133095%_)
        (let* ((_%g133097133132%_
                (lambda (_%g133098133129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133098133129%_))))
               (_%g133096133238%_
                (lambda (_%g133098133135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133098133135%_))
                      (let ((_%e133104133137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133098133135%_))))
                        (let ((_%hd133103133140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133104133137%_)))
                              (_%tl133102133142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133104133137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133102133142%_))
                              (let ((_%e133107133145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133102133142%_))))
                                (let ((_%hd133106133148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133107133145%_)))
                                      (_%tl133105133150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133107133145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133106133148%_))
                                      (let ((_g134063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133106133148%_
                                                '0))))
                                        (begin
                                          (let ((_g134064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134063_)
                                                       (##vector-length
                                                        _g134063_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134064_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134064_)))
                                          (let ((_%target133108133153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134063_ 0)))
                                                (_%tl133110133155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134063_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133110133155%_))
                                                (letrec ((_%loop133111133158%_
                                                          (lambda (_%hd133109133161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133115133163%_
                           _%hd133116133165%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133109133161%_))
                        (let ((_%e133112133168%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133109133161%_))))
                          (let ((_%lp-hd133113133171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133112133168%_)))
                                (_%lp-tl133114133173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133112133168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133113133171%_))
                                (let ((_%e133121133176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133113133171%_))))
                                  (let ((_%hd133120133179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133121133176%_)))
                                        (_%tl133119133181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133121133176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133119133181%_))
                                        (let ((_%e133124133184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133119133181%_))))
                                          (let ((_%hd133123133187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133124133184%_)))
                                                (_%tl133122133189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133124133184%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133122133189%_))
                                                (let ((__tmp134066
                                                       (cons _%hd133123133187%_
                                                             _%expr133115133163%_))
                                                      (__tmp134065
                                                       (cons _%hd133120133179%_
                                                             _%hd133116133165%_)))
                                                  (declare (not safe))
                                                  (_%loop133111133158%_
                                                   _%lp-tl133114133173%_
                                                   __tmp134066
                                                   __tmp134065))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133097133132%_
                                                   _%g133098133135%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133097133132%_
                                           _%g133098133135%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133097133132%_ _%g133098133135%_)))))
                        (let ((_%expr133117133192%_
                               (reverse _%expr133115133163%_))
                              (_%hd133118133194%_
                               (reverse _%hd133116133165%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133105133150%_))
                              (let ((_%e133127133197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133105133150%_))))
                                (let ((_%hd133126133200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133127133197%_)))
                                      (_%tl133125133202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133127133197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133125133202%_))
                                      ((lambda (_%L133205%_
                                                _%L133206%_
                                                _%L133207%_)
                                         (for-each
                                          (lambda (_%g133226133228%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133094%_
                                               _%g133226133228%_)))
                                          (let ((__tmp134068
                                                 (lambda (_%g133230133233%_
                                                          _%g133231133235%_)
                                                   (cons _%g133230133233%_
                                                         _%g133231133235%_)))
                                                (__tmp134067
                                                 (cons _%L133205%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134068
                                             __tmp134067
                                             _%L133206%_))))
                                       _%hd133126133200%_
                                       _%expr133117133192%_
                                       _%hd133118133194%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133097133132%_
                                         _%g133098133135%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133097133132%_ _%g133098133135%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133111133158%_
                                                     _%target133108133153%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133097133132%_
                                                   _%g133098133135%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133097133132%_
                                         _%g133098133135%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133097133132%_ _%g133098133135%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133097133132%_ _%g133098133135%_))))))
          (declare (not safe))
          (_%g133096133238%_ _%stx133095%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133039%_ _%stx133040%_)
        (let* ((_%g133042133056%_
                (lambda (_%g133043133053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133043133053%_))))
               (_%g133041133091%_
                (lambda (_%g133043133059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133043133059%_))
                      (let ((_%e133048133061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133043133059%_))))
                        (let ((_%hd133047133064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133048133061%_)))
                              (_%tl133046133066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133048133061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133046133066%_))
                              (let ((_%e133051133069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133046133066%_))))
                                (let ((_%hd133050133072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133051133069%_)))
                                      (_%tl133049133074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133051133069%_))))
                                  ((lambda (_%L133077%_ _%L133078%_)
                                     (let ((__tmp134069 (last _%L133077%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133039%_
                                        __tmp134069)))
                                   _%tl133049133074%_
                                   _%hd133050133072%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133042133056%_ _%g133043133059%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133042133056%_ _%g133043133059%_))))))
          (declare (not safe))
          (_%g133041133091%_ _%stx133040%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132971%_ _%stx132972%_)
        (let* ((_%g132974132991%_
                (lambda (_%g132975132988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132975132988%_))))
               (_%g132973133036%_
                (lambda (_%g132975132994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132975132994%_))
                      (let ((_%e132980132996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132975132994%_))))
                        (let ((_%hd132979132999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132980132996%_)))
                              (_%tl132978133001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132980132996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132978133001%_))
                              (let ((_%e132983133004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132978133001%_))))
                                (let ((_%hd132982133007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132983133004%_)))
                                      (_%tl132981133009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132983133004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132981133009%_))
                                      (let ((_%e132986133012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132981133009%_))))
                                        (let ((_%hd132985133015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132986133012%_)))
                                              (_%tl132984133017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132986133012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132984133017%_))
                                              ((lambda (_%L133020%_
                                                        _%L133021%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self132971%_
                                                    _%L133020%_)))
                                               _%hd132985133015%_
                                               _%hd132982133007%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132974132991%_
                                                 _%g132975132994%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132974132991%_
                                         _%g132975132994%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132974132991%_ _%g132975132994%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132974132991%_ _%g132975132994%_))))))
          (declare (not safe))
          (_%g132973133036%_ _%stx132972%_))))
    (define gxc#apply-operands
      (lambda (_%self132884%_ _%stx132885%_)
        (let* ((_%g132887132906%_
                (lambda (_%g132888132903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132888132903%_))))
               (_%g132886132968%_
                (lambda (_%g132888132909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132888132909%_))
                      (let ((_%e132892132911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132888132909%_))))
                        (let ((_%hd132891132914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132892132911%_)))
                              (_%tl132890132916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132892132911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132890132916%_))
                              (let ((_g134070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132890132916%_
                                        '0))))
                                (begin
                                  (let ((_g134071_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134070_)
                                               (##vector-length _g134070_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134071_ 2)))
                                        (error "Context expects 2 values"
                                               _g134071_)))
                                  (let ((_%target132893132919%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134070_ 0)))
                                        (_%tl132895132921%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134070_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132895132921%_))
                                        (letrec ((_%loop132896132924%_
                                                  (lambda (_%hd132894132927%_
                                                           _%rands132900132929%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132894132927%_))
                                                        (let ((_%e132897132932%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132894132927%_))))
                  (let ((_%lp-hd132898132935%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132897132932%_)))
                        (_%lp-tl132899132937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132897132932%_))))
                    (let ((__tmp134072
                           (cons _%lp-hd132898132935%_ _%rands132900132929%_)))
                      (declare (not safe))
                      (_%loop132896132924%_
                       _%lp-tl132899132937%_
                       __tmp134072))))
                (let ((_%rands132901132940%_ (reverse _%rands132900132929%_)))
                  ((lambda (_%L132943%_)
                     (for-each
                      (lambda (_%g132956132958%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132884%_ _%g132956132958%_)))
                      (let ((__tmp134073
                             (lambda (_%g132960132963%_ _%g132961132965%_)
                               (cons _%g132960132963%_ _%g132961132965%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134073 '() _%L132943%_))))
                   _%rands132901132940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop132896132924%_
                                             _%target132893132919%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132887132906%_
                                           _%g132888132909%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g132887132906%_ _%g132888132909%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132887132906%_ _%g132888132909%_))))))
          (declare (not safe))
          (_%g132886132968%_ _%stx132885%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132881%_ _%src-stx132882%_)
        (let ((__tmp134074
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132882%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132881%_ __tmp134074))))
    (define gxc#xform-begin%
      (lambda (_%self132836%_ _%stx132837%_)
        (let* ((_%g132839132849%_
                (lambda (_%g132840132846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132840132846%_))))
               (_%g132838132878%_
                (lambda (_%g132840132852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132840132852%_))
                      (let ((_%e132844132854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132840132852%_))))
                        (let ((_%hd132843132857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132844132854%_)))
                              (_%tl132842132859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132844132854%_))))
                          ((lambda (_%L132862%_)
                             (let* ((_%forms132876%_
                                     (map (lambda (_%g132871132873%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132836%_
                                               _%g132871132873%_)))
                                          _%L132862%_))
                                    (__tmp134075
                                     (cons '%#begin _%forms132876%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134075
                                _%stx132837%_)))
                           _%tl132842132859%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132839132849%_ _%g132840132852%_))))))
          (declare (not safe))
          (_%g132838132878%_ _%stx132837%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132790%_ _%stx132791%_)
        (let* ((_%g132793132803%_
                (lambda (_%g132794132800%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132794132800%_))))
               (_%g132792132833%_
                (lambda (_%g132794132806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132794132806%_))
                      (let ((_%e132798132808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132794132806%_))))
                        (let ((_%hd132797132811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132798132808%_)))
                              (_%tl132796132813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132798132808%_))))
                          ((lambda (_%L132816%_)
                             (let ((__tmp134078
                                    (lambda ()
                                      (let* ((_%forms132831%_
                                              (map (lambda (_%g132826132828%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132790%_
                                                        _%g132826132828%_)))
                                                   _%L132816%_))
                                             (__tmp134079
                                              (cons '%#begin-syntax
                                                    _%forms132831%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134079
                                         _%stx132791%_))))
                                   (__tmp134076
                                    (let ((__tmp134077
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134077 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134078
                                gx#current-expander-phi
                                __tmp134076)))
                           _%tl132796132813%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132793132803%_ _%g132794132806%_))))))
          (declare (not safe))
          (_%g132792132833%_ _%stx132791%_))))
    (define gxc#xform-module%
      (lambda (_%self132727%_ _%stx132728%_)
        (let* ((_%g132730132744%_
                (lambda (_%g132731132741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132731132741%_))))
               (_%g132729132787%_
                (lambda (_%g132731132747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132731132747%_))
                      (let ((_%e132736132749%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132731132747%_))))
                        (let ((_%hd132735132752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132736132749%_)))
                              (_%tl132734132754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132736132749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132734132754%_))
                              (let ((_%e132739132757%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132734132754%_))))
                                (let ((_%hd132738132760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132739132757%_)))
                                      (_%tl132737132762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132739132757%_))))
                                  ((lambda (_%L132765%_ _%L132766%_)
                                     (let* ((_%ctx132779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132766%_)))
                                            (_%code132781%_
                                             (##structure-ref
                                              _%ctx132779%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132784%_
                                             (let ((__tmp134080
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self132727%_
                                                         _%code132781%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134080
                                                gx#current-expander-context
                                                _%ctx132779%_))))
                                       (##structure-set!
                                        _%ctx132779%_
                                        _%code132784%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134081
                                              (cons '%#module
                                                    (cons _%L132766%_
                                                          (cons _%code132784%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134081
                                          _%stx132728%_))))
                                   _%tl132737132762%_
                                   _%hd132738132760%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132730132744%_ _%g132731132747%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132730132744%_ _%g132731132747%_))))))
          (declare (not safe))
          (_%g132729132787%_ _%stx132728%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132657%_ _%stx132658%_)
        (let* ((_%g132660132677%_
                (lambda (_%g132661132674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132661132674%_))))
               (_%g132659132724%_
                (lambda (_%g132661132680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132661132680%_))
                      (let ((_%e132666132682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132661132680%_))))
                        (let ((_%hd132665132685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132666132682%_)))
                              (_%tl132664132687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132666132682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132664132687%_))
                              (let ((_%e132669132690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132664132687%_))))
                                (let ((_%hd132668132693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132669132690%_)))
                                      (_%tl132667132695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132669132690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132667132695%_))
                                      (let ((_%e132672132698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132667132695%_))))
                                        (let ((_%hd132671132701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132672132698%_)))
                                              (_%tl132670132703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132672132698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132670132703%_))
                                              ((lambda (_%L132706%_
                                                        _%L132707%_)
                                                 (let* ((_%expr132722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132657%_
                                                            _%L132706%_)))
                                                        (__tmp134082
                                                         (cons '%#define-values
                                                               (cons _%L132707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132722%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134082
                                                    _%stx132658%_)))
                                               _%hd132671132701%_
                                               _%hd132668132693%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132660132677%_
                                                 _%g132661132680%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132660132677%_
                                         _%g132661132680%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132660132677%_ _%g132661132680%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132660132677%_ _%g132661132680%_))))))
          (declare (not safe))
          (_%g132659132724%_ _%stx132658%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132586%_ _%stx132587%_)
        (let* ((_%g132589132606%_
                (lambda (_%g132590132603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132590132603%_))))
               (_%g132588132654%_
                (lambda (_%g132590132609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132590132609%_))
                      (let ((_%e132595132611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132590132609%_))))
                        (let ((_%hd132594132614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132595132611%_)))
                              (_%tl132593132616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132595132611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132593132616%_))
                              (let ((_%e132598132619%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132593132616%_))))
                                (let ((_%hd132597132622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132598132619%_)))
                                      (_%tl132596132624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132598132619%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132596132624%_))
                                      (let ((_%e132601132627%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132596132624%_))))
                                        (let ((_%hd132600132630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132601132627%_)))
                                              (_%tl132599132632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132601132627%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132599132632%_))
                                              ((lambda (_%L132635%_
                                                        _%L132636%_)
                                                 (let ((__tmp134085
                                                        (lambda ()
                                                          (let* ((_%expr132652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self132586%_ _%L132635%_)))
                         (__tmp134086
                          (cons '%#define-syntax
                                (cons _%L132636%_ (cons _%expr132652%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134086 _%stx132587%_))))
               (__tmp134083
                (let ((__tmp134084
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134084 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134085
                                                    gx#current-expander-phi
                                                    __tmp134083)))
                                               _%hd132600132630%_
                                               _%hd132597132622%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132589132606%_
                                                 _%g132590132609%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132589132606%_
                                         _%g132590132609%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132589132606%_ _%g132590132609%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132589132606%_ _%g132590132609%_))))))
          (declare (not safe))
          (_%g132588132654%_ _%stx132587%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132516%_ _%stx132517%_)
        (let* ((_%g132519132536%_
                (lambda (_%g132520132533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132520132533%_))))
               (_%g132518132583%_
                (lambda (_%g132520132539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132520132539%_))
                      (let ((_%e132525132541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132520132539%_))))
                        (let ((_%hd132524132544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132525132541%_)))
                              (_%tl132523132546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132525132541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132523132546%_))
                              (let ((_%e132528132549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132523132546%_))))
                                (let ((_%hd132527132552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132528132549%_)))
                                      (_%tl132526132554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132528132549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132526132554%_))
                                      (let ((_%e132531132557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132526132554%_))))
                                        (let ((_%hd132530132560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132531132557%_)))
                                              (_%tl132529132562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132531132557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132529132562%_))
                                              ((lambda (_%L132565%_
                                                        _%L132566%_)
                                                 (let* ((_%expr132581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132516%_
                                                            _%L132565%_)))
                                                        (__tmp134087
                                                         (cons '%#begin-annotation
                                                               (cons _%L132566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132581%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134087
                                                    _%stx132517%_)))
                                               _%hd132530132560%_
                                               _%hd132527132552%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132519132536%_
                                                 _%g132520132539%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132519132536%_
                                         _%g132520132539%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132519132536%_ _%g132520132539%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132519132536%_ _%g132520132539%_))))))
          (declare (not safe))
          (_%g132518132583%_ _%stx132517%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132454%_ _%stx132455%_)
        (let* ((_%g132457132471%_
                (lambda (_%g132458132468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132458132468%_))))
               (_%g132456132513%_
                (lambda (_%g132458132474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132458132474%_))
                      (let ((_%e132463132476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132458132474%_))))
                        (let ((_%hd132462132479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132463132476%_)))
                              (_%tl132461132481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132463132476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132461132481%_))
                              (let ((_%e132466132484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132461132481%_))))
                                (let ((_%hd132465132487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132466132484%_)))
                                      (_%tl132464132489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132466132484%_))))
                                  ((lambda (_%L132492%_ _%L132493%_)
                                     (let ((__tmp134090
                                            (lambda ()
                                              (let* ((_%body132511%_
                                                      (map (lambda (_%g132506132508%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132454%_ _%g132506132508%_)))
                   _%L132492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134091
                                                      (cons '%#lambda
                                                            (cons _%L132493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134091
                                                 _%stx132455%_))))
                                           (__tmp134088
                                            (let ((__tmp134089
                                                   (cons _%L132493%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134089))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134090
                                        gxc#current-compile-local-env
                                        __tmp134088)))
                                   _%tl132464132489%_
                                   _%hd132465132487%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132457132471%_ _%g132458132474%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132457132471%_ _%g132458132474%_))))))
          (declare (not safe))
          (_%g132456132513%_ _%stx132455%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132362%_ _%stx132363%_)
        (letrec ((_%clause-e132365%_
                  (lambda (_%clause132406%_)
                    (let* ((_%g132408132419%_
                            (lambda (_%g132409132416%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132409132416%_))))
                           (_%g132407132451%_
                            (lambda (_%g132409132422%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132409132422%_))
                                  (let ((_%e132414132424%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132409132422%_))))
                                    (let ((_%hd132413132427%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132414132424%_)))
                                          (_%tl132412132429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132414132424%_))))
                                      ((lambda (_%L132432%_ _%L132433%_)
                                         (let ((__tmp134094
                                                (lambda ()
                                                  (let ((_%body132449%_
                                                         (map (lambda (_%g132444132446%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132362%_ _%g132444132446%_)))
                      _%L132432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132433%_
                                                          _%body132449%_))))
                                               (__tmp134092
                                                (let ((__tmp134093
                                                       (cons _%L132433%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134093))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134094
                                            gxc#current-compile-local-env
                                            __tmp134092)))
                                       _%tl132412132429%_
                                       _%hd132413132427%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132408132419%_ _%g132409132422%_))))))
                      (declare (not safe))
                      (_%g132407132451%_ _%clause132406%_)))))
          (let* ((_%g132367132377%_
                  (lambda (_%g132368132374%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132368132374%_))))
                 (_%g132366132403%_
                  (lambda (_%g132368132380%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132368132380%_))
                        (let ((_%e132372132382%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132368132380%_))))
                          (let ((_%hd132371132385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132372132382%_)))
                                (_%tl132370132387%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132372132382%_))))
                            ((lambda (_%L132390%_)
                               (let* ((_%clauses132401%_
                                       (map _%clause-e132365%_ _%L132390%_))
                                      (__tmp134095
                                       (cons '%#case-lambda
                                             _%clauses132401%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134095
                                  _%stx132363%_)))
                             _%tl132370132387%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132367132377%_ _%g132368132380%_))))))
            (declare (not safe))
            (_%g132366132403%_ _%stx132363%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132116%_ _%stx132117%_)
        (let* ((_%g132119132152%_
                (lambda (_%g132120132149%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132120132149%_))))
               (_%g132118132359%_
                (lambda (_%g132120132155%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132120132155%_))
                      (let ((_%e132127132157%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132120132155%_))))
                        (let ((_%hd132126132160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132127132157%_)))
                              (_%tl132125132162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132127132157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132125132162%_))
                              (let ((_%e132130132165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132125132162%_))))
                                (let ((_%hd132129132168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132130132165%_)))
                                      (_%tl132128132170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132130132165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132129132168%_))
                                      (let ((_g134096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132129132168%_
                                                '0))))
                                        (begin
                                          (let ((_g134097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134096_)
                                                       (##vector-length
                                                        _g134096_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134097_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134097_)))
                                          (let ((_%target132131132173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134096_ 0)))
                                                (_%tl132133132175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134096_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132133132175%_))
                                                (letrec ((_%loop132134132178%_
                                                          (lambda (_%hd132132132181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132138132183%_
                           _%hd132139132185%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132132132181%_))
                        (let ((_%e132135132188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132132132181%_))))
                          (let ((_%lp-hd132136132191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132135132188%_)))
                                (_%lp-tl132137132193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132135132188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132136132191%_))
                                (let ((_%e132144132196%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132136132191%_))))
                                  (let ((_%hd132143132199%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132144132196%_)))
                                        (_%tl132142132201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132144132196%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132142132201%_))
                                        (let ((_%e132147132204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132142132201%_))))
                                          (let ((_%hd132146132207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132147132204%_)))
                                                (_%tl132145132209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132147132204%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132145132209%_))
                                                (let ((__tmp134099
                                                       (cons _%hd132146132207%_
                                                             _%expr132138132183%_))
                                                      (__tmp134098
                                                       (cons _%hd132143132199%_
                                                             _%hd132139132185%_)))
                                                  (declare (not safe))
                                                  (_%loop132134132178%_
                                                   _%lp-tl132137132193%_
                                                   __tmp134099
                                                   __tmp134098))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132119132152%_
                                                   _%g132120132155%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132119132152%_
                                           _%g132120132155%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132119132152%_ _%g132120132155%_)))))
                        (let ((_%expr132140132212%_
                               (reverse _%expr132138132183%_))
                              (_%hd132141132214%_
                               (reverse _%hd132139132185%_)))
                          ((lambda (_%L132217%_
                                    _%L132218%_
                                    _%L132219%_
                                    _%L132220%_)
                             (let* ((_%g132239132255%_
                                     (lambda (_%g132240132252%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132240132252%_))))
                                    (_%g132238132345%_
                                     (lambda (_%g132240132258%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132240132258%_))
                                           (let ((_g134100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132240132258%_
                                                     '0))))
                                             (begin
                                               (let ((_g134101_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134100_)
                                                            (##vector-length
                                                             _g134100_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134101_)))
                                               (let ((_%target132242132260%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134100_
                                                         0)))
                                                     (_%tl132244132262%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134100_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132244132262%_))
                                                     (letrec ((_%loop132245132265%_
                                                               (lambda (_%hd132243132268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132249132270%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132243132268%_))
                             (let ((_%e132246132273%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132243132268%_))))
                               (let ((_%lp-hd132247132276%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132246132273%_)))
                                     (_%lp-tl132248132278%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132246132273%_))))
                                 (let ((__tmp134102
                                        (cons _%lp-hd132247132276%_
                                              _%expr132249132270%_)))
                                   (declare (not safe))
                                   (_%loop132245132265%_
                                    _%lp-tl132248132278%_
                                    __tmp134102))))
                             (let ((_%expr132250132281%_
                                    (reverse _%expr132249132270%_)))
                               ((lambda (_%L132284%_)
                                  (let ()
                                    (let ((__tmp134106
                                           (lambda ()
                                             (let* ((_%g132298132305%_
                                                     (lambda (_%g132299132302%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132299132302%_))))
                                                    (_%g132297132331%_
                                                     (lambda (_%g132299132308%_)
                                                       ((lambda (_%L132310%_)
                                                          (let ()
                                                            (let ((__tmp134107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L132220%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L132284%_
                                            _%L132219%_))
                                         (let ((__tmp134108
                                                (lambda (_%g132320132324%_
                                                         _%g132321132326%_
                                                         _%g132322132328%_)
                                                  (cons (cons _%g132321132326%_
                                                              (cons _%g132320132324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132322132328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134108
                                            '()
                                            _%L132284%_
                                            _%L132219%_)))
                                       _%L132310%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134107 _%stx132117%_))))
                _%g132299132308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134109
                                                     (map (lambda (_%g132333132335%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132116%_
                                                               _%g132333132335%_)))
                                                          _%L132217%_)))
                                               (declare (not safe))
                                               (_%g132297132331%_
                                                __tmp134109))))
                                          (__tmp134103
                                           (let ((__tmp134104
                                                  (let ((__tmp134105
                                                         (lambda (_%g132337132340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g132338132342%_)
                   (cons _%g132337132340%_ _%g132338132342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp134105
                                                     '()
                                                     _%L132219%_))))
                                             (declare (not safe))
                                             (gxc#xform-let-locals
                                              __tmp134104))))
                                      (declare (not safe))
                                      (__call-with-parameters
                                       __tmp134106
                                       gxc#current-compile-local-env
                                       __tmp134103))))
                                _%expr132250132281%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132245132265%_ _%target132242132260%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132239132255%_
                                                        _%g132240132258%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132239132255%_
                                              _%g132240132258%_)))))
                                    (__tmp134110
                                     (map (lambda (_%g132347132349%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132116%_
                                               _%g132347132349%_)))
                                          (let ((__tmp134111
                                                 (lambda (_%g132351132354%_
                                                          _%g132352132356%_)
                                                   (cons _%g132351132354%_
                                                         _%g132352132356%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134111
                                             '()
                                             _%L132218%_)))))
                               (declare (not safe))
                               (_%g132238132345%_ __tmp134110)))
                           _%tl132128132170%_
                           _%expr132140132212%_
                           _%hd132141132214%_
                           _%hd132126132160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132134132178%_
                                                     _%target132131132173%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132119132152%_
                                                   _%g132120132155%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132119132152%_
                                         _%g132120132155%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132119132152%_ _%g132120132155%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132119132152%_ _%g132120132155%_))))))
          (declare (not safe))
          (_%g132118132359%_ _%stx132117%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131870%_ _%stx131871%_)
        (let* ((_%g131873131906%_
                (lambda (_%g131874131903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131874131903%_))))
               (_%g131872132113%_
                (lambda (_%g131874131909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131874131909%_))
                      (let ((_%e131881131911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131874131909%_))))
                        (let ((_%hd131880131914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131881131911%_)))
                              (_%tl131879131916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131881131911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131879131916%_))
                              (let ((_%e131884131919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131879131916%_))))
                                (let ((_%hd131883131922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131884131919%_)))
                                      (_%tl131882131924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131884131919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131883131922%_))
                                      (let ((_g134112_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131883131922%_
                                                '0))))
                                        (begin
                                          (let ((_g134113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134112_)
                                                       (##vector-length
                                                        _g134112_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134113_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134113_)))
                                          (let ((_%target131885131927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134112_ 0)))
                                                (_%tl131887131929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134112_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131887131929%_))
                                                (letrec ((_%loop131888131932%_
                                                          (lambda (_%hd131886131935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131892131937%_
                           _%hd131893131939%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131886131935%_))
                        (let ((_%e131889131942%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131886131935%_))))
                          (let ((_%lp-hd131890131945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131889131942%_)))
                                (_%lp-tl131891131947%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131889131942%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131890131945%_))
                                (let ((_%e131898131950%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131890131945%_))))
                                  (let ((_%hd131897131953%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131898131950%_)))
                                        (_%tl131896131955%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131898131950%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131896131955%_))
                                        (let ((_%e131901131958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131896131955%_))))
                                          (let ((_%hd131900131961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131901131958%_)))
                                                (_%tl131899131963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131901131958%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131899131963%_))
                                                (let ((__tmp134115
                                                       (cons _%hd131900131961%_
                                                             _%expr131892131937%_))
                                                      (__tmp134114
                                                       (cons _%hd131897131953%_
                                                             _%hd131893131939%_)))
                                                  (declare (not safe))
                                                  (_%loop131888131932%_
                                                   _%lp-tl131891131947%_
                                                   __tmp134115
                                                   __tmp134114))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131873131906%_
                                                   _%g131874131909%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131873131906%_
                                           _%g131874131909%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131873131906%_ _%g131874131909%_)))))
                        (let ((_%expr131894131966%_
                               (reverse _%expr131892131937%_))
                              (_%hd131895131968%_
                               (reverse _%hd131893131939%_)))
                          ((lambda (_%L131971%_
                                    _%L131972%_
                                    _%L131973%_
                                    _%L131974%_)
                             (let ((__tmp134119
                                    (lambda ()
                                      (let* ((_%g131994132010%_
                                              (lambda (_%g131995132007%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131995132007%_))))
                                             (_%g131993132092%_
                                              (lambda (_%g131995132013%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131995132013%_))
                                                    (let ((_g134120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131995132013%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134121_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134120_)
                             (##vector-length _g134120_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134121_ 2)))
                      (error "Context expects 2 values" _g134121_)))
                (let ((_%target131997132015%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134120_ 0)))
                      (_%tl131999132017%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134120_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131999132017%_))
                      (letrec ((_%loop132000132020%_
                                (lambda (_%hd131998132023%_
                                         _%expr132004132025%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131998132023%_))
                                      (let ((_%e132001132028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131998132023%_))))
                                        (let ((_%lp-hd132002132031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132001132028%_)))
                                              (_%lp-tl132003132033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132001132028%_))))
                                          (let ((__tmp134122
                                                 (cons _%lp-hd132002132031%_
                                                       _%expr132004132025%_)))
                                            (declare (not safe))
                                            (_%loop132000132020%_
                                             _%lp-tl132003132033%_
                                             __tmp134122))))
                                      (let ((_%expr132005132036%_
                                             (reverse _%expr132004132025%_)))
                                        ((lambda (_%L132039%_)
                                           (let ()
                                             (let* ((_%g132053132060%_
                                                     (lambda (_%g132054132057%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132054132057%_))))
                                                    (_%g132052132085%_
                                                     (lambda (_%g132054132063%_)
                                                       ((lambda (_%L132065%_)
                                                          (let ()
                                                            (let ((__tmp134123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L131974%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L132039%_
                                            _%L131973%_))
                                         (let ((__tmp134124
                                                (lambda (_%g132074132078%_
                                                         _%g132075132080%_
                                                         _%g132076132082%_)
                                                  (cons (cons _%g132075132080%_
                                                              (cons _%g132074132078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132076132082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134124
                                            '()
                                            _%L132039%_
                                            _%L131973%_)))
                                       _%L132065%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134123 _%stx131871%_))))
                _%g132054132063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134125
                                                     (map (lambda (_%g132087132089%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131870%_
                                                               _%g132087132089%_)))
                                                          _%L131971%_)))
                                               (declare (not safe))
                                               (_%g132052132085%_
                                                __tmp134125))))
                                         _%expr132005132036%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132000132020%_ _%target131997132015%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g131994132010%_ _%g131995132013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g131994132010%_
                                                       _%g131995132013%_)))))
                                             (__tmp134126
                                              (map (lambda (_%g132094132096%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self131870%_
                                                        _%g132094132096%_)))
                                                   (let ((__tmp134127
                                                          (lambda (_%g132098132101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132099132103%_)
                    (cons _%g132098132101%_ _%g132099132103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134127
                                                      '()
                                                      _%L131972%_)))))
                                        (declare (not safe))
                                        (_%g131993132092%_ __tmp134126))))
                                   (__tmp134116
                                    (let ((__tmp134117
                                           (let ((__tmp134118
                                                  (lambda (_%g132105132108%_
                                                           _%g132106132110%_)
                                                    (cons _%g132105132108%_
                                                          _%g132106132110%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134118
                                              '()
                                              _%L131973%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134117))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134119
                                gxc#current-compile-local-env
                                __tmp134116)))
                           _%tl131882131924%_
                           _%expr131894131966%_
                           _%hd131895131968%_
                           _%hd131880131914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131888131932%_
                                                     _%target131885131927%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131873131906%_
                                                   _%g131874131909%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131873131906%_
                                         _%g131874131909%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131873131906%_ _%g131874131909%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131873131906%_ _%g131874131909%_))))))
          (declare (not safe))
          (_%g131872132113%_ _%stx131871%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131774%_)
        (let _%loop131776%_ ((_%rest131778%_ _%bindings131774%_)
                             (_%locals131779%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131780131788%_ _%rest131778%_)
                 (_%else131782131796%_ (lambda () _%locals131779%_))
                 (_%K131784131858%_
                  (lambda (_%rest131799%_ _%bind131800%_)
                    (let _%loop-bind131802%_ ((_%bind131804%_ _%bind131800%_)
                                              (_%locals131805%_
                                               _%locals131779%_))
                      (let* ((_%bind131806131817%_ _%bind131804%_)
                             (_%E131810131821%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131806131817%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131813131846%_
                               (lambda (_%bind-rest131843%_ _%id131844%_)
                                 (let ((__tmp134128
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131844%_))
                                              _%locals131805%_)))
                                   (declare (not safe))
                                   (_%loop-bind131802%_
                                    _%bind-rest131843%_
                                    __tmp134128))))
                              (_%K131812131835%_
                               (lambda (_%id131833%_)
                                 (let ((__tmp134129
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131833%_))
                                              _%locals131805%_)))
                                   (declare (not safe))
                                   (_%loop131776%_
                                    _%rest131799%_
                                    __tmp134129))))
                              (_%K131811131826%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop131776%_
                                    _%rest131799%_
                                    _%locals131805%_)))))
                          (let ((_%try-match131808131840%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131806131817%_))
                                       (let ((_%id131838%_
                                              _%bind131806131817%_))
                                         (declare (not safe))
                                         (_%K131812131835%_ _%id131838%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K131811131826%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131806131817%_))
                                (let ((_%tl131815131851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131806131817%_)))
                                      (_%hd131814131849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131806131817%_))))
                                  (let ((_%id131854%_ _%hd131814131849%_)
                                        (_%bind-rest131856%_
                                         _%tl131815131851%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K131813131846%_
                                       _%bind-rest131856%_
                                       _%id131854%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match131808131840%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131780131788%_))
                (let ((_%hd131785131861%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131780131788%_)))
                      (_%tl131786131863%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131780131788%_))))
                  (let* ((_%bind131866%_ _%hd131785131861%_)
                         (_%rest131868%_ _%tl131786131863%_))
                    (declare (not safe))
                    (_%K131784131858%_ _%rest131868%_ _%bind131866%_)))
                (let () (declare (not safe)) (_%else131782131796%_)))))))
    (define gxc#xform-operands
      (lambda (_%self131726%_ _%stx131727%_)
        (let* ((_%g131729131740%_
                (lambda (_%g131730131737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131730131737%_))))
               (_%g131728131771%_
                (lambda (_%g131730131743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131730131743%_))
                      (let ((_%e131735131745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131730131743%_))))
                        (let ((_%hd131734131748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131735131745%_)))
                              (_%tl131733131750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131735131745%_))))
                          ((lambda (_%L131753%_ _%L131754%_)
                             (let* ((_%rands131769%_
                                     (map (lambda (_%g131764131766%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131726%_
                                               _%g131764131766%_)))
                                          _%L131753%_))
                                    (__tmp134130
                                     (cons _%L131754%_ _%rands131769%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134130
                                _%stx131727%_)))
                           _%tl131733131750%_
                           _%hd131734131748%_)))
                      (let ()
                        (declare (not safe))
                        (_%g131729131740%_ _%g131730131743%_))))))
          (declare (not safe))
          (_%g131728131771%_ _%stx131727%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131656%_ _%stx131657%_)
        (let* ((_%g131659131676%_
                (lambda (_%g131660131673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131660131673%_))))
               (_%g131658131723%_
                (lambda (_%g131660131679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131660131679%_))
                      (let ((_%e131665131681%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131660131679%_))))
                        (let ((_%hd131664131684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131665131681%_)))
                              (_%tl131663131686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131665131681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131663131686%_))
                              (let ((_%e131668131689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131663131686%_))))
                                (let ((_%hd131667131692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131668131689%_)))
                                      (_%tl131666131694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131668131689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131666131694%_))
                                      (let ((_%e131671131697%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131666131694%_))))
                                        (let ((_%hd131670131700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131671131697%_)))
                                              (_%tl131669131702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131671131697%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131669131702%_))
                                              ((lambda (_%L131705%_
                                                        _%L131706%_)
                                                 (let* ((_%expr131721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self131656%_
                                                            _%L131705%_)))
                                                        (__tmp134131
                                                         (cons '%#set!
                                                               (cons _%L131706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr131721%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134131
                                                    _%stx131657%_)))
                                               _%hd131670131700%_
                                               _%hd131667131692%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g131659131676%_
                                                 _%g131660131679%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131659131676%_
                                         _%g131660131679%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131659131676%_ _%g131660131679%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131659131676%_ _%g131660131679%_))))))
          (declare (not safe))
          (_%g131658131723%_ _%stx131657%_))))))
