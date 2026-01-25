(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1769384629)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx150131%_)
        (let* ((_%self150133%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e150135%_
                (let ((__tmp150353 (gxc#stx-car-e _%stx150131%_)))
                  (declare (not safe))
                  (method-ref _%self150133%_ __tmp150353))))
          (if _%$e150135%_
              ((lambda (_%method150138%_)
                 (declare (not safe))
                 (let ((_%$e150141%_ (gx#stx-source _%stx150131%_)))
                   (if _%$e150141%_
                       ((lambda (_%source150144%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method150138%_ _%self150133%_ _%stx150131%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source150144%_ '()))
                                 (let ((_%$e150148%_
                                        (gxc#current-compile-context)))
                                   (if _%$e150148%_ _%$e150148%_ '())))))
                        _%$e150141%_)
                       (_%method150138%_ _%self150133%_ _%stx150131%_))))
               _%$e150135%_)
              (let ((__tmp150355 (gxc#stx-car-e _%stx150131%_))
                    (__tmp150354
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx150131%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self150133%_
                       __tmp150355
                       __tmp150354))))))
    (define gxc#compile-e__1
      (lambda (_%self150153%_ _%stx150154%_)
        (let ((_%$e150156%_
               (let ((__tmp150356 (gxc#stx-car-e _%stx150154%_)))
                 (declare (not safe))
                 (method-ref _%self150153%_ __tmp150356))))
          (if _%$e150156%_
              ((lambda (_%method150159%_)
                 (declare (not safe))
                 (let ((_%$e150162%_ (gx#stx-source _%stx150154%_)))
                   (if _%$e150162%_
                       ((lambda (_%source150165%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method150159%_ _%self150153%_ _%stx150154%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source150165%_ '()))
                                 (let ((_%$e150169%_
                                        (gxc#current-compile-context)))
                                   (if _%$e150169%_ _%$e150169%_ '())))))
                        _%$e150162%_)
                       (_%method150159%_ _%self150153%_ _%stx150154%_))))
               _%$e150156%_)
              (let ((__tmp150358 (gxc#stx-car-e _%stx150154%_))
                    (__tmp150357
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx150154%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self150153%_
                       __tmp150358
                       __tmp150357))))))
    (define gxc#compile-e
      (lambda _g150359_
        (let ((_g150360_ (let () (declare (not safe)) (##length _g150359_))))
          (cond ((let () (declare (not safe)) (##fx= _g150360_ 1))
                 (apply gxc#compile-e__0 _g150359_))
                ((let () (declare (not safe)) (##fx= _g150360_ 2))
                 (apply gxc#compile-e__1 _g150359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g150359_))))))
    (define gxc#stx-car-e
      (lambda (_%stx150129%_)
        (let ((__tmp150361
               (car (let () (declare (not safe)) (gx#stx-e _%stx150129%_)))))
          (declare (not safe))
          (gx#stx-e __tmp150361))))
    (define gxc#void-method (lambda (_%self150126%_ _%stx150127%_) '#!void))
    (define gxc#false-method (lambda (_%self150123%_ _%stx150124%_) '#f))
    (define gxc#true-method (lambda (_%self150120%_ _%stx150121%_) '#t))
    (define gxc#identity-method
      (lambda (_%self150117%_ _%stx150118%_) _%stx150118%_))
    (define gxc#::void-expression::t
      (let ((__tmp150362 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp150362
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args150114%_
        (apply make-instance gxc#::void-expression::t _%$args150114%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp150363
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
        (__make-atomic-promise __tmp150363)))
    (define gxc#::void-special-form::t
      (let ((__tmp150364 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp150364
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args150110%_
        (apply make-instance gxc#::void-special-form::t _%$args150110%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp150365
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
        (__make-atomic-promise __tmp150365)))
    (define gxc#::void::t
      (let ((__tmp150366
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp150366 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args150106%_
        (apply make-instance gxc#::void::t _%$args150106%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp150367
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150367)))
    (define gxc#::false-expression::t
      (let ((__tmp150368 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp150368
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args150102%_
        (apply make-instance gxc#::false-expression::t _%$args150102%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp150369
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
        (__make-atomic-promise __tmp150369)))
    (define gxc#::false-special-form::t
      (let ((__tmp150370 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp150370
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args150098%_
        (apply make-instance gxc#::false-special-form::t _%$args150098%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp150371
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
        (__make-atomic-promise __tmp150371)))
    (define gxc#::false::t
      (let ((__tmp150372
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp150372 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args150094%_
        (apply make-instance gxc#::false::t _%$args150094%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp150373
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150373)))
    (define gxc#::identity-expression::t
      (let ((__tmp150374 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp150374
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args150090%_
        (apply make-instance gxc#::identity-expression::t _%$args150090%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp150375
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
        (__make-atomic-promise __tmp150375)))
    (define gxc#::identity-special-form::t
      (let ((__tmp150376 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp150376
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args150086%_
        (apply make-instance gxc#::identity-special-form::t _%$args150086%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp150377
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
        (__make-atomic-promise __tmp150377)))
    (define gxc#::identity::t
      (let ((__tmp150378
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp150378
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args150082%_
        (apply make-instance gxc#::identity::t _%$args150082%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp150379
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150379)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp150380 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp150380
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args150078%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args150078%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp150381
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
        (__make-atomic-promise __tmp150381)))
    (define gxc#::basic-xform::t
      (let ((__tmp150382
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp150382
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args150074%_
        (apply make-instance gxc#::basic-xform::t _%$args150074%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp150383
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
        (__make-atomic-promise __tmp150383)))
    (define gxc#apply-begin%
      (lambda (_%self150030%_ _%stx150031%_)
        (let* ((_%g150033150043%_
                (lambda (_%g150034150040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150034150040%_))))
               (_%g150032150070%_
                (lambda (_%g150034150046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150034150046%_))
                      (let ((_%e150036150048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150034150046%_))))
                        (let ((_%hd150037150051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150036150048%_)))
                              (_%tl150038150053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150036150048%_))))
                          ((lambda (_%g150035150056%_)
                             (for-each
                              (lambda (_%g150065150067%_)
                                (gxc#compile-e__1
                                 _%self150030%_
                                 _%g150065150067%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g150035150056%_))))
                           _%tl150038150053%_)))
                      (_%g150033150043%_ _%g150034150046%_)))))
          (_%g150032150070%_ _%stx150031%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self149991%_ _%stx149992%_)
        (let* ((_%g149994150004%_
                (lambda (_%g149995150001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149995150001%_))))
               (_%g149993150027%_
                (lambda (_%g149995150007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149995150007%_))
                      (let ((_%e149997150009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149995150007%_))))
                        (let ((_%hd149998150012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149997150009%_)))
                              (_%tl149999150014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149997150009%_))))
                          ((lambda (_%g149996150017%_)
                             (gxc#compile-e__1
                              _%self149991%_
                              (last _%g149996150017%_)))
                           _%tl149999150014%_)))
                      (_%g149994150004%_ _%g149995150007%_)))))
          (_%g149993150027%_ _%stx149992%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self149987%_ _%stx149988%_)
        (let ((__tmp150386
               (lambda () (gxc#apply-begin% _%self149987%_ _%stx149988%_)))
              (__tmp150384
               (let ((__tmp150385
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp150385 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp150386
           gx#current-expander-phi
           __tmp150384))))
    (define gxc#apply-module%
      (lambda (_%self149926%_ _%stx149927%_)
        (let* ((_%g149929149943%_
                (lambda (_%g149930149940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149930149940%_))))
               (_%g149928149984%_
                (lambda (_%g149930149946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149930149946%_))
                      (let ((_%e149933149948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149930149946%_))))
                        (let ((_%hd149934149951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149933149948%_)))
                              (_%tl149935149953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149933149948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149935149953%_))
                              (let ((_%e149936149956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149935149953%_))))
                                (let ((_%hd149937149959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149936149956%_)))
                                      (_%tl149938149961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149936149956%_))))
                                  ((lambda (_%g149931149964%_
                                            _%g149932149965%_)
                                     (let* ((_%ctx149978%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g149932149965%_)))
                                            (_%ctx-stx149980%_
                                             (##structure-ref
                                              _%ctx149978%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp150387
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self149926%_
                                                _%ctx-stx149980%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150387
                                        gx#current-expander-context
                                        _%ctx149978%_)))
                                   _%tl149938149961%_
                                   _%hd149937149959%_)))
                              (_%g149929149943%_ _%g149930149946%_))))
                      (_%g149929149943%_ _%g149930149946%_)))))
          (_%g149928149984%_ _%stx149927%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self149858%_ _%stx149859%_)
        (let* ((_%g149861149878%_
                (lambda (_%g149862149875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149862149875%_))))
               (_%g149860149923%_
                (lambda (_%g149862149881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149862149881%_))
                      (let ((_%e149865149883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149862149881%_))))
                        (let ((_%hd149866149886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149865149883%_)))
                              (_%tl149867149888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149865149883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149867149888%_))
                              (let ((_%e149868149891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149867149888%_))))
                                (let ((_%hd149869149894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149868149891%_)))
                                      (_%tl149870149896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149868149891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149870149896%_))
                                      (let ((_%e149871149899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149870149896%_))))
                                        (let ((_%hd149872149902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149871149899%_)))
                                              (_%tl149873149904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149871149899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149873149904%_))
                                              ((lambda (_%g149863149907%_
                                                        _%g149864149908%_)
                                                 (gxc#compile-e__1
                                                  _%self149858%_
                                                  _%g149863149907%_))
                                               _%hd149872149902%_
                                               _%hd149869149894%_)
                                              (_%g149861149878%_
                                               _%g149862149881%_))))
                                      (_%g149861149878%_ _%g149862149881%_))))
                              (_%g149861149878%_ _%g149862149881%_))))
                      (_%g149861149878%_ _%g149862149881%_)))))
          (_%g149860149923%_ _%stx149859%_))))
    (define gxc#apply-define-values%
      (lambda (_%self149790%_ _%stx149791%_)
        (let* ((_%g149793149810%_
                (lambda (_%g149794149807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149794149807%_))))
               (_%g149792149855%_
                (lambda (_%g149794149813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149794149813%_))
                      (let ((_%e149797149815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149794149813%_))))
                        (let ((_%hd149798149818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149797149815%_)))
                              (_%tl149799149820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149797149815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149799149820%_))
                              (let ((_%e149800149823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149799149820%_))))
                                (let ((_%hd149801149826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149800149823%_)))
                                      (_%tl149802149828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149800149823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149802149828%_))
                                      (let ((_%e149803149831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149802149828%_))))
                                        (let ((_%hd149804149834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149803149831%_)))
                                              (_%tl149805149836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149803149831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149805149836%_))
                                              ((lambda (_%g149795149839%_
                                                        _%g149796149840%_)
                                                 (gxc#compile-e__1
                                                  _%self149790%_
                                                  _%g149795149839%_))
                                               _%hd149804149834%_
                                               _%hd149801149826%_)
                                              (_%g149793149810%_
                                               _%g149794149813%_))))
                                      (_%g149793149810%_ _%g149794149813%_))))
                              (_%g149793149810%_ _%g149794149813%_))))
                      (_%g149793149810%_ _%g149794149813%_)))))
          (_%g149792149855%_ _%stx149791%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self149721%_ _%stx149722%_)
        (let* ((_%g149724149741%_
                (lambda (_%g149725149738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149725149738%_))))
               (_%g149723149787%_
                (lambda (_%g149725149744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149725149744%_))
                      (let ((_%e149728149746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149725149744%_))))
                        (let ((_%hd149729149749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149728149746%_)))
                              (_%tl149730149751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149728149746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149730149751%_))
                              (let ((_%e149731149754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149730149751%_))))
                                (let ((_%hd149732149757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149731149754%_)))
                                      (_%tl149733149759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149731149754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149733149759%_))
                                      (let ((_%e149734149762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149733149759%_))))
                                        (let ((_%hd149735149765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149734149762%_)))
                                              (_%tl149736149767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149734149762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149736149767%_))
                                              ((lambda (_%g149726149770%_
                                                        _%g149727149771%_)
                                                 (let ((__tmp150390
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self149721%_
                                                           _%g149726149770%_)))
                                                       (__tmp150388
                                                        (let ((__tmp150389
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150389 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150390
                                                    gx#current-expander-phi
                                                    __tmp150388)))
                                               _%hd149735149765%_
                                               _%hd149732149757%_)
                                              (_%g149724149741%_
                                               _%g149725149744%_))))
                                      (_%g149724149741%_ _%g149725149744%_))))
                              (_%g149724149741%_ _%g149725149744%_))))
                      (_%g149724149741%_ _%g149725149744%_)))))
          (_%g149723149787%_ _%stx149722%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self149653%_ _%stx149654%_)
        (let* ((_%g149656149673%_
                (lambda (_%g149657149670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149657149670%_))))
               (_%g149655149718%_
                (lambda (_%g149657149676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149657149676%_))
                      (let ((_%e149660149678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149657149676%_))))
                        (let ((_%hd149661149681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149660149678%_)))
                              (_%tl149662149683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149660149678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149662149683%_))
                              (let ((_%e149663149686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149662149683%_))))
                                (let ((_%hd149664149689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149663149686%_)))
                                      (_%tl149665149691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149663149686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149665149691%_))
                                      (let ((_%e149666149694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149665149691%_))))
                                        (let ((_%hd149667149697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149666149694%_)))
                                              (_%tl149668149699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149666149694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149668149699%_))
                                              ((lambda (_%g149658149702%_
                                                        _%g149659149703%_)
                                                 (gxc#compile-e__1
                                                  _%self149653%_
                                                  _%g149658149702%_))
                                               _%hd149667149697%_
                                               _%hd149664149689%_)
                                              (_%g149656149673%_
                                               _%g149657149676%_))))
                                      (_%g149656149673%_ _%g149657149676%_))))
                              (_%g149656149673%_ _%g149657149676%_))))
                      (_%g149656149673%_ _%g149657149676%_)))))
          (_%g149655149718%_ _%stx149654%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self149539%_ _%stx149540%_)
        (let* ((_%g149542149570%_
                (lambda (_%g149543149567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149543149567%_))))
               (_%g149541149650%_
                (lambda (_%g149543149573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149543149573%_))
                      (let ((_%e149546149575%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149543149573%_))))
                        (let ((_%hd149547149578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149546149575%_)))
                              (_%tl149548149580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149546149575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149548149580%_))
                              (let ((_g150391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149548149580%_
                                        '0))))
                                (begin
                                  (let ((_g150392_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150391_)
                                               (##values-length _g150391_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150392_ 2)))
                                        (error "Context expects 2 values"
                                               _g150392_)))
                                  (let ((_%target149549149583%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150391_ 0)))
                                        (_%tl149551149585%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150391_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149551149585%_))
                                        (letrec ((_%loop149552149588%_
                                                  (lambda (_%hd149550149591%_
                                                           _%body149556149593%_
                                                           _%hd149557149594%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149550149591%_))
                                                        (let ((_%e149553149596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149550149591%_))))
                  (let ((_%lp-hd149554149599%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149553149596%_)))
                        (_%lp-tl149555149601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149553149596%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd149554149599%_))
                        (let ((_%e149560149604%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd149554149599%_))))
                          (let ((_%hd149561149607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149560149604%_)))
                                (_%tl149562149609%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149560149604%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149562149609%_))
                                (let ((_%e149563149612%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149562149609%_))))
                                  (let ((_%hd149564149615%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149563149612%_)))
                                        (_%tl149565149617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149563149612%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149565149617%_))
                                        (_%loop149552149588%_
                                         _%lp-tl149555149601%_
                                         (cons _%hd149564149615%_
                                               _%body149556149593%_)
                                         (cons _%hd149561149607%_
                                               _%hd149557149594%_))
                                        (_%g149542149570%_
                                         _%g149543149573%_))))
                                (_%g149542149570%_ _%g149543149573%_))))
                        (_%g149542149570%_ _%g149543149573%_))))
                (let ((_%body149558149620%_ (reverse _%body149556149593%_))
                      (_%hd149559149621%_ (reverse _%hd149557149594%_)))
                  ((lambda (_%g149544149623%_ _%g149545149624%_)
                     (for-each
                      (lambda (_%g149638149640%_)
                        (gxc#compile-e__1 _%self149539%_ _%g149638149640%_))
                      (let ((__tmp150393
                             (lambda (_%g149642149645%_ _%g149643149647%_)
                               (cons _%g149642149645%_ _%g149643149647%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150393 '() _%g149544149623%_))))
                   _%body149558149620%_
                   _%hd149559149621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149552149588%_
                                           _%target149549149583%_
                                           '()
                                           '()))
                                        (_%g149542149570%_
                                         _%g149543149573%_)))))
                              (_%g149542149570%_ _%g149543149573%_))))
                      (_%g149542149570%_ _%g149543149573%_)))))
          (_%g149541149650%_ _%stx149540%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self149396%_ _%stx149397%_)
        (let* ((_%g149399149434%_
                (lambda (_%g149400149431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149400149431%_))))
               (_%g149398149536%_
                (lambda (_%g149400149437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149400149437%_))
                      (let ((_%e149404149439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149400149437%_))))
                        (let ((_%hd149405149442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149404149439%_)))
                              (_%tl149406149444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149404149439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149406149444%_))
                              (let ((_%e149407149447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149406149444%_))))
                                (let ((_%hd149408149450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149407149447%_)))
                                      (_%tl149409149452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149407149447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149408149450%_))
                                      (let ((_g150394_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149408149450%_
                                                '0))))
                                        (begin
                                          (let ((_g150395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150394_)
                                                       (##values-length
                                                        _g150394_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150395_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150395_)))
                                          (let ((_%target149410149455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150394_ 0)))
                                                (_%tl149412149457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150394_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149412149457%_))
                                                (letrec ((_%loop149413149460%_
                                                          (lambda (_%hd149411149463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149417149465%_
                           _%hd149418149466%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149411149463%_))
                        (let ((_%e149414149468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149411149463%_))))
                          (let ((_%lp-hd149415149471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149414149468%_)))
                                (_%lp-tl149416149473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149414149468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149415149471%_))
                                (let ((_%e149421149476%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149415149471%_))))
                                  (let ((_%hd149422149479%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149421149476%_)))
                                        (_%tl149423149481%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149421149476%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149423149481%_))
                                        (let ((_%e149424149484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149423149481%_))))
                                          (let ((_%hd149425149487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149424149484%_)))
                                                (_%tl149426149489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149424149484%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149426149489%_))
                                                (_%loop149413149460%_
                                                 _%lp-tl149416149473%_
                                                 (cons _%hd149425149487%_
                                                       _%expr149417149465%_)
                                                 (cons _%hd149422149479%_
                                                       _%hd149418149466%_))
                                                (_%g149399149434%_
                                                 _%g149400149437%_))))
                                        (_%g149399149434%_
                                         _%g149400149437%_))))
                                (_%g149399149434%_ _%g149400149437%_))))
                        (let ((_%expr149419149492%_
                               (reverse _%expr149417149465%_))
                              (_%hd149420149493%_
                               (reverse _%hd149418149466%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149409149452%_))
                              (let ((_%e149427149495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149409149452%_))))
                                (let ((_%hd149428149498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149427149495%_)))
                                      (_%tl149429149500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149427149495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149429149500%_))
                                      ((lambda (_%g149401149503%_
                                                _%g149402149504%_
                                                _%g149403149505%_)
                                         (for-each
                                          (lambda (_%g149524149526%_)
                                            (gxc#compile-e__1
                                             _%self149396%_
                                             _%g149524149526%_))
                                          (let ((__tmp150397
                                                 (lambda (_%g149528149531%_
                                                          _%g149529149533%_)
                                                   (cons _%g149528149531%_
                                                         _%g149529149533%_)))
                                                (__tmp150396
                                                 (cons _%g149401149503%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150397
                                             __tmp150396
                                             _%g149402149504%_))))
                                       _%hd149428149498%_
                                       _%expr149419149492%_
                                       _%hd149420149493%_)
                                      (_%g149399149434%_ _%g149400149437%_))))
                              (_%g149399149434%_ _%g149400149437%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop149413149460%_
                                                   _%target149410149455%_
                                                   '()
                                                   '()))
                                                (_%g149399149434%_
                                                 _%g149400149437%_)))))
                                      (_%g149399149434%_ _%g149400149437%_))))
                              (_%g149399149434%_ _%g149400149437%_))))
                      (_%g149399149434%_ _%g149400149437%_)))))
          (_%g149398149536%_ _%stx149397%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self149341%_ _%stx149342%_)
        (let* ((_%g149344149358%_
                (lambda (_%g149345149355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149345149355%_))))
               (_%g149343149393%_
                (lambda (_%g149345149361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149345149361%_))
                      (let ((_%e149348149363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149345149361%_))))
                        (let ((_%hd149349149366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149348149363%_)))
                              (_%tl149350149368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149348149363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149350149368%_))
                              (let ((_%e149351149371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149350149368%_))))
                                (let ((_%hd149352149374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149351149371%_)))
                                      (_%tl149353149376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149351149371%_))))
                                  ((lambda (_%g149346149379%_
                                            _%g149347149380%_)
                                     (gxc#compile-e__1
                                      _%self149341%_
                                      (last _%g149346149379%_)))
                                   _%tl149353149376%_
                                   _%hd149352149374%_)))
                              (_%g149344149358%_ _%g149345149361%_))))
                      (_%g149344149358%_ _%g149345149361%_)))))
          (_%g149343149393%_ _%stx149342%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self149273%_ _%stx149274%_)
        (let* ((_%g149276149293%_
                (lambda (_%g149277149290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149277149290%_))))
               (_%g149275149338%_
                (lambda (_%g149277149296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149277149296%_))
                      (let ((_%e149280149298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149277149296%_))))
                        (let ((_%hd149281149301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149280149298%_)))
                              (_%tl149282149303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149280149298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149282149303%_))
                              (let ((_%e149283149306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149282149303%_))))
                                (let ((_%hd149284149309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149283149306%_)))
                                      (_%tl149285149311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149283149306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149285149311%_))
                                      (let ((_%e149286149314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149285149311%_))))
                                        (let ((_%hd149287149317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149286149314%_)))
                                              (_%tl149288149319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149286149314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149288149319%_))
                                              ((lambda (_%g149278149322%_
                                                        _%g149279149323%_)
                                                 (gxc#compile-e__1
                                                  _%self149273%_
                                                  _%g149278149322%_))
                                               _%hd149287149317%_
                                               _%hd149284149309%_)
                                              (_%g149276149293%_
                                               _%g149277149296%_))))
                                      (_%g149276149293%_ _%g149277149296%_))))
                              (_%g149276149293%_ _%g149277149296%_))))
                      (_%g149276149293%_ _%g149277149296%_)))))
          (_%g149275149338%_ _%stx149274%_))))
    (define gxc#apply-operands
      (lambda (_%self149188%_ _%stx149189%_)
        (let* ((_%g149191149210%_
                (lambda (_%g149192149207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149192149207%_))))
               (_%g149190149270%_
                (lambda (_%g149192149213%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149192149213%_))
                      (let ((_%e149194149215%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149192149213%_))))
                        (let ((_%hd149195149218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149194149215%_)))
                              (_%tl149196149220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149194149215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149196149220%_))
                              (let ((_g150398_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149196149220%_
                                        '0))))
                                (begin
                                  (let ((_g150399_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150398_)
                                               (##values-length _g150398_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150399_ 2)))
                                        (error "Context expects 2 values"
                                               _g150399_)))
                                  (let ((_%target149197149223%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150398_ 0)))
                                        (_%tl149199149225%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150398_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149199149225%_))
                                        (letrec ((_%loop149200149228%_
                                                  (lambda (_%hd149198149231%_
                                                           _%rands149204149233%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149198149231%_))
                                                        (let ((_%e149201149235%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149198149231%_))))
                  (let ((_%lp-hd149202149238%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149201149235%_)))
                        (_%lp-tl149203149240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149201149235%_))))
                    (_%loop149200149228%_
                     _%lp-tl149203149240%_
                     (cons _%lp-hd149202149238%_ _%rands149204149233%_))))
                (let ((_%rands149205149243%_ (reverse _%rands149204149233%_)))
                  ((lambda (_%g149193149245%_)
                     (for-each
                      (lambda (_%g149258149260%_)
                        (gxc#compile-e__1 _%self149188%_ _%g149258149260%_))
                      (let ((__tmp150400
                             (lambda (_%g149262149265%_ _%g149263149267%_)
                               (cons _%g149262149265%_ _%g149263149267%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150400 '() _%g149193149245%_))))
                   _%rands149205149243%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149200149228%_
                                           _%target149197149223%_
                                           '()))
                                        (_%g149191149210%_
                                         _%g149192149213%_)))))
                              (_%g149191149210%_ _%g149192149213%_))))
                      (_%g149191149210%_ _%g149192149213%_)))))
          (_%g149190149270%_ _%stx149189%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx149185%_ _%src-stx149186%_)
        (let ((__tmp150401
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx149186%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx149185%_ __tmp150401))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx149181%_ _%src-stx149182%_ _%ctx149183%_)
        (gxc#compile-e__1
         _%ctx149183%_
         (gxc#xform-wrap-source _%stx149181%_ _%src-stx149182%_))))
    (define gxc#xform-begin%
      (lambda (_%self149136%_ _%stx149137%_)
        (let* ((_%g149139149149%_
                (lambda (_%g149140149146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149140149146%_))))
               (_%g149138149178%_
                (lambda (_%g149140149152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149140149152%_))
                      (let ((_%e149142149154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149140149152%_))))
                        (let ((_%hd149143149157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149142149154%_)))
                              (_%tl149144149159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149142149154%_))))
                          ((lambda (_%g149141149162%_)
                             (let ((_%forms149176%_
                                    (map (lambda (_%g149171149173%_)
                                           (gxc#compile-e__1
                                            _%self149136%_
                                            _%g149171149173%_))
                                         _%g149141149162%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms149176%_)
                                _%stx149137%_)))
                           _%tl149144149159%_)))
                      (_%g149139149149%_ _%g149140149152%_)))))
          (_%g149138149178%_ _%stx149137%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self149090%_ _%stx149091%_)
        (let* ((_%g149093149103%_
                (lambda (_%g149094149100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149094149100%_))))
               (_%g149092149133%_
                (lambda (_%g149094149106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149094149106%_))
                      (let ((_%e149096149108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149094149106%_))))
                        (let ((_%hd149097149111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149096149108%_)))
                              (_%tl149098149113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149096149108%_))))
                          ((lambda (_%g149095149116%_)
                             (let ((__tmp150404
                                    (lambda ()
                                      (let ((_%forms149131%_
                                             (map (lambda (_%g149126149128%_)
                                                    (gxc#compile-e__1
                                                     _%self149090%_
                                                     _%g149126149128%_))
                                                  _%g149095149116%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms149131%_)
                                         _%stx149091%_))))
                                   (__tmp150402
                                    (let ((__tmp150403
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp150403 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150404
                                gx#current-expander-phi
                                __tmp150402)))
                           _%tl149098149113%_)))
                      (_%g149093149103%_ _%g149094149106%_)))))
          (_%g149092149133%_ _%stx149091%_))))
    (define gxc#xform-module%
      (lambda (_%self149027%_ _%stx149028%_)
        (let* ((_%g149030149044%_
                (lambda (_%g149031149041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149031149041%_))))
               (_%g149029149087%_
                (lambda (_%g149031149047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149031149047%_))
                      (let ((_%e149034149049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149031149047%_))))
                        (let ((_%hd149035149052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149034149049%_)))
                              (_%tl149036149054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149034149049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149036149054%_))
                              (let ((_%e149037149057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149036149054%_))))
                                (let ((_%hd149038149060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149037149057%_)))
                                      (_%tl149039149062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149037149057%_))))
                                  ((lambda (_%g149032149065%_
                                            _%g149033149066%_)
                                     (let* ((_%ctx149079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g149033149066%_)))
                                            (_%code149081%_
                                             (##structure-ref
                                              _%ctx149079%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code149084%_
                                             (let ((__tmp150405
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self149027%_
                                                       _%code149081%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp150405
                                                gx#current-expander-context
                                                _%ctx149079%_))))
                                       (##structure-set!
                                        _%ctx149079%_
                                        _%code149084%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g149033149066%_
                                                    (cons _%code149084%_ '())))
                                        _%stx149028%_)))
                                   _%tl149039149062%_
                                   _%hd149038149060%_)))
                              (_%g149030149044%_ _%g149031149047%_))))
                      (_%g149030149044%_ _%g149031149047%_)))))
          (_%g149029149087%_ _%stx149028%_))))
    (define gxc#xform-define-values%
      (lambda (_%self148957%_ _%stx148958%_)
        (let* ((_%g148960148977%_
                (lambda (_%g148961148974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148961148974%_))))
               (_%g148959149024%_
                (lambda (_%g148961148980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148961148980%_))
                      (let ((_%e148964148982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148961148980%_))))
                        (let ((_%hd148965148985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148964148982%_)))
                              (_%tl148966148987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148964148982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148966148987%_))
                              (let ((_%e148967148990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148966148987%_))))
                                (let ((_%hd148968148993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148967148990%_)))
                                      (_%tl148969148995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148967148990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148969148995%_))
                                      (let ((_%e148970148998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148969148995%_))))
                                        (let ((_%hd148971149001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148970148998%_)))
                                              (_%tl148972149003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148970148998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148972149003%_))
                                              ((lambda (_%g148962149006%_
                                                        _%g148963149007%_)
                                                 (let ((_%expr149022%_
                                                        (gxc#compile-e__1
                                                         _%self148957%_
                                                         _%g148962149006%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g148963149007%_
                                                                (cons _%expr149022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148958%_)))
                                               _%hd148971149001%_
                                               _%hd148968148993%_)
                                              (_%g148960148977%_
                                               _%g148961148980%_))))
                                      (_%g148960148977%_ _%g148961148980%_))))
                              (_%g148960148977%_ _%g148961148980%_))))
                      (_%g148960148977%_ _%g148961148980%_)))))
          (_%g148959149024%_ _%stx148958%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self148886%_ _%stx148887%_)
        (let* ((_%g148889148906%_
                (lambda (_%g148890148903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148890148903%_))))
               (_%g148888148954%_
                (lambda (_%g148890148909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148890148909%_))
                      (let ((_%e148893148911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148890148909%_))))
                        (let ((_%hd148894148914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148893148911%_)))
                              (_%tl148895148916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148893148911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148895148916%_))
                              (let ((_%e148896148919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148895148916%_))))
                                (let ((_%hd148897148922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148896148919%_)))
                                      (_%tl148898148924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148896148919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148898148924%_))
                                      (let ((_%e148899148927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148898148924%_))))
                                        (let ((_%hd148900148930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148899148927%_)))
                                              (_%tl148901148932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148899148927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148901148932%_))
                                              ((lambda (_%g148891148935%_
                                                        _%g148892148936%_)
                                                 (let ((__tmp150408
                                                        (lambda ()
                                                          (let ((_%expr148952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self148886%_ _%g148891148935%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g148892148936%_ (cons _%expr148952%_ '())))
                     _%stx148887%_))))
               (__tmp150406
                (let ((__tmp150407
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150407 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150408
                                                    gx#current-expander-phi
                                                    __tmp150406)))
                                               _%hd148900148930%_
                                               _%hd148897148922%_)
                                              (_%g148889148906%_
                                               _%g148890148909%_))))
                                      (_%g148889148906%_ _%g148890148909%_))))
                              (_%g148889148906%_ _%g148890148909%_))))
                      (_%g148889148906%_ _%g148890148909%_)))))
          (_%g148888148954%_ _%stx148887%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self148816%_ _%stx148817%_)
        (let* ((_%g148819148836%_
                (lambda (_%g148820148833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148820148833%_))))
               (_%g148818148883%_
                (lambda (_%g148820148839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148820148839%_))
                      (let ((_%e148823148841%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148820148839%_))))
                        (let ((_%hd148824148844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148823148841%_)))
                              (_%tl148825148846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148823148841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148825148846%_))
                              (let ((_%e148826148849%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148825148846%_))))
                                (let ((_%hd148827148852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148826148849%_)))
                                      (_%tl148828148854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148826148849%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148828148854%_))
                                      (let ((_%e148829148857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148828148854%_))))
                                        (let ((_%hd148830148860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148829148857%_)))
                                              (_%tl148831148862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148829148857%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148831148862%_))
                                              ((lambda (_%g148821148865%_
                                                        _%g148822148866%_)
                                                 (let ((_%expr148881%_
                                                        (gxc#compile-e__1
                                                         _%self148816%_
                                                         _%g148821148865%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g148822148866%_
                                                                (cons _%expr148881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148817%_)))
                                               _%hd148830148860%_
                                               _%hd148827148852%_)
                                              (_%g148819148836%_
                                               _%g148820148839%_))))
                                      (_%g148819148836%_ _%g148820148839%_))))
                              (_%g148819148836%_ _%g148820148839%_))))
                      (_%g148819148836%_ _%g148820148839%_)))))
          (_%g148818148883%_ _%stx148817%_))))
    (define gxc#xform-lambda%
      (lambda (_%self148754%_ _%stx148755%_)
        (let* ((_%g148757148771%_
                (lambda (_%g148758148768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148758148768%_))))
               (_%g148756148813%_
                (lambda (_%g148758148774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148758148774%_))
                      (let ((_%e148761148776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148758148774%_))))
                        (let ((_%hd148762148779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148761148776%_)))
                              (_%tl148763148781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148761148776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148763148781%_))
                              (let ((_%e148764148784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148763148781%_))))
                                (let ((_%hd148765148787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148764148784%_)))
                                      (_%tl148766148789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148764148784%_))))
                                  ((lambda (_%g148759148792%_
                                            _%g148760148793%_)
                                     (let ((__tmp150410
                                            (lambda ()
                                              (let ((_%body148811%_
                                                     (map (lambda (_%g148806148808%_)
                                                            (gxc#compile-e__1
                                                             _%self148754%_
                                                             _%g148806148808%_))
                                                          _%g148759148792%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g148760148793%_
                                                             _%body148811%_))
                                                 _%stx148755%_))))
                                           (__tmp150409
                                            (gxc#xform-let-locals
                                             _%g148760148793%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150410
                                        gxc#current-compile-local-env
                                        __tmp150409)))
                                   _%tl148766148789%_
                                   _%hd148765148787%_)))
                              (_%g148757148771%_ _%g148758148774%_))))
                      (_%g148757148771%_ _%g148758148774%_)))))
          (_%g148756148813%_ _%stx148755%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self148662%_ _%stx148663%_)
        (letrec ((_%clause-e148665%_
                  (lambda (_%clause148706%_)
                    (let* ((_%g148708148719%_
                            (lambda (_%g148709148716%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g148709148716%_))))
                           (_%g148707148751%_
                            (lambda (_%g148709148722%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g148709148722%_))
                                  (let ((_%e148712148724%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g148709148722%_))))
                                    (let ((_%hd148713148727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148712148724%_)))
                                          (_%tl148714148729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148712148724%_))))
                                      ((lambda (_%g148710148732%_
                                                _%g148711148733%_)
                                         (let ((__tmp150412
                                                (lambda ()
                                                  (let ((_%body148749%_
                                                         (map (lambda (_%g148744148746%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self148662%_
                         _%g148744148746%_))
                      _%g148710148732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g148711148733%_
                                                          _%body148749%_))))
                                               (__tmp150411
                                                (gxc#xform-let-locals
                                                 _%g148711148733%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp150412
                                            gxc#current-compile-local-env
                                            __tmp150411)))
                                       _%tl148714148729%_
                                       _%hd148713148727%_)))
                                  (_%g148708148719%_ _%g148709148722%_)))))
                      (_%g148707148751%_ _%clause148706%_)))))
          (let* ((_%g148667148677%_
                  (lambda (_%g148668148674%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148668148674%_))))
                 (_%g148666148703%_
                  (lambda (_%g148668148680%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148668148680%_))
                        (let ((_%e148670148682%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148668148680%_))))
                          (let ((_%hd148671148685%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148670148682%_)))
                                (_%tl148672148687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148670148682%_))))
                            ((lambda (_%g148669148690%_)
                               (let ((_%clauses148701%_
                                      (map _%clause-e148665%_
                                           _%g148669148690%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses148701%_)
                                  _%stx148663%_)))
                             _%tl148672148687%_)))
                        (_%g148667148677%_ _%g148668148680%_)))))
            (_%g148666148703%_ _%stx148663%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self148422%_ _%stx148423%_)
        (let* ((_%g148425148458%_
                (lambda (_%g148426148455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148426148455%_))))
               (_%g148424148659%_
                (lambda (_%g148426148461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148426148461%_))
                      (let ((_%e148431148463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148426148461%_))))
                        (let ((_%hd148432148466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148431148463%_)))
                              (_%tl148433148468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148431148463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148433148468%_))
                              (let ((_%e148434148471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148433148468%_))))
                                (let ((_%hd148435148474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148434148471%_)))
                                      (_%tl148436148476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148434148471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148435148474%_))
                                      (let ((_g150413_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148435148474%_
                                                '0))))
                                        (begin
                                          (let ((_g150414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150413_)
                                                       (##values-length
                                                        _g150413_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150414_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150414_)))
                                          (let ((_%target148437148479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150413_ 0)))
                                                (_%tl148439148481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150413_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148439148481%_))
                                                (letrec ((_%loop148440148484%_
                                                          (lambda (_%hd148438148487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148444148489%_
                           _%hd148445148490%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148438148487%_))
                        (let ((_%e148441148492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148438148487%_))))
                          (let ((_%lp-hd148442148495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148441148492%_)))
                                (_%lp-tl148443148497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148441148492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148442148495%_))
                                (let ((_%e148448148500%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148442148495%_))))
                                  (let ((_%hd148449148503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148448148500%_)))
                                        (_%tl148450148505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148448148500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148450148505%_))
                                        (let ((_%e148451148508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148450148505%_))))
                                          (let ((_%hd148452148511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148451148508%_)))
                                                (_%tl148453148513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148451148508%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148453148513%_))
                                                (_%loop148440148484%_
                                                 _%lp-tl148443148497%_
                                                 (cons _%hd148452148511%_
                                                       _%expr148444148489%_)
                                                 (cons _%hd148449148503%_
                                                       _%hd148445148490%_))
                                                (_%g148425148458%_
                                                 _%g148426148461%_))))
                                        (_%g148425148458%_
                                         _%g148426148461%_))))
                                (_%g148425148458%_ _%g148426148461%_))))
                        (let ((_%expr148446148516%_
                               (reverse _%expr148444148489%_))
                              (_%hd148447148517%_
                               (reverse _%hd148445148490%_)))
                          ((lambda (_%g148427148519%_
                                    _%g148428148520%_
                                    _%g148429148521%_
                                    _%g148430148522%_)
                             (let* ((_%g148541148557%_
                                     (lambda (_%g148542148554%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148542148554%_))))
                                    (_%g148540148645%_
                                     (lambda (_%g148542148560%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g148542148560%_))
                                           (let ((_g150415_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g148542148560%_
                                                     '0))))
                                             (begin
                                               (let ((_g150416_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g150415_)
                                                            (##values-length
                                                             _g150415_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g150416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g150416_)))
                                               (let ((_%target148544148562%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150415_
                                                         0)))
                                                     (_%tl148546148564%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150415_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl148546148564%_))
                                                     (letrec ((_%loop148547148567%_
                                                               (lambda (_%hd148545148570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr148551148572%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd148545148570%_))
                             (let ((_%e148548148574%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd148545148570%_))))
                               (let ((_%lp-hd148549148577%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148548148574%_)))
                                     (_%lp-tl148550148579%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148548148574%_))))
                                 (_%loop148547148567%_
                                  _%lp-tl148550148579%_
                                  (cons _%lp-hd148549148577%_
                                        _%expr148551148572%_))))
                             (let ((_%expr148552148582%_
                                    (reverse _%expr148551148572%_)))
                               ((lambda (_%g148543148584%_)
                                  (let ((__tmp150419
                                         (lambda ()
                                           (let* ((_%g148598148605%_
                                                   (lambda (_%g148599148602%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148599148602%_))))
                                                  (_%g148597148631%_
                                                   (lambda (_%g148599148608%_)
                                                     ((lambda (_%g148600148610%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g148430148522%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g148543148584%_
                                  _%g148429148521%_))
                               (let ((__tmp150420
                                      (lambda (_%g148620148624%_
                                               _%g148621148626%_
                                               _%g148622148628%_)
                                        (cons (cons _%g148621148626%_
                                                    (cons _%g148620148624%_
                                                          '()))
                                              _%g148622148628%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150420
                                  '()
                                  _%g148543148584%_
                                  _%g148429148521%_)))
                             _%g148600148610%_))
                 _%stx148423%_))
              _%g148599148608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148597148631%_
                                              (map (lambda (_%g148633148635%_)
                                                     (gxc#compile-e__1
                                                      _%self148422%_
                                                      _%g148633148635%_))
                                                   _%g148427148519%_)))))
                                        (__tmp150417
                                         (gxc#xform-let-locals
                                          (let ((__tmp150418
                                                 (lambda (_%g148637148640%_
                                                          _%g148638148642%_)
                                                   (cons _%g148637148640%_
                                                         _%g148638148642%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150418
                                             '()
                                             _%g148429148521%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp150419
                                     gxc#current-compile-local-env
                                     __tmp150417)))
                                _%expr148552148582%_))))))
               (_%loop148547148567%_ _%target148544148562%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g148541148557%_
                                                      _%g148542148560%_)))))
                                           (_%g148541148557%_
                                            _%g148542148560%_)))))
                               (_%g148540148645%_
                                (map (lambda (_%g148647148649%_)
                                       (gxc#compile-e__1
                                        _%self148422%_
                                        _%g148647148649%_))
                                     (let ((__tmp150421
                                            (lambda (_%g148651148654%_
                                                     _%g148652148656%_)
                                              (cons _%g148651148654%_
                                                    _%g148652148656%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150421
                                        '()
                                        _%g148428148520%_))))))
                           _%tl148436148476%_
                           _%expr148446148516%_
                           _%hd148447148517%_
                           _%hd148432148466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148440148484%_
                                                   _%target148437148479%_
                                                   '()
                                                   '()))
                                                (_%g148425148458%_
                                                 _%g148426148461%_)))))
                                      (_%g148425148458%_ _%g148426148461%_))))
                              (_%g148425148458%_ _%g148426148461%_))))
                      (_%g148425148458%_ _%g148426148461%_)))))
          (_%g148424148659%_ _%stx148423%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self148182%_ _%stx148183%_)
        (let* ((_%g148185148218%_
                (lambda (_%g148186148215%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148186148215%_))))
               (_%g148184148419%_
                (lambda (_%g148186148221%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148186148221%_))
                      (let ((_%e148191148223%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148186148221%_))))
                        (let ((_%hd148192148226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148191148223%_)))
                              (_%tl148193148228%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148191148223%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148193148228%_))
                              (let ((_%e148194148231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148193148228%_))))
                                (let ((_%hd148195148234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148194148231%_)))
                                      (_%tl148196148236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148194148231%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148195148234%_))
                                      (let ((_g150422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148195148234%_
                                                '0))))
                                        (begin
                                          (let ((_g150423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150422_)
                                                       (##values-length
                                                        _g150422_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150423_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150423_)))
                                          (let ((_%target148197148239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150422_ 0)))
                                                (_%tl148199148241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150422_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148199148241%_))
                                                (letrec ((_%loop148200148244%_
                                                          (lambda (_%hd148198148247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148204148249%_
                           _%hd148205148250%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148198148247%_))
                        (let ((_%e148201148252%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148198148247%_))))
                          (let ((_%lp-hd148202148255%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148201148252%_)))
                                (_%lp-tl148203148257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148201148252%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148202148255%_))
                                (let ((_%e148208148260%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148202148255%_))))
                                  (let ((_%hd148209148263%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148208148260%_)))
                                        (_%tl148210148265%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148208148260%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148210148265%_))
                                        (let ((_%e148211148268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148210148265%_))))
                                          (let ((_%hd148212148271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148211148268%_)))
                                                (_%tl148213148273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148211148268%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148213148273%_))
                                                (_%loop148200148244%_
                                                 _%lp-tl148203148257%_
                                                 (cons _%hd148212148271%_
                                                       _%expr148204148249%_)
                                                 (cons _%hd148209148263%_
                                                       _%hd148205148250%_))
                                                (_%g148185148218%_
                                                 _%g148186148221%_))))
                                        (_%g148185148218%_
                                         _%g148186148221%_))))
                                (_%g148185148218%_ _%g148186148221%_))))
                        (let ((_%expr148206148276%_
                               (reverse _%expr148204148249%_))
                              (_%hd148207148277%_
                               (reverse _%hd148205148250%_)))
                          ((lambda (_%g148187148279%_
                                    _%g148188148280%_
                                    _%g148189148281%_
                                    _%g148190148282%_)
                             (let ((__tmp150426
                                    (lambda ()
                                      (let* ((_%g148302148318%_
                                              (lambda (_%g148303148315%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g148303148315%_))))
                                             (_%g148301148398%_
                                              (lambda (_%g148303148321%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g148303148321%_))
                                                    (let ((_g150427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g148303148321%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g150428_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g150427_)
                             (##values-length _g150427_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g150428_ 2)))
                      (error "Context expects 2 values" _g150428_)))
                (let ((_%target148305148323%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150427_ 0)))
                      (_%tl148307148325%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150427_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148307148325%_))
                      (letrec ((_%loop148308148328%_
                                (lambda (_%hd148306148331%_
                                         _%expr148312148333%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd148306148331%_))
                                      (let ((_%e148309148335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd148306148331%_))))
                                        (let ((_%lp-hd148310148338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148309148335%_)))
                                              (_%lp-tl148311148340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148309148335%_))))
                                          (_%loop148308148328%_
                                           _%lp-tl148311148340%_
                                           (cons _%lp-hd148310148338%_
                                                 _%expr148312148333%_))))
                                      (let ((_%expr148313148343%_
                                             (reverse _%expr148312148333%_)))
                                        ((lambda (_%g148304148345%_)
                                           (let* ((_%g148359148366%_
                                                   (lambda (_%g148360148363%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148360148363%_))))
                                                  (_%g148358148391%_
                                                   (lambda (_%g148360148369%_)
                                                     ((lambda (_%g148361148371%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g148190148282%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g148304148345%_
                                  _%g148189148281%_))
                               (let ((__tmp150429
                                      (lambda (_%g148380148384%_
                                               _%g148381148386%_
                                               _%g148382148388%_)
                                        (cons (cons _%g148381148386%_
                                                    (cons _%g148380148384%_
                                                          '()))
                                              _%g148382148388%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150429
                                  '()
                                  _%g148304148345%_
                                  _%g148189148281%_)))
                             _%g148361148371%_))
                 _%stx148183%_))
              _%g148360148369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148358148391%_
                                              (map (lambda (_%g148393148395%_)
                                                     (gxc#compile-e__1
                                                      _%self148182%_
                                                      _%g148393148395%_))
                                                   _%g148187148279%_))))
                                         _%expr148313148343%_))))))
                        (_%loop148308148328%_ _%target148305148323%_ '()))
                      (_%g148302148318%_ _%g148303148321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g148302148318%_
                                                     _%g148303148321%_)))))
                                        (_%g148301148398%_
                                         (map (lambda (_%g148400148402%_)
                                                (gxc#compile-e__1
                                                 _%self148182%_
                                                 _%g148400148402%_))
                                              (let ((__tmp150430
                                                     (lambda (_%g148404148407%_
                                                              _%g148405148409%_)
                                                       (cons _%g148404148407%_
                                                             _%g148405148409%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp150430
                                                 '()
                                                 _%g148188148280%_)))))))
                                   (__tmp150424
                                    (gxc#xform-let-locals
                                     (let ((__tmp150425
                                            (lambda (_%g148411148414%_
                                                     _%g148412148416%_)
                                              (cons _%g148411148414%_
                                                    _%g148412148416%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150425
                                        '()
                                        _%g148189148281%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150426
                                gxc#current-compile-local-env
                                __tmp150424)))
                           _%tl148196148236%_
                           _%expr148206148276%_
                           _%hd148207148277%_
                           _%hd148192148226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148200148244%_
                                                   _%target148197148239%_
                                                   '()
                                                   '()))
                                                (_%g148185148218%_
                                                 _%g148186148221%_)))))
                                      (_%g148185148218%_ _%g148186148221%_))))
                              (_%g148185148218%_ _%g148186148221%_))))
                      (_%g148185148218%_ _%g148186148221%_)))))
          (_%g148184148419%_ _%stx148183%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings148049%_)
        (letrec ((_%flatten148051%_
                  (lambda (_%maybe-lst148109%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst148109%_))
                        (cons _%maybe-lst148109%_ '())
                        (let _%loop148111%_ ((_%rest148113%_
                                              _%maybe-lst148109%_)
                                             (_%result148114%_ '()))
                          (let* ((_%__stx150318150319%_ _%rest148113%_)
                                 (_%g148118148130%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx150318150319%_)))))
                            (let ((_%__kont150320150321%_
                                   (lambda (_%g148120148168%_
                                            _%g148121148169%_)
                                     (_%loop148111%_
                                      _%g148120148168%_
                                      (let ((__tmp150431
                                             (_%flatten148051%_
                                              _%g148121148169%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result148114%_
                                         __tmp150431)))))
                                  (_%__kont150322150323%_
                                   (lambda (_%g148125148142%_)
                                     (cons _%g148125148142%_
                                           _%result148114%_)))
                                  (_%__kont150324150325%_
                                   (lambda () _%result148114%_)))
                              (let ((_%g148116148155%_
                                     (lambda ()
                                       (let ((_%g148125148142%_
                                              _%__stx150318150319%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g148125148142%_))
                                             (_%__kont150322150323%_
                                              _%g148125148142%_)
                                             (_%__kont150324150325%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx150318150319%_))
                                    (let ((_%e148122148160%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx150318150319%_))))
                                      (let ((_%tl148124148165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e148122148160%_)))
                                            (_%hd148123148163%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e148122148160%_))))
                                        (_%__kont150320150321%_
                                         _%tl148124148165%_
                                         _%hd148123148163%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g148116148155%_)))))))))))
          (let _%loop148053%_ ((_%rest148055%_
                                (_%flatten148051%_ _%bindings148049%_))
                               (_%locals148056%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest148057148068%_ _%rest148055%_)
                   (_%E148061148072%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest148057148068%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K148064148097%_
                     (lambda (_%rest148094%_ _%id148095%_)
                       (_%loop148053%_
                        _%rest148094%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id148095%_))
                              _%locals148056%_))))
                    (_%K148063148086%_
                     (lambda (_%id148084%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id148084%_))
                             _%locals148056%_)))
                    (_%K148062148077%_ (lambda () _%locals148056%_)))
                (let ((_%try-match148059148091%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest148057148068%_))
                             (let ((_%id148089%_ _%rest148057148068%_))
                               (_%K148063148086%_ _%id148089%_))
                             (_%K148062148077%_)))))
                  (if (pair? _%rest148057148068%_)
                      (let ((_%tl148066148102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest148057148068%_)))
                            (_%hd148065148100%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest148057148068%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd148065148100%_))
                            (let ((_%id148105%_ _%hd148065148100%_)
                                  (_%rest148107%_ _%tl148066148102%_))
                              (_%K148064148097%_ _%rest148107%_ _%id148105%_))
                            (_%K148062148077%_)))
                      (_%try-match148059148091%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self148001%_ _%stx148002%_)
        (let* ((_%g148004148015%_
                (lambda (_%g148005148012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148005148012%_))))
               (_%g148003148046%_
                (lambda (_%g148005148018%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148005148018%_))
                      (let ((_%e148008148020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148005148018%_))))
                        (let ((_%hd148009148023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148008148020%_)))
                              (_%tl148010148025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148008148020%_))))
                          ((lambda (_%g148006148028%_ _%g148007148029%_)
                             (let ((_%rands148044%_
                                    (map (lambda (_%g148039148041%_)
                                           (gxc#compile-e__1
                                            _%self148001%_
                                            _%g148039148041%_))
                                         _%g148006148028%_)))
                               (gxc#xform-wrap-source
                                (cons _%g148007148029%_ _%rands148044%_)
                                _%stx148002%_)))
                           _%tl148010148025%_
                           _%hd148009148023%_)))
                      (_%g148004148015%_ _%g148005148018%_)))))
          (_%g148003148046%_ _%stx148002%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self147931%_ _%stx147932%_)
        (let* ((_%g147934147951%_
                (lambda (_%g147935147948%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147935147948%_))))
               (_%g147933147998%_
                (lambda (_%g147935147954%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147935147954%_))
                      (let ((_%e147938147956%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147935147954%_))))
                        (let ((_%hd147939147959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147938147956%_)))
                              (_%tl147940147961%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147938147956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147940147961%_))
                              (let ((_%e147941147964%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147940147961%_))))
                                (let ((_%hd147942147967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147941147964%_)))
                                      (_%tl147943147969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147941147964%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147943147969%_))
                                      (let ((_%e147944147972%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147943147969%_))))
                                        (let ((_%hd147945147975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147944147972%_)))
                                              (_%tl147946147977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147944147972%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147946147977%_))
                                              ((lambda (_%g147936147980%_
                                                        _%g147937147981%_)
                                                 (let ((_%expr147996%_
                                                        (gxc#compile-e__1
                                                         _%self147931%_
                                                         _%g147936147980%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g147937147981%_
                                                                (cons _%expr147996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx147932%_)))
                                               _%hd147945147975%_
                                               _%hd147942147967%_)
                                              (_%g147934147951%_
                                               _%g147935147954%_))))
                                      (_%g147934147951%_ _%g147935147954%_))))
                              (_%g147934147951%_ _%g147935147954%_))))
                      (_%g147934147951%_ _%g147935147954%_)))))
          (_%g147933147998%_ _%stx147932%_))))))
