(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712784666)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx135002%_)
        (let* ((_%self135004%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e135006%_
                (let ((__tmp135202 (gxc#stx-car-e _%stx135002%_)))
                  (declare (not safe))
                  (method-ref _%self135004%_ __tmp135202))))
          (if _%$e135006%_
              ((lambda (_%method135009%_)
                 (declare (not safe))
                 (_%method135009%_ _%self135004%_ _%stx135002%_))
               _%$e135006%_)
              (let ((__tmp135204 (gxc#stx-car-e _%stx135002%_))
                    (__tmp135203
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135002%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135004%_
                       __tmp135204
                       __tmp135203))))))
    (define gxc#compile-e__1
      (lambda (_%self135013%_ _%stx135014%_)
        (let ((_%$e135016%_
               (let ((__tmp135205 (gxc#stx-car-e _%stx135014%_)))
                 (declare (not safe))
                 (method-ref _%self135013%_ __tmp135205))))
          (if _%$e135016%_
              ((lambda (_%method135019%_)
                 (declare (not safe))
                 (_%method135019%_ _%self135013%_ _%stx135014%_))
               _%$e135016%_)
              (let ((__tmp135207 (gxc#stx-car-e _%stx135014%_))
                    (__tmp135206
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135014%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135013%_
                       __tmp135207
                       __tmp135206))))))
    (define gxc#compile-e
      (lambda _g135209_
        (let ((_g135208_ (let () (declare (not safe)) (##length _g135209_))))
          (cond ((let () (declare (not safe)) (##fx= _g135208_ 1))
                 (apply gxc#compile-e__0 _g135209_))
                ((let () (declare (not safe)) (##fx= _g135208_ 2))
                 (apply gxc#compile-e__1 _g135209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g135209_))))))
    (define gxc#stx-car-e
      (lambda (_%stx135000%_)
        (let ((__tmp135210
               (car (let () (declare (not safe)) (gx#stx-e _%stx135000%_)))))
          (declare (not safe))
          (gx#stx-e __tmp135210))))
    (define gxc#void-method (lambda (_%self134997%_ _%stx134998%_) '#!void))
    (define gxc#false-method (lambda (_%self134994%_ _%stx134995%_) '#f))
    (define gxc#true-method (lambda (_%self134991%_ _%stx134992%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134988%_ _%stx134989%_) _%stx134989%_))
    (define gxc#::void-expression::t
      (let ((__tmp135211 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp135211
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134985%_
        (apply make-instance gxc#::void-expression::t _%$args134985%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp135212
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
        (__make-promise __tmp135212)))
    (define gxc#::void-special-form::t
      (let ((__tmp135213 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp135213
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134981%_
        (apply make-instance gxc#::void-special-form::t _%$args134981%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp135214
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
        (__make-promise __tmp135214)))
    (define gxc#::void::t
      (let ((__tmp135215
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp135215 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134977%_
        (apply make-instance gxc#::void::t _%$args134977%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp135216
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135216)))
    (define gxc#::false-expression::t
      (let ((__tmp135217 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp135217
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134973%_
        (apply make-instance gxc#::false-expression::t _%$args134973%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp135218
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
        (__make-promise __tmp135218)))
    (define gxc#::false-special-form::t
      (let ((__tmp135219 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp135219
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134969%_
        (apply make-instance gxc#::false-special-form::t _%$args134969%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp135220
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
        (__make-promise __tmp135220)))
    (define gxc#::false::t
      (let ((__tmp135221
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp135221 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134965%_
        (apply make-instance gxc#::false::t _%$args134965%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp135222
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135222)))
    (define gxc#::identity-expression::t
      (let ((__tmp135223 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp135223
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134961%_
        (apply make-instance gxc#::identity-expression::t _%$args134961%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp135224
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
        (__make-promise __tmp135224)))
    (define gxc#::identity-special-form::t
      (let ((__tmp135225 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp135225
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134957%_
        (apply make-instance gxc#::identity-special-form::t _%$args134957%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp135226
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
        (__make-promise __tmp135226)))
    (define gxc#::identity::t
      (let ((__tmp135227
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp135227
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134953%_
        (apply make-instance gxc#::identity::t _%$args134953%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp135228
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135228)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp135229 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp135229
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134949%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134949%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp135230
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
        (__make-promise __tmp135230)))
    (define gxc#::basic-xform::t
      (let ((__tmp135231
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp135231
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134945%_
        (apply make-instance gxc#::basic-xform::t _%$args134945%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp135232
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
        (__make-promise __tmp135232)))
    (define gxc#apply-begin%
      (lambda (_%self134901%_ _%stx134902%_)
        (let* ((_%g134904134914%_
                (lambda (_%g134905134911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134905134911%_))))
               (_%g134903134941%_
                (lambda (_%g134905134917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134905134917%_))
                      (let ((_%e134907134919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134905134917%_))))
                        (let ((_%hd134908134922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134907134919%_)))
                              (_%tl134909134924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134907134919%_))))
                          ((lambda (_%L134927%_)
                             (for-each
                              (lambda (_%g134936134938%_)
                                (gxc#compile-e__1
                                 _%self134901%_
                                 _%g134936134938%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134927%_))))
                           _%tl134909134924%_)))
                      (_%g134904134914%_ _%g134905134917%_)))))
          (_%g134903134941%_ _%stx134902%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134862%_ _%stx134863%_)
        (let* ((_%g134865134875%_
                (lambda (_%g134866134872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134866134872%_))))
               (_%g134864134898%_
                (lambda (_%g134866134878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134866134878%_))
                      (let ((_%e134868134880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134866134878%_))))
                        (let ((_%hd134869134883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134868134880%_)))
                              (_%tl134870134885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134868134880%_))))
                          ((lambda (_%L134888%_)
                             (gxc#compile-e__1
                              _%self134862%_
                              (last _%L134888%_)))
                           _%tl134870134885%_)))
                      (_%g134865134875%_ _%g134866134878%_)))))
          (_%g134864134898%_ _%stx134863%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134858%_ _%stx134859%_)
        (let ((__tmp135235
               (lambda () (gxc#apply-begin% _%self134858%_ _%stx134859%_)))
              (__tmp135233
               (let ((__tmp135234
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp135234 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp135235
           gx#current-expander-phi
           __tmp135233))))
    (define gxc#apply-module%
      (lambda (_%self134797%_ _%stx134798%_)
        (let* ((_%g134800134814%_
                (lambda (_%g134801134811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134801134811%_))))
               (_%g134799134855%_
                (lambda (_%g134801134817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134801134817%_))
                      (let ((_%e134804134819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134801134817%_))))
                        (let ((_%hd134805134822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134804134819%_)))
                              (_%tl134806134824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134804134819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134806134824%_))
                              (let ((_%e134807134827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134806134824%_))))
                                (let ((_%hd134808134830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134807134827%_)))
                                      (_%tl134809134832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134807134827%_))))
                                  ((lambda (_%L134835%_ _%L134836%_)
                                     (let* ((_%ctx134849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134836%_)))
                                            (_%ctx-stx134851%_
                                             (##structure-ref
                                              _%ctx134849%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp135236
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self134797%_
                                                _%ctx-stx134851%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135236
                                        gx#current-expander-context
                                        _%ctx134849%_)))
                                   _%tl134809134832%_
                                   _%hd134808134830%_)))
                              (_%g134800134814%_ _%g134801134817%_))))
                      (_%g134800134814%_ _%g134801134817%_)))))
          (_%g134799134855%_ _%stx134798%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134729%_ _%stx134730%_)
        (let* ((_%g134732134749%_
                (lambda (_%g134733134746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134733134746%_))))
               (_%g134731134794%_
                (lambda (_%g134733134752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134733134752%_))
                      (let ((_%e134736134754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134733134752%_))))
                        (let ((_%hd134737134757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134736134754%_)))
                              (_%tl134738134759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134736134754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134738134759%_))
                              (let ((_%e134739134762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134738134759%_))))
                                (let ((_%hd134740134765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134739134762%_)))
                                      (_%tl134741134767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134739134762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134741134767%_))
                                      (let ((_%e134742134770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134741134767%_))))
                                        (let ((_%hd134743134773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134742134770%_)))
                                              (_%tl134744134775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134742134770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134744134775%_))
                                              ((lambda (_%L134778%_
                                                        _%L134779%_)
                                                 (gxc#compile-e__1
                                                  _%self134729%_
                                                  _%L134778%_))
                                               _%hd134743134773%_
                                               _%hd134740134765%_)
                                              (_%g134732134749%_
                                               _%g134733134752%_))))
                                      (_%g134732134749%_ _%g134733134752%_))))
                              (_%g134732134749%_ _%g134733134752%_))))
                      (_%g134732134749%_ _%g134733134752%_)))))
          (_%g134731134794%_ _%stx134730%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134661%_ _%stx134662%_)
        (let* ((_%g134664134681%_
                (lambda (_%g134665134678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134665134678%_))))
               (_%g134663134726%_
                (lambda (_%g134665134684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134665134684%_))
                      (let ((_%e134668134686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134665134684%_))))
                        (let ((_%hd134669134689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134668134686%_)))
                              (_%tl134670134691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134668134686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134670134691%_))
                              (let ((_%e134671134694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134670134691%_))))
                                (let ((_%hd134672134697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134671134694%_)))
                                      (_%tl134673134699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134671134694%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134673134699%_))
                                      (let ((_%e134674134702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134673134699%_))))
                                        (let ((_%hd134675134705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134674134702%_)))
                                              (_%tl134676134707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134674134702%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134676134707%_))
                                              ((lambda (_%L134710%_
                                                        _%L134711%_)
                                                 (gxc#compile-e__1
                                                  _%self134661%_
                                                  _%L134710%_))
                                               _%hd134675134705%_
                                               _%hd134672134697%_)
                                              (_%g134664134681%_
                                               _%g134665134684%_))))
                                      (_%g134664134681%_ _%g134665134684%_))))
                              (_%g134664134681%_ _%g134665134684%_))))
                      (_%g134664134681%_ _%g134665134684%_)))))
          (_%g134663134726%_ _%stx134662%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self134592%_ _%stx134593%_)
        (let* ((_%g134595134612%_
                (lambda (_%g134596134609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134596134609%_))))
               (_%g134594134658%_
                (lambda (_%g134596134615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134596134615%_))
                      (let ((_%e134599134617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134596134615%_))))
                        (let ((_%hd134600134620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134599134617%_)))
                              (_%tl134601134622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134599134617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134601134622%_))
                              (let ((_%e134602134625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134601134622%_))))
                                (let ((_%hd134603134628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134602134625%_)))
                                      (_%tl134604134630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134602134625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134604134630%_))
                                      (let ((_%e134605134633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134604134630%_))))
                                        (let ((_%hd134606134636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134605134633%_)))
                                              (_%tl134607134638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134605134633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134607134638%_))
                                              ((lambda (_%L134641%_
                                                        _%L134642%_)
                                                 (let ((__tmp135239
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self134592%_
                                                           _%L134641%_)))
                                                       (__tmp135237
                                                        (let ((__tmp135238
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135238 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135239
                                                    gx#current-expander-phi
                                                    __tmp135237)))
                                               _%hd134606134636%_
                                               _%hd134603134628%_)
                                              (_%g134595134612%_
                                               _%g134596134615%_))))
                                      (_%g134595134612%_ _%g134596134615%_))))
                              (_%g134595134612%_ _%g134596134615%_))))
                      (_%g134595134612%_ _%g134596134615%_)))))
          (_%g134594134658%_ _%stx134593%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self134524%_ _%stx134525%_)
        (let* ((_%g134527134544%_
                (lambda (_%g134528134541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134528134541%_))))
               (_%g134526134589%_
                (lambda (_%g134528134547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134528134547%_))
                      (let ((_%e134531134549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134528134547%_))))
                        (let ((_%hd134532134552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134531134549%_)))
                              (_%tl134533134554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134531134549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134533134554%_))
                              (let ((_%e134534134557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134533134554%_))))
                                (let ((_%hd134535134560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134534134557%_)))
                                      (_%tl134536134562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134534134557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134536134562%_))
                                      (let ((_%e134537134565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134536134562%_))))
                                        (let ((_%hd134538134568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134537134565%_)))
                                              (_%tl134539134570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134537134565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134539134570%_))
                                              ((lambda (_%L134573%_
                                                        _%L134574%_)
                                                 (gxc#compile-e__1
                                                  _%self134524%_
                                                  _%L134573%_))
                                               _%hd134538134568%_
                                               _%hd134535134560%_)
                                              (_%g134527134544%_
                                               _%g134528134547%_))))
                                      (_%g134527134544%_ _%g134528134547%_))))
                              (_%g134527134544%_ _%g134528134547%_))))
                      (_%g134527134544%_ _%g134528134547%_)))))
          (_%g134526134589%_ _%stx134525%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self134406%_ _%stx134407%_)
        (let* ((_%g134409134437%_
                (lambda (_%g134410134434%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134410134434%_))))
               (_%g134408134521%_
                (lambda (_%g134410134440%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134410134440%_))
                      (let ((_%e134413134442%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134410134440%_))))
                        (let ((_%hd134414134445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134413134442%_)))
                              (_%tl134415134447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134413134442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134415134447%_))
                              (let ((_g135240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134415134447%_
                                        '0))))
                                (begin
                                  (let ((_g135241_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135240_)
                                               (##vector-length _g135240_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135241_ 2)))
                                        (error "Context expects 2 values"
                                               _g135241_)))
                                  (let ((_%target134416134450%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135240_ 0)))
                                        (_%tl134418134452%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135240_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134418134452%_))
                                        (letrec ((_%loop134419134455%_
                                                  (lambda (_%hd134417134458%_
                                                           _%body134423134460%_
                                                           _%hd134424134462%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134417134458%_))
                                                        (let ((_%e134420134465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134417134458%_))))
                  (let ((_%lp-hd134421134468%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134420134465%_)))
                        (_%lp-tl134422134470%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134420134465%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd134421134468%_))
                        (let ((_%e134427134473%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd134421134468%_))))
                          (let ((_%hd134428134476%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134427134473%_)))
                                (_%tl134429134478%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134427134473%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl134429134478%_))
                                (let ((_%e134430134481%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl134429134478%_))))
                                  (let ((_%hd134431134484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134430134481%_)))
                                        (_%tl134432134486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134430134481%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134432134486%_))
                                        (_%loop134419134455%_
                                         _%lp-tl134422134470%_
                                         (cons _%hd134431134484%_
                                               _%body134423134460%_)
                                         (cons _%hd134428134476%_
                                               _%hd134424134462%_))
                                        (_%g134409134437%_
                                         _%g134410134440%_))))
                                (_%g134409134437%_ _%g134410134440%_))))
                        (_%g134409134437%_ _%g134410134440%_))))
                (let ((_%body134425134489%_ (reverse _%body134423134460%_))
                      (_%hd134426134491%_ (reverse _%hd134424134462%_)))
                  ((lambda (_%L134494%_ _%L134495%_)
                     (for-each
                      (lambda (_%g134509134511%_)
                        (gxc#compile-e__1 _%self134406%_ _%g134509134511%_))
                      (let ((__tmp135242
                             (lambda (_%g134513134516%_ _%g134514134518%_)
                               (cons _%g134513134516%_ _%g134514134518%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135242 '() _%L134494%_))))
                   _%body134425134489%_
                   _%hd134426134491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134419134455%_
                                           _%target134416134450%_
                                           '()
                                           '()))
                                        (_%g134409134437%_
                                         _%g134410134440%_)))))
                              (_%g134409134437%_ _%g134410134440%_))))
                      (_%g134409134437%_ _%g134410134440%_)))))
          (_%g134408134521%_ _%stx134407%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self134259%_ _%stx134260%_)
        (let* ((_%g134262134297%_
                (lambda (_%g134263134294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134263134294%_))))
               (_%g134261134403%_
                (lambda (_%g134263134300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134263134300%_))
                      (let ((_%e134267134302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134263134300%_))))
                        (let ((_%hd134268134305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134267134302%_)))
                              (_%tl134269134307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134267134302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134269134307%_))
                              (let ((_%e134270134310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134269134307%_))))
                                (let ((_%hd134271134313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134270134310%_)))
                                      (_%tl134272134315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134270134310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134271134313%_))
                                      (let ((_g135243_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134271134313%_
                                                '0))))
                                        (begin
                                          (let ((_g135244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135243_)
                                                       (##vector-length
                                                        _g135243_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135244_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135244_)))
                                          (let ((_%target134273134318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135243_ 0)))
                                                (_%tl134275134320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135243_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134275134320%_))
                                                (letrec ((_%loop134276134323%_
                                                          (lambda (_%hd134274134326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134280134328%_
                           _%hd134281134330%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134274134326%_))
                        (let ((_%e134277134333%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134274134326%_))))
                          (let ((_%lp-hd134278134336%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134277134333%_)))
                                (_%lp-tl134279134338%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134277134333%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134278134336%_))
                                (let ((_%e134287134341%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134278134336%_))))
                                  (let ((_%hd134288134344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134287134341%_)))
                                        (_%tl134289134346%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134287134341%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134289134346%_))
                                        (let ((_%e134290134349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134289134346%_))))
                                          (let ((_%hd134291134352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134290134349%_)))
                                                (_%tl134292134354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134290134349%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134292134354%_))
                                                (_%loop134276134323%_
                                                 _%lp-tl134279134338%_
                                                 (cons _%hd134291134352%_
                                                       _%expr134280134328%_)
                                                 (cons _%hd134288134344%_
                                                       _%hd134281134330%_))
                                                (_%g134262134297%_
                                                 _%g134263134300%_))))
                                        (_%g134262134297%_
                                         _%g134263134300%_))))
                                (_%g134262134297%_ _%g134263134300%_))))
                        (let ((_%expr134282134357%_
                               (reverse _%expr134280134328%_))
                              (_%hd134283134359%_
                               (reverse _%hd134281134330%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134272134315%_))
                              (let ((_%e134284134362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134272134315%_))))
                                (let ((_%hd134285134365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134284134362%_)))
                                      (_%tl134286134367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134284134362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134286134367%_))
                                      ((lambda (_%L134370%_
                                                _%L134371%_
                                                _%L134372%_)
                                         (for-each
                                          (lambda (_%g134391134393%_)
                                            (gxc#compile-e__1
                                             _%self134259%_
                                             _%g134391134393%_))
                                          (let ((__tmp135246
                                                 (lambda (_%g134395134398%_
                                                          _%g134396134400%_)
                                                   (cons _%g134395134398%_
                                                         _%g134396134400%_)))
                                                (__tmp135245
                                                 (cons _%L134370%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135246
                                             __tmp135245
                                             _%L134371%_))))
                                       _%hd134285134365%_
                                       _%expr134282134357%_
                                       _%hd134283134359%_)
                                      (_%g134262134297%_ _%g134263134300%_))))
                              (_%g134262134297%_ _%g134263134300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134276134323%_
                                                   _%target134273134318%_
                                                   '()
                                                   '()))
                                                (_%g134262134297%_
                                                 _%g134263134300%_)))))
                                      (_%g134262134297%_ _%g134263134300%_))))
                              (_%g134262134297%_ _%g134263134300%_))))
                      (_%g134262134297%_ _%g134263134300%_)))))
          (_%g134261134403%_ _%stx134260%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self134204%_ _%stx134205%_)
        (let* ((_%g134207134221%_
                (lambda (_%g134208134218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134208134218%_))))
               (_%g134206134256%_
                (lambda (_%g134208134224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134208134224%_))
                      (let ((_%e134211134226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134208134224%_))))
                        (let ((_%hd134212134229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134211134226%_)))
                              (_%tl134213134231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134211134226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134213134231%_))
                              (let ((_%e134214134234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134213134231%_))))
                                (let ((_%hd134215134237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134214134234%_)))
                                      (_%tl134216134239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134214134234%_))))
                                  ((lambda (_%L134242%_ _%L134243%_)
                                     (gxc#compile-e__1
                                      _%self134204%_
                                      (last _%L134242%_)))
                                   _%tl134216134239%_
                                   _%hd134215134237%_)))
                              (_%g134207134221%_ _%g134208134224%_))))
                      (_%g134207134221%_ _%g134208134224%_)))))
          (_%g134206134256%_ _%stx134205%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self134136%_ _%stx134137%_)
        (let* ((_%g134139134156%_
                (lambda (_%g134140134153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134140134153%_))))
               (_%g134138134201%_
                (lambda (_%g134140134159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134140134159%_))
                      (let ((_%e134143134161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134140134159%_))))
                        (let ((_%hd134144134164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134143134161%_)))
                              (_%tl134145134166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134143134161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134145134166%_))
                              (let ((_%e134146134169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134145134166%_))))
                                (let ((_%hd134147134172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134146134169%_)))
                                      (_%tl134148134174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134146134169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134148134174%_))
                                      (let ((_%e134149134177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134148134174%_))))
                                        (let ((_%hd134150134180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134149134177%_)))
                                              (_%tl134151134182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134149134177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134151134182%_))
                                              ((lambda (_%L134185%_
                                                        _%L134186%_)
                                                 (gxc#compile-e__1
                                                  _%self134136%_
                                                  _%L134185%_))
                                               _%hd134150134180%_
                                               _%hd134147134172%_)
                                              (_%g134139134156%_
                                               _%g134140134159%_))))
                                      (_%g134139134156%_ _%g134140134159%_))))
                              (_%g134139134156%_ _%g134140134159%_))))
                      (_%g134139134156%_ _%g134140134159%_)))))
          (_%g134138134201%_ _%stx134137%_))))
    (define gxc#apply-operands
      (lambda (_%self134049%_ _%stx134050%_)
        (let* ((_%g134052134071%_
                (lambda (_%g134053134068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134053134068%_))))
               (_%g134051134133%_
                (lambda (_%g134053134074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134053134074%_))
                      (let ((_%e134055134076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134053134074%_))))
                        (let ((_%hd134056134079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134055134076%_)))
                              (_%tl134057134081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134055134076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134057134081%_))
                              (let ((_g135247_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134057134081%_
                                        '0))))
                                (begin
                                  (let ((_g135248_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135247_)
                                               (##vector-length _g135247_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135248_ 2)))
                                        (error "Context expects 2 values"
                                               _g135248_)))
                                  (let ((_%target134058134084%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135247_ 0)))
                                        (_%tl134060134086%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135247_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134060134086%_))
                                        (letrec ((_%loop134061134089%_
                                                  (lambda (_%hd134059134092%_
                                                           _%rands134065134094%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134059134092%_))
                                                        (let ((_%e134062134097%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134059134092%_))))
                  (let ((_%lp-hd134063134100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134062134097%_)))
                        (_%lp-tl134064134102%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134062134097%_))))
                    (_%loop134061134089%_
                     _%lp-tl134064134102%_
                     (cons _%lp-hd134063134100%_ _%rands134065134094%_))))
                (let ((_%rands134066134105%_ (reverse _%rands134065134094%_)))
                  ((lambda (_%L134108%_)
                     (for-each
                      (lambda (_%g134121134123%_)
                        (gxc#compile-e__1 _%self134049%_ _%g134121134123%_))
                      (let ((__tmp135249
                             (lambda (_%g134125134128%_ _%g134126134130%_)
                               (cons _%g134125134128%_ _%g134126134130%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135249 '() _%L134108%_))))
                   _%rands134066134105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134061134089%_
                                           _%target134058134084%_
                                           '()))
                                        (_%g134052134071%_
                                         _%g134053134074%_)))))
                              (_%g134052134071%_ _%g134053134074%_))))
                      (_%g134052134071%_ _%g134053134074%_)))))
          (_%g134051134133%_ _%stx134050%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx134046%_ _%src-stx134047%_)
        (let ((__tmp135250
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx134047%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx134046%_ __tmp135250))))
    (define gxc#xform-begin%
      (lambda (_%self134001%_ _%stx134002%_)
        (let* ((_%g134004134014%_
                (lambda (_%g134005134011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134005134011%_))))
               (_%g134003134043%_
                (lambda (_%g134005134017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134005134017%_))
                      (let ((_%e134007134019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134005134017%_))))
                        (let ((_%hd134008134022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134007134019%_)))
                              (_%tl134009134024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134007134019%_))))
                          ((lambda (_%L134027%_)
                             (let ((_%forms134041%_
                                    (map (lambda (_%g134036134038%_)
                                           (gxc#compile-e__1
                                            _%self134001%_
                                            _%g134036134038%_))
                                         _%L134027%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms134041%_)
                                _%stx134002%_)))
                           _%tl134009134024%_)))
                      (_%g134004134014%_ _%g134005134017%_)))))
          (_%g134003134043%_ _%stx134002%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133955%_ _%stx133956%_)
        (let* ((_%g133958133968%_
                (lambda (_%g133959133965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133959133965%_))))
               (_%g133957133998%_
                (lambda (_%g133959133971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133959133971%_))
                      (let ((_%e133961133973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133959133971%_))))
                        (let ((_%hd133962133976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133961133973%_)))
                              (_%tl133963133978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133961133973%_))))
                          ((lambda (_%L133981%_)
                             (let ((__tmp135253
                                    (lambda ()
                                      (let ((_%forms133996%_
                                             (map (lambda (_%g133991133993%_)
                                                    (gxc#compile-e__1
                                                     _%self133955%_
                                                     _%g133991133993%_))
                                                  _%L133981%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms133996%_)
                                         _%stx133956%_))))
                                   (__tmp135251
                                    (let ((__tmp135252
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp135252 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135253
                                gx#current-expander-phi
                                __tmp135251)))
                           _%tl133963133978%_)))
                      (_%g133958133968%_ _%g133959133971%_)))))
          (_%g133957133998%_ _%stx133956%_))))
    (define gxc#xform-module%
      (lambda (_%self133892%_ _%stx133893%_)
        (let* ((_%g133895133909%_
                (lambda (_%g133896133906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133896133906%_))))
               (_%g133894133952%_
                (lambda (_%g133896133912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133896133912%_))
                      (let ((_%e133899133914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133896133912%_))))
                        (let ((_%hd133900133917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133899133914%_)))
                              (_%tl133901133919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133899133914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133901133919%_))
                              (let ((_%e133902133922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133901133919%_))))
                                (let ((_%hd133903133925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133902133922%_)))
                                      (_%tl133904133927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133902133922%_))))
                                  ((lambda (_%L133930%_ _%L133931%_)
                                     (let* ((_%ctx133944%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133931%_)))
                                            (_%code133946%_
                                             (##structure-ref
                                              _%ctx133944%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133949%_
                                             (let ((__tmp135254
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self133892%_
                                                       _%code133946%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp135254
                                                gx#current-expander-context
                                                _%ctx133944%_))))
                                       (##structure-set!
                                        _%ctx133944%_
                                        _%code133949%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L133931%_
                                                    (cons _%code133949%_ '())))
                                        _%stx133893%_)))
                                   _%tl133904133927%_
                                   _%hd133903133925%_)))
                              (_%g133895133909%_ _%g133896133912%_))))
                      (_%g133895133909%_ _%g133896133912%_)))))
          (_%g133894133952%_ _%stx133893%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133822%_ _%stx133823%_)
        (let* ((_%g133825133842%_
                (lambda (_%g133826133839%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133826133839%_))))
               (_%g133824133889%_
                (lambda (_%g133826133845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133826133845%_))
                      (let ((_%e133829133847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133826133845%_))))
                        (let ((_%hd133830133850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133829133847%_)))
                              (_%tl133831133852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133829133847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133831133852%_))
                              (let ((_%e133832133855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133831133852%_))))
                                (let ((_%hd133833133858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133832133855%_)))
                                      (_%tl133834133860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133832133855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133834133860%_))
                                      (let ((_%e133835133863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133834133860%_))))
                                        (let ((_%hd133836133866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133835133863%_)))
                                              (_%tl133837133868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133835133863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133837133868%_))
                                              ((lambda (_%L133871%_
                                                        _%L133872%_)
                                                 (let ((_%expr133887%_
                                                        (gxc#compile-e__1
                                                         _%self133822%_
                                                         _%L133871%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L133872%_
                                                                (cons _%expr133887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133823%_)))
                                               _%hd133836133866%_
                                               _%hd133833133858%_)
                                              (_%g133825133842%_
                                               _%g133826133845%_))))
                                      (_%g133825133842%_ _%g133826133845%_))))
                              (_%g133825133842%_ _%g133826133845%_))))
                      (_%g133825133842%_ _%g133826133845%_)))))
          (_%g133824133889%_ _%stx133823%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133751%_ _%stx133752%_)
        (let* ((_%g133754133771%_
                (lambda (_%g133755133768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133755133768%_))))
               (_%g133753133819%_
                (lambda (_%g133755133774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133755133774%_))
                      (let ((_%e133758133776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133755133774%_))))
                        (let ((_%hd133759133779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133758133776%_)))
                              (_%tl133760133781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133758133776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133760133781%_))
                              (let ((_%e133761133784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133760133781%_))))
                                (let ((_%hd133762133787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133761133784%_)))
                                      (_%tl133763133789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133761133784%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133763133789%_))
                                      (let ((_%e133764133792%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133763133789%_))))
                                        (let ((_%hd133765133795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133764133792%_)))
                                              (_%tl133766133797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133764133792%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133766133797%_))
                                              ((lambda (_%L133800%_
                                                        _%L133801%_)
                                                 (let ((__tmp135257
                                                        (lambda ()
                                                          (let ((_%expr133817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self133751%_ _%L133800%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L133801%_ (cons _%expr133817%_ '())))
                     _%stx133752%_))))
               (__tmp135255
                (let ((__tmp135256
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135256 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135257
                                                    gx#current-expander-phi
                                                    __tmp135255)))
                                               _%hd133765133795%_
                                               _%hd133762133787%_)
                                              (_%g133754133771%_
                                               _%g133755133774%_))))
                                      (_%g133754133771%_ _%g133755133774%_))))
                              (_%g133754133771%_ _%g133755133774%_))))
                      (_%g133754133771%_ _%g133755133774%_)))))
          (_%g133753133819%_ _%stx133752%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133681%_ _%stx133682%_)
        (let* ((_%g133684133701%_
                (lambda (_%g133685133698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133685133698%_))))
               (_%g133683133748%_
                (lambda (_%g133685133704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133685133704%_))
                      (let ((_%e133688133706%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133685133704%_))))
                        (let ((_%hd133689133709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133688133706%_)))
                              (_%tl133690133711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133688133706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133690133711%_))
                              (let ((_%e133691133714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133690133711%_))))
                                (let ((_%hd133692133717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133691133714%_)))
                                      (_%tl133693133719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133691133714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133693133719%_))
                                      (let ((_%e133694133722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133693133719%_))))
                                        (let ((_%hd133695133725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133694133722%_)))
                                              (_%tl133696133727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133694133722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133696133727%_))
                                              ((lambda (_%L133730%_
                                                        _%L133731%_)
                                                 (let ((_%expr133746%_
                                                        (gxc#compile-e__1
                                                         _%self133681%_
                                                         _%L133730%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L133731%_
                                                                (cons _%expr133746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133682%_)))
                                               _%hd133695133725%_
                                               _%hd133692133717%_)
                                              (_%g133684133701%_
                                               _%g133685133704%_))))
                                      (_%g133684133701%_ _%g133685133704%_))))
                              (_%g133684133701%_ _%g133685133704%_))))
                      (_%g133684133701%_ _%g133685133704%_)))))
          (_%g133683133748%_ _%stx133682%_))))
    (define gxc#xform-lambda%
      (lambda (_%self133619%_ _%stx133620%_)
        (let* ((_%g133622133636%_
                (lambda (_%g133623133633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133623133633%_))))
               (_%g133621133678%_
                (lambda (_%g133623133639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133623133639%_))
                      (let ((_%e133626133641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133623133639%_))))
                        (let ((_%hd133627133644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133626133641%_)))
                              (_%tl133628133646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133626133641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133628133646%_))
                              (let ((_%e133629133649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133628133646%_))))
                                (let ((_%hd133630133652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133629133649%_)))
                                      (_%tl133631133654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133629133649%_))))
                                  ((lambda (_%L133657%_ _%L133658%_)
                                     (let ((__tmp135259
                                            (lambda ()
                                              (let ((_%body133676%_
                                                     (map (lambda (_%g133671133673%_)
                                                            (gxc#compile-e__1
                                                             _%self133619%_
                                                             _%g133671133673%_))
                                                          _%L133657%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L133658%_
                                                             _%body133676%_))
                                                 _%stx133620%_))))
                                           (__tmp135258
                                            (gxc#xform-let-locals
                                             _%L133658%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135259
                                        gxc#current-compile-local-env
                                        __tmp135258)))
                                   _%tl133631133654%_
                                   _%hd133630133652%_)))
                              (_%g133622133636%_ _%g133623133639%_))))
                      (_%g133622133636%_ _%g133623133639%_)))))
          (_%g133621133678%_ _%stx133620%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self133527%_ _%stx133528%_)
        (letrec ((_%clause-e133530%_
                  (lambda (_%clause133571%_)
                    (let* ((_%g133573133584%_
                            (lambda (_%g133574133581%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g133574133581%_))))
                           (_%g133572133616%_
                            (lambda (_%g133574133587%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g133574133587%_))
                                  (let ((_%e133577133589%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g133574133587%_))))
                                    (let ((_%hd133578133592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e133577133589%_)))
                                          (_%tl133579133594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e133577133589%_))))
                                      ((lambda (_%L133597%_ _%L133598%_)
                                         (let ((__tmp135261
                                                (lambda ()
                                                  (let ((_%body133614%_
                                                         (map (lambda (_%g133609133611%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self133527%_
                         _%g133609133611%_))
                      _%L133597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L133598%_
                                                          _%body133614%_))))
                                               (__tmp135260
                                                (gxc#xform-let-locals
                                                 _%L133598%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp135261
                                            gxc#current-compile-local-env
                                            __tmp135260)))
                                       _%tl133579133594%_
                                       _%hd133578133592%_)))
                                  (_%g133573133584%_ _%g133574133587%_)))))
                      (_%g133572133616%_ _%clause133571%_)))))
          (let* ((_%g133532133542%_
                  (lambda (_%g133533133539%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g133533133539%_))))
                 (_%g133531133568%_
                  (lambda (_%g133533133545%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g133533133545%_))
                        (let ((_%e133535133547%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g133533133545%_))))
                          (let ((_%hd133536133550%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133535133547%_)))
                                (_%tl133537133552%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133535133547%_))))
                            ((lambda (_%L133555%_)
                               (let ((_%clauses133566%_
                                      (map _%clause-e133530%_ _%L133555%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses133566%_)
                                  _%stx133528%_)))
                             _%tl133537133552%_)))
                        (_%g133532133542%_ _%g133533133545%_)))))
            (_%g133531133568%_ _%stx133528%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self133281%_ _%stx133282%_)
        (let* ((_%g133284133317%_
                (lambda (_%g133285133314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133285133314%_))))
               (_%g133283133524%_
                (lambda (_%g133285133320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133285133320%_))
                      (let ((_%e133290133322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133285133320%_))))
                        (let ((_%hd133291133325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133290133322%_)))
                              (_%tl133292133327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133290133322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133292133327%_))
                              (let ((_%e133293133330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133292133327%_))))
                                (let ((_%hd133294133333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133293133330%_)))
                                      (_%tl133295133335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133293133330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133294133333%_))
                                      (let ((_g135262_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133294133333%_
                                                '0))))
                                        (begin
                                          (let ((_g135263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135262_)
                                                       (##vector-length
                                                        _g135262_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135263_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135263_)))
                                          (let ((_%target133296133338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135262_ 0)))
                                                (_%tl133298133340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135262_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133298133340%_))
                                                (letrec ((_%loop133299133343%_
                                                          (lambda (_%hd133297133346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133303133348%_
                           _%hd133304133350%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133297133346%_))
                        (let ((_%e133300133353%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133297133346%_))))
                          (let ((_%lp-hd133301133356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133300133353%_)))
                                (_%lp-tl133302133358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133300133353%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133301133356%_))
                                (let ((_%e133307133361%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133301133356%_))))
                                  (let ((_%hd133308133364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133307133361%_)))
                                        (_%tl133309133366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133307133361%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133309133366%_))
                                        (let ((_%e133310133369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133309133366%_))))
                                          (let ((_%hd133311133372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133310133369%_)))
                                                (_%tl133312133374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133310133369%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133312133374%_))
                                                (_%loop133299133343%_
                                                 _%lp-tl133302133358%_
                                                 (cons _%hd133311133372%_
                                                       _%expr133303133348%_)
                                                 (cons _%hd133308133364%_
                                                       _%hd133304133350%_))
                                                (_%g133284133317%_
                                                 _%g133285133320%_))))
                                        (_%g133284133317%_
                                         _%g133285133320%_))))
                                (_%g133284133317%_ _%g133285133320%_))))
                        (let ((_%expr133305133377%_
                               (reverse _%expr133303133348%_))
                              (_%hd133306133379%_
                               (reverse _%hd133304133350%_)))
                          ((lambda (_%L133382%_
                                    _%L133383%_
                                    _%L133384%_
                                    _%L133385%_)
                             (let* ((_%g133404133420%_
                                     (lambda (_%g133405133417%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g133405133417%_))))
                                    (_%g133403133510%_
                                     (lambda (_%g133405133423%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g133405133423%_))
                                           (let ((_g135264_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g133405133423%_
                                                     '0))))
                                             (begin
                                               (let ((_g135265_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g135264_)
                                                            (##vector-length
                                                             _g135264_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g135265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g135265_)))
                                               (let ((_%target133407133425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135264_
                                                         0)))
                                                     (_%tl133409133427%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135264_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl133409133427%_))
                                                     (letrec ((_%loop133410133430%_
                                                               (lambda (_%hd133408133433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr133414133435%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd133408133433%_))
                             (let ((_%e133411133438%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd133408133433%_))))
                               (let ((_%lp-hd133412133441%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e133411133438%_)))
                                     (_%lp-tl133413133443%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e133411133438%_))))
                                 (_%loop133410133430%_
                                  _%lp-tl133413133443%_
                                  (cons _%lp-hd133412133441%_
                                        _%expr133414133435%_))))
                             (let ((_%expr133415133446%_
                                    (reverse _%expr133414133435%_)))
                               ((lambda (_%L133449%_)
                                  (let ((__tmp135268
                                         (lambda ()
                                           (let* ((_%g133463133470%_
                                                   (lambda (_%g133464133467%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133464133467%_))))
                                                  (_%g133462133496%_
                                                   (lambda (_%g133464133473%_)
                                                     ((lambda (_%L133475%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133385%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133449%_
                                  _%L133384%_))
                               (let ((__tmp135269
                                      (lambda (_%g133485133489%_
                                               _%g133486133491%_
                                               _%g133487133493%_)
                                        (cons (cons _%g133486133491%_
                                                    (cons _%g133485133489%_
                                                          '()))
                                              _%g133487133493%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135269
                                  '()
                                  _%L133449%_
                                  _%L133384%_)))
                             _%L133475%_))
                 _%stx133282%_))
              _%g133464133473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133462133496%_
                                              (map (lambda (_%g133498133500%_)
                                                     (gxc#compile-e__1
                                                      _%self133281%_
                                                      _%g133498133500%_))
                                                   _%L133382%_)))))
                                        (__tmp135266
                                         (gxc#xform-let-locals
                                          (let ((__tmp135267
                                                 (lambda (_%g133502133505%_
                                                          _%g133503133507%_)
                                                   (cons _%g133502133505%_
                                                         _%g133503133507%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135267
                                             '()
                                             _%L133384%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp135268
                                     gxc#current-compile-local-env
                                     __tmp135266)))
                                _%expr133415133446%_))))))
               (_%loop133410133430%_ _%target133407133425%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g133404133420%_
                                                      _%g133405133423%_)))))
                                           (_%g133404133420%_
                                            _%g133405133423%_)))))
                               (_%g133403133510%_
                                (map (lambda (_%g133512133514%_)
                                       (gxc#compile-e__1
                                        _%self133281%_
                                        _%g133512133514%_))
                                     (let ((__tmp135270
                                            (lambda (_%g133516133519%_
                                                     _%g133517133521%_)
                                              (cons _%g133516133519%_
                                                    _%g133517133521%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135270
                                        '()
                                        _%L133383%_))))))
                           _%tl133295133335%_
                           _%expr133305133377%_
                           _%hd133306133379%_
                           _%hd133291133325%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133299133343%_
                                                   _%target133296133338%_
                                                   '()
                                                   '()))
                                                (_%g133284133317%_
                                                 _%g133285133320%_)))))
                                      (_%g133284133317%_ _%g133285133320%_))))
                              (_%g133284133317%_ _%g133285133320%_))))
                      (_%g133284133317%_ _%g133285133320%_)))))
          (_%g133283133524%_ _%stx133282%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self133035%_ _%stx133036%_)
        (let* ((_%g133038133071%_
                (lambda (_%g133039133068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133039133068%_))))
               (_%g133037133278%_
                (lambda (_%g133039133074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133039133074%_))
                      (let ((_%e133044133076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133039133074%_))))
                        (let ((_%hd133045133079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133044133076%_)))
                              (_%tl133046133081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133044133076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133046133081%_))
                              (let ((_%e133047133084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133046133081%_))))
                                (let ((_%hd133048133087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133047133084%_)))
                                      (_%tl133049133089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133047133084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133048133087%_))
                                      (let ((_g135271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133048133087%_
                                                '0))))
                                        (begin
                                          (let ((_g135272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135271_)
                                                       (##vector-length
                                                        _g135271_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135272_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135272_)))
                                          (let ((_%target133050133092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135271_ 0)))
                                                (_%tl133052133094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135271_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133052133094%_))
                                                (letrec ((_%loop133053133097%_
                                                          (lambda (_%hd133051133100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133057133102%_
                           _%hd133058133104%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133051133100%_))
                        (let ((_%e133054133107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133051133100%_))))
                          (let ((_%lp-hd133055133110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133054133107%_)))
                                (_%lp-tl133056133112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133054133107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133055133110%_))
                                (let ((_%e133061133115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133055133110%_))))
                                  (let ((_%hd133062133118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133061133115%_)))
                                        (_%tl133063133120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133061133115%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133063133120%_))
                                        (let ((_%e133064133123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133063133120%_))))
                                          (let ((_%hd133065133126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133064133123%_)))
                                                (_%tl133066133128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133064133123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133066133128%_))
                                                (_%loop133053133097%_
                                                 _%lp-tl133056133112%_
                                                 (cons _%hd133065133126%_
                                                       _%expr133057133102%_)
                                                 (cons _%hd133062133118%_
                                                       _%hd133058133104%_))
                                                (_%g133038133071%_
                                                 _%g133039133074%_))))
                                        (_%g133038133071%_
                                         _%g133039133074%_))))
                                (_%g133038133071%_ _%g133039133074%_))))
                        (let ((_%expr133059133131%_
                               (reverse _%expr133057133102%_))
                              (_%hd133060133133%_
                               (reverse _%hd133058133104%_)))
                          ((lambda (_%L133136%_
                                    _%L133137%_
                                    _%L133138%_
                                    _%L133139%_)
                             (let ((__tmp135275
                                    (lambda ()
                                      (let* ((_%g133159133175%_
                                              (lambda (_%g133160133172%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g133160133172%_))))
                                             (_%g133158133257%_
                                              (lambda (_%g133160133178%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g133160133178%_))
                                                    (let ((_g135276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g133160133178%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g135277_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g135276_)
                             (##vector-length _g135276_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g135277_ 2)))
                      (error "Context expects 2 values" _g135277_)))
                (let ((_%target133162133180%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135276_ 0)))
                      (_%tl133164133182%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135276_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl133164133182%_))
                      (letrec ((_%loop133165133185%_
                                (lambda (_%hd133163133188%_
                                         _%expr133169133190%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd133163133188%_))
                                      (let ((_%e133166133193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd133163133188%_))))
                                        (let ((_%lp-hd133167133196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133166133193%_)))
                                              (_%lp-tl133168133198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133166133193%_))))
                                          (_%loop133165133185%_
                                           _%lp-tl133168133198%_
                                           (cons _%lp-hd133167133196%_
                                                 _%expr133169133190%_))))
                                      (let ((_%expr133170133201%_
                                             (reverse _%expr133169133190%_)))
                                        ((lambda (_%L133204%_)
                                           (let* ((_%g133218133225%_
                                                   (lambda (_%g133219133222%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133219133222%_))))
                                                  (_%g133217133250%_
                                                   (lambda (_%g133219133228%_)
                                                     ((lambda (_%L133230%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133139%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133204%_
                                  _%L133138%_))
                               (let ((__tmp135278
                                      (lambda (_%g133239133243%_
                                               _%g133240133245%_
                                               _%g133241133247%_)
                                        (cons (cons _%g133240133245%_
                                                    (cons _%g133239133243%_
                                                          '()))
                                              _%g133241133247%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135278
                                  '()
                                  _%L133204%_
                                  _%L133138%_)))
                             _%L133230%_))
                 _%stx133036%_))
              _%g133219133228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133217133250%_
                                              (map (lambda (_%g133252133254%_)
                                                     (gxc#compile-e__1
                                                      _%self133035%_
                                                      _%g133252133254%_))
                                                   _%L133136%_))))
                                         _%expr133170133201%_))))))
                        (_%loop133165133185%_ _%target133162133180%_ '()))
                      (_%g133159133175%_ _%g133160133178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133159133175%_
                                                     _%g133160133178%_)))))
                                        (_%g133158133257%_
                                         (map (lambda (_%g133259133261%_)
                                                (gxc#compile-e__1
                                                 _%self133035%_
                                                 _%g133259133261%_))
                                              (let ((__tmp135279
                                                     (lambda (_%g133263133266%_
                                                              _%g133264133268%_)
                                                       (cons _%g133263133266%_
                                                             _%g133264133268%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp135279
                                                 '()
                                                 _%L133137%_)))))))
                                   (__tmp135273
                                    (gxc#xform-let-locals
                                     (let ((__tmp135274
                                            (lambda (_%g133270133273%_
                                                     _%g133271133275%_)
                                              (cons _%g133270133273%_
                                                    _%g133271133275%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135274
                                        '()
                                        _%L133138%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135275
                                gxc#current-compile-local-env
                                __tmp135273)))
                           _%tl133049133089%_
                           _%expr133059133131%_
                           _%hd133060133133%_
                           _%hd133045133079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133053133097%_
                                                   _%target133050133092%_
                                                   '()
                                                   '()))
                                                (_%g133038133071%_
                                                 _%g133039133074%_)))))
                                      (_%g133038133071%_ _%g133039133074%_))))
                              (_%g133038133071%_ _%g133039133074%_))))
                      (_%g133038133071%_ _%g133039133074%_)))))
          (_%g133037133278%_ _%stx133036%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132902%_)
        (letrec ((_%flatten132904%_
                  (lambda (_%maybe-lst132962%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst132962%_))
                        (cons _%maybe-lst132962%_ '())
                        (let _%loop132964%_ ((_%rest132966%_
                                              _%maybe-lst132962%_)
                                             (_%result132967%_ '()))
                          (let* ((_%__stx135167135168%_ _%rest132966%_)
                                 (_%g132971132983%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx135167135168%_)))))
                            (let ((_%__kont135169135170%_
                                   (lambda (_%L133021%_ _%L133022%_)
                                     (_%loop132964%_
                                      _%L133021%_
                                      (let ((__tmp135280
                                             (_%flatten132904%_ _%L133022%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result132967%_
                                         __tmp135280)))))
                                  (_%__kont135171135172%_
                                   (lambda (_%L132995%_)
                                     (cons _%L132995%_ _%result132967%_)))
                                  (_%__kont135173135174%_
                                   (lambda () _%result132967%_)))
                              (let ((_%g132969133008%_
                                     (lambda ()
                                       (let ((_%L132995%_
                                              _%__stx135167135168%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L132995%_))
                                             (_%__kont135171135172%_
                                              _%L132995%_)
                                             (_%__kont135173135174%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx135167135168%_))
                                    (let ((_%e132975133013%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx135167135168%_))))
                                      (let ((_%tl132977133018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132975133013%_)))
                                            (_%hd132976133016%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132975133013%_))))
                                        (_%__kont135169135170%_
                                         _%tl132977133018%_
                                         _%hd132976133016%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g132969133008%_)))))))))))
          (let _%loop132906%_ ((_%rest132908%_
                                (_%flatten132904%_ _%bindings132902%_))
                               (_%locals132909%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest132910132921%_ _%rest132908%_)
                   (_%E132914132925%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest132910132921%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K132917132950%_
                     (lambda (_%rest132947%_ _%id132948%_)
                       (_%loop132906%_
                        _%rest132947%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id132948%_))
                              _%locals132909%_))))
                    (_%K132916132939%_
                     (lambda (_%id132937%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id132937%_))
                             _%locals132909%_)))
                    (_%K132915132930%_ (lambda () _%locals132909%_)))
                (let ((_%try-match132912132944%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest132910132921%_))
                             (let ((_%id132942%_ _%rest132910132921%_))
                               (_%K132916132939%_ _%id132942%_))
                             (_%K132915132930%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest132910132921%_))
                      (let ((_%tl132919132955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest132910132921%_)))
                            (_%hd132918132953%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest132910132921%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd132918132953%_))
                            (let ((_%id132958%_ _%hd132918132953%_)
                                  (_%rest132960%_ _%tl132919132955%_))
                              (_%K132917132950%_ _%rest132960%_ _%id132958%_))
                            (_%K132915132930%_)))
                      (_%try-match132912132944%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self132854%_ _%stx132855%_)
        (let* ((_%g132857132868%_
                (lambda (_%g132858132865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132858132865%_))))
               (_%g132856132899%_
                (lambda (_%g132858132871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132858132871%_))
                      (let ((_%e132861132873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132858132871%_))))
                        (let ((_%hd132862132876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132861132873%_)))
                              (_%tl132863132878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132861132873%_))))
                          ((lambda (_%L132881%_ _%L132882%_)
                             (let ((_%rands132897%_
                                    (map (lambda (_%g132892132894%_)
                                           (gxc#compile-e__1
                                            _%self132854%_
                                            _%g132892132894%_))
                                         _%L132881%_)))
                               (gxc#xform-wrap-source
                                (cons _%L132882%_ _%rands132897%_)
                                _%stx132855%_)))
                           _%tl132863132878%_
                           _%hd132862132876%_)))
                      (_%g132857132868%_ _%g132858132871%_)))))
          (_%g132856132899%_ _%stx132855%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132784%_ _%stx132785%_)
        (let* ((_%g132787132804%_
                (lambda (_%g132788132801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132788132801%_))))
               (_%g132786132851%_
                (lambda (_%g132788132807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132788132807%_))
                      (let ((_%e132791132809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132788132807%_))))
                        (let ((_%hd132792132812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132791132809%_)))
                              (_%tl132793132814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132791132809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132793132814%_))
                              (let ((_%e132794132817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132793132814%_))))
                                (let ((_%hd132795132820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132794132817%_)))
                                      (_%tl132796132822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132794132817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132796132822%_))
                                      (let ((_%e132797132825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132796132822%_))))
                                        (let ((_%hd132798132828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132797132825%_)))
                                              (_%tl132799132830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132797132825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132799132830%_))
                                              ((lambda (_%L132833%_
                                                        _%L132834%_)
                                                 (let ((_%expr132849%_
                                                        (gxc#compile-e__1
                                                         _%self132784%_
                                                         _%L132833%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L132834%_
                                                                (cons _%expr132849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132785%_)))
                                               _%hd132798132828%_
                                               _%hd132795132820%_)
                                              (_%g132787132804%_
                                               _%g132788132807%_))))
                                      (_%g132787132804%_ _%g132788132807%_))))
                              (_%g132787132804%_ _%g132788132807%_))))
                      (_%g132787132804%_ _%g132788132807%_)))))
          (_%g132786132851%_ _%stx132785%_))))))
