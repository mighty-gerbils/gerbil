(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771104509)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx195018%_)
        (let* ((_%self195020%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e195022%_
                (let ((__tmp195240 (gxc#stx-car-e _%stx195018%_)))
                  (declare (not safe))
                  (method-ref _%self195020%_ __tmp195240))))
          (if _%$e195022%_
              ((lambda (_%method195025%_)
                 (declare (not safe))
                 (let ((_%$e195028%_ (gx#stx-source _%stx195018%_)))
                   (if _%$e195028%_
                       ((lambda (_%source195031%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195025%_ _%self195020%_ _%stx195018%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195031%_ '()))
                                 (let ((_%$e195035%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195035%_ _%$e195035%_ '())))))
                        _%$e195028%_)
                       (_%method195025%_ _%self195020%_ _%stx195018%_))))
               _%$e195022%_)
              (let ((__tmp195242 (gxc#stx-car-e _%stx195018%_))
                    (__tmp195241
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195018%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195020%_
                       __tmp195242
                       __tmp195241))))))
    (define gxc#compile-e__1
      (lambda (_%self195040%_ _%stx195041%_)
        (let ((_%$e195043%_
               (let ((__tmp195243 (gxc#stx-car-e _%stx195041%_)))
                 (declare (not safe))
                 (method-ref _%self195040%_ __tmp195243))))
          (if _%$e195043%_
              ((lambda (_%method195046%_)
                 (declare (not safe))
                 (let ((_%$e195049%_ (gx#stx-source _%stx195041%_)))
                   (if _%$e195049%_
                       ((lambda (_%source195052%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195046%_ _%self195040%_ _%stx195041%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195052%_ '()))
                                 (let ((_%$e195056%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195056%_ _%$e195056%_ '())))))
                        _%$e195049%_)
                       (_%method195046%_ _%self195040%_ _%stx195041%_))))
               _%$e195043%_)
              (let ((__tmp195245 (gxc#stx-car-e _%stx195041%_))
                    (__tmp195244
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195041%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195040%_
                       __tmp195245
                       __tmp195244))))))
    (define gxc#compile-e
      (lambda _g195246_
        (let ((_g195247_ (let () (declare (not safe)) (##length _g195246_))))
          (cond ((let () (declare (not safe)) (##fx= _g195247_ 1))
                 (apply gxc#compile-e__0 _g195246_))
                ((let () (declare (not safe)) (##fx= _g195247_ 2))
                 (apply gxc#compile-e__1 _g195246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g195246_))))))
    (define gxc#stx-car-e
      (lambda (_%stx195016%_)
        (let ((__tmp195248
               (car (let () (declare (not safe)) (gx#stx-e _%stx195016%_)))))
          (declare (not safe))
          (gx#stx-e __tmp195248))))
    (define gxc#void-method (lambda (_%self195013%_ _%stx195014%_) '#!void))
    (define gxc#false-method (lambda (_%self195010%_ _%stx195011%_) '#f))
    (define gxc#true-method (lambda (_%self195007%_ _%stx195008%_) '#t))
    (define gxc#identity-method
      (lambda (_%self195004%_ _%stx195005%_) _%stx195005%_))
    (define gxc#::void-expression::t
      (let ((__tmp195249 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp195249
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args195001%_
        (apply make-instance gxc#::void-expression::t _%$args195001%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp195250
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
        (__make-atomic-promise __tmp195250)))
    (define gxc#::void-special-form::t
      (let ((__tmp195251 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp195251
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args194997%_
        (apply make-instance gxc#::void-special-form::t _%$args194997%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp195252
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
        (__make-atomic-promise __tmp195252)))
    (define gxc#::void::t
      (let ((__tmp195253
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp195253 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args194993%_
        (apply make-instance gxc#::void::t _%$args194993%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp195254
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195254)))
    (define gxc#::false-expression::t
      (let ((__tmp195255 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp195255
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args194989%_
        (apply make-instance gxc#::false-expression::t _%$args194989%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp195256
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
        (__make-atomic-promise __tmp195256)))
    (define gxc#::false-special-form::t
      (let ((__tmp195257 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp195257
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args194985%_
        (apply make-instance gxc#::false-special-form::t _%$args194985%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp195258
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
        (__make-atomic-promise __tmp195258)))
    (define gxc#::false::t
      (let ((__tmp195259
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp195259 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args194981%_
        (apply make-instance gxc#::false::t _%$args194981%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp195260
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195260)))
    (define gxc#::identity-expression::t
      (let ((__tmp195261 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp195261
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args194977%_
        (apply make-instance gxc#::identity-expression::t _%$args194977%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp195262
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
        (__make-atomic-promise __tmp195262)))
    (define gxc#::identity-special-form::t
      (let ((__tmp195263 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp195263
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args194973%_
        (apply make-instance gxc#::identity-special-form::t _%$args194973%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp195264
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
        (__make-atomic-promise __tmp195264)))
    (define gxc#::identity::t
      (let ((__tmp195265
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp195265
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args194969%_
        (apply make-instance gxc#::identity::t _%$args194969%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp195266
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195266)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp195267 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp195267
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args194965%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args194965%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp195268
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
        (__make-atomic-promise __tmp195268)))
    (define gxc#::basic-xform::t
      (let ((__tmp195269
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp195269
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args194961%_
        (apply make-instance gxc#::basic-xform::t _%$args194961%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp195270
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
        (__make-atomic-promise __tmp195270)))
    (define gxc#apply-begin%
      (lambda (_%self194917%_ _%stx194918%_)
        (let* ((_%g194920194930%_
                (lambda (_%g194921194927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194921194927%_))))
               (_%g194919194957%_
                (lambda (_%g194921194933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194921194933%_))
                      (let ((_%e194923194935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194921194933%_))))
                        (let ((_%hd194924194938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194923194935%_)))
                              (_%tl194925194940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194923194935%_))))
                          ((lambda (_%g194922194943%_)
                             (for-each
                              (lambda (_%g194952194954%_)
                                (gxc#compile-e__1
                                 _%self194917%_
                                 _%g194952194954%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g194922194943%_))))
                           _%tl194925194940%_)))
                      (_%g194920194930%_ _%g194921194933%_)))))
          (_%g194919194957%_ _%stx194918%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self194878%_ _%stx194879%_)
        (let* ((_%g194881194891%_
                (lambda (_%g194882194888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194882194888%_))))
               (_%g194880194914%_
                (lambda (_%g194882194894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194882194894%_))
                      (let ((_%e194884194896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194882194894%_))))
                        (let ((_%hd194885194899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194884194896%_)))
                              (_%tl194886194901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194884194896%_))))
                          ((lambda (_%g194883194904%_)
                             (gxc#compile-e__1
                              _%self194878%_
                              (last _%g194883194904%_)))
                           _%tl194886194901%_)))
                      (_%g194881194891%_ _%g194882194894%_)))))
          (_%g194880194914%_ _%stx194879%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self194874%_ _%stx194875%_)
        (let ((__tmp195273
               (lambda () (gxc#apply-begin% _%self194874%_ _%stx194875%_)))
              (__tmp195271
               (let ((__tmp195272
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp195272 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195273
           gx#current-expander-phi
           __tmp195271))))
    (define gxc#apply-module%
      (lambda (_%self194813%_ _%stx194814%_)
        (let* ((_%g194816194830%_
                (lambda (_%g194817194827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194817194827%_))))
               (_%g194815194871%_
                (lambda (_%g194817194833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194817194833%_))
                      (let ((_%e194820194835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194817194833%_))))
                        (let ((_%hd194821194838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194820194835%_)))
                              (_%tl194822194840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194820194835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194822194840%_))
                              (let ((_%e194823194843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194822194840%_))))
                                (let ((_%hd194824194846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194823194843%_)))
                                      (_%tl194825194848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194823194843%_))))
                                  ((lambda (_%g194818194851%_
                                            _%g194819194852%_)
                                     (let* ((_%ctx194865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194819194852%_)))
                                            (_%ctx-stx194867%_
                                             (##structure-ref
                                              _%ctx194865%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195274
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self194813%_
                                                _%ctx-stx194867%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195274
                                        gx#current-expander-context
                                        _%ctx194865%_)))
                                   _%tl194825194848%_
                                   _%hd194824194846%_)))
                              (_%g194816194830%_ _%g194817194833%_))))
                      (_%g194816194830%_ _%g194817194833%_)))))
          (_%g194815194871%_ _%stx194814%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self194745%_ _%stx194746%_)
        (let* ((_%g194748194765%_
                (lambda (_%g194749194762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194749194762%_))))
               (_%g194747194810%_
                (lambda (_%g194749194768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194749194768%_))
                      (let ((_%e194752194770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194749194768%_))))
                        (let ((_%hd194753194773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194752194770%_)))
                              (_%tl194754194775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194752194770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194754194775%_))
                              (let ((_%e194755194778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194754194775%_))))
                                (let ((_%hd194756194781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194755194778%_)))
                                      (_%tl194757194783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194755194778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194757194783%_))
                                      (let ((_%e194758194786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194757194783%_))))
                                        (let ((_%hd194759194789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194758194786%_)))
                                              (_%tl194760194791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194758194786%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194760194791%_))
                                              ((lambda (_%g194750194794%_
                                                        _%g194751194795%_)
                                                 (gxc#compile-e__1
                                                  _%self194745%_
                                                  _%g194750194794%_))
                                               _%hd194759194789%_
                                               _%hd194756194781%_)
                                              (_%g194748194765%_
                                               _%g194749194768%_))))
                                      (_%g194748194765%_ _%g194749194768%_))))
                              (_%g194748194765%_ _%g194749194768%_))))
                      (_%g194748194765%_ _%g194749194768%_)))))
          (_%g194747194810%_ _%stx194746%_))))
    (define gxc#apply-define-values%
      (lambda (_%self194677%_ _%stx194678%_)
        (let* ((_%g194680194697%_
                (lambda (_%g194681194694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194681194694%_))))
               (_%g194679194742%_
                (lambda (_%g194681194700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194681194700%_))
                      (let ((_%e194684194702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194681194700%_))))
                        (let ((_%hd194685194705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194684194702%_)))
                              (_%tl194686194707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194684194702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194686194707%_))
                              (let ((_%e194687194710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194686194707%_))))
                                (let ((_%hd194688194713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194687194710%_)))
                                      (_%tl194689194715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194687194710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194689194715%_))
                                      (let ((_%e194690194718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194689194715%_))))
                                        (let ((_%hd194691194721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194690194718%_)))
                                              (_%tl194692194723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194690194718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194692194723%_))
                                              ((lambda (_%g194682194726%_
                                                        _%g194683194727%_)
                                                 (gxc#compile-e__1
                                                  _%self194677%_
                                                  _%g194682194726%_))
                                               _%hd194691194721%_
                                               _%hd194688194713%_)
                                              (_%g194680194697%_
                                               _%g194681194700%_))))
                                      (_%g194680194697%_ _%g194681194700%_))))
                              (_%g194680194697%_ _%g194681194700%_))))
                      (_%g194680194697%_ _%g194681194700%_)))))
          (_%g194679194742%_ _%stx194678%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self194608%_ _%stx194609%_)
        (let* ((_%g194611194628%_
                (lambda (_%g194612194625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194612194625%_))))
               (_%g194610194674%_
                (lambda (_%g194612194631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194612194631%_))
                      (let ((_%e194615194633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194612194631%_))))
                        (let ((_%hd194616194636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194615194633%_)))
                              (_%tl194617194638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194615194633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194617194638%_))
                              (let ((_%e194618194641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194617194638%_))))
                                (let ((_%hd194619194644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194618194641%_)))
                                      (_%tl194620194646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194618194641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194620194646%_))
                                      (let ((_%e194621194649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194620194646%_))))
                                        (let ((_%hd194622194652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194621194649%_)))
                                              (_%tl194623194654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194621194649%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194623194654%_))
                                              ((lambda (_%g194613194657%_
                                                        _%g194614194658%_)
                                                 (let ((__tmp195277
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self194608%_
                                                           _%g194613194657%_)))
                                                       (__tmp195275
                                                        (let ((__tmp195276
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195276 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195277
                                                    gx#current-expander-phi
                                                    __tmp195275)))
                                               _%hd194622194652%_
                                               _%hd194619194644%_)
                                              (_%g194611194628%_
                                               _%g194612194631%_))))
                                      (_%g194611194628%_ _%g194612194631%_))))
                              (_%g194611194628%_ _%g194612194631%_))))
                      (_%g194611194628%_ _%g194612194631%_)))))
          (_%g194610194674%_ _%stx194609%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self194540%_ _%stx194541%_)
        (let* ((_%g194543194560%_
                (lambda (_%g194544194557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194544194557%_))))
               (_%g194542194605%_
                (lambda (_%g194544194563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194544194563%_))
                      (let ((_%e194547194565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194544194563%_))))
                        (let ((_%hd194548194568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194547194565%_)))
                              (_%tl194549194570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194547194565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194549194570%_))
                              (let ((_%e194550194573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194549194570%_))))
                                (let ((_%hd194551194576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194550194573%_)))
                                      (_%tl194552194578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194550194573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194552194578%_))
                                      (let ((_%e194553194581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194552194578%_))))
                                        (let ((_%hd194554194584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194553194581%_)))
                                              (_%tl194555194586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194553194581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194555194586%_))
                                              ((lambda (_%g194545194589%_
                                                        _%g194546194590%_)
                                                 (gxc#compile-e__1
                                                  _%self194540%_
                                                  _%g194545194589%_))
                                               _%hd194554194584%_
                                               _%hd194551194576%_)
                                              (_%g194543194560%_
                                               _%g194544194563%_))))
                                      (_%g194543194560%_ _%g194544194563%_))))
                              (_%g194543194560%_ _%g194544194563%_))))
                      (_%g194543194560%_ _%g194544194563%_)))))
          (_%g194542194605%_ _%stx194541%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self194426%_ _%stx194427%_)
        (let* ((_%g194429194457%_
                (lambda (_%g194430194454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194430194454%_))))
               (_%g194428194537%_
                (lambda (_%g194430194460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194430194460%_))
                      (let ((_%e194433194462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194430194460%_))))
                        (let ((_%hd194434194465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194433194462%_)))
                              (_%tl194435194467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194433194462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194435194467%_))
                              (let ((_g195278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194435194467%_
                                        '0))))
                                (begin
                                  (let ((_g195279_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195278_)
                                               (##values-length _g195278_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195279_ 2)))
                                        (error "Context expects 2 values"
                                               _g195279_)))
                                  (let ((_%target194436194470%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195278_ 0)))
                                        (_%tl194438194472%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195278_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194438194472%_))
                                        (letrec ((_%loop194439194475%_
                                                  (lambda (_%hd194437194478%_
                                                           _%body194443194480%_
                                                           _%hd194444194481%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194437194478%_))
                                                        (let ((_%e194440194483%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194437194478%_))))
                  (let ((_%lp-hd194441194486%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194440194483%_)))
                        (_%lp-tl194442194488%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194440194483%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194441194486%_))
                        (let ((_%e194447194491%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd194441194486%_))))
                          (let ((_%hd194448194494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194447194491%_)))
                                (_%tl194449194496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194447194491%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194449194496%_))
                                (let ((_%e194450194499%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194449194496%_))))
                                  (let ((_%hd194451194502%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194450194499%_)))
                                        (_%tl194452194504%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194450194499%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194452194504%_))
                                        (_%loop194439194475%_
                                         _%lp-tl194442194488%_
                                         (cons _%hd194451194502%_
                                               _%body194443194480%_)
                                         (cons _%hd194448194494%_
                                               _%hd194444194481%_))
                                        (_%g194429194457%_
                                         _%g194430194460%_))))
                                (_%g194429194457%_ _%g194430194460%_))))
                        (_%g194429194457%_ _%g194430194460%_))))
                (let ((_%body194445194507%_ (reverse _%body194443194480%_))
                      (_%hd194446194508%_ (reverse _%hd194444194481%_)))
                  ((lambda (_%g194431194510%_ _%g194432194511%_)
                     (for-each
                      (lambda (_%g194525194527%_)
                        (gxc#compile-e__1 _%self194426%_ _%g194525194527%_))
                      (let ((__tmp195280
                             (lambda (_%g194529194532%_ _%g194530194534%_)
                               (cons _%g194529194532%_ _%g194530194534%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195280 '() _%g194431194510%_))))
                   _%body194445194507%_
                   _%hd194446194508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194439194475%_
                                           _%target194436194470%_
                                           '()
                                           '()))
                                        (_%g194429194457%_
                                         _%g194430194460%_)))))
                              (_%g194429194457%_ _%g194430194460%_))))
                      (_%g194429194457%_ _%g194430194460%_)))))
          (_%g194428194537%_ _%stx194427%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self194283%_ _%stx194284%_)
        (let* ((_%g194286194321%_
                (lambda (_%g194287194318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194287194318%_))))
               (_%g194285194423%_
                (lambda (_%g194287194324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194287194324%_))
                      (let ((_%e194291194326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194287194324%_))))
                        (let ((_%hd194292194329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194291194326%_)))
                              (_%tl194293194331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194291194326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194293194331%_))
                              (let ((_%e194294194334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194293194331%_))))
                                (let ((_%hd194295194337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194294194334%_)))
                                      (_%tl194296194339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194294194334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194295194337%_))
                                      (let ((_g195281_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194295194337%_
                                                '0))))
                                        (begin
                                          (let ((_g195282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195281_)
                                                       (##values-length
                                                        _g195281_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195282_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195282_)))
                                          (let ((_%target194297194342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195281_ 0)))
                                                (_%tl194299194344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195281_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194299194344%_))
                                                (letrec ((_%loop194300194347%_
                                                          (lambda (_%hd194298194350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194304194352%_
                           _%hd194305194353%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194298194350%_))
                        (let ((_%e194301194355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194298194350%_))))
                          (let ((_%lp-hd194302194358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194301194355%_)))
                                (_%lp-tl194303194360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194301194355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194302194358%_))
                                (let ((_%e194308194363%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194302194358%_))))
                                  (let ((_%hd194309194366%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194308194363%_)))
                                        (_%tl194310194368%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194308194363%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194310194368%_))
                                        (let ((_%e194311194371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194310194368%_))))
                                          (let ((_%hd194312194374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194311194371%_)))
                                                (_%tl194313194376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194311194371%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194313194376%_))
                                                (_%loop194300194347%_
                                                 _%lp-tl194303194360%_
                                                 (cons _%hd194312194374%_
                                                       _%expr194304194352%_)
                                                 (cons _%hd194309194366%_
                                                       _%hd194305194353%_))
                                                (_%g194286194321%_
                                                 _%g194287194324%_))))
                                        (_%g194286194321%_
                                         _%g194287194324%_))))
                                (_%g194286194321%_ _%g194287194324%_))))
                        (let ((_%expr194306194379%_
                               (reverse _%expr194304194352%_))
                              (_%hd194307194380%_
                               (reverse _%hd194305194353%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194296194339%_))
                              (let ((_%e194314194382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194296194339%_))))
                                (let ((_%hd194315194385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194314194382%_)))
                                      (_%tl194316194387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194314194382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194316194387%_))
                                      ((lambda (_%g194288194390%_
                                                _%g194289194391%_
                                                _%g194290194392%_)
                                         (for-each
                                          (lambda (_%g194411194413%_)
                                            (gxc#compile-e__1
                                             _%self194283%_
                                             _%g194411194413%_))
                                          (let ((__tmp195284
                                                 (lambda (_%g194415194418%_
                                                          _%g194416194420%_)
                                                   (cons _%g194415194418%_
                                                         _%g194416194420%_)))
                                                (__tmp195283
                                                 (cons _%g194288194390%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195284
                                             __tmp195283
                                             _%g194289194391%_))))
                                       _%hd194315194385%_
                                       _%expr194306194379%_
                                       _%hd194307194380%_)
                                      (_%g194286194321%_ _%g194287194324%_))))
                              (_%g194286194321%_ _%g194287194324%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194300194347%_
                                                   _%target194297194342%_
                                                   '()
                                                   '()))
                                                (_%g194286194321%_
                                                 _%g194287194324%_)))))
                                      (_%g194286194321%_ _%g194287194324%_))))
                              (_%g194286194321%_ _%g194287194324%_))))
                      (_%g194286194321%_ _%g194287194324%_)))))
          (_%g194285194423%_ _%stx194284%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self194228%_ _%stx194229%_)
        (let* ((_%g194231194245%_
                (lambda (_%g194232194242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194232194242%_))))
               (_%g194230194280%_
                (lambda (_%g194232194248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194232194248%_))
                      (let ((_%e194235194250%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194232194248%_))))
                        (let ((_%hd194236194253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194235194250%_)))
                              (_%tl194237194255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194235194250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194237194255%_))
                              (let ((_%e194238194258%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194237194255%_))))
                                (let ((_%hd194239194261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194238194258%_)))
                                      (_%tl194240194263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194238194258%_))))
                                  ((lambda (_%g194233194266%_
                                            _%g194234194267%_)
                                     (gxc#compile-e__1
                                      _%self194228%_
                                      (last _%g194233194266%_)))
                                   _%tl194240194263%_
                                   _%hd194239194261%_)))
                              (_%g194231194245%_ _%g194232194248%_))))
                      (_%g194231194245%_ _%g194232194248%_)))))
          (_%g194230194280%_ _%stx194229%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194160%_ _%stx194161%_)
        (let* ((_%g194163194180%_
                (lambda (_%g194164194177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194164194177%_))))
               (_%g194162194225%_
                (lambda (_%g194164194183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194164194183%_))
                      (let ((_%e194167194185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194164194183%_))))
                        (let ((_%hd194168194188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194167194185%_)))
                              (_%tl194169194190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194167194185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194169194190%_))
                              (let ((_%e194170194193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194169194190%_))))
                                (let ((_%hd194171194196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194170194193%_)))
                                      (_%tl194172194198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194170194193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194172194198%_))
                                      (let ((_%e194173194201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194172194198%_))))
                                        (let ((_%hd194174194204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194173194201%_)))
                                              (_%tl194175194206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194173194201%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194175194206%_))
                                              ((lambda (_%g194165194209%_
                                                        _%g194166194210%_)
                                                 (gxc#compile-e__1
                                                  _%self194160%_
                                                  _%g194165194209%_))
                                               _%hd194174194204%_
                                               _%hd194171194196%_)
                                              (_%g194163194180%_
                                               _%g194164194183%_))))
                                      (_%g194163194180%_ _%g194164194183%_))))
                              (_%g194163194180%_ _%g194164194183%_))))
                      (_%g194163194180%_ _%g194164194183%_)))))
          (_%g194162194225%_ _%stx194161%_))))
    (define gxc#apply-operands
      (lambda (_%self194075%_ _%stx194076%_)
        (let* ((_%g194078194097%_
                (lambda (_%g194079194094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194079194094%_))))
               (_%g194077194157%_
                (lambda (_%g194079194100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194079194100%_))
                      (let ((_%e194081194102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194079194100%_))))
                        (let ((_%hd194082194105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194081194102%_)))
                              (_%tl194083194107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194081194102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194083194107%_))
                              (let ((_g195285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194083194107%_
                                        '0))))
                                (begin
                                  (let ((_g195286_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195285_)
                                               (##values-length _g195285_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195286_ 2)))
                                        (error "Context expects 2 values"
                                               _g195286_)))
                                  (let ((_%target194084194110%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195285_ 0)))
                                        (_%tl194086194112%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195285_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194086194112%_))
                                        (letrec ((_%loop194087194115%_
                                                  (lambda (_%hd194085194118%_
                                                           _%rands194091194120%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194085194118%_))
                                                        (let ((_%e194088194122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194085194118%_))))
                  (let ((_%lp-hd194089194125%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194088194122%_)))
                        (_%lp-tl194090194127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194088194122%_))))
                    (_%loop194087194115%_
                     _%lp-tl194090194127%_
                     (cons _%lp-hd194089194125%_ _%rands194091194120%_))))
                (let ((_%rands194092194130%_ (reverse _%rands194091194120%_)))
                  ((lambda (_%g194080194132%_)
                     (for-each
                      (lambda (_%g194145194147%_)
                        (gxc#compile-e__1 _%self194075%_ _%g194145194147%_))
                      (let ((__tmp195287
                             (lambda (_%g194149194152%_ _%g194150194154%_)
                               (cons _%g194149194152%_ _%g194150194154%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195287 '() _%g194080194132%_))))
                   _%rands194092194130%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194087194115%_
                                           _%target194084194110%_
                                           '()))
                                        (_%g194078194097%_
                                         _%g194079194100%_)))))
                              (_%g194078194097%_ _%g194079194100%_))))
                      (_%g194078194097%_ _%g194079194100%_)))))
          (_%g194077194157%_ _%stx194076%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx194072%_ _%src-stx194073%_)
        (let ((__tmp195288
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx194073%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx194072%_ __tmp195288))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx194068%_ _%src-stx194069%_ _%ctx194070%_)
        (gxc#compile-e__1
         _%ctx194070%_
         (gxc#xform-wrap-source _%stx194068%_ _%src-stx194069%_))))
    (define gxc#xform-begin%
      (lambda (_%self194023%_ _%stx194024%_)
        (let* ((_%g194026194036%_
                (lambda (_%g194027194033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194027194033%_))))
               (_%g194025194065%_
                (lambda (_%g194027194039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194027194039%_))
                      (let ((_%e194029194041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194027194039%_))))
                        (let ((_%hd194030194044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194029194041%_)))
                              (_%tl194031194046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194029194041%_))))
                          ((lambda (_%g194028194049%_)
                             (let ((_%forms194063%_
                                    (map (lambda (_%g194058194060%_)
                                           (gxc#compile-e__1
                                            _%self194023%_
                                            _%g194058194060%_))
                                         _%g194028194049%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms194063%_)
                                _%stx194024%_)))
                           _%tl194031194046%_)))
                      (_%g194026194036%_ _%g194027194039%_)))))
          (_%g194025194065%_ _%stx194024%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self193977%_ _%stx193978%_)
        (let* ((_%g193980193990%_
                (lambda (_%g193981193987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193981193987%_))))
               (_%g193979194020%_
                (lambda (_%g193981193993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193981193993%_))
                      (let ((_%e193983193995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193981193993%_))))
                        (let ((_%hd193984193998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193983193995%_)))
                              (_%tl193985194000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193983193995%_))))
                          ((lambda (_%g193982194003%_)
                             (let ((__tmp195291
                                    (lambda ()
                                      (let ((_%forms194018%_
                                             (map (lambda (_%g194013194015%_)
                                                    (gxc#compile-e__1
                                                     _%self193977%_
                                                     _%g194013194015%_))
                                                  _%g193982194003%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms194018%_)
                                         _%stx193978%_))))
                                   (__tmp195289
                                    (let ((__tmp195290
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195290 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195291
                                gx#current-expander-phi
                                __tmp195289)))
                           _%tl193985194000%_)))
                      (_%g193980193990%_ _%g193981193993%_)))))
          (_%g193979194020%_ _%stx193978%_))))
    (define gxc#xform-module%
      (lambda (_%self193914%_ _%stx193915%_)
        (let* ((_%g193917193931%_
                (lambda (_%g193918193928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193918193928%_))))
               (_%g193916193974%_
                (lambda (_%g193918193934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193918193934%_))
                      (let ((_%e193921193936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193918193934%_))))
                        (let ((_%hd193922193939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193921193936%_)))
                              (_%tl193923193941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193921193936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193923193941%_))
                              (let ((_%e193924193944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193923193941%_))))
                                (let ((_%hd193925193947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193924193944%_)))
                                      (_%tl193926193949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193924193944%_))))
                                  ((lambda (_%g193919193952%_
                                            _%g193920193953%_)
                                     (let* ((_%ctx193966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193920193953%_)))
                                            (_%code193968%_
                                             (##structure-ref
                                              _%ctx193966%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code193971%_
                                             (let ((__tmp195292
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self193914%_
                                                       _%code193968%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp195292
                                                gx#current-expander-context
                                                _%ctx193966%_))))
                                       (##structure-set!
                                        _%ctx193966%_
                                        _%code193971%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g193920193953%_
                                                    (cons _%code193971%_ '())))
                                        _%stx193915%_)))
                                   _%tl193926193949%_
                                   _%hd193925193947%_)))
                              (_%g193917193931%_ _%g193918193934%_))))
                      (_%g193917193931%_ _%g193918193934%_)))))
          (_%g193916193974%_ _%stx193915%_))))
    (define gxc#xform-define-values%
      (lambda (_%self193844%_ _%stx193845%_)
        (let* ((_%g193847193864%_
                (lambda (_%g193848193861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193848193861%_))))
               (_%g193846193911%_
                (lambda (_%g193848193867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193848193867%_))
                      (let ((_%e193851193869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193848193867%_))))
                        (let ((_%hd193852193872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193851193869%_)))
                              (_%tl193853193874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193851193869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193853193874%_))
                              (let ((_%e193854193877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193853193874%_))))
                                (let ((_%hd193855193880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193854193877%_)))
                                      (_%tl193856193882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193854193877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193856193882%_))
                                      (let ((_%e193857193885%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193856193882%_))))
                                        (let ((_%hd193858193888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193857193885%_)))
                                              (_%tl193859193890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193857193885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193859193890%_))
                                              ((lambda (_%g193849193893%_
                                                        _%g193850193894%_)
                                                 (let ((_%expr193909%_
                                                        (gxc#compile-e__1
                                                         _%self193844%_
                                                         _%g193849193893%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g193850193894%_
                                                                (cons _%expr193909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193845%_)))
                                               _%hd193858193888%_
                                               _%hd193855193880%_)
                                              (_%g193847193864%_
                                               _%g193848193867%_))))
                                      (_%g193847193864%_ _%g193848193867%_))))
                              (_%g193847193864%_ _%g193848193867%_))))
                      (_%g193847193864%_ _%g193848193867%_)))))
          (_%g193846193911%_ _%stx193845%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self193773%_ _%stx193774%_)
        (let* ((_%g193776193793%_
                (lambda (_%g193777193790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193777193790%_))))
               (_%g193775193841%_
                (lambda (_%g193777193796%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193777193796%_))
                      (let ((_%e193780193798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193777193796%_))))
                        (let ((_%hd193781193801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193780193798%_)))
                              (_%tl193782193803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193780193798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193782193803%_))
                              (let ((_%e193783193806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193782193803%_))))
                                (let ((_%hd193784193809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193783193806%_)))
                                      (_%tl193785193811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193783193806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193785193811%_))
                                      (let ((_%e193786193814%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193785193811%_))))
                                        (let ((_%hd193787193817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193786193814%_)))
                                              (_%tl193788193819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193786193814%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193788193819%_))
                                              ((lambda (_%g193778193822%_
                                                        _%g193779193823%_)
                                                 (let ((__tmp195295
                                                        (lambda ()
                                                          (let ((_%expr193839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self193773%_ _%g193778193822%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g193779193823%_ (cons _%expr193839%_ '())))
                     _%stx193774%_))))
               (__tmp195293
                (let ((__tmp195294
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195294 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195295
                                                    gx#current-expander-phi
                                                    __tmp195293)))
                                               _%hd193787193817%_
                                               _%hd193784193809%_)
                                              (_%g193776193793%_
                                               _%g193777193796%_))))
                                      (_%g193776193793%_ _%g193777193796%_))))
                              (_%g193776193793%_ _%g193777193796%_))))
                      (_%g193776193793%_ _%g193777193796%_)))))
          (_%g193775193841%_ _%stx193774%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self193703%_ _%stx193704%_)
        (let* ((_%g193706193723%_
                (lambda (_%g193707193720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193707193720%_))))
               (_%g193705193770%_
                (lambda (_%g193707193726%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193707193726%_))
                      (let ((_%e193710193728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193707193726%_))))
                        (let ((_%hd193711193731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193710193728%_)))
                              (_%tl193712193733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193710193728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193712193733%_))
                              (let ((_%e193713193736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193712193733%_))))
                                (let ((_%hd193714193739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193713193736%_)))
                                      (_%tl193715193741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193713193736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193715193741%_))
                                      (let ((_%e193716193744%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193715193741%_))))
                                        (let ((_%hd193717193747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193716193744%_)))
                                              (_%tl193718193749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193716193744%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193718193749%_))
                                              ((lambda (_%g193708193752%_
                                                        _%g193709193753%_)
                                                 (let ((_%expr193768%_
                                                        (gxc#compile-e__1
                                                         _%self193703%_
                                                         _%g193708193752%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g193709193753%_
                                                                (cons _%expr193768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193704%_)))
                                               _%hd193717193747%_
                                               _%hd193714193739%_)
                                              (_%g193706193723%_
                                               _%g193707193726%_))))
                                      (_%g193706193723%_ _%g193707193726%_))))
                              (_%g193706193723%_ _%g193707193726%_))))
                      (_%g193706193723%_ _%g193707193726%_)))))
          (_%g193705193770%_ _%stx193704%_))))
    (define gxc#xform-lambda%
      (lambda (_%self193641%_ _%stx193642%_)
        (let* ((_%g193644193658%_
                (lambda (_%g193645193655%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193645193655%_))))
               (_%g193643193700%_
                (lambda (_%g193645193661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193645193661%_))
                      (let ((_%e193648193663%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193645193661%_))))
                        (let ((_%hd193649193666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193648193663%_)))
                              (_%tl193650193668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193648193663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193650193668%_))
                              (let ((_%e193651193671%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193650193668%_))))
                                (let ((_%hd193652193674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193651193671%_)))
                                      (_%tl193653193676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193651193671%_))))
                                  ((lambda (_%g193646193679%_
                                            _%g193647193680%_)
                                     (let ((__tmp195297
                                            (lambda ()
                                              (let ((_%body193698%_
                                                     (map (lambda (_%g193693193695%_)
                                                            (gxc#compile-e__1
                                                             _%self193641%_
                                                             _%g193693193695%_))
                                                          _%g193646193679%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g193647193680%_
                                                             _%body193698%_))
                                                 _%stx193642%_))))
                                           (__tmp195296
                                            (gxc#xform-let-locals
                                             _%g193647193680%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195297
                                        gxc#current-compile-local-env
                                        __tmp195296)))
                                   _%tl193653193676%_
                                   _%hd193652193674%_)))
                              (_%g193644193658%_ _%g193645193661%_))))
                      (_%g193644193658%_ _%g193645193661%_)))))
          (_%g193643193700%_ _%stx193642%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self193549%_ _%stx193550%_)
        (letrec ((_%clause-e193552%_
                  (lambda (_%clause193593%_)
                    (let* ((_%g193595193606%_
                            (lambda (_%g193596193603%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g193596193603%_))))
                           (_%g193594193638%_
                            (lambda (_%g193596193609%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g193596193609%_))
                                  (let ((_%e193599193611%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g193596193609%_))))
                                    (let ((_%hd193600193614%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193599193611%_)))
                                          (_%tl193601193616%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193599193611%_))))
                                      ((lambda (_%g193597193619%_
                                                _%g193598193620%_)
                                         (let ((__tmp195299
                                                (lambda ()
                                                  (let ((_%body193636%_
                                                         (map (lambda (_%g193631193633%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self193549%_
                         _%g193631193633%_))
                      _%g193597193619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g193598193620%_
                                                          _%body193636%_))))
                                               (__tmp195298
                                                (gxc#xform-let-locals
                                                 _%g193598193620%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp195299
                                            gxc#current-compile-local-env
                                            __tmp195298)))
                                       _%tl193601193616%_
                                       _%hd193600193614%_)))
                                  (_%g193595193606%_ _%g193596193609%_)))))
                      (_%g193594193638%_ _%clause193593%_)))))
          (let* ((_%g193554193564%_
                  (lambda (_%g193555193561%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193555193561%_))))
                 (_%g193553193590%_
                  (lambda (_%g193555193567%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193555193567%_))
                        (let ((_%e193557193569%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193555193567%_))))
                          (let ((_%hd193558193572%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193557193569%_)))
                                (_%tl193559193574%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193557193569%_))))
                            ((lambda (_%g193556193577%_)
                               (let ((_%clauses193588%_
                                      (map _%clause-e193552%_
                                           _%g193556193577%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses193588%_)
                                  _%stx193550%_)))
                             _%tl193559193574%_)))
                        (_%g193554193564%_ _%g193555193567%_)))))
            (_%g193553193590%_ _%stx193550%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self193309%_ _%stx193310%_)
        (let* ((_%g193312193345%_
                (lambda (_%g193313193342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193313193342%_))))
               (_%g193311193546%_
                (lambda (_%g193313193348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193313193348%_))
                      (let ((_%e193318193350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193313193348%_))))
                        (let ((_%hd193319193353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193318193350%_)))
                              (_%tl193320193355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193318193350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193320193355%_))
                              (let ((_%e193321193358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193320193355%_))))
                                (let ((_%hd193322193361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193321193358%_)))
                                      (_%tl193323193363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193321193358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193322193361%_))
                                      (let ((_g195300_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193322193361%_
                                                '0))))
                                        (begin
                                          (let ((_g195301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195300_)
                                                       (##values-length
                                                        _g195300_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195301_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195301_)))
                                          (let ((_%target193324193366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195300_ 0)))
                                                (_%tl193326193368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195300_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193326193368%_))
                                                (letrec ((_%loop193327193371%_
                                                          (lambda (_%hd193325193374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193331193376%_
                           _%hd193332193377%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193325193374%_))
                        (let ((_%e193328193379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193325193374%_))))
                          (let ((_%lp-hd193329193382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193328193379%_)))
                                (_%lp-tl193330193384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193328193379%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193329193382%_))
                                (let ((_%e193335193387%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193329193382%_))))
                                  (let ((_%hd193336193390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193335193387%_)))
                                        (_%tl193337193392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193335193387%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193337193392%_))
                                        (let ((_%e193338193395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193337193392%_))))
                                          (let ((_%hd193339193398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193338193395%_)))
                                                (_%tl193340193400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193338193395%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193340193400%_))
                                                (_%loop193327193371%_
                                                 _%lp-tl193330193384%_
                                                 (cons _%hd193339193398%_
                                                       _%expr193331193376%_)
                                                 (cons _%hd193336193390%_
                                                       _%hd193332193377%_))
                                                (_%g193312193345%_
                                                 _%g193313193348%_))))
                                        (_%g193312193345%_
                                         _%g193313193348%_))))
                                (_%g193312193345%_ _%g193313193348%_))))
                        (let ((_%expr193333193403%_
                               (reverse _%expr193331193376%_))
                              (_%hd193334193404%_
                               (reverse _%hd193332193377%_)))
                          ((lambda (_%g193314193406%_
                                    _%g193315193407%_
                                    _%g193316193408%_
                                    _%g193317193409%_)
                             (let* ((_%g193428193444%_
                                     (lambda (_%g193429193441%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193429193441%_))))
                                    (_%g193427193532%_
                                     (lambda (_%g193429193447%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g193429193447%_))
                                           (let ((_g195302_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g193429193447%_
                                                     '0))))
                                             (begin
                                               (let ((_g195303_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g195302_)
                                                            (##values-length
                                                             _g195302_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g195303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g195303_)))
                                               (let ((_%target193431193449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195302_
                                                         0)))
                                                     (_%tl193433193451%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195302_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193433193451%_))
                                                     (letrec ((_%loop193434193454%_
                                                               (lambda (_%hd193432193457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr193438193459%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd193432193457%_))
                             (let ((_%e193435193461%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd193432193457%_))))
                               (let ((_%lp-hd193436193464%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e193435193461%_)))
                                     (_%lp-tl193437193466%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e193435193461%_))))
                                 (_%loop193434193454%_
                                  _%lp-tl193437193466%_
                                  (cons _%lp-hd193436193464%_
                                        _%expr193438193459%_))))
                             (let ((_%expr193439193469%_
                                    (reverse _%expr193438193459%_)))
                               ((lambda (_%g193430193471%_)
                                  (let ((__tmp195306
                                         (lambda ()
                                           (let* ((_%g193485193492%_
                                                   (lambda (_%g193486193489%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193486193489%_))))
                                                  (_%g193484193518%_
                                                   (lambda (_%g193486193495%_)
                                                     ((lambda (_%g193487193497%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193317193409%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193430193471%_
                                  _%g193316193408%_))
                               (let ((__tmp195307
                                      (lambda (_%g193507193511%_
                                               _%g193508193513%_
                                               _%g193509193515%_)
                                        (cons (cons _%g193508193513%_
                                                    (cons _%g193507193511%_
                                                          '()))
                                              _%g193509193515%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195307
                                  '()
                                  _%g193430193471%_
                                  _%g193316193408%_)))
                             _%g193487193497%_))
                 _%stx193310%_))
              _%g193486193495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193484193518%_
                                              (map (lambda (_%g193520193522%_)
                                                     (gxc#compile-e__1
                                                      _%self193309%_
                                                      _%g193520193522%_))
                                                   _%g193314193406%_)))))
                                        (__tmp195304
                                         (gxc#xform-let-locals
                                          (let ((__tmp195305
                                                 (lambda (_%g193524193527%_
                                                          _%g193525193529%_)
                                                   (cons _%g193524193527%_
                                                         _%g193525193529%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195305
                                             '()
                                             _%g193316193408%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp195306
                                     gxc#current-compile-local-env
                                     __tmp195304)))
                                _%expr193439193469%_))))))
               (_%loop193434193454%_ _%target193431193449%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g193428193444%_
                                                      _%g193429193447%_)))))
                                           (_%g193428193444%_
                                            _%g193429193447%_)))))
                               (_%g193427193532%_
                                (map (lambda (_%g193534193536%_)
                                       (gxc#compile-e__1
                                        _%self193309%_
                                        _%g193534193536%_))
                                     (let ((__tmp195308
                                            (lambda (_%g193538193541%_
                                                     _%g193539193543%_)
                                              (cons _%g193538193541%_
                                                    _%g193539193543%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195308
                                        '()
                                        _%g193315193407%_))))))
                           _%tl193323193363%_
                           _%expr193333193403%_
                           _%hd193334193404%_
                           _%hd193319193353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193327193371%_
                                                   _%target193324193366%_
                                                   '()
                                                   '()))
                                                (_%g193312193345%_
                                                 _%g193313193348%_)))))
                                      (_%g193312193345%_ _%g193313193348%_))))
                              (_%g193312193345%_ _%g193313193348%_))))
                      (_%g193312193345%_ _%g193313193348%_)))))
          (_%g193311193546%_ _%stx193310%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self193069%_ _%stx193070%_)
        (let* ((_%g193072193105%_
                (lambda (_%g193073193102%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193073193102%_))))
               (_%g193071193306%_
                (lambda (_%g193073193108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193073193108%_))
                      (let ((_%e193078193110%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193073193108%_))))
                        (let ((_%hd193079193113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193078193110%_)))
                              (_%tl193080193115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193078193110%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193080193115%_))
                              (let ((_%e193081193118%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193080193115%_))))
                                (let ((_%hd193082193121%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193081193118%_)))
                                      (_%tl193083193123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193081193118%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193082193121%_))
                                      (let ((_g195309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193082193121%_
                                                '0))))
                                        (begin
                                          (let ((_g195310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195309_)
                                                       (##values-length
                                                        _g195309_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195310_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195310_)))
                                          (let ((_%target193084193126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195309_ 0)))
                                                (_%tl193086193128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195309_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193086193128%_))
                                                (letrec ((_%loop193087193131%_
                                                          (lambda (_%hd193085193134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193091193136%_
                           _%hd193092193137%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193085193134%_))
                        (let ((_%e193088193139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193085193134%_))))
                          (let ((_%lp-hd193089193142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193088193139%_)))
                                (_%lp-tl193090193144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193088193139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193089193142%_))
                                (let ((_%e193095193147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193089193142%_))))
                                  (let ((_%hd193096193150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193095193147%_)))
                                        (_%tl193097193152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193095193147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193097193152%_))
                                        (let ((_%e193098193155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193097193152%_))))
                                          (let ((_%hd193099193158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193098193155%_)))
                                                (_%tl193100193160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193098193155%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193100193160%_))
                                                (_%loop193087193131%_
                                                 _%lp-tl193090193144%_
                                                 (cons _%hd193099193158%_
                                                       _%expr193091193136%_)
                                                 (cons _%hd193096193150%_
                                                       _%hd193092193137%_))
                                                (_%g193072193105%_
                                                 _%g193073193108%_))))
                                        (_%g193072193105%_
                                         _%g193073193108%_))))
                                (_%g193072193105%_ _%g193073193108%_))))
                        (let ((_%expr193093193163%_
                               (reverse _%expr193091193136%_))
                              (_%hd193094193164%_
                               (reverse _%hd193092193137%_)))
                          ((lambda (_%g193074193166%_
                                    _%g193075193167%_
                                    _%g193076193168%_
                                    _%g193077193169%_)
                             (let ((__tmp195313
                                    (lambda ()
                                      (let* ((_%g193189193205%_
                                              (lambda (_%g193190193202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g193190193202%_))))
                                             (_%g193188193285%_
                                              (lambda (_%g193190193208%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g193190193208%_))
                                                    (let ((_g195314_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g193190193208%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g195315_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g195314_)
                             (##values-length _g195314_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195315_ 2)))
                      (error "Context expects 2 values" _g195315_)))
                (let ((_%target193192193210%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195314_ 0)))
                      (_%tl193194193212%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195314_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193194193212%_))
                      (letrec ((_%loop193195193215%_
                                (lambda (_%hd193193193218%_
                                         _%expr193199193220%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193193193218%_))
                                      (let ((_%e193196193222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd193193193218%_))))
                                        (let ((_%lp-hd193197193225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193196193222%_)))
                                              (_%lp-tl193198193227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193196193222%_))))
                                          (_%loop193195193215%_
                                           _%lp-tl193198193227%_
                                           (cons _%lp-hd193197193225%_
                                                 _%expr193199193220%_))))
                                      (let ((_%expr193200193230%_
                                             (reverse _%expr193199193220%_)))
                                        ((lambda (_%g193191193232%_)
                                           (let* ((_%g193246193253%_
                                                   (lambda (_%g193247193250%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193247193250%_))))
                                                  (_%g193245193278%_
                                                   (lambda (_%g193247193256%_)
                                                     ((lambda (_%g193248193258%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193077193169%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193191193232%_
                                  _%g193076193168%_))
                               (let ((__tmp195316
                                      (lambda (_%g193267193271%_
                                               _%g193268193273%_
                                               _%g193269193275%_)
                                        (cons (cons _%g193268193273%_
                                                    (cons _%g193267193271%_
                                                          '()))
                                              _%g193269193275%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195316
                                  '()
                                  _%g193191193232%_
                                  _%g193076193168%_)))
                             _%g193248193258%_))
                 _%stx193070%_))
              _%g193247193256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193245193278%_
                                              (map (lambda (_%g193280193282%_)
                                                     (gxc#compile-e__1
                                                      _%self193069%_
                                                      _%g193280193282%_))
                                                   _%g193074193166%_))))
                                         _%expr193200193230%_))))))
                        (_%loop193195193215%_ _%target193192193210%_ '()))
                      (_%g193189193205%_ _%g193190193208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g193189193205%_
                                                     _%g193190193208%_)))))
                                        (_%g193188193285%_
                                         (map (lambda (_%g193287193289%_)
                                                (gxc#compile-e__1
                                                 _%self193069%_
                                                 _%g193287193289%_))
                                              (let ((__tmp195317
                                                     (lambda (_%g193291193294%_
                                                              _%g193292193296%_)
                                                       (cons _%g193291193294%_
                                                             _%g193292193296%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp195317
                                                 '()
                                                 _%g193075193167%_)))))))
                                   (__tmp195311
                                    (gxc#xform-let-locals
                                     (let ((__tmp195312
                                            (lambda (_%g193298193301%_
                                                     _%g193299193303%_)
                                              (cons _%g193298193301%_
                                                    _%g193299193303%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195312
                                        '()
                                        _%g193076193168%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195313
                                gxc#current-compile-local-env
                                __tmp195311)))
                           _%tl193083193123%_
                           _%expr193093193163%_
                           _%hd193094193164%_
                           _%hd193079193113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193087193131%_
                                                   _%target193084193126%_
                                                   '()
                                                   '()))
                                                (_%g193072193105%_
                                                 _%g193073193108%_)))))
                                      (_%g193072193105%_ _%g193073193108%_))))
                              (_%g193072193105%_ _%g193073193108%_))))
                      (_%g193072193105%_ _%g193073193108%_)))))
          (_%g193071193306%_ _%stx193070%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings192936%_)
        (letrec ((_%flatten192938%_
                  (lambda (_%maybe-lst192996%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst192996%_))
                        (cons _%maybe-lst192996%_ '())
                        (let _%loop192998%_ ((_%rest193000%_
                                              _%maybe-lst192996%_)
                                             (_%result193001%_ '()))
                          (let* ((_%__stx195205195206%_ _%rest193000%_)
                                 (_%g193005193017%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx195205195206%_)))))
                            (let ((_%__kont195207195208%_
                                   (lambda (_%g193007193055%_
                                            _%g193008193056%_)
                                     (_%loop192998%_
                                      _%g193007193055%_
                                      (let ((__tmp195318
                                             (_%flatten192938%_
                                              _%g193008193056%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result193001%_
                                         __tmp195318)))))
                                  (_%__kont195209195210%_
                                   (lambda (_%g193012193029%_)
                                     (cons _%g193012193029%_
                                           _%result193001%_)))
                                  (_%__kont195211195212%_
                                   (lambda () _%result193001%_)))
                              (let ((_%g193003193042%_
                                     (lambda ()
                                       (let ((_%g193012193029%_
                                              _%__stx195205195206%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g193012193029%_))
                                             (_%__kont195209195210%_
                                              _%g193012193029%_)
                                             (_%__kont195211195212%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx195205195206%_))
                                    (let ((_%e193009193047%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx195205195206%_))))
                                      (let ((_%tl193011193052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193009193047%_)))
                                            (_%hd193010193050%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193009193047%_))))
                                        (_%__kont195207195208%_
                                         _%tl193011193052%_
                                         _%hd193010193050%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193003193042%_)))))))))))
          (let _%loop192940%_ ((_%rest192942%_
                                (_%flatten192938%_ _%bindings192936%_))
                               (_%locals192943%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest192944192955%_ _%rest192942%_)
                   (_%E192948192959%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest192944192955%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K192951192984%_
                     (lambda (_%rest192981%_ _%id192982%_)
                       (_%loop192940%_
                        _%rest192981%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id192982%_))
                              _%locals192943%_))))
                    (_%K192950192973%_
                     (lambda (_%id192971%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id192971%_))
                             _%locals192943%_)))
                    (_%K192949192964%_ (lambda () _%locals192943%_)))
                (let ((_%try-match192946192978%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest192944192955%_))
                             (let ((_%id192976%_ _%rest192944192955%_))
                               (_%K192950192973%_ _%id192976%_))
                             (_%K192949192964%_)))))
                  (if (pair? _%rest192944192955%_)
                      (let ((_%tl192953192989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest192944192955%_)))
                            (_%hd192952192987%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest192944192955%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd192952192987%_))
                            (let ((_%id192992%_ _%hd192952192987%_)
                                  (_%rest192994%_ _%tl192953192989%_))
                              (_%K192951192984%_ _%rest192994%_ _%id192992%_))
                            (_%K192949192964%_)))
                      (_%try-match192946192978%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self192888%_ _%stx192889%_)
        (let* ((_%g192891192902%_
                (lambda (_%g192892192899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192892192899%_))))
               (_%g192890192933%_
                (lambda (_%g192892192905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192892192905%_))
                      (let ((_%e192895192907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192892192905%_))))
                        (let ((_%hd192896192910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192895192907%_)))
                              (_%tl192897192912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192895192907%_))))
                          ((lambda (_%g192893192915%_ _%g192894192916%_)
                             (let ((_%rands192931%_
                                    (map (lambda (_%g192926192928%_)
                                           (gxc#compile-e__1
                                            _%self192888%_
                                            _%g192926192928%_))
                                         _%g192893192915%_)))
                               (gxc#xform-wrap-source
                                (cons _%g192894192916%_ _%rands192931%_)
                                _%stx192889%_)))
                           _%tl192897192912%_
                           _%hd192896192910%_)))
                      (_%g192891192902%_ _%g192892192905%_)))))
          (_%g192890192933%_ _%stx192889%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self192818%_ _%stx192819%_)
        (let* ((_%g192821192838%_
                (lambda (_%g192822192835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192822192835%_))))
               (_%g192820192885%_
                (lambda (_%g192822192841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192822192841%_))
                      (let ((_%e192825192843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192822192841%_))))
                        (let ((_%hd192826192846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192825192843%_)))
                              (_%tl192827192848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192825192843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192827192848%_))
                              (let ((_%e192828192851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192827192848%_))))
                                (let ((_%hd192829192854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192828192851%_)))
                                      (_%tl192830192856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192828192851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192830192856%_))
                                      (let ((_%e192831192859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192830192856%_))))
                                        (let ((_%hd192832192862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192831192859%_)))
                                              (_%tl192833192864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192831192859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192833192864%_))
                                              ((lambda (_%g192823192867%_
                                                        _%g192824192868%_)
                                                 (let ((_%expr192883%_
                                                        (gxc#compile-e__1
                                                         _%self192818%_
                                                         _%g192823192867%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g192824192868%_
                                                                (cons _%expr192883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192819%_)))
                                               _%hd192832192862%_
                                               _%hd192829192854%_)
                                              (_%g192821192838%_
                                               _%g192822192841%_))))
                                      (_%g192821192838%_ _%g192822192841%_))))
                              (_%g192821192838%_ _%g192822192841%_))))
                      (_%g192821192838%_ _%g192822192841%_)))))
          (_%g192820192885%_ _%stx192819%_))))))
