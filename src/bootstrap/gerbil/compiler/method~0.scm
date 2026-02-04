(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770243151)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx160118%_)
        (let* ((_%self160120%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e160122%_
                (let ((__tmp160340 (gxc#stx-car-e _%stx160118%_)))
                  (declare (not safe))
                  (method-ref _%self160120%_ __tmp160340))))
          (if _%$e160122%_
              ((lambda (_%method160125%_)
                 (declare (not safe))
                 (let ((_%$e160128%_ (gx#stx-source _%stx160118%_)))
                   (if _%$e160128%_
                       ((lambda (_%source160131%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method160125%_ _%self160120%_ _%stx160118%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source160131%_ '()))
                                 (let ((_%$e160135%_
                                        (gxc#current-compile-context)))
                                   (if _%$e160135%_ _%$e160135%_ '())))))
                        _%$e160128%_)
                       (_%method160125%_ _%self160120%_ _%stx160118%_))))
               _%$e160122%_)
              (let ((__tmp160342 (gxc#stx-car-e _%stx160118%_))
                    (__tmp160341
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx160118%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self160120%_
                       __tmp160342
                       __tmp160341))))))
    (define gxc#compile-e__1
      (lambda (_%self160140%_ _%stx160141%_)
        (let ((_%$e160143%_
               (let ((__tmp160343 (gxc#stx-car-e _%stx160141%_)))
                 (declare (not safe))
                 (method-ref _%self160140%_ __tmp160343))))
          (if _%$e160143%_
              ((lambda (_%method160146%_)
                 (declare (not safe))
                 (let ((_%$e160149%_ (gx#stx-source _%stx160141%_)))
                   (if _%$e160149%_
                       ((lambda (_%source160152%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method160146%_ _%self160140%_ _%stx160141%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source160152%_ '()))
                                 (let ((_%$e160156%_
                                        (gxc#current-compile-context)))
                                   (if _%$e160156%_ _%$e160156%_ '())))))
                        _%$e160149%_)
                       (_%method160146%_ _%self160140%_ _%stx160141%_))))
               _%$e160143%_)
              (let ((__tmp160345 (gxc#stx-car-e _%stx160141%_))
                    (__tmp160344
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx160141%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self160140%_
                       __tmp160345
                       __tmp160344))))))
    (define gxc#compile-e
      (lambda _g160346_
        (let ((_g160347_ (let () (declare (not safe)) (##length _g160346_))))
          (cond ((let () (declare (not safe)) (##fx= _g160347_ 1))
                 (apply gxc#compile-e__0 _g160346_))
                ((let () (declare (not safe)) (##fx= _g160347_ 2))
                 (apply gxc#compile-e__1 _g160346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g160346_))))))
    (define gxc#stx-car-e
      (lambda (_%stx160116%_)
        (let ((__tmp160348
               (car (let () (declare (not safe)) (gx#stx-e _%stx160116%_)))))
          (declare (not safe))
          (gx#stx-e __tmp160348))))
    (define gxc#void-method (lambda (_%self160113%_ _%stx160114%_) '#!void))
    (define gxc#false-method (lambda (_%self160110%_ _%stx160111%_) '#f))
    (define gxc#true-method (lambda (_%self160107%_ _%stx160108%_) '#t))
    (define gxc#identity-method
      (lambda (_%self160104%_ _%stx160105%_) _%stx160105%_))
    (define gxc#::void-expression::t
      (let ((__tmp160349 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp160349
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args160101%_
        (apply make-instance gxc#::void-expression::t _%$args160101%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp160350
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
        (__make-atomic-promise __tmp160350)))
    (define gxc#::void-special-form::t
      (let ((__tmp160351 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp160351
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args160097%_
        (apply make-instance gxc#::void-special-form::t _%$args160097%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp160352
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
        (__make-atomic-promise __tmp160352)))
    (define gxc#::void::t
      (let ((__tmp160353
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp160353 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args160093%_
        (apply make-instance gxc#::void::t _%$args160093%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp160354
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp160354)))
    (define gxc#::false-expression::t
      (let ((__tmp160355 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp160355
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args160089%_
        (apply make-instance gxc#::false-expression::t _%$args160089%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp160356
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
        (__make-atomic-promise __tmp160356)))
    (define gxc#::false-special-form::t
      (let ((__tmp160357 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp160357
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args160085%_
        (apply make-instance gxc#::false-special-form::t _%$args160085%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp160358
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
        (__make-atomic-promise __tmp160358)))
    (define gxc#::false::t
      (let ((__tmp160359
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp160359 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args160081%_
        (apply make-instance gxc#::false::t _%$args160081%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp160360
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp160360)))
    (define gxc#::identity-expression::t
      (let ((__tmp160361 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp160361
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args160077%_
        (apply make-instance gxc#::identity-expression::t _%$args160077%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp160362
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
        (__make-atomic-promise __tmp160362)))
    (define gxc#::identity-special-form::t
      (let ((__tmp160363 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp160363
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args160073%_
        (apply make-instance gxc#::identity-special-form::t _%$args160073%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp160364
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
        (__make-atomic-promise __tmp160364)))
    (define gxc#::identity::t
      (let ((__tmp160365
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp160365
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args160069%_
        (apply make-instance gxc#::identity::t _%$args160069%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp160366
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp160366)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp160367 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp160367
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args160065%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args160065%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp160368
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
        (__make-atomic-promise __tmp160368)))
    (define gxc#::basic-xform::t
      (let ((__tmp160369
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp160369
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args160061%_
        (apply make-instance gxc#::basic-xform::t _%$args160061%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp160370
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
        (__make-atomic-promise __tmp160370)))
    (define gxc#apply-begin%
      (lambda (_%self160017%_ _%stx160018%_)
        (let* ((_%g160020160030%_
                (lambda (_%g160021160027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160021160027%_))))
               (_%g160019160057%_
                (lambda (_%g160021160033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160021160033%_))
                      (let ((_%e160023160035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160021160033%_))))
                        (let ((_%hd160024160038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160023160035%_)))
                              (_%tl160025160040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160023160035%_))))
                          ((lambda (_%g160022160043%_)
                             (for-each
                              (lambda (_%g160052160054%_)
                                (gxc#compile-e__1
                                 _%self160017%_
                                 _%g160052160054%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g160022160043%_))))
                           _%tl160025160040%_)))
                      (_%g160020160030%_ _%g160021160033%_)))))
          (_%g160019160057%_ _%stx160018%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self159978%_ _%stx159979%_)
        (let* ((_%g159981159991%_
                (lambda (_%g159982159988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159982159988%_))))
               (_%g159980160014%_
                (lambda (_%g159982159994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159982159994%_))
                      (let ((_%e159984159996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159982159994%_))))
                        (let ((_%hd159985159999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159984159996%_)))
                              (_%tl159986160001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159984159996%_))))
                          ((lambda (_%g159983160004%_)
                             (gxc#compile-e__1
                              _%self159978%_
                              (last _%g159983160004%_)))
                           _%tl159986160001%_)))
                      (_%g159981159991%_ _%g159982159994%_)))))
          (_%g159980160014%_ _%stx159979%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self159974%_ _%stx159975%_)
        (let ((__tmp160373
               (lambda () (gxc#apply-begin% _%self159974%_ _%stx159975%_)))
              (__tmp160371
               (let ((__tmp160372
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp160372 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp160373
           gx#current-expander-phi
           __tmp160371))))
    (define gxc#apply-module%
      (lambda (_%self159913%_ _%stx159914%_)
        (let* ((_%g159916159930%_
                (lambda (_%g159917159927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159917159927%_))))
               (_%g159915159971%_
                (lambda (_%g159917159933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159917159933%_))
                      (let ((_%e159920159935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159917159933%_))))
                        (let ((_%hd159921159938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159920159935%_)))
                              (_%tl159922159940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159920159935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159922159940%_))
                              (let ((_%e159923159943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159922159940%_))))
                                (let ((_%hd159924159946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159923159943%_)))
                                      (_%tl159925159948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159923159943%_))))
                                  ((lambda (_%g159918159951%_
                                            _%g159919159952%_)
                                     (let* ((_%ctx159965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g159919159952%_)))
                                            (_%ctx-stx159967%_
                                             (##structure-ref
                                              _%ctx159965%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp160374
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self159913%_
                                                _%ctx-stx159967%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp160374
                                        gx#current-expander-context
                                        _%ctx159965%_)))
                                   _%tl159925159948%_
                                   _%hd159924159946%_)))
                              (_%g159916159930%_ _%g159917159933%_))))
                      (_%g159916159930%_ _%g159917159933%_)))))
          (_%g159915159971%_ _%stx159914%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self159845%_ _%stx159846%_)
        (let* ((_%g159848159865%_
                (lambda (_%g159849159862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159849159862%_))))
               (_%g159847159910%_
                (lambda (_%g159849159868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159849159868%_))
                      (let ((_%e159852159870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159849159868%_))))
                        (let ((_%hd159853159873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159852159870%_)))
                              (_%tl159854159875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159852159870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159854159875%_))
                              (let ((_%e159855159878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159854159875%_))))
                                (let ((_%hd159856159881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159855159878%_)))
                                      (_%tl159857159883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159855159878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159857159883%_))
                                      (let ((_%e159858159886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159857159883%_))))
                                        (let ((_%hd159859159889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159858159886%_)))
                                              (_%tl159860159891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159858159886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159860159891%_))
                                              ((lambda (_%g159850159894%_
                                                        _%g159851159895%_)
                                                 (gxc#compile-e__1
                                                  _%self159845%_
                                                  _%g159850159894%_))
                                               _%hd159859159889%_
                                               _%hd159856159881%_)
                                              (_%g159848159865%_
                                               _%g159849159868%_))))
                                      (_%g159848159865%_ _%g159849159868%_))))
                              (_%g159848159865%_ _%g159849159868%_))))
                      (_%g159848159865%_ _%g159849159868%_)))))
          (_%g159847159910%_ _%stx159846%_))))
    (define gxc#apply-define-values%
      (lambda (_%self159777%_ _%stx159778%_)
        (let* ((_%g159780159797%_
                (lambda (_%g159781159794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159781159794%_))))
               (_%g159779159842%_
                (lambda (_%g159781159800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159781159800%_))
                      (let ((_%e159784159802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159781159800%_))))
                        (let ((_%hd159785159805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159784159802%_)))
                              (_%tl159786159807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159784159802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159786159807%_))
                              (let ((_%e159787159810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159786159807%_))))
                                (let ((_%hd159788159813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159787159810%_)))
                                      (_%tl159789159815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159787159810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159789159815%_))
                                      (let ((_%e159790159818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159789159815%_))))
                                        (let ((_%hd159791159821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159790159818%_)))
                                              (_%tl159792159823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159790159818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159792159823%_))
                                              ((lambda (_%g159782159826%_
                                                        _%g159783159827%_)
                                                 (gxc#compile-e__1
                                                  _%self159777%_
                                                  _%g159782159826%_))
                                               _%hd159791159821%_
                                               _%hd159788159813%_)
                                              (_%g159780159797%_
                                               _%g159781159800%_))))
                                      (_%g159780159797%_ _%g159781159800%_))))
                              (_%g159780159797%_ _%g159781159800%_))))
                      (_%g159780159797%_ _%g159781159800%_)))))
          (_%g159779159842%_ _%stx159778%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self159708%_ _%stx159709%_)
        (let* ((_%g159711159728%_
                (lambda (_%g159712159725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159712159725%_))))
               (_%g159710159774%_
                (lambda (_%g159712159731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159712159731%_))
                      (let ((_%e159715159733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159712159731%_))))
                        (let ((_%hd159716159736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159715159733%_)))
                              (_%tl159717159738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159715159733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159717159738%_))
                              (let ((_%e159718159741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159717159738%_))))
                                (let ((_%hd159719159744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159718159741%_)))
                                      (_%tl159720159746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159718159741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159720159746%_))
                                      (let ((_%e159721159749%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159720159746%_))))
                                        (let ((_%hd159722159752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159721159749%_)))
                                              (_%tl159723159754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159721159749%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159723159754%_))
                                              ((lambda (_%g159713159757%_
                                                        _%g159714159758%_)
                                                 (let ((__tmp160377
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self159708%_
                                                           _%g159713159757%_)))
                                                       (__tmp160375
                                                        (let ((__tmp160376
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp160376 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp160377
                                                    gx#current-expander-phi
                                                    __tmp160375)))
                                               _%hd159722159752%_
                                               _%hd159719159744%_)
                                              (_%g159711159728%_
                                               _%g159712159731%_))))
                                      (_%g159711159728%_ _%g159712159731%_))))
                              (_%g159711159728%_ _%g159712159731%_))))
                      (_%g159711159728%_ _%g159712159731%_)))))
          (_%g159710159774%_ _%stx159709%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self159640%_ _%stx159641%_)
        (let* ((_%g159643159660%_
                (lambda (_%g159644159657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159644159657%_))))
               (_%g159642159705%_
                (lambda (_%g159644159663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159644159663%_))
                      (let ((_%e159647159665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159644159663%_))))
                        (let ((_%hd159648159668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159647159665%_)))
                              (_%tl159649159670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159647159665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159649159670%_))
                              (let ((_%e159650159673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159649159670%_))))
                                (let ((_%hd159651159676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159650159673%_)))
                                      (_%tl159652159678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159650159673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159652159678%_))
                                      (let ((_%e159653159681%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159652159678%_))))
                                        (let ((_%hd159654159684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159653159681%_)))
                                              (_%tl159655159686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159653159681%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159655159686%_))
                                              ((lambda (_%g159645159689%_
                                                        _%g159646159690%_)
                                                 (gxc#compile-e__1
                                                  _%self159640%_
                                                  _%g159645159689%_))
                                               _%hd159654159684%_
                                               _%hd159651159676%_)
                                              (_%g159643159660%_
                                               _%g159644159663%_))))
                                      (_%g159643159660%_ _%g159644159663%_))))
                              (_%g159643159660%_ _%g159644159663%_))))
                      (_%g159643159660%_ _%g159644159663%_)))))
          (_%g159642159705%_ _%stx159641%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self159526%_ _%stx159527%_)
        (let* ((_%g159529159557%_
                (lambda (_%g159530159554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159530159554%_))))
               (_%g159528159637%_
                (lambda (_%g159530159560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159530159560%_))
                      (let ((_%e159533159562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159530159560%_))))
                        (let ((_%hd159534159565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159533159562%_)))
                              (_%tl159535159567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159533159562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl159535159567%_))
                              (let ((_g160378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl159535159567%_
                                        '0))))
                                (begin
                                  (let ((_g160379_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g160378_)
                                               (##values-length _g160378_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g160379_ 2)))
                                        (error "Context expects 2 values"
                                               _g160379_)))
                                  (let ((_%target159536159570%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g160378_ 0)))
                                        (_%tl159538159572%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g160378_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl159538159572%_))
                                        (letrec ((_%loop159539159575%_
                                                  (lambda (_%hd159537159578%_
                                                           _%body159543159580%_
                                                           _%hd159544159581%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd159537159578%_))
                                                        (let ((_%e159540159583%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd159537159578%_))))
                  (let ((_%lp-hd159541159586%_
                         (let ()
                           (declare (not safe))
                           (##car _%e159540159583%_)))
                        (_%lp-tl159542159588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e159540159583%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd159541159586%_))
                        (let ((_%e159547159591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd159541159586%_))))
                          (let ((_%hd159548159594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159547159591%_)))
                                (_%tl159549159596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159547159591%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl159549159596%_))
                                (let ((_%e159550159599%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl159549159596%_))))
                                  (let ((_%hd159551159602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159550159599%_)))
                                        (_%tl159552159604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159550159599%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl159552159604%_))
                                        (_%loop159539159575%_
                                         _%lp-tl159542159588%_
                                         (cons _%hd159551159602%_
                                               _%body159543159580%_)
                                         (cons _%hd159548159594%_
                                               _%hd159544159581%_))
                                        (_%g159529159557%_
                                         _%g159530159560%_))))
                                (_%g159529159557%_ _%g159530159560%_))))
                        (_%g159529159557%_ _%g159530159560%_))))
                (let ((_%body159545159607%_ (reverse _%body159543159580%_))
                      (_%hd159546159608%_ (reverse _%hd159544159581%_)))
                  ((lambda (_%g159531159610%_ _%g159532159611%_)
                     (for-each
                      (lambda (_%g159625159627%_)
                        (gxc#compile-e__1 _%self159526%_ _%g159625159627%_))
                      (let ((__tmp160380
                             (lambda (_%g159629159632%_ _%g159630159634%_)
                               (cons _%g159629159632%_ _%g159630159634%_))))
                        (declare (not safe))
                        (__foldr1 __tmp160380 '() _%g159531159610%_))))
                   _%body159545159607%_
                   _%hd159546159608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop159539159575%_
                                           _%target159536159570%_
                                           '()
                                           '()))
                                        (_%g159529159557%_
                                         _%g159530159560%_)))))
                              (_%g159529159557%_ _%g159530159560%_))))
                      (_%g159529159557%_ _%g159530159560%_)))))
          (_%g159528159637%_ _%stx159527%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self159383%_ _%stx159384%_)
        (let* ((_%g159386159421%_
                (lambda (_%g159387159418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159387159418%_))))
               (_%g159385159523%_
                (lambda (_%g159387159424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159387159424%_))
                      (let ((_%e159391159426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159387159424%_))))
                        (let ((_%hd159392159429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159391159426%_)))
                              (_%tl159393159431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159391159426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159393159431%_))
                              (let ((_%e159394159434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159393159431%_))))
                                (let ((_%hd159395159437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159394159434%_)))
                                      (_%tl159396159439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159394159434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159395159437%_))
                                      (let ((_g160381_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159395159437%_
                                                '0))))
                                        (begin
                                          (let ((_g160382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g160381_)
                                                       (##values-length
                                                        _g160381_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g160382_ 2)))
                                                (error "Context expects 2 values"
                                                       _g160382_)))
                                          (let ((_%target159397159442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g160381_ 0)))
                                                (_%tl159399159444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g160381_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159399159444%_))
                                                (letrec ((_%loop159400159447%_
                                                          (lambda (_%hd159398159450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159404159452%_
                           _%hd159405159453%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159398159450%_))
                        (let ((_%e159401159455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159398159450%_))))
                          (let ((_%lp-hd159402159458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159401159455%_)))
                                (_%lp-tl159403159460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159401159455%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159402159458%_))
                                (let ((_%e159408159463%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159402159458%_))))
                                  (let ((_%hd159409159466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159408159463%_)))
                                        (_%tl159410159468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159408159463%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159410159468%_))
                                        (let ((_%e159411159471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159410159468%_))))
                                          (let ((_%hd159412159474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159411159471%_)))
                                                (_%tl159413159476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159411159471%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159413159476%_))
                                                (_%loop159400159447%_
                                                 _%lp-tl159403159460%_
                                                 (cons _%hd159412159474%_
                                                       _%expr159404159452%_)
                                                 (cons _%hd159409159466%_
                                                       _%hd159405159453%_))
                                                (_%g159386159421%_
                                                 _%g159387159424%_))))
                                        (_%g159386159421%_
                                         _%g159387159424%_))))
                                (_%g159386159421%_ _%g159387159424%_))))
                        (let ((_%expr159406159479%_
                               (reverse _%expr159404159452%_))
                              (_%hd159407159480%_
                               (reverse _%hd159405159453%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159396159439%_))
                              (let ((_%e159414159482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159396159439%_))))
                                (let ((_%hd159415159485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159414159482%_)))
                                      (_%tl159416159487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159414159482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl159416159487%_))
                                      ((lambda (_%g159388159490%_
                                                _%g159389159491%_
                                                _%g159390159492%_)
                                         (for-each
                                          (lambda (_%g159511159513%_)
                                            (gxc#compile-e__1
                                             _%self159383%_
                                             _%g159511159513%_))
                                          (let ((__tmp160384
                                                 (lambda (_%g159515159518%_
                                                          _%g159516159520%_)
                                                   (cons _%g159515159518%_
                                                         _%g159516159520%_)))
                                                (__tmp160383
                                                 (cons _%g159388159490%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp160384
                                             __tmp160383
                                             _%g159389159491%_))))
                                       _%hd159415159485%_
                                       _%expr159406159479%_
                                       _%hd159407159480%_)
                                      (_%g159386159421%_ _%g159387159424%_))))
                              (_%g159386159421%_ _%g159387159424%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159400159447%_
                                                   _%target159397159442%_
                                                   '()
                                                   '()))
                                                (_%g159386159421%_
                                                 _%g159387159424%_)))))
                                      (_%g159386159421%_ _%g159387159424%_))))
                              (_%g159386159421%_ _%g159387159424%_))))
                      (_%g159386159421%_ _%g159387159424%_)))))
          (_%g159385159523%_ _%stx159384%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self159328%_ _%stx159329%_)
        (let* ((_%g159331159345%_
                (lambda (_%g159332159342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159332159342%_))))
               (_%g159330159380%_
                (lambda (_%g159332159348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159332159348%_))
                      (let ((_%e159335159350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159332159348%_))))
                        (let ((_%hd159336159353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159335159350%_)))
                              (_%tl159337159355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159335159350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159337159355%_))
                              (let ((_%e159338159358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159337159355%_))))
                                (let ((_%hd159339159361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159338159358%_)))
                                      (_%tl159340159363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159338159358%_))))
                                  ((lambda (_%g159333159366%_
                                            _%g159334159367%_)
                                     (gxc#compile-e__1
                                      _%self159328%_
                                      (last _%g159333159366%_)))
                                   _%tl159340159363%_
                                   _%hd159339159361%_)))
                              (_%g159331159345%_ _%g159332159348%_))))
                      (_%g159331159345%_ _%g159332159348%_)))))
          (_%g159330159380%_ _%stx159329%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self159260%_ _%stx159261%_)
        (let* ((_%g159263159280%_
                (lambda (_%g159264159277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159264159277%_))))
               (_%g159262159325%_
                (lambda (_%g159264159283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159264159283%_))
                      (let ((_%e159267159285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159264159283%_))))
                        (let ((_%hd159268159288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159267159285%_)))
                              (_%tl159269159290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159267159285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159269159290%_))
                              (let ((_%e159270159293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159269159290%_))))
                                (let ((_%hd159271159296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159270159293%_)))
                                      (_%tl159272159298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159270159293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159272159298%_))
                                      (let ((_%e159273159301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159272159298%_))))
                                        (let ((_%hd159274159304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159273159301%_)))
                                              (_%tl159275159306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159273159301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159275159306%_))
                                              ((lambda (_%g159265159309%_
                                                        _%g159266159310%_)
                                                 (gxc#compile-e__1
                                                  _%self159260%_
                                                  _%g159265159309%_))
                                               _%hd159274159304%_
                                               _%hd159271159296%_)
                                              (_%g159263159280%_
                                               _%g159264159283%_))))
                                      (_%g159263159280%_ _%g159264159283%_))))
                              (_%g159263159280%_ _%g159264159283%_))))
                      (_%g159263159280%_ _%g159264159283%_)))))
          (_%g159262159325%_ _%stx159261%_))))
    (define gxc#apply-operands
      (lambda (_%self159175%_ _%stx159176%_)
        (let* ((_%g159178159197%_
                (lambda (_%g159179159194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159179159194%_))))
               (_%g159177159257%_
                (lambda (_%g159179159200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159179159200%_))
                      (let ((_%e159181159202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159179159200%_))))
                        (let ((_%hd159182159205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159181159202%_)))
                              (_%tl159183159207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159181159202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl159183159207%_))
                              (let ((_g160385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl159183159207%_
                                        '0))))
                                (begin
                                  (let ((_g160386_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g160385_)
                                               (##values-length _g160385_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g160386_ 2)))
                                        (error "Context expects 2 values"
                                               _g160386_)))
                                  (let ((_%target159184159210%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g160385_ 0)))
                                        (_%tl159186159212%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g160385_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl159186159212%_))
                                        (letrec ((_%loop159187159215%_
                                                  (lambda (_%hd159185159218%_
                                                           _%rands159191159220%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd159185159218%_))
                                                        (let ((_%e159188159222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd159185159218%_))))
                  (let ((_%lp-hd159189159225%_
                         (let ()
                           (declare (not safe))
                           (##car _%e159188159222%_)))
                        (_%lp-tl159190159227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e159188159222%_))))
                    (_%loop159187159215%_
                     _%lp-tl159190159227%_
                     (cons _%lp-hd159189159225%_ _%rands159191159220%_))))
                (let ((_%rands159192159230%_ (reverse _%rands159191159220%_)))
                  ((lambda (_%g159180159232%_)
                     (for-each
                      (lambda (_%g159245159247%_)
                        (gxc#compile-e__1 _%self159175%_ _%g159245159247%_))
                      (let ((__tmp160387
                             (lambda (_%g159249159252%_ _%g159250159254%_)
                               (cons _%g159249159252%_ _%g159250159254%_))))
                        (declare (not safe))
                        (__foldr1 __tmp160387 '() _%g159180159232%_))))
                   _%rands159192159230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop159187159215%_
                                           _%target159184159210%_
                                           '()))
                                        (_%g159178159197%_
                                         _%g159179159200%_)))))
                              (_%g159178159197%_ _%g159179159200%_))))
                      (_%g159178159197%_ _%g159179159200%_)))))
          (_%g159177159257%_ _%stx159176%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx159172%_ _%src-stx159173%_)
        (let ((__tmp160388
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx159173%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx159172%_ __tmp160388))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx159168%_ _%src-stx159169%_ _%ctx159170%_)
        (gxc#compile-e__1
         _%ctx159170%_
         (gxc#xform-wrap-source _%stx159168%_ _%src-stx159169%_))))
    (define gxc#xform-begin%
      (lambda (_%self159123%_ _%stx159124%_)
        (let* ((_%g159126159136%_
                (lambda (_%g159127159133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159127159133%_))))
               (_%g159125159165%_
                (lambda (_%g159127159139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159127159139%_))
                      (let ((_%e159129159141%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159127159139%_))))
                        (let ((_%hd159130159144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159129159141%_)))
                              (_%tl159131159146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159129159141%_))))
                          ((lambda (_%g159128159149%_)
                             (let ((_%forms159163%_
                                    (map (lambda (_%g159158159160%_)
                                           (gxc#compile-e__1
                                            _%self159123%_
                                            _%g159158159160%_))
                                         _%g159128159149%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms159163%_)
                                _%stx159124%_)))
                           _%tl159131159146%_)))
                      (_%g159126159136%_ _%g159127159139%_)))))
          (_%g159125159165%_ _%stx159124%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self159077%_ _%stx159078%_)
        (let* ((_%g159080159090%_
                (lambda (_%g159081159087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159081159087%_))))
               (_%g159079159120%_
                (lambda (_%g159081159093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159081159093%_))
                      (let ((_%e159083159095%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159081159093%_))))
                        (let ((_%hd159084159098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159083159095%_)))
                              (_%tl159085159100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159083159095%_))))
                          ((lambda (_%g159082159103%_)
                             (let ((__tmp160391
                                    (lambda ()
                                      (let ((_%forms159118%_
                                             (map (lambda (_%g159113159115%_)
                                                    (gxc#compile-e__1
                                                     _%self159077%_
                                                     _%g159113159115%_))
                                                  _%g159082159103%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms159118%_)
                                         _%stx159078%_))))
                                   (__tmp160389
                                    (let ((__tmp160390
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp160390 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp160391
                                gx#current-expander-phi
                                __tmp160389)))
                           _%tl159085159100%_)))
                      (_%g159080159090%_ _%g159081159093%_)))))
          (_%g159079159120%_ _%stx159078%_))))
    (define gxc#xform-module%
      (lambda (_%self159014%_ _%stx159015%_)
        (let* ((_%g159017159031%_
                (lambda (_%g159018159028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159018159028%_))))
               (_%g159016159074%_
                (lambda (_%g159018159034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159018159034%_))
                      (let ((_%e159021159036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159018159034%_))))
                        (let ((_%hd159022159039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159021159036%_)))
                              (_%tl159023159041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159021159036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159023159041%_))
                              (let ((_%e159024159044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159023159041%_))))
                                (let ((_%hd159025159047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159024159044%_)))
                                      (_%tl159026159049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159024159044%_))))
                                  ((lambda (_%g159019159052%_
                                            _%g159020159053%_)
                                     (let* ((_%ctx159066%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g159020159053%_)))
                                            (_%code159068%_
                                             (##structure-ref
                                              _%ctx159066%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code159071%_
                                             (let ((__tmp160392
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self159014%_
                                                       _%code159068%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp160392
                                                gx#current-expander-context
                                                _%ctx159066%_))))
                                       (##structure-set!
                                        _%ctx159066%_
                                        _%code159071%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g159020159053%_
                                                    (cons _%code159071%_ '())))
                                        _%stx159015%_)))
                                   _%tl159026159049%_
                                   _%hd159025159047%_)))
                              (_%g159017159031%_ _%g159018159034%_))))
                      (_%g159017159031%_ _%g159018159034%_)))))
          (_%g159016159074%_ _%stx159015%_))))
    (define gxc#xform-define-values%
      (lambda (_%self158944%_ _%stx158945%_)
        (let* ((_%g158947158964%_
                (lambda (_%g158948158961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158948158961%_))))
               (_%g158946159011%_
                (lambda (_%g158948158967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158948158967%_))
                      (let ((_%e158951158969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158948158967%_))))
                        (let ((_%hd158952158972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158951158969%_)))
                              (_%tl158953158974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158951158969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158953158974%_))
                              (let ((_%e158954158977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158953158974%_))))
                                (let ((_%hd158955158980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158954158977%_)))
                                      (_%tl158956158982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158954158977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158956158982%_))
                                      (let ((_%e158957158985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158956158982%_))))
                                        (let ((_%hd158958158988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158957158985%_)))
                                              (_%tl158959158990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158957158985%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158959158990%_))
                                              ((lambda (_%g158949158993%_
                                                        _%g158950158994%_)
                                                 (let ((_%expr159009%_
                                                        (gxc#compile-e__1
                                                         _%self158944%_
                                                         _%g158949158993%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g158950158994%_
                                                                (cons _%expr159009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx158945%_)))
                                               _%hd158958158988%_
                                               _%hd158955158980%_)
                                              (_%g158947158964%_
                                               _%g158948158967%_))))
                                      (_%g158947158964%_ _%g158948158967%_))))
                              (_%g158947158964%_ _%g158948158967%_))))
                      (_%g158947158964%_ _%g158948158967%_)))))
          (_%g158946159011%_ _%stx158945%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self158873%_ _%stx158874%_)
        (let* ((_%g158876158893%_
                (lambda (_%g158877158890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158877158890%_))))
               (_%g158875158941%_
                (lambda (_%g158877158896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158877158896%_))
                      (let ((_%e158880158898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158877158896%_))))
                        (let ((_%hd158881158901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158880158898%_)))
                              (_%tl158882158903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158880158898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158882158903%_))
                              (let ((_%e158883158906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158882158903%_))))
                                (let ((_%hd158884158909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158883158906%_)))
                                      (_%tl158885158911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158883158906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158885158911%_))
                                      (let ((_%e158886158914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158885158911%_))))
                                        (let ((_%hd158887158917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158886158914%_)))
                                              (_%tl158888158919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158886158914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158888158919%_))
                                              ((lambda (_%g158878158922%_
                                                        _%g158879158923%_)
                                                 (let ((__tmp160395
                                                        (lambda ()
                                                          (let ((_%expr158939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self158873%_ _%g158878158922%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g158879158923%_ (cons _%expr158939%_ '())))
                     _%stx158874%_))))
               (__tmp160393
                (let ((__tmp160394
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp160394 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp160395
                                                    gx#current-expander-phi
                                                    __tmp160393)))
                                               _%hd158887158917%_
                                               _%hd158884158909%_)
                                              (_%g158876158893%_
                                               _%g158877158896%_))))
                                      (_%g158876158893%_ _%g158877158896%_))))
                              (_%g158876158893%_ _%g158877158896%_))))
                      (_%g158876158893%_ _%g158877158896%_)))))
          (_%g158875158941%_ _%stx158874%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self158803%_ _%stx158804%_)
        (let* ((_%g158806158823%_
                (lambda (_%g158807158820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158807158820%_))))
               (_%g158805158870%_
                (lambda (_%g158807158826%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158807158826%_))
                      (let ((_%e158810158828%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158807158826%_))))
                        (let ((_%hd158811158831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158810158828%_)))
                              (_%tl158812158833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158810158828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158812158833%_))
                              (let ((_%e158813158836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158812158833%_))))
                                (let ((_%hd158814158839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158813158836%_)))
                                      (_%tl158815158841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158813158836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158815158841%_))
                                      (let ((_%e158816158844%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158815158841%_))))
                                        (let ((_%hd158817158847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158816158844%_)))
                                              (_%tl158818158849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158816158844%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158818158849%_))
                                              ((lambda (_%g158808158852%_
                                                        _%g158809158853%_)
                                                 (let ((_%expr158868%_
                                                        (gxc#compile-e__1
                                                         _%self158803%_
                                                         _%g158808158852%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g158809158853%_
                                                                (cons _%expr158868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx158804%_)))
                                               _%hd158817158847%_
                                               _%hd158814158839%_)
                                              (_%g158806158823%_
                                               _%g158807158826%_))))
                                      (_%g158806158823%_ _%g158807158826%_))))
                              (_%g158806158823%_ _%g158807158826%_))))
                      (_%g158806158823%_ _%g158807158826%_)))))
          (_%g158805158870%_ _%stx158804%_))))
    (define gxc#xform-lambda%
      (lambda (_%self158741%_ _%stx158742%_)
        (let* ((_%g158744158758%_
                (lambda (_%g158745158755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158745158755%_))))
               (_%g158743158800%_
                (lambda (_%g158745158761%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158745158761%_))
                      (let ((_%e158748158763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158745158761%_))))
                        (let ((_%hd158749158766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158748158763%_)))
                              (_%tl158750158768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158748158763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158750158768%_))
                              (let ((_%e158751158771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158750158768%_))))
                                (let ((_%hd158752158774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158751158771%_)))
                                      (_%tl158753158776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158751158771%_))))
                                  ((lambda (_%g158746158779%_
                                            _%g158747158780%_)
                                     (let ((__tmp160397
                                            (lambda ()
                                              (let ((_%body158798%_
                                                     (map (lambda (_%g158793158795%_)
                                                            (gxc#compile-e__1
                                                             _%self158741%_
                                                             _%g158793158795%_))
                                                          _%g158746158779%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g158747158780%_
                                                             _%body158798%_))
                                                 _%stx158742%_))))
                                           (__tmp160396
                                            (gxc#xform-let-locals
                                             _%g158747158780%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp160397
                                        gxc#current-compile-local-env
                                        __tmp160396)))
                                   _%tl158753158776%_
                                   _%hd158752158774%_)))
                              (_%g158744158758%_ _%g158745158761%_))))
                      (_%g158744158758%_ _%g158745158761%_)))))
          (_%g158743158800%_ _%stx158742%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self158649%_ _%stx158650%_)
        (letrec ((_%clause-e158652%_
                  (lambda (_%clause158693%_)
                    (let* ((_%g158695158706%_
                            (lambda (_%g158696158703%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g158696158703%_))))
                           (_%g158694158738%_
                            (lambda (_%g158696158709%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g158696158709%_))
                                  (let ((_%e158699158711%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g158696158709%_))))
                                    (let ((_%hd158700158714%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e158699158711%_)))
                                          (_%tl158701158716%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e158699158711%_))))
                                      ((lambda (_%g158697158719%_
                                                _%g158698158720%_)
                                         (let ((__tmp160399
                                                (lambda ()
                                                  (let ((_%body158736%_
                                                         (map (lambda (_%g158731158733%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self158649%_
                         _%g158731158733%_))
                      _%g158697158719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g158698158720%_
                                                          _%body158736%_))))
                                               (__tmp160398
                                                (gxc#xform-let-locals
                                                 _%g158698158720%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp160399
                                            gxc#current-compile-local-env
                                            __tmp160398)))
                                       _%tl158701158716%_
                                       _%hd158700158714%_)))
                                  (_%g158695158706%_ _%g158696158709%_)))))
                      (_%g158694158738%_ _%clause158693%_)))))
          (let* ((_%g158654158664%_
                  (lambda (_%g158655158661%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g158655158661%_))))
                 (_%g158653158690%_
                  (lambda (_%g158655158667%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g158655158667%_))
                        (let ((_%e158657158669%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g158655158667%_))))
                          (let ((_%hd158658158672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e158657158669%_)))
                                (_%tl158659158674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e158657158669%_))))
                            ((lambda (_%g158656158677%_)
                               (let ((_%clauses158688%_
                                      (map _%clause-e158652%_
                                           _%g158656158677%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses158688%_)
                                  _%stx158650%_)))
                             _%tl158659158674%_)))
                        (_%g158654158664%_ _%g158655158667%_)))))
            (_%g158653158690%_ _%stx158650%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self158409%_ _%stx158410%_)
        (let* ((_%g158412158445%_
                (lambda (_%g158413158442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158413158442%_))))
               (_%g158411158646%_
                (lambda (_%g158413158448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158413158448%_))
                      (let ((_%e158418158450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158413158448%_))))
                        (let ((_%hd158419158453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158418158450%_)))
                              (_%tl158420158455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158418158450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158420158455%_))
                              (let ((_%e158421158458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158420158455%_))))
                                (let ((_%hd158422158461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158421158458%_)))
                                      (_%tl158423158463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158421158458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd158422158461%_))
                                      (let ((_g160400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd158422158461%_
                                                '0))))
                                        (begin
                                          (let ((_g160401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g160400_)
                                                       (##values-length
                                                        _g160400_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g160401_ 2)))
                                                (error "Context expects 2 values"
                                                       _g160401_)))
                                          (let ((_%target158424158466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g160400_ 0)))
                                                (_%tl158426158468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g160400_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158426158468%_))
                                                (letrec ((_%loop158427158471%_
                                                          (lambda (_%hd158425158474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr158431158476%_
                           _%hd158432158477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd158425158474%_))
                        (let ((_%e158428158479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd158425158474%_))))
                          (let ((_%lp-hd158429158482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e158428158479%_)))
                                (_%lp-tl158430158484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e158428158479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd158429158482%_))
                                (let ((_%e158435158487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd158429158482%_))))
                                  (let ((_%hd158436158490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e158435158487%_)))
                                        (_%tl158437158492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e158435158487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl158437158492%_))
                                        (let ((_%e158438158495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl158437158492%_))))
                                          (let ((_%hd158439158498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158438158495%_)))
                                                (_%tl158440158500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158438158495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158440158500%_))
                                                (_%loop158427158471%_
                                                 _%lp-tl158430158484%_
                                                 (cons _%hd158439158498%_
                                                       _%expr158431158476%_)
                                                 (cons _%hd158436158490%_
                                                       _%hd158432158477%_))
                                                (_%g158412158445%_
                                                 _%g158413158448%_))))
                                        (_%g158412158445%_
                                         _%g158413158448%_))))
                                (_%g158412158445%_ _%g158413158448%_))))
                        (let ((_%expr158433158503%_
                               (reverse _%expr158431158476%_))
                              (_%hd158434158504%_
                               (reverse _%hd158432158477%_)))
                          ((lambda (_%g158414158506%_
                                    _%g158415158507%_
                                    _%g158416158508%_
                                    _%g158417158509%_)
                             (let* ((_%g158528158544%_
                                     (lambda (_%g158529158541%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g158529158541%_))))
                                    (_%g158527158632%_
                                     (lambda (_%g158529158547%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g158529158547%_))
                                           (let ((_g160402_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g158529158547%_
                                                     '0))))
                                             (begin
                                               (let ((_g160403_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g160402_)
                                                            (##values-length
                                                             _g160402_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g160403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g160403_)))
                                               (let ((_%target158531158549%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g160402_
                                                         0)))
                                                     (_%tl158533158551%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g160402_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl158533158551%_))
                                                     (letrec ((_%loop158534158554%_
                                                               (lambda (_%hd158532158557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr158538158559%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd158532158557%_))
                             (let ((_%e158535158561%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd158532158557%_))))
                               (let ((_%lp-hd158536158564%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e158535158561%_)))
                                     (_%lp-tl158537158566%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e158535158561%_))))
                                 (_%loop158534158554%_
                                  _%lp-tl158537158566%_
                                  (cons _%lp-hd158536158564%_
                                        _%expr158538158559%_))))
                             (let ((_%expr158539158569%_
                                    (reverse _%expr158538158559%_)))
                               ((lambda (_%g158530158571%_)
                                  (let ((__tmp160406
                                         (lambda ()
                                           (let* ((_%g158585158592%_
                                                   (lambda (_%g158586158589%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g158586158589%_))))
                                                  (_%g158584158618%_
                                                   (lambda (_%g158586158595%_)
                                                     ((lambda (_%g158587158597%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g158417158509%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g158530158571%_
                                  _%g158416158508%_))
                               (let ((__tmp160407
                                      (lambda (_%g158607158611%_
                                               _%g158608158613%_
                                               _%g158609158615%_)
                                        (cons (cons _%g158608158613%_
                                                    (cons _%g158607158611%_
                                                          '()))
                                              _%g158609158615%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp160407
                                  '()
                                  _%g158530158571%_
                                  _%g158416158508%_)))
                             _%g158587158597%_))
                 _%stx158410%_))
              _%g158586158595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g158584158618%_
                                              (map (lambda (_%g158620158622%_)
                                                     (gxc#compile-e__1
                                                      _%self158409%_
                                                      _%g158620158622%_))
                                                   _%g158414158506%_)))))
                                        (__tmp160404
                                         (gxc#xform-let-locals
                                          (let ((__tmp160405
                                                 (lambda (_%g158624158627%_
                                                          _%g158625158629%_)
                                                   (cons _%g158624158627%_
                                                         _%g158625158629%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp160405
                                             '()
                                             _%g158416158508%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp160406
                                     gxc#current-compile-local-env
                                     __tmp160404)))
                                _%expr158539158569%_))))))
               (_%loop158534158554%_ _%target158531158549%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g158528158544%_
                                                      _%g158529158547%_)))))
                                           (_%g158528158544%_
                                            _%g158529158547%_)))))
                               (_%g158527158632%_
                                (map (lambda (_%g158634158636%_)
                                       (gxc#compile-e__1
                                        _%self158409%_
                                        _%g158634158636%_))
                                     (let ((__tmp160408
                                            (lambda (_%g158638158641%_
                                                     _%g158639158643%_)
                                              (cons _%g158638158641%_
                                                    _%g158639158643%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp160408
                                        '()
                                        _%g158415158507%_))))))
                           _%tl158423158463%_
                           _%expr158433158503%_
                           _%hd158434158504%_
                           _%hd158419158453%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop158427158471%_
                                                   _%target158424158466%_
                                                   '()
                                                   '()))
                                                (_%g158412158445%_
                                                 _%g158413158448%_)))))
                                      (_%g158412158445%_ _%g158413158448%_))))
                              (_%g158412158445%_ _%g158413158448%_))))
                      (_%g158412158445%_ _%g158413158448%_)))))
          (_%g158411158646%_ _%stx158410%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self158169%_ _%stx158170%_)
        (let* ((_%g158172158205%_
                (lambda (_%g158173158202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158173158202%_))))
               (_%g158171158406%_
                (lambda (_%g158173158208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158173158208%_))
                      (let ((_%e158178158210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158173158208%_))))
                        (let ((_%hd158179158213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158178158210%_)))
                              (_%tl158180158215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158178158210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158180158215%_))
                              (let ((_%e158181158218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158180158215%_))))
                                (let ((_%hd158182158221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158181158218%_)))
                                      (_%tl158183158223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158181158218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd158182158221%_))
                                      (let ((_g160409_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd158182158221%_
                                                '0))))
                                        (begin
                                          (let ((_g160410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g160409_)
                                                       (##values-length
                                                        _g160409_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g160410_ 2)))
                                                (error "Context expects 2 values"
                                                       _g160410_)))
                                          (let ((_%target158184158226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g160409_ 0)))
                                                (_%tl158186158228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g160409_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158186158228%_))
                                                (letrec ((_%loop158187158231%_
                                                          (lambda (_%hd158185158234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr158191158236%_
                           _%hd158192158237%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd158185158234%_))
                        (let ((_%e158188158239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd158185158234%_))))
                          (let ((_%lp-hd158189158242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e158188158239%_)))
                                (_%lp-tl158190158244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e158188158239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd158189158242%_))
                                (let ((_%e158195158247%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd158189158242%_))))
                                  (let ((_%hd158196158250%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e158195158247%_)))
                                        (_%tl158197158252%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e158195158247%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl158197158252%_))
                                        (let ((_%e158198158255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl158197158252%_))))
                                          (let ((_%hd158199158258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158198158255%_)))
                                                (_%tl158200158260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158198158255%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158200158260%_))
                                                (_%loop158187158231%_
                                                 _%lp-tl158190158244%_
                                                 (cons _%hd158199158258%_
                                                       _%expr158191158236%_)
                                                 (cons _%hd158196158250%_
                                                       _%hd158192158237%_))
                                                (_%g158172158205%_
                                                 _%g158173158208%_))))
                                        (_%g158172158205%_
                                         _%g158173158208%_))))
                                (_%g158172158205%_ _%g158173158208%_))))
                        (let ((_%expr158193158263%_
                               (reverse _%expr158191158236%_))
                              (_%hd158194158264%_
                               (reverse _%hd158192158237%_)))
                          ((lambda (_%g158174158266%_
                                    _%g158175158267%_
                                    _%g158176158268%_
                                    _%g158177158269%_)
                             (let ((__tmp160413
                                    (lambda ()
                                      (let* ((_%g158289158305%_
                                              (lambda (_%g158290158302%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g158290158302%_))))
                                             (_%g158288158385%_
                                              (lambda (_%g158290158308%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g158290158308%_))
                                                    (let ((_g160414_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g158290158308%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g160415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g160414_)
                             (##values-length _g160414_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g160415_ 2)))
                      (error "Context expects 2 values" _g160415_)))
                (let ((_%target158292158310%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g160414_ 0)))
                      (_%tl158294158312%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g160414_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl158294158312%_))
                      (letrec ((_%loop158295158315%_
                                (lambda (_%hd158293158318%_
                                         _%expr158299158320%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158293158318%_))
                                      (let ((_%e158296158322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd158293158318%_))))
                                        (let ((_%lp-hd158297158325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158296158322%_)))
                                              (_%lp-tl158298158327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158296158322%_))))
                                          (_%loop158295158315%_
                                           _%lp-tl158298158327%_
                                           (cons _%lp-hd158297158325%_
                                                 _%expr158299158320%_))))
                                      (let ((_%expr158300158330%_
                                             (reverse _%expr158299158320%_)))
                                        ((lambda (_%g158291158332%_)
                                           (let* ((_%g158346158353%_
                                                   (lambda (_%g158347158350%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g158347158350%_))))
                                                  (_%g158345158378%_
                                                   (lambda (_%g158347158356%_)
                                                     ((lambda (_%g158348158358%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g158177158269%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g158291158332%_
                                  _%g158176158268%_))
                               (let ((__tmp160416
                                      (lambda (_%g158367158371%_
                                               _%g158368158373%_
                                               _%g158369158375%_)
                                        (cons (cons _%g158368158373%_
                                                    (cons _%g158367158371%_
                                                          '()))
                                              _%g158369158375%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp160416
                                  '()
                                  _%g158291158332%_
                                  _%g158176158268%_)))
                             _%g158348158358%_))
                 _%stx158170%_))
              _%g158347158356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g158345158378%_
                                              (map (lambda (_%g158380158382%_)
                                                     (gxc#compile-e__1
                                                      _%self158169%_
                                                      _%g158380158382%_))
                                                   _%g158174158266%_))))
                                         _%expr158300158330%_))))))
                        (_%loop158295158315%_ _%target158292158310%_ '()))
                      (_%g158289158305%_ _%g158290158308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g158289158305%_
                                                     _%g158290158308%_)))))
                                        (_%g158288158385%_
                                         (map (lambda (_%g158387158389%_)
                                                (gxc#compile-e__1
                                                 _%self158169%_
                                                 _%g158387158389%_))
                                              (let ((__tmp160417
                                                     (lambda (_%g158391158394%_
                                                              _%g158392158396%_)
                                                       (cons _%g158391158394%_
                                                             _%g158392158396%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp160417
                                                 '()
                                                 _%g158175158267%_)))))))
                                   (__tmp160411
                                    (gxc#xform-let-locals
                                     (let ((__tmp160412
                                            (lambda (_%g158398158401%_
                                                     _%g158399158403%_)
                                              (cons _%g158398158401%_
                                                    _%g158399158403%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp160412
                                        '()
                                        _%g158176158268%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp160413
                                gxc#current-compile-local-env
                                __tmp160411)))
                           _%tl158183158223%_
                           _%expr158193158263%_
                           _%hd158194158264%_
                           _%hd158179158213%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop158187158231%_
                                                   _%target158184158226%_
                                                   '()
                                                   '()))
                                                (_%g158172158205%_
                                                 _%g158173158208%_)))))
                                      (_%g158172158205%_ _%g158173158208%_))))
                              (_%g158172158205%_ _%g158173158208%_))))
                      (_%g158172158205%_ _%g158173158208%_)))))
          (_%g158171158406%_ _%stx158170%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings158036%_)
        (letrec ((_%flatten158038%_
                  (lambda (_%maybe-lst158096%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst158096%_))
                        (cons _%maybe-lst158096%_ '())
                        (let _%loop158098%_ ((_%rest158100%_
                                              _%maybe-lst158096%_)
                                             (_%result158101%_ '()))
                          (let* ((_%__stx160305160306%_ _%rest158100%_)
                                 (_%g158105158117%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx160305160306%_)))))
                            (let ((_%__kont160307160308%_
                                   (lambda (_%g158107158155%_
                                            _%g158108158156%_)
                                     (_%loop158098%_
                                      _%g158107158155%_
                                      (let ((__tmp160418
                                             (_%flatten158038%_
                                              _%g158108158156%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result158101%_
                                         __tmp160418)))))
                                  (_%__kont160309160310%_
                                   (lambda (_%g158112158129%_)
                                     (cons _%g158112158129%_
                                           _%result158101%_)))
                                  (_%__kont160311160312%_
                                   (lambda () _%result158101%_)))
                              (let ((_%g158103158142%_
                                     (lambda ()
                                       (let ((_%g158112158129%_
                                              _%__stx160305160306%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g158112158129%_))
                                             (_%__kont160309160310%_
                                              _%g158112158129%_)
                                             (_%__kont160311160312%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx160305160306%_))
                                    (let ((_%e158109158147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx160305160306%_))))
                                      (let ((_%tl158111158152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e158109158147%_)))
                                            (_%hd158110158150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e158109158147%_))))
                                        (_%__kont160307160308%_
                                         _%tl158111158152%_
                                         _%hd158110158150%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g158103158142%_)))))))))))
          (let _%loop158040%_ ((_%rest158042%_
                                (_%flatten158038%_ _%bindings158036%_))
                               (_%locals158043%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest158044158055%_ _%rest158042%_)
                   (_%E158048158059%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest158044158055%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K158051158084%_
                     (lambda (_%rest158081%_ _%id158082%_)
                       (_%loop158040%_
                        _%rest158081%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id158082%_))
                              _%locals158043%_))))
                    (_%K158050158073%_
                     (lambda (_%id158071%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id158071%_))
                             _%locals158043%_)))
                    (_%K158049158064%_ (lambda () _%locals158043%_)))
                (let ((_%try-match158046158078%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest158044158055%_))
                             (let ((_%id158076%_ _%rest158044158055%_))
                               (_%K158050158073%_ _%id158076%_))
                             (_%K158049158064%_)))))
                  (if (pair? _%rest158044158055%_)
                      (let ((_%tl158053158089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest158044158055%_)))
                            (_%hd158052158087%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest158044158055%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd158052158087%_))
                            (let ((_%id158092%_ _%hd158052158087%_)
                                  (_%rest158094%_ _%tl158053158089%_))
                              (_%K158051158084%_ _%rest158094%_ _%id158092%_))
                            (_%K158049158064%_)))
                      (_%try-match158046158078%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self157988%_ _%stx157989%_)
        (let* ((_%g157991158002%_
                (lambda (_%g157992157999%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157992157999%_))))
               (_%g157990158033%_
                (lambda (_%g157992158005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157992158005%_))
                      (let ((_%e157995158007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157992158005%_))))
                        (let ((_%hd157996158010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157995158007%_)))
                              (_%tl157997158012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157995158007%_))))
                          ((lambda (_%g157993158015%_ _%g157994158016%_)
                             (let ((_%rands158031%_
                                    (map (lambda (_%g158026158028%_)
                                           (gxc#compile-e__1
                                            _%self157988%_
                                            _%g158026158028%_))
                                         _%g157993158015%_)))
                               (gxc#xform-wrap-source
                                (cons _%g157994158016%_ _%rands158031%_)
                                _%stx157989%_)))
                           _%tl157997158012%_
                           _%hd157996158010%_)))
                      (_%g157991158002%_ _%g157992158005%_)))))
          (_%g157990158033%_ _%stx157989%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self157918%_ _%stx157919%_)
        (let* ((_%g157921157938%_
                (lambda (_%g157922157935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157922157935%_))))
               (_%g157920157985%_
                (lambda (_%g157922157941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157922157941%_))
                      (let ((_%e157925157943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157922157941%_))))
                        (let ((_%hd157926157946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157925157943%_)))
                              (_%tl157927157948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157925157943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157927157948%_))
                              (let ((_%e157928157951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157927157948%_))))
                                (let ((_%hd157929157954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157928157951%_)))
                                      (_%tl157930157956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157928157951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157930157956%_))
                                      (let ((_%e157931157959%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157930157956%_))))
                                        (let ((_%hd157932157962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157931157959%_)))
                                              (_%tl157933157964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157931157959%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157933157964%_))
                                              ((lambda (_%g157923157967%_
                                                        _%g157924157968%_)
                                                 (let ((_%expr157983%_
                                                        (gxc#compile-e__1
                                                         _%self157918%_
                                                         _%g157923157967%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g157924157968%_
                                                                (cons _%expr157983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx157919%_)))
                                               _%hd157932157962%_
                                               _%hd157929157954%_)
                                              (_%g157921157938%_
                                               _%g157922157941%_))))
                                      (_%g157921157938%_ _%g157922157941%_))))
                              (_%g157921157938%_ _%g157922157941%_))))
                      (_%g157921157938%_ _%g157922157941%_)))))
          (_%g157920157985%_ _%stx157919%_))))))
