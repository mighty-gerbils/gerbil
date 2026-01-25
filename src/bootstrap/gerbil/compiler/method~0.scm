(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1769382895)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx150075%_)
        (let* ((_%self150077%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e150079%_
                (let ((__tmp150297 (gxc#stx-car-e _%stx150075%_)))
                  (declare (not safe))
                  (method-ref _%self150077%_ __tmp150297))))
          (if _%$e150079%_
              ((lambda (_%method150082%_)
                 (declare (not safe))
                 (let ((_%$e150085%_ (gx#stx-source _%stx150075%_)))
                   (if _%$e150085%_
                       ((lambda (_%source150088%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method150082%_ _%self150077%_ _%stx150075%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source150088%_ '()))
                                 (let ((_%$e150092%_
                                        (gxc#current-compile-context)))
                                   (if _%$e150092%_ _%$e150092%_ '())))))
                        _%$e150085%_)
                       (_%method150082%_ _%self150077%_ _%stx150075%_))))
               _%$e150079%_)
              (let ((__tmp150299 (gxc#stx-car-e _%stx150075%_))
                    (__tmp150298
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx150075%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self150077%_
                       __tmp150299
                       __tmp150298))))))
    (define gxc#compile-e__1
      (lambda (_%self150097%_ _%stx150098%_)
        (let ((_%$e150100%_
               (let ((__tmp150300 (gxc#stx-car-e _%stx150098%_)))
                 (declare (not safe))
                 (method-ref _%self150097%_ __tmp150300))))
          (if _%$e150100%_
              ((lambda (_%method150103%_)
                 (declare (not safe))
                 (let ((_%$e150106%_ (gx#stx-source _%stx150098%_)))
                   (if _%$e150106%_
                       ((lambda (_%source150109%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method150103%_ _%self150097%_ _%stx150098%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source150109%_ '()))
                                 (let ((_%$e150113%_
                                        (gxc#current-compile-context)))
                                   (if _%$e150113%_ _%$e150113%_ '())))))
                        _%$e150106%_)
                       (_%method150103%_ _%self150097%_ _%stx150098%_))))
               _%$e150100%_)
              (let ((__tmp150302 (gxc#stx-car-e _%stx150098%_))
                    (__tmp150301
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx150098%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self150097%_
                       __tmp150302
                       __tmp150301))))))
    (define gxc#compile-e
      (lambda _g150303_
        (let ((_g150304_ (let () (declare (not safe)) (##length _g150303_))))
          (cond ((let () (declare (not safe)) (##fx= _g150304_ 1))
                 (apply gxc#compile-e__0 _g150303_))
                ((let () (declare (not safe)) (##fx= _g150304_ 2))
                 (apply gxc#compile-e__1 _g150303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g150303_))))))
    (define gxc#stx-car-e
      (lambda (_%stx150073%_)
        (let ((__tmp150305
               (car (let () (declare (not safe)) (gx#stx-e _%stx150073%_)))))
          (declare (not safe))
          (gx#stx-e __tmp150305))))
    (define gxc#void-method (lambda (_%self150070%_ _%stx150071%_) '#!void))
    (define gxc#false-method (lambda (_%self150067%_ _%stx150068%_) '#f))
    (define gxc#true-method (lambda (_%self150064%_ _%stx150065%_) '#t))
    (define gxc#identity-method
      (lambda (_%self150061%_ _%stx150062%_) _%stx150062%_))
    (define gxc#::void-expression::t
      (let ((__tmp150306 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp150306
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args150058%_
        (apply make-instance gxc#::void-expression::t _%$args150058%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp150307
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
        (__make-atomic-promise __tmp150307)))
    (define gxc#::void-special-form::t
      (let ((__tmp150308 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp150308
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args150054%_
        (apply make-instance gxc#::void-special-form::t _%$args150054%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp150309
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
        (__make-atomic-promise __tmp150309)))
    (define gxc#::void::t
      (let ((__tmp150310
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp150310 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args150050%_
        (apply make-instance gxc#::void::t _%$args150050%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp150311
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150311)))
    (define gxc#::false-expression::t
      (let ((__tmp150312 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp150312
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args150046%_
        (apply make-instance gxc#::false-expression::t _%$args150046%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp150313
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
        (__make-atomic-promise __tmp150313)))
    (define gxc#::false-special-form::t
      (let ((__tmp150314 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp150314
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args150042%_
        (apply make-instance gxc#::false-special-form::t _%$args150042%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp150315
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
        (__make-atomic-promise __tmp150315)))
    (define gxc#::false::t
      (let ((__tmp150316
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp150316 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args150038%_
        (apply make-instance gxc#::false::t _%$args150038%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp150317
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150317)))
    (define gxc#::identity-expression::t
      (let ((__tmp150318 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp150318
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args150034%_
        (apply make-instance gxc#::identity-expression::t _%$args150034%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp150319
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
        (__make-atomic-promise __tmp150319)))
    (define gxc#::identity-special-form::t
      (let ((__tmp150320 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp150320
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args150030%_
        (apply make-instance gxc#::identity-special-form::t _%$args150030%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp150321
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
        (__make-atomic-promise __tmp150321)))
    (define gxc#::identity::t
      (let ((__tmp150322
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp150322
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args150026%_
        (apply make-instance gxc#::identity::t _%$args150026%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp150323
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp150323)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp150324 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp150324
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args150022%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args150022%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp150325
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
        (__make-atomic-promise __tmp150325)))
    (define gxc#::basic-xform::t
      (let ((__tmp150326
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp150326
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args150018%_
        (apply make-instance gxc#::basic-xform::t _%$args150018%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp150327
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
        (__make-atomic-promise __tmp150327)))
    (define gxc#apply-begin%
      (lambda (_%self149974%_ _%stx149975%_)
        (let* ((_%g149977149987%_
                (lambda (_%g149978149984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149978149984%_))))
               (_%g149976150014%_
                (lambda (_%g149978149990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149978149990%_))
                      (let ((_%e149980149992%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149978149990%_))))
                        (let ((_%hd149981149995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149980149992%_)))
                              (_%tl149982149997%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149980149992%_))))
                          ((lambda (_%g149979150000%_)
                             (for-each
                              (lambda (_%g150009150011%_)
                                (gxc#compile-e__1
                                 _%self149974%_
                                 _%g150009150011%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g149979150000%_))))
                           _%tl149982149997%_)))
                      (_%g149977149987%_ _%g149978149990%_)))))
          (_%g149976150014%_ _%stx149975%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self149935%_ _%stx149936%_)
        (let* ((_%g149938149948%_
                (lambda (_%g149939149945%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149939149945%_))))
               (_%g149937149971%_
                (lambda (_%g149939149951%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149939149951%_))
                      (let ((_%e149941149953%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149939149951%_))))
                        (let ((_%hd149942149956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149941149953%_)))
                              (_%tl149943149958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149941149953%_))))
                          ((lambda (_%g149940149961%_)
                             (gxc#compile-e__1
                              _%self149935%_
                              (last _%g149940149961%_)))
                           _%tl149943149958%_)))
                      (_%g149938149948%_ _%g149939149951%_)))))
          (_%g149937149971%_ _%stx149936%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self149931%_ _%stx149932%_)
        (let ((__tmp150330
               (lambda () (gxc#apply-begin% _%self149931%_ _%stx149932%_)))
              (__tmp150328
               (let ((__tmp150329
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp150329 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp150330
           gx#current-expander-phi
           __tmp150328))))
    (define gxc#apply-module%
      (lambda (_%self149870%_ _%stx149871%_)
        (let* ((_%g149873149887%_
                (lambda (_%g149874149884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149874149884%_))))
               (_%g149872149928%_
                (lambda (_%g149874149890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149874149890%_))
                      (let ((_%e149877149892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149874149890%_))))
                        (let ((_%hd149878149895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149877149892%_)))
                              (_%tl149879149897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149877149892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149879149897%_))
                              (let ((_%e149880149900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149879149897%_))))
                                (let ((_%hd149881149903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149880149900%_)))
                                      (_%tl149882149905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149880149900%_))))
                                  ((lambda (_%g149875149908%_
                                            _%g149876149909%_)
                                     (let* ((_%ctx149922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g149876149909%_)))
                                            (_%ctx-stx149924%_
                                             (##structure-ref
                                              _%ctx149922%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp150331
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self149870%_
                                                _%ctx-stx149924%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150331
                                        gx#current-expander-context
                                        _%ctx149922%_)))
                                   _%tl149882149905%_
                                   _%hd149881149903%_)))
                              (_%g149873149887%_ _%g149874149890%_))))
                      (_%g149873149887%_ _%g149874149890%_)))))
          (_%g149872149928%_ _%stx149871%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self149802%_ _%stx149803%_)
        (let* ((_%g149805149822%_
                (lambda (_%g149806149819%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149806149819%_))))
               (_%g149804149867%_
                (lambda (_%g149806149825%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149806149825%_))
                      (let ((_%e149809149827%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149806149825%_))))
                        (let ((_%hd149810149830%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149809149827%_)))
                              (_%tl149811149832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149809149827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149811149832%_))
                              (let ((_%e149812149835%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149811149832%_))))
                                (let ((_%hd149813149838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149812149835%_)))
                                      (_%tl149814149840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149812149835%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149814149840%_))
                                      (let ((_%e149815149843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149814149840%_))))
                                        (let ((_%hd149816149846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149815149843%_)))
                                              (_%tl149817149848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149815149843%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149817149848%_))
                                              ((lambda (_%g149807149851%_
                                                        _%g149808149852%_)
                                                 (gxc#compile-e__1
                                                  _%self149802%_
                                                  _%g149807149851%_))
                                               _%hd149816149846%_
                                               _%hd149813149838%_)
                                              (_%g149805149822%_
                                               _%g149806149825%_))))
                                      (_%g149805149822%_ _%g149806149825%_))))
                              (_%g149805149822%_ _%g149806149825%_))))
                      (_%g149805149822%_ _%g149806149825%_)))))
          (_%g149804149867%_ _%stx149803%_))))
    (define gxc#apply-define-values%
      (lambda (_%self149734%_ _%stx149735%_)
        (let* ((_%g149737149754%_
                (lambda (_%g149738149751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149738149751%_))))
               (_%g149736149799%_
                (lambda (_%g149738149757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149738149757%_))
                      (let ((_%e149741149759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149738149757%_))))
                        (let ((_%hd149742149762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149741149759%_)))
                              (_%tl149743149764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149741149759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149743149764%_))
                              (let ((_%e149744149767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149743149764%_))))
                                (let ((_%hd149745149770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149744149767%_)))
                                      (_%tl149746149772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149744149767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149746149772%_))
                                      (let ((_%e149747149775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149746149772%_))))
                                        (let ((_%hd149748149778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149747149775%_)))
                                              (_%tl149749149780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149747149775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149749149780%_))
                                              ((lambda (_%g149739149783%_
                                                        _%g149740149784%_)
                                                 (gxc#compile-e__1
                                                  _%self149734%_
                                                  _%g149739149783%_))
                                               _%hd149748149778%_
                                               _%hd149745149770%_)
                                              (_%g149737149754%_
                                               _%g149738149757%_))))
                                      (_%g149737149754%_ _%g149738149757%_))))
                              (_%g149737149754%_ _%g149738149757%_))))
                      (_%g149737149754%_ _%g149738149757%_)))))
          (_%g149736149799%_ _%stx149735%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self149665%_ _%stx149666%_)
        (let* ((_%g149668149685%_
                (lambda (_%g149669149682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149669149682%_))))
               (_%g149667149731%_
                (lambda (_%g149669149688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149669149688%_))
                      (let ((_%e149672149690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149669149688%_))))
                        (let ((_%hd149673149693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149672149690%_)))
                              (_%tl149674149695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149672149690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149674149695%_))
                              (let ((_%e149675149698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149674149695%_))))
                                (let ((_%hd149676149701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149675149698%_)))
                                      (_%tl149677149703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149675149698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149677149703%_))
                                      (let ((_%e149678149706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149677149703%_))))
                                        (let ((_%hd149679149709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149678149706%_)))
                                              (_%tl149680149711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149678149706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149680149711%_))
                                              ((lambda (_%g149670149714%_
                                                        _%g149671149715%_)
                                                 (let ((__tmp150334
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self149665%_
                                                           _%g149670149714%_)))
                                                       (__tmp150332
                                                        (let ((__tmp150333
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150333 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150334
                                                    gx#current-expander-phi
                                                    __tmp150332)))
                                               _%hd149679149709%_
                                               _%hd149676149701%_)
                                              (_%g149668149685%_
                                               _%g149669149688%_))))
                                      (_%g149668149685%_ _%g149669149688%_))))
                              (_%g149668149685%_ _%g149669149688%_))))
                      (_%g149668149685%_ _%g149669149688%_)))))
          (_%g149667149731%_ _%stx149666%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self149597%_ _%stx149598%_)
        (let* ((_%g149600149617%_
                (lambda (_%g149601149614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149601149614%_))))
               (_%g149599149662%_
                (lambda (_%g149601149620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149601149620%_))
                      (let ((_%e149604149622%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149601149620%_))))
                        (let ((_%hd149605149625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149604149622%_)))
                              (_%tl149606149627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149604149622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149606149627%_))
                              (let ((_%e149607149630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149606149627%_))))
                                (let ((_%hd149608149633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149607149630%_)))
                                      (_%tl149609149635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149607149630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149609149635%_))
                                      (let ((_%e149610149638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149609149635%_))))
                                        (let ((_%hd149611149641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149610149638%_)))
                                              (_%tl149612149643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149610149638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149612149643%_))
                                              ((lambda (_%g149602149646%_
                                                        _%g149603149647%_)
                                                 (gxc#compile-e__1
                                                  _%self149597%_
                                                  _%g149602149646%_))
                                               _%hd149611149641%_
                                               _%hd149608149633%_)
                                              (_%g149600149617%_
                                               _%g149601149620%_))))
                                      (_%g149600149617%_ _%g149601149620%_))))
                              (_%g149600149617%_ _%g149601149620%_))))
                      (_%g149600149617%_ _%g149601149620%_)))))
          (_%g149599149662%_ _%stx149598%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self149483%_ _%stx149484%_)
        (let* ((_%g149486149514%_
                (lambda (_%g149487149511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149487149511%_))))
               (_%g149485149594%_
                (lambda (_%g149487149517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149487149517%_))
                      (let ((_%e149490149519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149487149517%_))))
                        (let ((_%hd149491149522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149490149519%_)))
                              (_%tl149492149524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149490149519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149492149524%_))
                              (let ((_g150335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149492149524%_
                                        '0))))
                                (begin
                                  (let ((_g150336_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150335_)
                                               (##values-length _g150335_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150336_ 2)))
                                        (error "Context expects 2 values"
                                               _g150336_)))
                                  (let ((_%target149493149527%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150335_ 0)))
                                        (_%tl149495149529%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150335_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149495149529%_))
                                        (letrec ((_%loop149496149532%_
                                                  (lambda (_%hd149494149535%_
                                                           _%body149500149537%_
                                                           _%hd149501149538%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149494149535%_))
                                                        (let ((_%e149497149540%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149494149535%_))))
                  (let ((_%lp-hd149498149543%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149497149540%_)))
                        (_%lp-tl149499149545%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149497149540%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd149498149543%_))
                        (let ((_%e149504149548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd149498149543%_))))
                          (let ((_%hd149505149551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149504149548%_)))
                                (_%tl149506149553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149504149548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149506149553%_))
                                (let ((_%e149507149556%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149506149553%_))))
                                  (let ((_%hd149508149559%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149507149556%_)))
                                        (_%tl149509149561%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149507149556%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149509149561%_))
                                        (_%loop149496149532%_
                                         _%lp-tl149499149545%_
                                         (cons _%hd149508149559%_
                                               _%body149500149537%_)
                                         (cons _%hd149505149551%_
                                               _%hd149501149538%_))
                                        (_%g149486149514%_
                                         _%g149487149517%_))))
                                (_%g149486149514%_ _%g149487149517%_))))
                        (_%g149486149514%_ _%g149487149517%_))))
                (let ((_%body149502149564%_ (reverse _%body149500149537%_))
                      (_%hd149503149565%_ (reverse _%hd149501149538%_)))
                  ((lambda (_%g149488149567%_ _%g149489149568%_)
                     (for-each
                      (lambda (_%g149582149584%_)
                        (gxc#compile-e__1 _%self149483%_ _%g149582149584%_))
                      (let ((__tmp150337
                             (lambda (_%g149586149589%_ _%g149587149591%_)
                               (cons _%g149586149589%_ _%g149587149591%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150337 '() _%g149488149567%_))))
                   _%body149502149564%_
                   _%hd149503149565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149496149532%_
                                           _%target149493149527%_
                                           '()
                                           '()))
                                        (_%g149486149514%_
                                         _%g149487149517%_)))))
                              (_%g149486149514%_ _%g149487149517%_))))
                      (_%g149486149514%_ _%g149487149517%_)))))
          (_%g149485149594%_ _%stx149484%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self149340%_ _%stx149341%_)
        (let* ((_%g149343149378%_
                (lambda (_%g149344149375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149344149375%_))))
               (_%g149342149480%_
                (lambda (_%g149344149381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149344149381%_))
                      (let ((_%e149348149383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149344149381%_))))
                        (let ((_%hd149349149386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149348149383%_)))
                              (_%tl149350149388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149348149383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149350149388%_))
                              (let ((_%e149351149391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149350149388%_))))
                                (let ((_%hd149352149394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149351149391%_)))
                                      (_%tl149353149396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149351149391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149352149394%_))
                                      (let ((_g150338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149352149394%_
                                                '0))))
                                        (begin
                                          (let ((_g150339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150338_)
                                                       (##values-length
                                                        _g150338_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150339_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150339_)))
                                          (let ((_%target149354149399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150338_ 0)))
                                                (_%tl149356149401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150338_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149356149401%_))
                                                (letrec ((_%loop149357149404%_
                                                          (lambda (_%hd149355149407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149361149409%_
                           _%hd149362149410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149355149407%_))
                        (let ((_%e149358149412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149355149407%_))))
                          (let ((_%lp-hd149359149415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149358149412%_)))
                                (_%lp-tl149360149417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149358149412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149359149415%_))
                                (let ((_%e149365149420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149359149415%_))))
                                  (let ((_%hd149366149423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149365149420%_)))
                                        (_%tl149367149425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149365149420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149367149425%_))
                                        (let ((_%e149368149428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149367149425%_))))
                                          (let ((_%hd149369149431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149368149428%_)))
                                                (_%tl149370149433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149368149428%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149370149433%_))
                                                (_%loop149357149404%_
                                                 _%lp-tl149360149417%_
                                                 (cons _%hd149369149431%_
                                                       _%expr149361149409%_)
                                                 (cons _%hd149366149423%_
                                                       _%hd149362149410%_))
                                                (_%g149343149378%_
                                                 _%g149344149381%_))))
                                        (_%g149343149378%_
                                         _%g149344149381%_))))
                                (_%g149343149378%_ _%g149344149381%_))))
                        (let ((_%expr149363149436%_
                               (reverse _%expr149361149409%_))
                              (_%hd149364149437%_
                               (reverse _%hd149362149410%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149353149396%_))
                              (let ((_%e149371149439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149353149396%_))))
                                (let ((_%hd149372149442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149371149439%_)))
                                      (_%tl149373149444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149371149439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149373149444%_))
                                      ((lambda (_%g149345149447%_
                                                _%g149346149448%_
                                                _%g149347149449%_)
                                         (for-each
                                          (lambda (_%g149468149470%_)
                                            (gxc#compile-e__1
                                             _%self149340%_
                                             _%g149468149470%_))
                                          (let ((__tmp150341
                                                 (lambda (_%g149472149475%_
                                                          _%g149473149477%_)
                                                   (cons _%g149472149475%_
                                                         _%g149473149477%_)))
                                                (__tmp150340
                                                 (cons _%g149345149447%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150341
                                             __tmp150340
                                             _%g149346149448%_))))
                                       _%hd149372149442%_
                                       _%expr149363149436%_
                                       _%hd149364149437%_)
                                      (_%g149343149378%_ _%g149344149381%_))))
                              (_%g149343149378%_ _%g149344149381%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop149357149404%_
                                                   _%target149354149399%_
                                                   '()
                                                   '()))
                                                (_%g149343149378%_
                                                 _%g149344149381%_)))))
                                      (_%g149343149378%_ _%g149344149381%_))))
                              (_%g149343149378%_ _%g149344149381%_))))
                      (_%g149343149378%_ _%g149344149381%_)))))
          (_%g149342149480%_ _%stx149341%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self149285%_ _%stx149286%_)
        (let* ((_%g149288149302%_
                (lambda (_%g149289149299%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149289149299%_))))
               (_%g149287149337%_
                (lambda (_%g149289149305%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149289149305%_))
                      (let ((_%e149292149307%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149289149305%_))))
                        (let ((_%hd149293149310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149292149307%_)))
                              (_%tl149294149312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149292149307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149294149312%_))
                              (let ((_%e149295149315%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149294149312%_))))
                                (let ((_%hd149296149318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149295149315%_)))
                                      (_%tl149297149320%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149295149315%_))))
                                  ((lambda (_%g149290149323%_
                                            _%g149291149324%_)
                                     (gxc#compile-e__1
                                      _%self149285%_
                                      (last _%g149290149323%_)))
                                   _%tl149297149320%_
                                   _%hd149296149318%_)))
                              (_%g149288149302%_ _%g149289149305%_))))
                      (_%g149288149302%_ _%g149289149305%_)))))
          (_%g149287149337%_ _%stx149286%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self149217%_ _%stx149218%_)
        (let* ((_%g149220149237%_
                (lambda (_%g149221149234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149221149234%_))))
               (_%g149219149282%_
                (lambda (_%g149221149240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149221149240%_))
                      (let ((_%e149224149242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149221149240%_))))
                        (let ((_%hd149225149245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149224149242%_)))
                              (_%tl149226149247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149224149242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149226149247%_))
                              (let ((_%e149227149250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149226149247%_))))
                                (let ((_%hd149228149253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149227149250%_)))
                                      (_%tl149229149255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149227149250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149229149255%_))
                                      (let ((_%e149230149258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149229149255%_))))
                                        (let ((_%hd149231149261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149230149258%_)))
                                              (_%tl149232149263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149230149258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149232149263%_))
                                              ((lambda (_%g149222149266%_
                                                        _%g149223149267%_)
                                                 (gxc#compile-e__1
                                                  _%self149217%_
                                                  _%g149222149266%_))
                                               _%hd149231149261%_
                                               _%hd149228149253%_)
                                              (_%g149220149237%_
                                               _%g149221149240%_))))
                                      (_%g149220149237%_ _%g149221149240%_))))
                              (_%g149220149237%_ _%g149221149240%_))))
                      (_%g149220149237%_ _%g149221149240%_)))))
          (_%g149219149282%_ _%stx149218%_))))
    (define gxc#apply-operands
      (lambda (_%self149132%_ _%stx149133%_)
        (let* ((_%g149135149154%_
                (lambda (_%g149136149151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149136149151%_))))
               (_%g149134149214%_
                (lambda (_%g149136149157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149136149157%_))
                      (let ((_%e149138149159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149136149157%_))))
                        (let ((_%hd149139149162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149138149159%_)))
                              (_%tl149140149164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149138149159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149140149164%_))
                              (let ((_g150342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149140149164%_
                                        '0))))
                                (begin
                                  (let ((_g150343_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150342_)
                                               (##values-length _g150342_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150343_ 2)))
                                        (error "Context expects 2 values"
                                               _g150343_)))
                                  (let ((_%target149141149167%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150342_ 0)))
                                        (_%tl149143149169%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150342_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149143149169%_))
                                        (letrec ((_%loop149144149172%_
                                                  (lambda (_%hd149142149175%_
                                                           _%rands149148149177%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149142149175%_))
                                                        (let ((_%e149145149179%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149142149175%_))))
                  (let ((_%lp-hd149146149182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149145149179%_)))
                        (_%lp-tl149147149184%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149145149179%_))))
                    (_%loop149144149172%_
                     _%lp-tl149147149184%_
                     (cons _%lp-hd149146149182%_ _%rands149148149177%_))))
                (let ((_%rands149149149187%_ (reverse _%rands149148149177%_)))
                  ((lambda (_%g149137149189%_)
                     (for-each
                      (lambda (_%g149202149204%_)
                        (gxc#compile-e__1 _%self149132%_ _%g149202149204%_))
                      (let ((__tmp150344
                             (lambda (_%g149206149209%_ _%g149207149211%_)
                               (cons _%g149206149209%_ _%g149207149211%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150344 '() _%g149137149189%_))))
                   _%rands149149149187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149144149172%_
                                           _%target149141149167%_
                                           '()))
                                        (_%g149135149154%_
                                         _%g149136149157%_)))))
                              (_%g149135149154%_ _%g149136149157%_))))
                      (_%g149135149154%_ _%g149136149157%_)))))
          (_%g149134149214%_ _%stx149133%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx149129%_ _%src-stx149130%_)
        (let ((__tmp150345
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx149130%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx149129%_ __tmp150345))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx149125%_ _%src-stx149126%_ _%ctx149127%_)
        (gxc#compile-e__1
         _%ctx149127%_
         (gxc#xform-wrap-source _%stx149125%_ _%src-stx149126%_))))
    (define gxc#xform-begin%
      (lambda (_%self149080%_ _%stx149081%_)
        (let* ((_%g149083149093%_
                (lambda (_%g149084149090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149084149090%_))))
               (_%g149082149122%_
                (lambda (_%g149084149096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149084149096%_))
                      (let ((_%e149086149098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149084149096%_))))
                        (let ((_%hd149087149101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149086149098%_)))
                              (_%tl149088149103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149086149098%_))))
                          ((lambda (_%g149085149106%_)
                             (let ((_%forms149120%_
                                    (map (lambda (_%g149115149117%_)
                                           (gxc#compile-e__1
                                            _%self149080%_
                                            _%g149115149117%_))
                                         _%g149085149106%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms149120%_)
                                _%stx149081%_)))
                           _%tl149088149103%_)))
                      (_%g149083149093%_ _%g149084149096%_)))))
          (_%g149082149122%_ _%stx149081%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self149034%_ _%stx149035%_)
        (let* ((_%g149037149047%_
                (lambda (_%g149038149044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149038149044%_))))
               (_%g149036149077%_
                (lambda (_%g149038149050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149038149050%_))
                      (let ((_%e149040149052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149038149050%_))))
                        (let ((_%hd149041149055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149040149052%_)))
                              (_%tl149042149057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149040149052%_))))
                          ((lambda (_%g149039149060%_)
                             (let ((__tmp150348
                                    (lambda ()
                                      (let ((_%forms149075%_
                                             (map (lambda (_%g149070149072%_)
                                                    (gxc#compile-e__1
                                                     _%self149034%_
                                                     _%g149070149072%_))
                                                  _%g149039149060%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms149075%_)
                                         _%stx149035%_))))
                                   (__tmp150346
                                    (let ((__tmp150347
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp150347 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150348
                                gx#current-expander-phi
                                __tmp150346)))
                           _%tl149042149057%_)))
                      (_%g149037149047%_ _%g149038149050%_)))))
          (_%g149036149077%_ _%stx149035%_))))
    (define gxc#xform-module%
      (lambda (_%self148971%_ _%stx148972%_)
        (let* ((_%g148974148988%_
                (lambda (_%g148975148985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148975148985%_))))
               (_%g148973149031%_
                (lambda (_%g148975148991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148975148991%_))
                      (let ((_%e148978148993%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148975148991%_))))
                        (let ((_%hd148979148996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148978148993%_)))
                              (_%tl148980148998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148978148993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148980148998%_))
                              (let ((_%e148981149001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148980148998%_))))
                                (let ((_%hd148982149004%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148981149001%_)))
                                      (_%tl148983149006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148981149001%_))))
                                  ((lambda (_%g148976149009%_
                                            _%g148977149010%_)
                                     (let* ((_%ctx149023%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g148977149010%_)))
                                            (_%code149025%_
                                             (##structure-ref
                                              _%ctx149023%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code149028%_
                                             (let ((__tmp150349
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self148971%_
                                                       _%code149025%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp150349
                                                gx#current-expander-context
                                                _%ctx149023%_))))
                                       (##structure-set!
                                        _%ctx149023%_
                                        _%code149028%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g148977149010%_
                                                    (cons _%code149028%_ '())))
                                        _%stx148972%_)))
                                   _%tl148983149006%_
                                   _%hd148982149004%_)))
                              (_%g148974148988%_ _%g148975148991%_))))
                      (_%g148974148988%_ _%g148975148991%_)))))
          (_%g148973149031%_ _%stx148972%_))))
    (define gxc#xform-define-values%
      (lambda (_%self148901%_ _%stx148902%_)
        (let* ((_%g148904148921%_
                (lambda (_%g148905148918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148905148918%_))))
               (_%g148903148968%_
                (lambda (_%g148905148924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148905148924%_))
                      (let ((_%e148908148926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148905148924%_))))
                        (let ((_%hd148909148929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148908148926%_)))
                              (_%tl148910148931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148908148926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148910148931%_))
                              (let ((_%e148911148934%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148910148931%_))))
                                (let ((_%hd148912148937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148911148934%_)))
                                      (_%tl148913148939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148911148934%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148913148939%_))
                                      (let ((_%e148914148942%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148913148939%_))))
                                        (let ((_%hd148915148945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148914148942%_)))
                                              (_%tl148916148947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148914148942%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148916148947%_))
                                              ((lambda (_%g148906148950%_
                                                        _%g148907148951%_)
                                                 (let ((_%expr148966%_
                                                        (gxc#compile-e__1
                                                         _%self148901%_
                                                         _%g148906148950%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g148907148951%_
                                                                (cons _%expr148966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148902%_)))
                                               _%hd148915148945%_
                                               _%hd148912148937%_)
                                              (_%g148904148921%_
                                               _%g148905148924%_))))
                                      (_%g148904148921%_ _%g148905148924%_))))
                              (_%g148904148921%_ _%g148905148924%_))))
                      (_%g148904148921%_ _%g148905148924%_)))))
          (_%g148903148968%_ _%stx148902%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self148830%_ _%stx148831%_)
        (let* ((_%g148833148850%_
                (lambda (_%g148834148847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148834148847%_))))
               (_%g148832148898%_
                (lambda (_%g148834148853%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148834148853%_))
                      (let ((_%e148837148855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148834148853%_))))
                        (let ((_%hd148838148858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148837148855%_)))
                              (_%tl148839148860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148837148855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148839148860%_))
                              (let ((_%e148840148863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148839148860%_))))
                                (let ((_%hd148841148866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148840148863%_)))
                                      (_%tl148842148868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148840148863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148842148868%_))
                                      (let ((_%e148843148871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148842148868%_))))
                                        (let ((_%hd148844148874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148843148871%_)))
                                              (_%tl148845148876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148843148871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148845148876%_))
                                              ((lambda (_%g148835148879%_
                                                        _%g148836148880%_)
                                                 (let ((__tmp150352
                                                        (lambda ()
                                                          (let ((_%expr148896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self148830%_ _%g148835148879%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g148836148880%_ (cons _%expr148896%_ '())))
                     _%stx148831%_))))
               (__tmp150350
                (let ((__tmp150351
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150351 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150352
                                                    gx#current-expander-phi
                                                    __tmp150350)))
                                               _%hd148844148874%_
                                               _%hd148841148866%_)
                                              (_%g148833148850%_
                                               _%g148834148853%_))))
                                      (_%g148833148850%_ _%g148834148853%_))))
                              (_%g148833148850%_ _%g148834148853%_))))
                      (_%g148833148850%_ _%g148834148853%_)))))
          (_%g148832148898%_ _%stx148831%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self148760%_ _%stx148761%_)
        (let* ((_%g148763148780%_
                (lambda (_%g148764148777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148764148777%_))))
               (_%g148762148827%_
                (lambda (_%g148764148783%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148764148783%_))
                      (let ((_%e148767148785%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148764148783%_))))
                        (let ((_%hd148768148788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148767148785%_)))
                              (_%tl148769148790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148767148785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148769148790%_))
                              (let ((_%e148770148793%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148769148790%_))))
                                (let ((_%hd148771148796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148770148793%_)))
                                      (_%tl148772148798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148770148793%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148772148798%_))
                                      (let ((_%e148773148801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148772148798%_))))
                                        (let ((_%hd148774148804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148773148801%_)))
                                              (_%tl148775148806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148773148801%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148775148806%_))
                                              ((lambda (_%g148765148809%_
                                                        _%g148766148810%_)
                                                 (let ((_%expr148825%_
                                                        (gxc#compile-e__1
                                                         _%self148760%_
                                                         _%g148765148809%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g148766148810%_
                                                                (cons _%expr148825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148761%_)))
                                               _%hd148774148804%_
                                               _%hd148771148796%_)
                                              (_%g148763148780%_
                                               _%g148764148783%_))))
                                      (_%g148763148780%_ _%g148764148783%_))))
                              (_%g148763148780%_ _%g148764148783%_))))
                      (_%g148763148780%_ _%g148764148783%_)))))
          (_%g148762148827%_ _%stx148761%_))))
    (define gxc#xform-lambda%
      (lambda (_%self148698%_ _%stx148699%_)
        (let* ((_%g148701148715%_
                (lambda (_%g148702148712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148702148712%_))))
               (_%g148700148757%_
                (lambda (_%g148702148718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148702148718%_))
                      (let ((_%e148705148720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148702148718%_))))
                        (let ((_%hd148706148723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148705148720%_)))
                              (_%tl148707148725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148705148720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148707148725%_))
                              (let ((_%e148708148728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148707148725%_))))
                                (let ((_%hd148709148731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148708148728%_)))
                                      (_%tl148710148733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148708148728%_))))
                                  ((lambda (_%g148703148736%_
                                            _%g148704148737%_)
                                     (let ((__tmp150354
                                            (lambda ()
                                              (let ((_%body148755%_
                                                     (map (lambda (_%g148750148752%_)
                                                            (gxc#compile-e__1
                                                             _%self148698%_
                                                             _%g148750148752%_))
                                                          _%g148703148736%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g148704148737%_
                                                             _%body148755%_))
                                                 _%stx148699%_))))
                                           (__tmp150353
                                            (gxc#xform-let-locals
                                             _%g148704148737%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150354
                                        gxc#current-compile-local-env
                                        __tmp150353)))
                                   _%tl148710148733%_
                                   _%hd148709148731%_)))
                              (_%g148701148715%_ _%g148702148718%_))))
                      (_%g148701148715%_ _%g148702148718%_)))))
          (_%g148700148757%_ _%stx148699%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self148606%_ _%stx148607%_)
        (letrec ((_%clause-e148609%_
                  (lambda (_%clause148650%_)
                    (let* ((_%g148652148663%_
                            (lambda (_%g148653148660%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g148653148660%_))))
                           (_%g148651148695%_
                            (lambda (_%g148653148666%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g148653148666%_))
                                  (let ((_%e148656148668%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g148653148666%_))))
                                    (let ((_%hd148657148671%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148656148668%_)))
                                          (_%tl148658148673%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148656148668%_))))
                                      ((lambda (_%g148654148676%_
                                                _%g148655148677%_)
                                         (let ((__tmp150356
                                                (lambda ()
                                                  (let ((_%body148693%_
                                                         (map (lambda (_%g148688148690%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self148606%_
                         _%g148688148690%_))
                      _%g148654148676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g148655148677%_
                                                          _%body148693%_))))
                                               (__tmp150355
                                                (gxc#xform-let-locals
                                                 _%g148655148677%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp150356
                                            gxc#current-compile-local-env
                                            __tmp150355)))
                                       _%tl148658148673%_
                                       _%hd148657148671%_)))
                                  (_%g148652148663%_ _%g148653148666%_)))))
                      (_%g148651148695%_ _%clause148650%_)))))
          (let* ((_%g148611148621%_
                  (lambda (_%g148612148618%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148612148618%_))))
                 (_%g148610148647%_
                  (lambda (_%g148612148624%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148612148624%_))
                        (let ((_%e148614148626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148612148624%_))))
                          (let ((_%hd148615148629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148614148626%_)))
                                (_%tl148616148631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148614148626%_))))
                            ((lambda (_%g148613148634%_)
                               (let ((_%clauses148645%_
                                      (map _%clause-e148609%_
                                           _%g148613148634%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses148645%_)
                                  _%stx148607%_)))
                             _%tl148616148631%_)))
                        (_%g148611148621%_ _%g148612148624%_)))))
            (_%g148610148647%_ _%stx148607%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self148366%_ _%stx148367%_)
        (let* ((_%g148369148402%_
                (lambda (_%g148370148399%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148370148399%_))))
               (_%g148368148603%_
                (lambda (_%g148370148405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148370148405%_))
                      (let ((_%e148375148407%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148370148405%_))))
                        (let ((_%hd148376148410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148375148407%_)))
                              (_%tl148377148412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148375148407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148377148412%_))
                              (let ((_%e148378148415%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148377148412%_))))
                                (let ((_%hd148379148418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148378148415%_)))
                                      (_%tl148380148420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148378148415%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148379148418%_))
                                      (let ((_g150357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148379148418%_
                                                '0))))
                                        (begin
                                          (let ((_g150358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150357_)
                                                       (##values-length
                                                        _g150357_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150358_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150358_)))
                                          (let ((_%target148381148423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150357_ 0)))
                                                (_%tl148383148425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150357_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148383148425%_))
                                                (letrec ((_%loop148384148428%_
                                                          (lambda (_%hd148382148431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148388148433%_
                           _%hd148389148434%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148382148431%_))
                        (let ((_%e148385148436%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148382148431%_))))
                          (let ((_%lp-hd148386148439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148385148436%_)))
                                (_%lp-tl148387148441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148385148436%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148386148439%_))
                                (let ((_%e148392148444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148386148439%_))))
                                  (let ((_%hd148393148447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148392148444%_)))
                                        (_%tl148394148449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148392148444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148394148449%_))
                                        (let ((_%e148395148452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148394148449%_))))
                                          (let ((_%hd148396148455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148395148452%_)))
                                                (_%tl148397148457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148395148452%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148397148457%_))
                                                (_%loop148384148428%_
                                                 _%lp-tl148387148441%_
                                                 (cons _%hd148396148455%_
                                                       _%expr148388148433%_)
                                                 (cons _%hd148393148447%_
                                                       _%hd148389148434%_))
                                                (_%g148369148402%_
                                                 _%g148370148405%_))))
                                        (_%g148369148402%_
                                         _%g148370148405%_))))
                                (_%g148369148402%_ _%g148370148405%_))))
                        (let ((_%expr148390148460%_
                               (reverse _%expr148388148433%_))
                              (_%hd148391148461%_
                               (reverse _%hd148389148434%_)))
                          ((lambda (_%g148371148463%_
                                    _%g148372148464%_
                                    _%g148373148465%_
                                    _%g148374148466%_)
                             (let* ((_%g148485148501%_
                                     (lambda (_%g148486148498%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148486148498%_))))
                                    (_%g148484148589%_
                                     (lambda (_%g148486148504%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g148486148504%_))
                                           (let ((_g150359_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g148486148504%_
                                                     '0))))
                                             (begin
                                               (let ((_g150360_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g150359_)
                                                            (##values-length
                                                             _g150359_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g150360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g150360_)))
                                               (let ((_%target148488148506%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150359_
                                                         0)))
                                                     (_%tl148490148508%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150359_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl148490148508%_))
                                                     (letrec ((_%loop148491148511%_
                                                               (lambda (_%hd148489148514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr148495148516%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd148489148514%_))
                             (let ((_%e148492148518%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd148489148514%_))))
                               (let ((_%lp-hd148493148521%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148492148518%_)))
                                     (_%lp-tl148494148523%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148492148518%_))))
                                 (_%loop148491148511%_
                                  _%lp-tl148494148523%_
                                  (cons _%lp-hd148493148521%_
                                        _%expr148495148516%_))))
                             (let ((_%expr148496148526%_
                                    (reverse _%expr148495148516%_)))
                               ((lambda (_%g148487148528%_)
                                  (let ((__tmp150363
                                         (lambda ()
                                           (let* ((_%g148542148549%_
                                                   (lambda (_%g148543148546%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148543148546%_))))
                                                  (_%g148541148575%_
                                                   (lambda (_%g148543148552%_)
                                                     ((lambda (_%g148544148554%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g148374148466%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g148487148528%_
                                  _%g148373148465%_))
                               (let ((__tmp150364
                                      (lambda (_%g148564148568%_
                                               _%g148565148570%_
                                               _%g148566148572%_)
                                        (cons (cons _%g148565148570%_
                                                    (cons _%g148564148568%_
                                                          '()))
                                              _%g148566148572%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150364
                                  '()
                                  _%g148487148528%_
                                  _%g148373148465%_)))
                             _%g148544148554%_))
                 _%stx148367%_))
              _%g148543148552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148541148575%_
                                              (map (lambda (_%g148577148579%_)
                                                     (gxc#compile-e__1
                                                      _%self148366%_
                                                      _%g148577148579%_))
                                                   _%g148371148463%_)))))
                                        (__tmp150361
                                         (gxc#xform-let-locals
                                          (let ((__tmp150362
                                                 (lambda (_%g148581148584%_
                                                          _%g148582148586%_)
                                                   (cons _%g148581148584%_
                                                         _%g148582148586%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150362
                                             '()
                                             _%g148373148465%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp150363
                                     gxc#current-compile-local-env
                                     __tmp150361)))
                                _%expr148496148526%_))))))
               (_%loop148491148511%_ _%target148488148506%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g148485148501%_
                                                      _%g148486148504%_)))))
                                           (_%g148485148501%_
                                            _%g148486148504%_)))))
                               (_%g148484148589%_
                                (map (lambda (_%g148591148593%_)
                                       (gxc#compile-e__1
                                        _%self148366%_
                                        _%g148591148593%_))
                                     (let ((__tmp150365
                                            (lambda (_%g148595148598%_
                                                     _%g148596148600%_)
                                              (cons _%g148595148598%_
                                                    _%g148596148600%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150365
                                        '()
                                        _%g148372148464%_))))))
                           _%tl148380148420%_
                           _%expr148390148460%_
                           _%hd148391148461%_
                           _%hd148376148410%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148384148428%_
                                                   _%target148381148423%_
                                                   '()
                                                   '()))
                                                (_%g148369148402%_
                                                 _%g148370148405%_)))))
                                      (_%g148369148402%_ _%g148370148405%_))))
                              (_%g148369148402%_ _%g148370148405%_))))
                      (_%g148369148402%_ _%g148370148405%_)))))
          (_%g148368148603%_ _%stx148367%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self148126%_ _%stx148127%_)
        (let* ((_%g148129148162%_
                (lambda (_%g148130148159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148130148159%_))))
               (_%g148128148363%_
                (lambda (_%g148130148165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148130148165%_))
                      (let ((_%e148135148167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148130148165%_))))
                        (let ((_%hd148136148170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148135148167%_)))
                              (_%tl148137148172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148135148167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148137148172%_))
                              (let ((_%e148138148175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148137148172%_))))
                                (let ((_%hd148139148178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148138148175%_)))
                                      (_%tl148140148180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148138148175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148139148178%_))
                                      (let ((_g150366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148139148178%_
                                                '0))))
                                        (begin
                                          (let ((_g150367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150366_)
                                                       (##values-length
                                                        _g150366_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150367_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150367_)))
                                          (let ((_%target148141148183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150366_ 0)))
                                                (_%tl148143148185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150366_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148143148185%_))
                                                (letrec ((_%loop148144148188%_
                                                          (lambda (_%hd148142148191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148148148193%_
                           _%hd148149148194%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148142148191%_))
                        (let ((_%e148145148196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148142148191%_))))
                          (let ((_%lp-hd148146148199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148145148196%_)))
                                (_%lp-tl148147148201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148145148196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148146148199%_))
                                (let ((_%e148152148204%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148146148199%_))))
                                  (let ((_%hd148153148207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148152148204%_)))
                                        (_%tl148154148209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148152148204%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148154148209%_))
                                        (let ((_%e148155148212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148154148209%_))))
                                          (let ((_%hd148156148215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148155148212%_)))
                                                (_%tl148157148217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148155148212%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148157148217%_))
                                                (_%loop148144148188%_
                                                 _%lp-tl148147148201%_
                                                 (cons _%hd148156148215%_
                                                       _%expr148148148193%_)
                                                 (cons _%hd148153148207%_
                                                       _%hd148149148194%_))
                                                (_%g148129148162%_
                                                 _%g148130148165%_))))
                                        (_%g148129148162%_
                                         _%g148130148165%_))))
                                (_%g148129148162%_ _%g148130148165%_))))
                        (let ((_%expr148150148220%_
                               (reverse _%expr148148148193%_))
                              (_%hd148151148221%_
                               (reverse _%hd148149148194%_)))
                          ((lambda (_%g148131148223%_
                                    _%g148132148224%_
                                    _%g148133148225%_
                                    _%g148134148226%_)
                             (let ((__tmp150370
                                    (lambda ()
                                      (let* ((_%g148246148262%_
                                              (lambda (_%g148247148259%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g148247148259%_))))
                                             (_%g148245148342%_
                                              (lambda (_%g148247148265%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g148247148265%_))
                                                    (let ((_g150371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g148247148265%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g150372_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g150371_)
                             (##values-length _g150371_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g150372_ 2)))
                      (error "Context expects 2 values" _g150372_)))
                (let ((_%target148249148267%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150371_ 0)))
                      (_%tl148251148269%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150371_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148251148269%_))
                      (letrec ((_%loop148252148272%_
                                (lambda (_%hd148250148275%_
                                         _%expr148256148277%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd148250148275%_))
                                      (let ((_%e148253148279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd148250148275%_))))
                                        (let ((_%lp-hd148254148282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148253148279%_)))
                                              (_%lp-tl148255148284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148253148279%_))))
                                          (_%loop148252148272%_
                                           _%lp-tl148255148284%_
                                           (cons _%lp-hd148254148282%_
                                                 _%expr148256148277%_))))
                                      (let ((_%expr148257148287%_
                                             (reverse _%expr148256148277%_)))
                                        ((lambda (_%g148248148289%_)
                                           (let* ((_%g148303148310%_
                                                   (lambda (_%g148304148307%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148304148307%_))))
                                                  (_%g148302148335%_
                                                   (lambda (_%g148304148313%_)
                                                     ((lambda (_%g148305148315%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g148134148226%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g148248148289%_
                                  _%g148133148225%_))
                               (let ((__tmp150373
                                      (lambda (_%g148324148328%_
                                               _%g148325148330%_
                                               _%g148326148332%_)
                                        (cons (cons _%g148325148330%_
                                                    (cons _%g148324148328%_
                                                          '()))
                                              _%g148326148332%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150373
                                  '()
                                  _%g148248148289%_
                                  _%g148133148225%_)))
                             _%g148305148315%_))
                 _%stx148127%_))
              _%g148304148313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148302148335%_
                                              (map (lambda (_%g148337148339%_)
                                                     (gxc#compile-e__1
                                                      _%self148126%_
                                                      _%g148337148339%_))
                                                   _%g148131148223%_))))
                                         _%expr148257148287%_))))))
                        (_%loop148252148272%_ _%target148249148267%_ '()))
                      (_%g148246148262%_ _%g148247148265%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g148246148262%_
                                                     _%g148247148265%_)))))
                                        (_%g148245148342%_
                                         (map (lambda (_%g148344148346%_)
                                                (gxc#compile-e__1
                                                 _%self148126%_
                                                 _%g148344148346%_))
                                              (let ((__tmp150374
                                                     (lambda (_%g148348148351%_
                                                              _%g148349148353%_)
                                                       (cons _%g148348148351%_
                                                             _%g148349148353%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp150374
                                                 '()
                                                 _%g148132148224%_)))))))
                                   (__tmp150368
                                    (gxc#xform-let-locals
                                     (let ((__tmp150369
                                            (lambda (_%g148355148358%_
                                                     _%g148356148360%_)
                                              (cons _%g148355148358%_
                                                    _%g148356148360%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150369
                                        '()
                                        _%g148133148225%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150370
                                gxc#current-compile-local-env
                                __tmp150368)))
                           _%tl148140148180%_
                           _%expr148150148220%_
                           _%hd148151148221%_
                           _%hd148136148170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148144148188%_
                                                   _%target148141148183%_
                                                   '()
                                                   '()))
                                                (_%g148129148162%_
                                                 _%g148130148165%_)))))
                                      (_%g148129148162%_ _%g148130148165%_))))
                              (_%g148129148162%_ _%g148130148165%_))))
                      (_%g148129148162%_ _%g148130148165%_)))))
          (_%g148128148363%_ _%stx148127%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings147993%_)
        (letrec ((_%flatten147995%_
                  (lambda (_%maybe-lst148053%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst148053%_))
                        (cons _%maybe-lst148053%_ '())
                        (let _%loop148055%_ ((_%rest148057%_
                                              _%maybe-lst148053%_)
                                             (_%result148058%_ '()))
                          (let* ((_%__stx150262150263%_ _%rest148057%_)
                                 (_%g148062148074%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx150262150263%_)))))
                            (let ((_%__kont150264150265%_
                                   (lambda (_%g148064148112%_
                                            _%g148065148113%_)
                                     (_%loop148055%_
                                      _%g148064148112%_
                                      (let ((__tmp150375
                                             (_%flatten147995%_
                                              _%g148065148113%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result148058%_
                                         __tmp150375)))))
                                  (_%__kont150266150267%_
                                   (lambda (_%g148069148086%_)
                                     (cons _%g148069148086%_
                                           _%result148058%_)))
                                  (_%__kont150268150269%_
                                   (lambda () _%result148058%_)))
                              (let ((_%g148060148099%_
                                     (lambda ()
                                       (let ((_%g148069148086%_
                                              _%__stx150262150263%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g148069148086%_))
                                             (_%__kont150266150267%_
                                              _%g148069148086%_)
                                             (_%__kont150268150269%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx150262150263%_))
                                    (let ((_%e148066148104%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx150262150263%_))))
                                      (let ((_%tl148068148109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e148066148104%_)))
                                            (_%hd148067148107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e148066148104%_))))
                                        (_%__kont150264150265%_
                                         _%tl148068148109%_
                                         _%hd148067148107%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g148060148099%_)))))))))))
          (let _%loop147997%_ ((_%rest147999%_
                                (_%flatten147995%_ _%bindings147993%_))
                               (_%locals148000%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest148001148012%_ _%rest147999%_)
                   (_%E148005148016%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest148001148012%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K148008148041%_
                     (lambda (_%rest148038%_ _%id148039%_)
                       (_%loop147997%_
                        _%rest148038%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id148039%_))
                              _%locals148000%_))))
                    (_%K148007148030%_
                     (lambda (_%id148028%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id148028%_))
                             _%locals148000%_)))
                    (_%K148006148021%_ (lambda () _%locals148000%_)))
                (let ((_%try-match148003148035%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest148001148012%_))
                             (let ((_%id148033%_ _%rest148001148012%_))
                               (_%K148007148030%_ _%id148033%_))
                             (_%K148006148021%_)))))
                  (if (pair? _%rest148001148012%_)
                      (let ((_%tl148010148046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest148001148012%_)))
                            (_%hd148009148044%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest148001148012%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd148009148044%_))
                            (let ((_%id148049%_ _%hd148009148044%_)
                                  (_%rest148051%_ _%tl148010148046%_))
                              (_%K148008148041%_ _%rest148051%_ _%id148049%_))
                            (_%K148006148021%_)))
                      (_%try-match148003148035%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self147945%_ _%stx147946%_)
        (let* ((_%g147948147959%_
                (lambda (_%g147949147956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147949147956%_))))
               (_%g147947147990%_
                (lambda (_%g147949147962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147949147962%_))
                      (let ((_%e147952147964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147949147962%_))))
                        (let ((_%hd147953147967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147952147964%_)))
                              (_%tl147954147969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147952147964%_))))
                          ((lambda (_%g147950147972%_ _%g147951147973%_)
                             (let ((_%rands147988%_
                                    (map (lambda (_%g147983147985%_)
                                           (gxc#compile-e__1
                                            _%self147945%_
                                            _%g147983147985%_))
                                         _%g147950147972%_)))
                               (gxc#xform-wrap-source
                                (cons _%g147951147973%_ _%rands147988%_)
                                _%stx147946%_)))
                           _%tl147954147969%_
                           _%hd147953147967%_)))
                      (_%g147948147959%_ _%g147949147962%_)))))
          (_%g147947147990%_ _%stx147946%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self147875%_ _%stx147876%_)
        (let* ((_%g147878147895%_
                (lambda (_%g147879147892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147879147892%_))))
               (_%g147877147942%_
                (lambda (_%g147879147898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147879147898%_))
                      (let ((_%e147882147900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147879147898%_))))
                        (let ((_%hd147883147903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147882147900%_)))
                              (_%tl147884147905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147882147900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147884147905%_))
                              (let ((_%e147885147908%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147884147905%_))))
                                (let ((_%hd147886147911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147885147908%_)))
                                      (_%tl147887147913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147885147908%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147887147913%_))
                                      (let ((_%e147888147916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147887147913%_))))
                                        (let ((_%hd147889147919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147888147916%_)))
                                              (_%tl147890147921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147888147916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147890147921%_))
                                              ((lambda (_%g147880147924%_
                                                        _%g147881147925%_)
                                                 (let ((_%expr147940%_
                                                        (gxc#compile-e__1
                                                         _%self147875%_
                                                         _%g147880147924%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g147881147925%_
                                                                (cons _%expr147940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx147876%_)))
                                               _%hd147889147919%_
                                               _%hd147886147911%_)
                                              (_%g147878147895%_
                                               _%g147879147898%_))))
                                      (_%g147878147895%_ _%g147879147898%_))))
                              (_%g147878147895%_ _%g147879147898%_))))
                      (_%g147878147895%_ _%g147879147898%_)))))
          (_%g147877147942%_ _%stx147876%_))))))
