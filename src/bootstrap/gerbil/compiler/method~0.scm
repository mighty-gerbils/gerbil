(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771178565)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx194967%_)
        (let* ((_%self194969%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e194971%_
                (let ((__tmp195189 (gxc#stx-car-e _%stx194967%_)))
                  (declare (not safe))
                  (method-ref _%self194969%_ __tmp195189))))
          (if _%$e194971%_
              ((lambda (_%method194974%_)
                 (declare (not safe))
                 (let ((_%$e194977%_ (gx#stx-source _%stx194967%_)))
                   (if _%$e194977%_
                       ((lambda (_%source194980%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194974%_ _%self194969%_ _%stx194967%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194980%_ '()))
                                 (let ((_%$e194984%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194984%_ _%$e194984%_ '())))))
                        _%$e194977%_)
                       (_%method194974%_ _%self194969%_ _%stx194967%_))))
               _%$e194971%_)
              (let ((__tmp195191 (gxc#stx-car-e _%stx194967%_))
                    (__tmp195190
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194967%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194969%_
                       __tmp195191
                       __tmp195190))))))
    (define gxc#compile-e__1
      (lambda (_%self194989%_ _%stx194990%_)
        (let ((_%$e194992%_
               (let ((__tmp195192 (gxc#stx-car-e _%stx194990%_)))
                 (declare (not safe))
                 (method-ref _%self194989%_ __tmp195192))))
          (if _%$e194992%_
              ((lambda (_%method194995%_)
                 (declare (not safe))
                 (let ((_%$e194998%_ (gx#stx-source _%stx194990%_)))
                   (if _%$e194998%_
                       ((lambda (_%source195001%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194995%_ _%self194989%_ _%stx194990%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195001%_ '()))
                                 (let ((_%$e195005%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195005%_ _%$e195005%_ '())))))
                        _%$e194998%_)
                       (_%method194995%_ _%self194989%_ _%stx194990%_))))
               _%$e194992%_)
              (let ((__tmp195194 (gxc#stx-car-e _%stx194990%_))
                    (__tmp195193
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194990%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194989%_
                       __tmp195194
                       __tmp195193))))))
    (define gxc#compile-e
      (lambda _g195195_
        (let ((_g195196_ (let () (declare (not safe)) (##length _g195195_))))
          (cond ((let () (declare (not safe)) (##fx= _g195196_ 1))
                 (apply gxc#compile-e__0 _g195195_))
                ((let () (declare (not safe)) (##fx= _g195196_ 2))
                 (apply gxc#compile-e__1 _g195195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g195195_))))))
    (define gxc#stx-car-e
      (lambda (_%stx194965%_)
        (let ((__tmp195197
               (car (let () (declare (not safe)) (gx#stx-e _%stx194965%_)))))
          (declare (not safe))
          (gx#stx-e __tmp195197))))
    (define gxc#void-method (lambda (_%self194962%_ _%stx194963%_) '#!void))
    (define gxc#false-method (lambda (_%self194959%_ _%stx194960%_) '#f))
    (define gxc#true-method (lambda (_%self194956%_ _%stx194957%_) '#t))
    (define gxc#identity-method
      (lambda (_%self194953%_ _%stx194954%_) _%stx194954%_))
    (define gxc#::void-expression::t
      (let ((__tmp195198 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp195198
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args194950%_
        (apply make-instance gxc#::void-expression::t _%$args194950%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp195199
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
        (__make-atomic-promise __tmp195199)))
    (define gxc#::void-special-form::t
      (let ((__tmp195200 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp195200
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args194946%_
        (apply make-instance gxc#::void-special-form::t _%$args194946%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp195201
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
        (__make-atomic-promise __tmp195201)))
    (define gxc#::void::t
      (let ((__tmp195202
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp195202 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args194942%_
        (apply make-instance gxc#::void::t _%$args194942%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp195203
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195203)))
    (define gxc#::false-expression::t
      (let ((__tmp195204 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp195204
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args194938%_
        (apply make-instance gxc#::false-expression::t _%$args194938%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp195205
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
        (__make-atomic-promise __tmp195205)))
    (define gxc#::false-special-form::t
      (let ((__tmp195206 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp195206
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args194934%_
        (apply make-instance gxc#::false-special-form::t _%$args194934%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp195207
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
        (__make-atomic-promise __tmp195207)))
    (define gxc#::false::t
      (let ((__tmp195208
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp195208 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args194930%_
        (apply make-instance gxc#::false::t _%$args194930%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp195209
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195209)))
    (define gxc#::identity-expression::t
      (let ((__tmp195210 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp195210
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args194926%_
        (apply make-instance gxc#::identity-expression::t _%$args194926%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp195211
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
        (__make-atomic-promise __tmp195211)))
    (define gxc#::identity-special-form::t
      (let ((__tmp195212 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp195212
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args194922%_
        (apply make-instance gxc#::identity-special-form::t _%$args194922%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp195213
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
        (__make-atomic-promise __tmp195213)))
    (define gxc#::identity::t
      (let ((__tmp195214
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp195214
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args194918%_
        (apply make-instance gxc#::identity::t _%$args194918%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp195215
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195215)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp195216 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp195216
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args194914%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args194914%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp195217
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
        (__make-atomic-promise __tmp195217)))
    (define gxc#::basic-xform::t
      (let ((__tmp195218
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp195218
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args194910%_
        (apply make-instance gxc#::basic-xform::t _%$args194910%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp195219
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
        (__make-atomic-promise __tmp195219)))
    (define gxc#apply-begin%
      (lambda (_%self194866%_ _%stx194867%_)
        (let* ((_%g194869194879%_
                (lambda (_%g194870194876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194870194876%_))))
               (_%g194868194906%_
                (lambda (_%g194870194882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194870194882%_))
                      (let ((_%e194872194884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194870194882%_))))
                        (let ((_%hd194873194887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194872194884%_)))
                              (_%tl194874194889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194872194884%_))))
                          ((lambda (_%g194871194892%_)
                             (for-each
                              (lambda (_%g194901194903%_)
                                (gxc#compile-e__1
                                 _%self194866%_
                                 _%g194901194903%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g194871194892%_))))
                           _%tl194874194889%_)))
                      (_%g194869194879%_ _%g194870194882%_)))))
          (_%g194868194906%_ _%stx194867%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self194827%_ _%stx194828%_)
        (let* ((_%g194830194840%_
                (lambda (_%g194831194837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194831194837%_))))
               (_%g194829194863%_
                (lambda (_%g194831194843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194831194843%_))
                      (let ((_%e194833194845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194831194843%_))))
                        (let ((_%hd194834194848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194833194845%_)))
                              (_%tl194835194850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194833194845%_))))
                          ((lambda (_%g194832194853%_)
                             (gxc#compile-e__1
                              _%self194827%_
                              (last _%g194832194853%_)))
                           _%tl194835194850%_)))
                      (_%g194830194840%_ _%g194831194843%_)))))
          (_%g194829194863%_ _%stx194828%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self194823%_ _%stx194824%_)
        (let ((__tmp195222
               (lambda () (gxc#apply-begin% _%self194823%_ _%stx194824%_)))
              (__tmp195220
               (let ((__tmp195221
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp195221 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195222
           gx#current-expander-phi
           __tmp195220))))
    (define gxc#apply-module%
      (lambda (_%self194762%_ _%stx194763%_)
        (let* ((_%g194765194779%_
                (lambda (_%g194766194776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194766194776%_))))
               (_%g194764194820%_
                (lambda (_%g194766194782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194766194782%_))
                      (let ((_%e194769194784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194766194782%_))))
                        (let ((_%hd194770194787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194769194784%_)))
                              (_%tl194771194789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194769194784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194771194789%_))
                              (let ((_%e194772194792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194771194789%_))))
                                (let ((_%hd194773194795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194772194792%_)))
                                      (_%tl194774194797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194772194792%_))))
                                  ((lambda (_%g194767194800%_
                                            _%g194768194801%_)
                                     (let* ((_%ctx194814%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194768194801%_)))
                                            (_%ctx-stx194816%_
                                             (##structure-ref
                                              _%ctx194814%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195223
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self194762%_
                                                _%ctx-stx194816%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195223
                                        gx#current-expander-context
                                        _%ctx194814%_)))
                                   _%tl194774194797%_
                                   _%hd194773194795%_)))
                              (_%g194765194779%_ _%g194766194782%_))))
                      (_%g194765194779%_ _%g194766194782%_)))))
          (_%g194764194820%_ _%stx194763%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self194694%_ _%stx194695%_)
        (let* ((_%g194697194714%_
                (lambda (_%g194698194711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194698194711%_))))
               (_%g194696194759%_
                (lambda (_%g194698194717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194698194717%_))
                      (let ((_%e194701194719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194698194717%_))))
                        (let ((_%hd194702194722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194701194719%_)))
                              (_%tl194703194724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194701194719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194703194724%_))
                              (let ((_%e194704194727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194703194724%_))))
                                (let ((_%hd194705194730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194704194727%_)))
                                      (_%tl194706194732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194704194727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194706194732%_))
                                      (let ((_%e194707194735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194706194732%_))))
                                        (let ((_%hd194708194738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194707194735%_)))
                                              (_%tl194709194740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194707194735%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194709194740%_))
                                              ((lambda (_%g194699194743%_
                                                        _%g194700194744%_)
                                                 (gxc#compile-e__1
                                                  _%self194694%_
                                                  _%g194699194743%_))
                                               _%hd194708194738%_
                                               _%hd194705194730%_)
                                              (_%g194697194714%_
                                               _%g194698194717%_))))
                                      (_%g194697194714%_ _%g194698194717%_))))
                              (_%g194697194714%_ _%g194698194717%_))))
                      (_%g194697194714%_ _%g194698194717%_)))))
          (_%g194696194759%_ _%stx194695%_))))
    (define gxc#apply-define-values%
      (lambda (_%self194626%_ _%stx194627%_)
        (let* ((_%g194629194646%_
                (lambda (_%g194630194643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194630194643%_))))
               (_%g194628194691%_
                (lambda (_%g194630194649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194630194649%_))
                      (let ((_%e194633194651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194630194649%_))))
                        (let ((_%hd194634194654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194633194651%_)))
                              (_%tl194635194656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194633194651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194635194656%_))
                              (let ((_%e194636194659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194635194656%_))))
                                (let ((_%hd194637194662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194636194659%_)))
                                      (_%tl194638194664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194636194659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194638194664%_))
                                      (let ((_%e194639194667%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194638194664%_))))
                                        (let ((_%hd194640194670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194639194667%_)))
                                              (_%tl194641194672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194639194667%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194641194672%_))
                                              ((lambda (_%g194631194675%_
                                                        _%g194632194676%_)
                                                 (gxc#compile-e__1
                                                  _%self194626%_
                                                  _%g194631194675%_))
                                               _%hd194640194670%_
                                               _%hd194637194662%_)
                                              (_%g194629194646%_
                                               _%g194630194649%_))))
                                      (_%g194629194646%_ _%g194630194649%_))))
                              (_%g194629194646%_ _%g194630194649%_))))
                      (_%g194629194646%_ _%g194630194649%_)))))
          (_%g194628194691%_ _%stx194627%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self194557%_ _%stx194558%_)
        (let* ((_%g194560194577%_
                (lambda (_%g194561194574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194561194574%_))))
               (_%g194559194623%_
                (lambda (_%g194561194580%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194561194580%_))
                      (let ((_%e194564194582%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194561194580%_))))
                        (let ((_%hd194565194585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194564194582%_)))
                              (_%tl194566194587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194564194582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194566194587%_))
                              (let ((_%e194567194590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194566194587%_))))
                                (let ((_%hd194568194593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194567194590%_)))
                                      (_%tl194569194595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194567194590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194569194595%_))
                                      (let ((_%e194570194598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194569194595%_))))
                                        (let ((_%hd194571194601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194570194598%_)))
                                              (_%tl194572194603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194570194598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194572194603%_))
                                              ((lambda (_%g194562194606%_
                                                        _%g194563194607%_)
                                                 (let ((__tmp195226
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self194557%_
                                                           _%g194562194606%_)))
                                                       (__tmp195224
                                                        (let ((__tmp195225
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195225 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195226
                                                    gx#current-expander-phi
                                                    __tmp195224)))
                                               _%hd194571194601%_
                                               _%hd194568194593%_)
                                              (_%g194560194577%_
                                               _%g194561194580%_))))
                                      (_%g194560194577%_ _%g194561194580%_))))
                              (_%g194560194577%_ _%g194561194580%_))))
                      (_%g194560194577%_ _%g194561194580%_)))))
          (_%g194559194623%_ _%stx194558%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self194489%_ _%stx194490%_)
        (let* ((_%g194492194509%_
                (lambda (_%g194493194506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194493194506%_))))
               (_%g194491194554%_
                (lambda (_%g194493194512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194493194512%_))
                      (let ((_%e194496194514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194493194512%_))))
                        (let ((_%hd194497194517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194496194514%_)))
                              (_%tl194498194519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194496194514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194498194519%_))
                              (let ((_%e194499194522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194498194519%_))))
                                (let ((_%hd194500194525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194499194522%_)))
                                      (_%tl194501194527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194499194522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194501194527%_))
                                      (let ((_%e194502194530%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194501194527%_))))
                                        (let ((_%hd194503194533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194502194530%_)))
                                              (_%tl194504194535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194502194530%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194504194535%_))
                                              ((lambda (_%g194494194538%_
                                                        _%g194495194539%_)
                                                 (gxc#compile-e__1
                                                  _%self194489%_
                                                  _%g194494194538%_))
                                               _%hd194503194533%_
                                               _%hd194500194525%_)
                                              (_%g194492194509%_
                                               _%g194493194512%_))))
                                      (_%g194492194509%_ _%g194493194512%_))))
                              (_%g194492194509%_ _%g194493194512%_))))
                      (_%g194492194509%_ _%g194493194512%_)))))
          (_%g194491194554%_ _%stx194490%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self194375%_ _%stx194376%_)
        (let* ((_%g194378194406%_
                (lambda (_%g194379194403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194379194403%_))))
               (_%g194377194486%_
                (lambda (_%g194379194409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194379194409%_))
                      (let ((_%e194382194411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194379194409%_))))
                        (let ((_%hd194383194414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194382194411%_)))
                              (_%tl194384194416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194382194411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194384194416%_))
                              (let ((_g195227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194384194416%_
                                        '0))))
                                (begin
                                  (let ((_g195228_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195227_)
                                               (##values-length _g195227_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195228_ 2)))
                                        (error "Context expects 2 values"
                                               _g195228_)))
                                  (let ((_%target194385194419%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195227_ 0)))
                                        (_%tl194387194421%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195227_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194387194421%_))
                                        (letrec ((_%loop194388194424%_
                                                  (lambda (_%hd194386194427%_
                                                           _%body194392194429%_
                                                           _%hd194393194430%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194386194427%_))
                                                        (let ((_%e194389194432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194386194427%_))))
                  (let ((_%lp-hd194390194435%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194389194432%_)))
                        (_%lp-tl194391194437%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194389194432%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194390194435%_))
                        (let ((_%e194396194440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd194390194435%_))))
                          (let ((_%hd194397194443%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194396194440%_)))
                                (_%tl194398194445%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194396194440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194398194445%_))
                                (let ((_%e194399194448%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194398194445%_))))
                                  (let ((_%hd194400194451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194399194448%_)))
                                        (_%tl194401194453%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194399194448%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194401194453%_))
                                        (_%loop194388194424%_
                                         _%lp-tl194391194437%_
                                         (cons _%hd194400194451%_
                                               _%body194392194429%_)
                                         (cons _%hd194397194443%_
                                               _%hd194393194430%_))
                                        (_%g194378194406%_
                                         _%g194379194409%_))))
                                (_%g194378194406%_ _%g194379194409%_))))
                        (_%g194378194406%_ _%g194379194409%_))))
                (let ((_%body194394194456%_ (reverse _%body194392194429%_))
                      (_%hd194395194457%_ (reverse _%hd194393194430%_)))
                  ((lambda (_%g194380194459%_ _%g194381194460%_)
                     (for-each
                      (lambda (_%g194474194476%_)
                        (gxc#compile-e__1 _%self194375%_ _%g194474194476%_))
                      (let ((__tmp195229
                             (lambda (_%g194478194481%_ _%g194479194483%_)
                               (cons _%g194478194481%_ _%g194479194483%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195229 '() _%g194380194459%_))))
                   _%body194394194456%_
                   _%hd194395194457%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194388194424%_
                                           _%target194385194419%_
                                           '()
                                           '()))
                                        (_%g194378194406%_
                                         _%g194379194409%_)))))
                              (_%g194378194406%_ _%g194379194409%_))))
                      (_%g194378194406%_ _%g194379194409%_)))))
          (_%g194377194486%_ _%stx194376%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self194232%_ _%stx194233%_)
        (let* ((_%g194235194270%_
                (lambda (_%g194236194267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194236194267%_))))
               (_%g194234194372%_
                (lambda (_%g194236194273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194236194273%_))
                      (let ((_%e194240194275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194236194273%_))))
                        (let ((_%hd194241194278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194240194275%_)))
                              (_%tl194242194280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194240194275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194242194280%_))
                              (let ((_%e194243194283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194242194280%_))))
                                (let ((_%hd194244194286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194243194283%_)))
                                      (_%tl194245194288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194243194283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194244194286%_))
                                      (let ((_g195230_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194244194286%_
                                                '0))))
                                        (begin
                                          (let ((_g195231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195230_)
                                                       (##values-length
                                                        _g195230_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195231_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195231_)))
                                          (let ((_%target194246194291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195230_ 0)))
                                                (_%tl194248194293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195230_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194248194293%_))
                                                (letrec ((_%loop194249194296%_
                                                          (lambda (_%hd194247194299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194253194301%_
                           _%hd194254194302%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194247194299%_))
                        (let ((_%e194250194304%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194247194299%_))))
                          (let ((_%lp-hd194251194307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194250194304%_)))
                                (_%lp-tl194252194309%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194250194304%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194251194307%_))
                                (let ((_%e194257194312%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194251194307%_))))
                                  (let ((_%hd194258194315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194257194312%_)))
                                        (_%tl194259194317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194257194312%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194259194317%_))
                                        (let ((_%e194260194320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194259194317%_))))
                                          (let ((_%hd194261194323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194260194320%_)))
                                                (_%tl194262194325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194260194320%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194262194325%_))
                                                (_%loop194249194296%_
                                                 _%lp-tl194252194309%_
                                                 (cons _%hd194261194323%_
                                                       _%expr194253194301%_)
                                                 (cons _%hd194258194315%_
                                                       _%hd194254194302%_))
                                                (_%g194235194270%_
                                                 _%g194236194273%_))))
                                        (_%g194235194270%_
                                         _%g194236194273%_))))
                                (_%g194235194270%_ _%g194236194273%_))))
                        (let ((_%expr194255194328%_
                               (reverse _%expr194253194301%_))
                              (_%hd194256194329%_
                               (reverse _%hd194254194302%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194245194288%_))
                              (let ((_%e194263194331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194245194288%_))))
                                (let ((_%hd194264194334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194263194331%_)))
                                      (_%tl194265194336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194263194331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194265194336%_))
                                      ((lambda (_%g194237194339%_
                                                _%g194238194340%_
                                                _%g194239194341%_)
                                         (for-each
                                          (lambda (_%g194360194362%_)
                                            (gxc#compile-e__1
                                             _%self194232%_
                                             _%g194360194362%_))
                                          (let ((__tmp195233
                                                 (lambda (_%g194364194367%_
                                                          _%g194365194369%_)
                                                   (cons _%g194364194367%_
                                                         _%g194365194369%_)))
                                                (__tmp195232
                                                 (cons _%g194237194339%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195233
                                             __tmp195232
                                             _%g194238194340%_))))
                                       _%hd194264194334%_
                                       _%expr194255194328%_
                                       _%hd194256194329%_)
                                      (_%g194235194270%_ _%g194236194273%_))))
                              (_%g194235194270%_ _%g194236194273%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194249194296%_
                                                   _%target194246194291%_
                                                   '()
                                                   '()))
                                                (_%g194235194270%_
                                                 _%g194236194273%_)))))
                                      (_%g194235194270%_ _%g194236194273%_))))
                              (_%g194235194270%_ _%g194236194273%_))))
                      (_%g194235194270%_ _%g194236194273%_)))))
          (_%g194234194372%_ _%stx194233%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self194177%_ _%stx194178%_)
        (let* ((_%g194180194194%_
                (lambda (_%g194181194191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194181194191%_))))
               (_%g194179194229%_
                (lambda (_%g194181194197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194181194197%_))
                      (let ((_%e194184194199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194181194197%_))))
                        (let ((_%hd194185194202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194184194199%_)))
                              (_%tl194186194204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194184194199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194186194204%_))
                              (let ((_%e194187194207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194186194204%_))))
                                (let ((_%hd194188194210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194187194207%_)))
                                      (_%tl194189194212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194187194207%_))))
                                  ((lambda (_%g194182194215%_
                                            _%g194183194216%_)
                                     (gxc#compile-e__1
                                      _%self194177%_
                                      (last _%g194182194215%_)))
                                   _%tl194189194212%_
                                   _%hd194188194210%_)))
                              (_%g194180194194%_ _%g194181194197%_))))
                      (_%g194180194194%_ _%g194181194197%_)))))
          (_%g194179194229%_ _%stx194178%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194109%_ _%stx194110%_)
        (let* ((_%g194112194129%_
                (lambda (_%g194113194126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194113194126%_))))
               (_%g194111194174%_
                (lambda (_%g194113194132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194113194132%_))
                      (let ((_%e194116194134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194113194132%_))))
                        (let ((_%hd194117194137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194116194134%_)))
                              (_%tl194118194139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194116194134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194118194139%_))
                              (let ((_%e194119194142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194118194139%_))))
                                (let ((_%hd194120194145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194119194142%_)))
                                      (_%tl194121194147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194119194142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194121194147%_))
                                      (let ((_%e194122194150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194121194147%_))))
                                        (let ((_%hd194123194153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194122194150%_)))
                                              (_%tl194124194155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194122194150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194124194155%_))
                                              ((lambda (_%g194114194158%_
                                                        _%g194115194159%_)
                                                 (gxc#compile-e__1
                                                  _%self194109%_
                                                  _%g194114194158%_))
                                               _%hd194123194153%_
                                               _%hd194120194145%_)
                                              (_%g194112194129%_
                                               _%g194113194132%_))))
                                      (_%g194112194129%_ _%g194113194132%_))))
                              (_%g194112194129%_ _%g194113194132%_))))
                      (_%g194112194129%_ _%g194113194132%_)))))
          (_%g194111194174%_ _%stx194110%_))))
    (define gxc#apply-operands
      (lambda (_%self194024%_ _%stx194025%_)
        (let* ((_%g194027194046%_
                (lambda (_%g194028194043%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194028194043%_))))
               (_%g194026194106%_
                (lambda (_%g194028194049%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194028194049%_))
                      (let ((_%e194030194051%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194028194049%_))))
                        (let ((_%hd194031194054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194030194051%_)))
                              (_%tl194032194056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194030194051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194032194056%_))
                              (let ((_g195234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194032194056%_
                                        '0))))
                                (begin
                                  (let ((_g195235_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195234_)
                                               (##values-length _g195234_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195235_ 2)))
                                        (error "Context expects 2 values"
                                               _g195235_)))
                                  (let ((_%target194033194059%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195234_ 0)))
                                        (_%tl194035194061%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195234_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194035194061%_))
                                        (letrec ((_%loop194036194064%_
                                                  (lambda (_%hd194034194067%_
                                                           _%rands194040194069%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194034194067%_))
                                                        (let ((_%e194037194071%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194034194067%_))))
                  (let ((_%lp-hd194038194074%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194037194071%_)))
                        (_%lp-tl194039194076%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194037194071%_))))
                    (_%loop194036194064%_
                     _%lp-tl194039194076%_
                     (cons _%lp-hd194038194074%_ _%rands194040194069%_))))
                (let ((_%rands194041194079%_ (reverse _%rands194040194069%_)))
                  ((lambda (_%g194029194081%_)
                     (for-each
                      (lambda (_%g194094194096%_)
                        (gxc#compile-e__1 _%self194024%_ _%g194094194096%_))
                      (let ((__tmp195236
                             (lambda (_%g194098194101%_ _%g194099194103%_)
                               (cons _%g194098194101%_ _%g194099194103%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195236 '() _%g194029194081%_))))
                   _%rands194041194079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194036194064%_
                                           _%target194033194059%_
                                           '()))
                                        (_%g194027194046%_
                                         _%g194028194049%_)))))
                              (_%g194027194046%_ _%g194028194049%_))))
                      (_%g194027194046%_ _%g194028194049%_)))))
          (_%g194026194106%_ _%stx194025%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx194021%_ _%src-stx194022%_)
        (let ((__tmp195237
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx194022%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx194021%_ __tmp195237))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx194017%_ _%src-stx194018%_ _%ctx194019%_)
        (gxc#compile-e__1
         _%ctx194019%_
         (gxc#xform-wrap-source _%stx194017%_ _%src-stx194018%_))))
    (define gxc#xform-begin%
      (lambda (_%self193972%_ _%stx193973%_)
        (let* ((_%g193975193985%_
                (lambda (_%g193976193982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193976193982%_))))
               (_%g193974194014%_
                (lambda (_%g193976193988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193976193988%_))
                      (let ((_%e193978193990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193976193988%_))))
                        (let ((_%hd193979193993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193978193990%_)))
                              (_%tl193980193995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193978193990%_))))
                          ((lambda (_%g193977193998%_)
                             (let ((_%forms194012%_
                                    (map (lambda (_%g194007194009%_)
                                           (gxc#compile-e__1
                                            _%self193972%_
                                            _%g194007194009%_))
                                         _%g193977193998%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms194012%_)
                                _%stx193973%_)))
                           _%tl193980193995%_)))
                      (_%g193975193985%_ _%g193976193988%_)))))
          (_%g193974194014%_ _%stx193973%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self193926%_ _%stx193927%_)
        (let* ((_%g193929193939%_
                (lambda (_%g193930193936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193930193936%_))))
               (_%g193928193969%_
                (lambda (_%g193930193942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193930193942%_))
                      (let ((_%e193932193944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193930193942%_))))
                        (let ((_%hd193933193947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193932193944%_)))
                              (_%tl193934193949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193932193944%_))))
                          ((lambda (_%g193931193952%_)
                             (let ((__tmp195240
                                    (lambda ()
                                      (let ((_%forms193967%_
                                             (map (lambda (_%g193962193964%_)
                                                    (gxc#compile-e__1
                                                     _%self193926%_
                                                     _%g193962193964%_))
                                                  _%g193931193952%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms193967%_)
                                         _%stx193927%_))))
                                   (__tmp195238
                                    (let ((__tmp195239
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195239 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195240
                                gx#current-expander-phi
                                __tmp195238)))
                           _%tl193934193949%_)))
                      (_%g193929193939%_ _%g193930193942%_)))))
          (_%g193928193969%_ _%stx193927%_))))
    (define gxc#xform-module%
      (lambda (_%self193863%_ _%stx193864%_)
        (let* ((_%g193866193880%_
                (lambda (_%g193867193877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193867193877%_))))
               (_%g193865193923%_
                (lambda (_%g193867193883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193867193883%_))
                      (let ((_%e193870193885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193867193883%_))))
                        (let ((_%hd193871193888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193870193885%_)))
                              (_%tl193872193890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193870193885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193872193890%_))
                              (let ((_%e193873193893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193872193890%_))))
                                (let ((_%hd193874193896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193873193893%_)))
                                      (_%tl193875193898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193873193893%_))))
                                  ((lambda (_%g193868193901%_
                                            _%g193869193902%_)
                                     (let* ((_%ctx193915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193869193902%_)))
                                            (_%code193917%_
                                             (##structure-ref
                                              _%ctx193915%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code193920%_
                                             (let ((__tmp195241
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self193863%_
                                                       _%code193917%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp195241
                                                gx#current-expander-context
                                                _%ctx193915%_))))
                                       (##structure-set!
                                        _%ctx193915%_
                                        _%code193920%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g193869193902%_
                                                    (cons _%code193920%_ '())))
                                        _%stx193864%_)))
                                   _%tl193875193898%_
                                   _%hd193874193896%_)))
                              (_%g193866193880%_ _%g193867193883%_))))
                      (_%g193866193880%_ _%g193867193883%_)))))
          (_%g193865193923%_ _%stx193864%_))))
    (define gxc#xform-define-values%
      (lambda (_%self193793%_ _%stx193794%_)
        (let* ((_%g193796193813%_
                (lambda (_%g193797193810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193797193810%_))))
               (_%g193795193860%_
                (lambda (_%g193797193816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193797193816%_))
                      (let ((_%e193800193818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193797193816%_))))
                        (let ((_%hd193801193821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193800193818%_)))
                              (_%tl193802193823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193800193818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193802193823%_))
                              (let ((_%e193803193826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193802193823%_))))
                                (let ((_%hd193804193829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193803193826%_)))
                                      (_%tl193805193831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193803193826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193805193831%_))
                                      (let ((_%e193806193834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193805193831%_))))
                                        (let ((_%hd193807193837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193806193834%_)))
                                              (_%tl193808193839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193806193834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193808193839%_))
                                              ((lambda (_%g193798193842%_
                                                        _%g193799193843%_)
                                                 (let ((_%expr193858%_
                                                        (gxc#compile-e__1
                                                         _%self193793%_
                                                         _%g193798193842%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g193799193843%_
                                                                (cons _%expr193858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193794%_)))
                                               _%hd193807193837%_
                                               _%hd193804193829%_)
                                              (_%g193796193813%_
                                               _%g193797193816%_))))
                                      (_%g193796193813%_ _%g193797193816%_))))
                              (_%g193796193813%_ _%g193797193816%_))))
                      (_%g193796193813%_ _%g193797193816%_)))))
          (_%g193795193860%_ _%stx193794%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self193722%_ _%stx193723%_)
        (let* ((_%g193725193742%_
                (lambda (_%g193726193739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193726193739%_))))
               (_%g193724193790%_
                (lambda (_%g193726193745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193726193745%_))
                      (let ((_%e193729193747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193726193745%_))))
                        (let ((_%hd193730193750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193729193747%_)))
                              (_%tl193731193752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193729193747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193731193752%_))
                              (let ((_%e193732193755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193731193752%_))))
                                (let ((_%hd193733193758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193732193755%_)))
                                      (_%tl193734193760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193732193755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193734193760%_))
                                      (let ((_%e193735193763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193734193760%_))))
                                        (let ((_%hd193736193766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193735193763%_)))
                                              (_%tl193737193768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193735193763%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193737193768%_))
                                              ((lambda (_%g193727193771%_
                                                        _%g193728193772%_)
                                                 (let ((__tmp195244
                                                        (lambda ()
                                                          (let ((_%expr193788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self193722%_ _%g193727193771%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g193728193772%_ (cons _%expr193788%_ '())))
                     _%stx193723%_))))
               (__tmp195242
                (let ((__tmp195243
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195243 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195244
                                                    gx#current-expander-phi
                                                    __tmp195242)))
                                               _%hd193736193766%_
                                               _%hd193733193758%_)
                                              (_%g193725193742%_
                                               _%g193726193745%_))))
                                      (_%g193725193742%_ _%g193726193745%_))))
                              (_%g193725193742%_ _%g193726193745%_))))
                      (_%g193725193742%_ _%g193726193745%_)))))
          (_%g193724193790%_ _%stx193723%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self193652%_ _%stx193653%_)
        (let* ((_%g193655193672%_
                (lambda (_%g193656193669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193656193669%_))))
               (_%g193654193719%_
                (lambda (_%g193656193675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193656193675%_))
                      (let ((_%e193659193677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193656193675%_))))
                        (let ((_%hd193660193680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193659193677%_)))
                              (_%tl193661193682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193659193677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193661193682%_))
                              (let ((_%e193662193685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193661193682%_))))
                                (let ((_%hd193663193688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193662193685%_)))
                                      (_%tl193664193690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193662193685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193664193690%_))
                                      (let ((_%e193665193693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193664193690%_))))
                                        (let ((_%hd193666193696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193665193693%_)))
                                              (_%tl193667193698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193665193693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193667193698%_))
                                              ((lambda (_%g193657193701%_
                                                        _%g193658193702%_)
                                                 (let ((_%expr193717%_
                                                        (gxc#compile-e__1
                                                         _%self193652%_
                                                         _%g193657193701%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g193658193702%_
                                                                (cons _%expr193717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193653%_)))
                                               _%hd193666193696%_
                                               _%hd193663193688%_)
                                              (_%g193655193672%_
                                               _%g193656193675%_))))
                                      (_%g193655193672%_ _%g193656193675%_))))
                              (_%g193655193672%_ _%g193656193675%_))))
                      (_%g193655193672%_ _%g193656193675%_)))))
          (_%g193654193719%_ _%stx193653%_))))
    (define gxc#xform-lambda%
      (lambda (_%self193590%_ _%stx193591%_)
        (let* ((_%g193593193607%_
                (lambda (_%g193594193604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193594193604%_))))
               (_%g193592193649%_
                (lambda (_%g193594193610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193594193610%_))
                      (let ((_%e193597193612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193594193610%_))))
                        (let ((_%hd193598193615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193597193612%_)))
                              (_%tl193599193617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193597193612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193599193617%_))
                              (let ((_%e193600193620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193599193617%_))))
                                (let ((_%hd193601193623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193600193620%_)))
                                      (_%tl193602193625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193600193620%_))))
                                  ((lambda (_%g193595193628%_
                                            _%g193596193629%_)
                                     (let ((__tmp195246
                                            (lambda ()
                                              (let ((_%body193647%_
                                                     (map (lambda (_%g193642193644%_)
                                                            (gxc#compile-e__1
                                                             _%self193590%_
                                                             _%g193642193644%_))
                                                          _%g193595193628%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g193596193629%_
                                                             _%body193647%_))
                                                 _%stx193591%_))))
                                           (__tmp195245
                                            (gxc#xform-let-locals
                                             _%g193596193629%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195246
                                        gxc#current-compile-local-env
                                        __tmp195245)))
                                   _%tl193602193625%_
                                   _%hd193601193623%_)))
                              (_%g193593193607%_ _%g193594193610%_))))
                      (_%g193593193607%_ _%g193594193610%_)))))
          (_%g193592193649%_ _%stx193591%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self193498%_ _%stx193499%_)
        (letrec ((_%clause-e193501%_
                  (lambda (_%clause193542%_)
                    (let* ((_%g193544193555%_
                            (lambda (_%g193545193552%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g193545193552%_))))
                           (_%g193543193587%_
                            (lambda (_%g193545193558%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g193545193558%_))
                                  (let ((_%e193548193560%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g193545193558%_))))
                                    (let ((_%hd193549193563%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193548193560%_)))
                                          (_%tl193550193565%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193548193560%_))))
                                      ((lambda (_%g193546193568%_
                                                _%g193547193569%_)
                                         (let ((__tmp195248
                                                (lambda ()
                                                  (let ((_%body193585%_
                                                         (map (lambda (_%g193580193582%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self193498%_
                         _%g193580193582%_))
                      _%g193546193568%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g193547193569%_
                                                          _%body193585%_))))
                                               (__tmp195247
                                                (gxc#xform-let-locals
                                                 _%g193547193569%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp195248
                                            gxc#current-compile-local-env
                                            __tmp195247)))
                                       _%tl193550193565%_
                                       _%hd193549193563%_)))
                                  (_%g193544193555%_ _%g193545193558%_)))))
                      (_%g193543193587%_ _%clause193542%_)))))
          (let* ((_%g193503193513%_
                  (lambda (_%g193504193510%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193504193510%_))))
                 (_%g193502193539%_
                  (lambda (_%g193504193516%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193504193516%_))
                        (let ((_%e193506193518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193504193516%_))))
                          (let ((_%hd193507193521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193506193518%_)))
                                (_%tl193508193523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193506193518%_))))
                            ((lambda (_%g193505193526%_)
                               (let ((_%clauses193537%_
                                      (map _%clause-e193501%_
                                           _%g193505193526%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses193537%_)
                                  _%stx193499%_)))
                             _%tl193508193523%_)))
                        (_%g193503193513%_ _%g193504193516%_)))))
            (_%g193502193539%_ _%stx193499%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self193258%_ _%stx193259%_)
        (let* ((_%g193261193294%_
                (lambda (_%g193262193291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193262193291%_))))
               (_%g193260193495%_
                (lambda (_%g193262193297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193262193297%_))
                      (let ((_%e193267193299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193262193297%_))))
                        (let ((_%hd193268193302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193267193299%_)))
                              (_%tl193269193304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193267193299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193269193304%_))
                              (let ((_%e193270193307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193269193304%_))))
                                (let ((_%hd193271193310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193270193307%_)))
                                      (_%tl193272193312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193270193307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193271193310%_))
                                      (let ((_g195249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193271193310%_
                                                '0))))
                                        (begin
                                          (let ((_g195250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195249_)
                                                       (##values-length
                                                        _g195249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195250_)))
                                          (let ((_%target193273193315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195249_ 0)))
                                                (_%tl193275193317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195249_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193275193317%_))
                                                (letrec ((_%loop193276193320%_
                                                          (lambda (_%hd193274193323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193280193325%_
                           _%hd193281193326%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193274193323%_))
                        (let ((_%e193277193328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193274193323%_))))
                          (let ((_%lp-hd193278193331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193277193328%_)))
                                (_%lp-tl193279193333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193277193328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193278193331%_))
                                (let ((_%e193284193336%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193278193331%_))))
                                  (let ((_%hd193285193339%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193284193336%_)))
                                        (_%tl193286193341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193284193336%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193286193341%_))
                                        (let ((_%e193287193344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193286193341%_))))
                                          (let ((_%hd193288193347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193287193344%_)))
                                                (_%tl193289193349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193287193344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193289193349%_))
                                                (_%loop193276193320%_
                                                 _%lp-tl193279193333%_
                                                 (cons _%hd193288193347%_
                                                       _%expr193280193325%_)
                                                 (cons _%hd193285193339%_
                                                       _%hd193281193326%_))
                                                (_%g193261193294%_
                                                 _%g193262193297%_))))
                                        (_%g193261193294%_
                                         _%g193262193297%_))))
                                (_%g193261193294%_ _%g193262193297%_))))
                        (let ((_%expr193282193352%_
                               (reverse _%expr193280193325%_))
                              (_%hd193283193353%_
                               (reverse _%hd193281193326%_)))
                          ((lambda (_%g193263193355%_
                                    _%g193264193356%_
                                    _%g193265193357%_
                                    _%g193266193358%_)
                             (let* ((_%g193377193393%_
                                     (lambda (_%g193378193390%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193378193390%_))))
                                    (_%g193376193481%_
                                     (lambda (_%g193378193396%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g193378193396%_))
                                           (let ((_g195251_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g193378193396%_
                                                     '0))))
                                             (begin
                                               (let ((_g195252_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g195251_)
                                                            (##values-length
                                                             _g195251_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g195252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g195252_)))
                                               (let ((_%target193380193398%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195251_
                                                         0)))
                                                     (_%tl193382193400%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195251_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193382193400%_))
                                                     (letrec ((_%loop193383193403%_
                                                               (lambda (_%hd193381193406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr193387193408%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd193381193406%_))
                             (let ((_%e193384193410%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd193381193406%_))))
                               (let ((_%lp-hd193385193413%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e193384193410%_)))
                                     (_%lp-tl193386193415%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e193384193410%_))))
                                 (_%loop193383193403%_
                                  _%lp-tl193386193415%_
                                  (cons _%lp-hd193385193413%_
                                        _%expr193387193408%_))))
                             (let ((_%expr193388193418%_
                                    (reverse _%expr193387193408%_)))
                               ((lambda (_%g193379193420%_)
                                  (let ((__tmp195255
                                         (lambda ()
                                           (let* ((_%g193434193441%_
                                                   (lambda (_%g193435193438%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193435193438%_))))
                                                  (_%g193433193467%_
                                                   (lambda (_%g193435193444%_)
                                                     ((lambda (_%g193436193446%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193266193358%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193379193420%_
                                  _%g193265193357%_))
                               (let ((__tmp195256
                                      (lambda (_%g193456193460%_
                                               _%g193457193462%_
                                               _%g193458193464%_)
                                        (cons (cons _%g193457193462%_
                                                    (cons _%g193456193460%_
                                                          '()))
                                              _%g193458193464%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195256
                                  '()
                                  _%g193379193420%_
                                  _%g193265193357%_)))
                             _%g193436193446%_))
                 _%stx193259%_))
              _%g193435193444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193433193467%_
                                              (map (lambda (_%g193469193471%_)
                                                     (gxc#compile-e__1
                                                      _%self193258%_
                                                      _%g193469193471%_))
                                                   _%g193263193355%_)))))
                                        (__tmp195253
                                         (gxc#xform-let-locals
                                          (let ((__tmp195254
                                                 (lambda (_%g193473193476%_
                                                          _%g193474193478%_)
                                                   (cons _%g193473193476%_
                                                         _%g193474193478%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195254
                                             '()
                                             _%g193265193357%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp195255
                                     gxc#current-compile-local-env
                                     __tmp195253)))
                                _%expr193388193418%_))))))
               (_%loop193383193403%_ _%target193380193398%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g193377193393%_
                                                      _%g193378193396%_)))))
                                           (_%g193377193393%_
                                            _%g193378193396%_)))))
                               (_%g193376193481%_
                                (map (lambda (_%g193483193485%_)
                                       (gxc#compile-e__1
                                        _%self193258%_
                                        _%g193483193485%_))
                                     (let ((__tmp195257
                                            (lambda (_%g193487193490%_
                                                     _%g193488193492%_)
                                              (cons _%g193487193490%_
                                                    _%g193488193492%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195257
                                        '()
                                        _%g193264193356%_))))))
                           _%tl193272193312%_
                           _%expr193282193352%_
                           _%hd193283193353%_
                           _%hd193268193302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193276193320%_
                                                   _%target193273193315%_
                                                   '()
                                                   '()))
                                                (_%g193261193294%_
                                                 _%g193262193297%_)))))
                                      (_%g193261193294%_ _%g193262193297%_))))
                              (_%g193261193294%_ _%g193262193297%_))))
                      (_%g193261193294%_ _%g193262193297%_)))))
          (_%g193260193495%_ _%stx193259%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self193018%_ _%stx193019%_)
        (let* ((_%g193021193054%_
                (lambda (_%g193022193051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193022193051%_))))
               (_%g193020193255%_
                (lambda (_%g193022193057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193022193057%_))
                      (let ((_%e193027193059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193022193057%_))))
                        (let ((_%hd193028193062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193027193059%_)))
                              (_%tl193029193064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193027193059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193029193064%_))
                              (let ((_%e193030193067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193029193064%_))))
                                (let ((_%hd193031193070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193030193067%_)))
                                      (_%tl193032193072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193030193067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193031193070%_))
                                      (let ((_g195258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193031193070%_
                                                '0))))
                                        (begin
                                          (let ((_g195259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195258_)
                                                       (##values-length
                                                        _g195258_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195259_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195259_)))
                                          (let ((_%target193033193075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195258_ 0)))
                                                (_%tl193035193077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195258_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193035193077%_))
                                                (letrec ((_%loop193036193080%_
                                                          (lambda (_%hd193034193083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193040193085%_
                           _%hd193041193086%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193034193083%_))
                        (let ((_%e193037193088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193034193083%_))))
                          (let ((_%lp-hd193038193091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193037193088%_)))
                                (_%lp-tl193039193093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193037193088%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193038193091%_))
                                (let ((_%e193044193096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193038193091%_))))
                                  (let ((_%hd193045193099%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193044193096%_)))
                                        (_%tl193046193101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193044193096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193046193101%_))
                                        (let ((_%e193047193104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193046193101%_))))
                                          (let ((_%hd193048193107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193047193104%_)))
                                                (_%tl193049193109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193047193104%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193049193109%_))
                                                (_%loop193036193080%_
                                                 _%lp-tl193039193093%_
                                                 (cons _%hd193048193107%_
                                                       _%expr193040193085%_)
                                                 (cons _%hd193045193099%_
                                                       _%hd193041193086%_))
                                                (_%g193021193054%_
                                                 _%g193022193057%_))))
                                        (_%g193021193054%_
                                         _%g193022193057%_))))
                                (_%g193021193054%_ _%g193022193057%_))))
                        (let ((_%expr193042193112%_
                               (reverse _%expr193040193085%_))
                              (_%hd193043193113%_
                               (reverse _%hd193041193086%_)))
                          ((lambda (_%g193023193115%_
                                    _%g193024193116%_
                                    _%g193025193117%_
                                    _%g193026193118%_)
                             (let ((__tmp195262
                                    (lambda ()
                                      (let* ((_%g193138193154%_
                                              (lambda (_%g193139193151%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g193139193151%_))))
                                             (_%g193137193234%_
                                              (lambda (_%g193139193157%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g193139193157%_))
                                                    (let ((_g195263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g193139193157%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g195264_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g195263_)
                             (##values-length _g195263_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195264_ 2)))
                      (error "Context expects 2 values" _g195264_)))
                (let ((_%target193141193159%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195263_ 0)))
                      (_%tl193143193161%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195263_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193143193161%_))
                      (letrec ((_%loop193144193164%_
                                (lambda (_%hd193142193167%_
                                         _%expr193148193169%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193142193167%_))
                                      (let ((_%e193145193171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd193142193167%_))))
                                        (let ((_%lp-hd193146193174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193145193171%_)))
                                              (_%lp-tl193147193176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193145193171%_))))
                                          (_%loop193144193164%_
                                           _%lp-tl193147193176%_
                                           (cons _%lp-hd193146193174%_
                                                 _%expr193148193169%_))))
                                      (let ((_%expr193149193179%_
                                             (reverse _%expr193148193169%_)))
                                        ((lambda (_%g193140193181%_)
                                           (let* ((_%g193195193202%_
                                                   (lambda (_%g193196193199%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193196193199%_))))
                                                  (_%g193194193227%_
                                                   (lambda (_%g193196193205%_)
                                                     ((lambda (_%g193197193207%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193026193118%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193140193181%_
                                  _%g193025193117%_))
                               (let ((__tmp195265
                                      (lambda (_%g193216193220%_
                                               _%g193217193222%_
                                               _%g193218193224%_)
                                        (cons (cons _%g193217193222%_
                                                    (cons _%g193216193220%_
                                                          '()))
                                              _%g193218193224%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195265
                                  '()
                                  _%g193140193181%_
                                  _%g193025193117%_)))
                             _%g193197193207%_))
                 _%stx193019%_))
              _%g193196193205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193194193227%_
                                              (map (lambda (_%g193229193231%_)
                                                     (gxc#compile-e__1
                                                      _%self193018%_
                                                      _%g193229193231%_))
                                                   _%g193023193115%_))))
                                         _%expr193149193179%_))))))
                        (_%loop193144193164%_ _%target193141193159%_ '()))
                      (_%g193138193154%_ _%g193139193157%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g193138193154%_
                                                     _%g193139193157%_)))))
                                        (_%g193137193234%_
                                         (map (lambda (_%g193236193238%_)
                                                (gxc#compile-e__1
                                                 _%self193018%_
                                                 _%g193236193238%_))
                                              (let ((__tmp195266
                                                     (lambda (_%g193240193243%_
                                                              _%g193241193245%_)
                                                       (cons _%g193240193243%_
                                                             _%g193241193245%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp195266
                                                 '()
                                                 _%g193024193116%_)))))))
                                   (__tmp195260
                                    (gxc#xform-let-locals
                                     (let ((__tmp195261
                                            (lambda (_%g193247193250%_
                                                     _%g193248193252%_)
                                              (cons _%g193247193250%_
                                                    _%g193248193252%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195261
                                        '()
                                        _%g193025193117%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195262
                                gxc#current-compile-local-env
                                __tmp195260)))
                           _%tl193032193072%_
                           _%expr193042193112%_
                           _%hd193043193113%_
                           _%hd193028193062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193036193080%_
                                                   _%target193033193075%_
                                                   '()
                                                   '()))
                                                (_%g193021193054%_
                                                 _%g193022193057%_)))))
                                      (_%g193021193054%_ _%g193022193057%_))))
                              (_%g193021193054%_ _%g193022193057%_))))
                      (_%g193021193054%_ _%g193022193057%_)))))
          (_%g193020193255%_ _%stx193019%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings192885%_)
        (letrec ((_%flatten192887%_
                  (lambda (_%maybe-lst192945%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst192945%_))
                        (cons _%maybe-lst192945%_ '())
                        (let _%loop192947%_ ((_%rest192949%_
                                              _%maybe-lst192945%_)
                                             (_%result192950%_ '()))
                          (let* ((_%__stx195154195155%_ _%rest192949%_)
                                 (_%g192954192966%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx195154195155%_)))))
                            (let ((_%__kont195156195157%_
                                   (lambda (_%g192956193004%_
                                            _%g192957193005%_)
                                     (_%loop192947%_
                                      _%g192956193004%_
                                      (let ((__tmp195267
                                             (_%flatten192887%_
                                              _%g192957193005%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result192950%_
                                         __tmp195267)))))
                                  (_%__kont195158195159%_
                                   (lambda (_%g192961192978%_)
                                     (cons _%g192961192978%_
                                           _%result192950%_)))
                                  (_%__kont195160195161%_
                                   (lambda () _%result192950%_)))
                              (let ((_%g192952192991%_
                                     (lambda ()
                                       (let ((_%g192961192978%_
                                              _%__stx195154195155%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g192961192978%_))
                                             (_%__kont195158195159%_
                                              _%g192961192978%_)
                                             (_%__kont195160195161%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx195154195155%_))
                                    (let ((_%e192958192996%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx195154195155%_))))
                                      (let ((_%tl192960193001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192958192996%_)))
                                            (_%hd192959192999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192958192996%_))))
                                        (_%__kont195156195157%_
                                         _%tl192960193001%_
                                         _%hd192959192999%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192952192991%_)))))))))))
          (let _%loop192889%_ ((_%rest192891%_
                                (_%flatten192887%_ _%bindings192885%_))
                               (_%locals192892%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest192893192904%_ _%rest192891%_)
                   (_%E192897192908%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest192893192904%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K192900192933%_
                     (lambda (_%rest192930%_ _%id192931%_)
                       (_%loop192889%_
                        _%rest192930%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id192931%_))
                              _%locals192892%_))))
                    (_%K192899192922%_
                     (lambda (_%id192920%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id192920%_))
                             _%locals192892%_)))
                    (_%K192898192913%_ (lambda () _%locals192892%_)))
                (let ((_%try-match192895192927%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest192893192904%_))
                             (let ((_%id192925%_ _%rest192893192904%_))
                               (_%K192899192922%_ _%id192925%_))
                             (_%K192898192913%_)))))
                  (if (pair? _%rest192893192904%_)
                      (let ((_%tl192902192938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest192893192904%_)))
                            (_%hd192901192936%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest192893192904%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd192901192936%_))
                            (let ((_%id192941%_ _%hd192901192936%_)
                                  (_%rest192943%_ _%tl192902192938%_))
                              (_%K192900192933%_ _%rest192943%_ _%id192941%_))
                            (_%K192898192913%_)))
                      (_%try-match192895192927%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self192837%_ _%stx192838%_)
        (let* ((_%g192840192851%_
                (lambda (_%g192841192848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192841192848%_))))
               (_%g192839192882%_
                (lambda (_%g192841192854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192841192854%_))
                      (let ((_%e192844192856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192841192854%_))))
                        (let ((_%hd192845192859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192844192856%_)))
                              (_%tl192846192861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192844192856%_))))
                          ((lambda (_%g192842192864%_ _%g192843192865%_)
                             (let ((_%rands192880%_
                                    (map (lambda (_%g192875192877%_)
                                           (gxc#compile-e__1
                                            _%self192837%_
                                            _%g192875192877%_))
                                         _%g192842192864%_)))
                               (gxc#xform-wrap-source
                                (cons _%g192843192865%_ _%rands192880%_)
                                _%stx192838%_)))
                           _%tl192846192861%_
                           _%hd192845192859%_)))
                      (_%g192840192851%_ _%g192841192854%_)))))
          (_%g192839192882%_ _%stx192838%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self192767%_ _%stx192768%_)
        (let* ((_%g192770192787%_
                (lambda (_%g192771192784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192771192784%_))))
               (_%g192769192834%_
                (lambda (_%g192771192790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192771192790%_))
                      (let ((_%e192774192792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192771192790%_))))
                        (let ((_%hd192775192795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192774192792%_)))
                              (_%tl192776192797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192774192792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192776192797%_))
                              (let ((_%e192777192800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192776192797%_))))
                                (let ((_%hd192778192803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192777192800%_)))
                                      (_%tl192779192805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192777192800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192779192805%_))
                                      (let ((_%e192780192808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192779192805%_))))
                                        (let ((_%hd192781192811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192780192808%_)))
                                              (_%tl192782192813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192780192808%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192782192813%_))
                                              ((lambda (_%g192772192816%_
                                                        _%g192773192817%_)
                                                 (let ((_%expr192832%_
                                                        (gxc#compile-e__1
                                                         _%self192767%_
                                                         _%g192772192816%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g192773192817%_
                                                                (cons _%expr192832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192768%_)))
                                               _%hd192781192811%_
                                               _%hd192778192803%_)
                                              (_%g192770192787%_
                                               _%g192771192790%_))))
                                      (_%g192770192787%_ _%g192771192790%_))))
                              (_%g192770192787%_ _%g192771192790%_))))
                      (_%g192770192787%_ _%g192771192790%_)))))
          (_%g192769192834%_ _%stx192768%_))))))
