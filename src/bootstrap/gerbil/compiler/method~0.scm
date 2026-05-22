(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1779435583)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx196292%_)
        (let* ((_%self196294%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e196296%_
                (let ((__tmp196514 (gxc#stx-car-e _%stx196292%_)))
                  (declare (not safe))
                  (method-ref _%self196294%_ __tmp196514))))
          (if _%$e196296%_
              (let ()
                (declare (not safe))
                (let ((_%$e196302%_ (gx#stx-source _%stx196292%_)))
                  (if _%$e196302%_
                      (call-with-parameters__1
                       (lambda () (_%$e196296%_ _%self196294%_ _%stx196292%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196302%_ '()))
                             (let ((_%$e196309%_
                                    (gxc#current-compile-context)))
                               (if _%$e196309%_ _%$e196309%_ '()))))
                      (_%$e196296%_ _%self196294%_ _%stx196292%_))))
              (let ((__tmp196516 (gxc#stx-car-e _%stx196292%_))
                    (__tmp196515
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196292%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196294%_
                       __tmp196516
                       __tmp196515))))))
    (define gxc#compile-e__1
      (lambda (_%self196314%_ _%stx196315%_)
        (let ((_%$e196317%_
               (let ((__tmp196517 (gxc#stx-car-e _%stx196315%_)))
                 (declare (not safe))
                 (method-ref _%self196314%_ __tmp196517))))
          (if _%$e196317%_
              (let ()
                (declare (not safe))
                (let ((_%$e196323%_ (gx#stx-source _%stx196315%_)))
                  (if _%$e196323%_
                      (call-with-parameters__1
                       (lambda () (_%$e196317%_ _%self196314%_ _%stx196315%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e196323%_ '()))
                             (let ((_%$e196330%_
                                    (gxc#current-compile-context)))
                               (if _%$e196330%_ _%$e196330%_ '()))))
                      (_%$e196317%_ _%self196314%_ _%stx196315%_))))
              (let ((__tmp196519 (gxc#stx-car-e _%stx196315%_))
                    (__tmp196518
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx196315%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self196314%_
                       __tmp196519
                       __tmp196518))))))
    (define gxc#compile-e
      (lambda _g196520_
        (let ((_g196521_ (let () (declare (not safe)) (##length _g196520_))))
          (cond ((let () (declare (not safe)) (##fx= _g196521_ 1))
                 (apply gxc#compile-e__0 _g196520_))
                ((let () (declare (not safe)) (##fx= _g196521_ 2))
                 (apply gxc#compile-e__1 _g196520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g196520_))))))
    (define gxc#stx-car-e
      (lambda (_%stx196290%_)
        (let ((__tmp196522
               (car (let () (declare (not safe)) (gx#stx-e _%stx196290%_)))))
          (declare (not safe))
          (gx#stx-e __tmp196522))))
    (define gxc#void-method (lambda (_%self196287%_ _%stx196288%_) '#!void))
    (define gxc#false-method (lambda (_%self196284%_ _%stx196285%_) '#f))
    (define gxc#true-method (lambda (_%self196281%_ _%stx196282%_) '#t))
    (define gxc#identity-method
      (lambda (_%self196278%_ _%stx196279%_) _%stx196279%_))
    (define gxc#::void-expression::t
      (let ((__tmp196523 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp196523
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args196275%_
        (apply make-instance gxc#::void-expression::t _%$args196275%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp196524
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
        (__make-atomic-promise __tmp196524)))
    (define gxc#::void-special-form::t
      (let ((__tmp196525 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp196525
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args196271%_
        (apply make-instance gxc#::void-special-form::t _%$args196271%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp196526
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
        (__make-atomic-promise __tmp196526)))
    (define gxc#::void::t
      (let ((__tmp196527
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp196527 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args196267%_
        (apply make-instance gxc#::void::t _%$args196267%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp196528
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196528)))
    (define gxc#::false-expression::t
      (let ((__tmp196529 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp196529
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args196263%_
        (apply make-instance gxc#::false-expression::t _%$args196263%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp196530
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
        (__make-atomic-promise __tmp196530)))
    (define gxc#::false-special-form::t
      (let ((__tmp196531 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp196531
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args196259%_
        (apply make-instance gxc#::false-special-form::t _%$args196259%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp196532
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
        (__make-atomic-promise __tmp196532)))
    (define gxc#::false::t
      (let ((__tmp196533
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp196533 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args196255%_
        (apply make-instance gxc#::false::t _%$args196255%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp196534
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196534)))
    (define gxc#::identity-expression::t
      (let ((__tmp196535 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp196535
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args196251%_
        (apply make-instance gxc#::identity-expression::t _%$args196251%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp196536
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
        (__make-atomic-promise __tmp196536)))
    (define gxc#::identity-special-form::t
      (let ((__tmp196537 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp196537
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args196247%_
        (apply make-instance gxc#::identity-special-form::t _%$args196247%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp196538
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
        (__make-atomic-promise __tmp196538)))
    (define gxc#::identity::t
      (let ((__tmp196539
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp196539
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args196243%_
        (apply make-instance gxc#::identity::t _%$args196243%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp196540
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196540)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp196541 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp196541
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args196239%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args196239%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp196542
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
        (__make-atomic-promise __tmp196542)))
    (define gxc#::basic-xform::t
      (let ((__tmp196543
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp196543
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args196235%_
        (apply make-instance gxc#::basic-xform::t _%$args196235%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp196544
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
        (__make-atomic-promise __tmp196544)))
    (define gxc#apply-begin%
      (lambda (_%self196191%_ _%stx196192%_)
        (let* ((_%g196194196204%_
                (lambda (_%g196195196201%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196195196201%_))))
               (_%g196193196231%_
                (lambda (_%g196195196207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196195196207%_))
                      (let ((_%e196197196209%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196195196207%_))))
                        (let ((_%hd196198196212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196197196209%_)))
                              (_%tl196199196214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196197196209%_))))
                          (for-each
                           (lambda (_%g196226196228%_)
                             (gxc#compile-e__1
                              _%self196191%_
                              _%g196226196228%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196199196214%_)))))
                      (_%g196194196204%_ _%g196195196207%_)))))
          (_%g196193196231%_ _%stx196192%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self196152%_ _%stx196153%_)
        (let* ((_%g196155196165%_
                (lambda (_%g196156196162%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196156196162%_))))
               (_%g196154196188%_
                (lambda (_%g196156196168%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196156196168%_))
                      (let ((_%e196158196170%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196156196168%_))))
                        (let ((_%hd196159196173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196158196170%_)))
                              (_%tl196160196175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196158196170%_))))
                          (gxc#compile-e__1
                           _%self196152%_
                           (last _%tl196160196175%_))))
                      (_%g196155196165%_ _%g196156196168%_)))))
          (_%g196154196188%_ _%stx196153%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self196148%_ _%stx196149%_)
        (let ((__tmp196547
               (lambda () (gxc#apply-begin% _%self196148%_ _%stx196149%_)))
              (__tmp196545
               (let ((__tmp196546
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp196546 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp196547
           gx#current-expander-phi
           __tmp196545))))
    (define gxc#apply-module%
      (lambda (_%self196087%_ _%stx196088%_)
        (let* ((_%g196090196104%_
                (lambda (_%g196091196101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196091196101%_))))
               (_%g196089196145%_
                (lambda (_%g196091196107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196091196107%_))
                      (let ((_%e196094196109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196091196107%_))))
                        (let ((_%hd196095196112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196094196109%_)))
                              (_%tl196096196114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196094196109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196096196114%_))
                              (let ((_%e196097196117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196096196114%_))))
                                (let ((_%hd196098196120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196097196117%_)))
                                      (_%tl196099196122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196097196117%_))))
                                  (let* ((_%ctx196139%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd196098196120%_)))
                                         (_%ctx-stx196141%_
                                          (##structure-ref
                                           _%ctx196139%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp196548
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self196087%_
                                             _%ctx-stx196141%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp196548
                                     gx#current-expander-context
                                     _%ctx196139%_))))
                              (_%g196090196104%_ _%g196091196107%_))))
                      (_%g196090196104%_ _%g196091196107%_)))))
          (_%g196089196145%_ _%stx196088%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self196019%_ _%stx196020%_)
        (let* ((_%g196022196039%_
                (lambda (_%g196023196036%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196023196036%_))))
               (_%g196021196084%_
                (lambda (_%g196023196042%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196023196042%_))
                      (let ((_%e196026196044%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196023196042%_))))
                        (let ((_%hd196027196047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196026196044%_)))
                              (_%tl196028196049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196026196044%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196028196049%_))
                              (let ((_%e196029196052%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196028196049%_))))
                                (let ((_%hd196030196055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196029196052%_)))
                                      (_%tl196031196057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196029196052%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196031196057%_))
                                      (let ((_%e196032196060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196031196057%_))))
                                        (let ((_%hd196033196063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196032196060%_)))
                                              (_%tl196034196065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196032196060%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196034196065%_))
                                              (gxc#compile-e__1
                                               _%self196019%_
                                               _%hd196033196063%_)
                                              (_%g196022196039%_
                                               _%g196023196042%_))))
                                      (_%g196022196039%_ _%g196023196042%_))))
                              (_%g196022196039%_ _%g196023196042%_))))
                      (_%g196022196039%_ _%g196023196042%_)))))
          (_%g196021196084%_ _%stx196020%_))))
    (define gxc#apply-define-values%
      (lambda (_%self195951%_ _%stx195952%_)
        (let* ((_%g195954195971%_
                (lambda (_%g195955195968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195955195968%_))))
               (_%g195953196016%_
                (lambda (_%g195955195974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195955195974%_))
                      (let ((_%e195958195976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195955195974%_))))
                        (let ((_%hd195959195979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195958195976%_)))
                              (_%tl195960195981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195958195976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195960195981%_))
                              (let ((_%e195961195984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195960195981%_))))
                                (let ((_%hd195962195987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195961195984%_)))
                                      (_%tl195963195989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195961195984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195963195989%_))
                                      (let ((_%e195964195992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195963195989%_))))
                                        (let ((_%hd195965195995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195964195992%_)))
                                              (_%tl195966195997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195964195992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195966195997%_))
                                              (gxc#compile-e__1
                                               _%self195951%_
                                               _%hd195965195995%_)
                                              (_%g195954195971%_
                                               _%g195955195974%_))))
                                      (_%g195954195971%_ _%g195955195974%_))))
                              (_%g195954195971%_ _%g195955195974%_))))
                      (_%g195954195971%_ _%g195955195974%_)))))
          (_%g195953196016%_ _%stx195952%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self195882%_ _%stx195883%_)
        (let* ((_%g195885195902%_
                (lambda (_%g195886195899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195886195899%_))))
               (_%g195884195948%_
                (lambda (_%g195886195905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195886195905%_))
                      (let ((_%e195889195907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195886195905%_))))
                        (let ((_%hd195890195910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195889195907%_)))
                              (_%tl195891195912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195889195907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195891195912%_))
                              (let ((_%e195892195915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195891195912%_))))
                                (let ((_%hd195893195918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195892195915%_)))
                                      (_%tl195894195920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195892195915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195894195920%_))
                                      (let ((_%e195895195923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195894195920%_))))
                                        (let ((_%hd195896195926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195895195923%_)))
                                              (_%tl195897195928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195895195923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195897195928%_))
                                              (let ((__tmp196551
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self195882%_
                                                        _%hd195896195926%_)))
                                                    (__tmp196549
                                                     (let ((__tmp196550
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp196550
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp196551
                                                 gx#current-expander-phi
                                                 __tmp196549))
                                              (_%g195885195902%_
                                               _%g195886195905%_))))
                                      (_%g195885195902%_ _%g195886195905%_))))
                              (_%g195885195902%_ _%g195886195905%_))))
                      (_%g195885195902%_ _%g195886195905%_)))))
          (_%g195884195948%_ _%stx195883%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self195814%_ _%stx195815%_)
        (let* ((_%g195817195834%_
                (lambda (_%g195818195831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195818195831%_))))
               (_%g195816195879%_
                (lambda (_%g195818195837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195818195837%_))
                      (let ((_%e195821195839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195818195837%_))))
                        (let ((_%hd195822195842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195821195839%_)))
                              (_%tl195823195844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195821195839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195823195844%_))
                              (let ((_%e195824195847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195823195844%_))))
                                (let ((_%hd195825195850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195824195847%_)))
                                      (_%tl195826195852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195824195847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195826195852%_))
                                      (let ((_%e195827195855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195826195852%_))))
                                        (let ((_%hd195828195858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195827195855%_)))
                                              (_%tl195829195860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195827195855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195829195860%_))
                                              (gxc#compile-e__1
                                               _%self195814%_
                                               _%hd195828195858%_)
                                              (_%g195817195834%_
                                               _%g195818195837%_))))
                                      (_%g195817195834%_ _%g195818195837%_))))
                              (_%g195817195834%_ _%g195818195837%_))))
                      (_%g195817195834%_ _%g195818195837%_)))))
          (_%g195816195879%_ _%stx195815%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self195700%_ _%stx195701%_)
        (let* ((_%g195703195731%_
                (lambda (_%g195704195728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195704195728%_))))
               (_%g195702195811%_
                (lambda (_%g195704195734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195704195734%_))
                      (let ((_%e195707195736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195704195734%_))))
                        (let ((_%hd195708195739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195707195736%_)))
                              (_%tl195709195741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195707195736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195709195741%_))
                              (let ((_g196552_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195709195741%_
                                        '0))))
                                (begin
                                  (let ((_g196553_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g196552_)
                                               (##values-length _g196552_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g196553_ 2)))
                                        (error "Context expects 2 values"
                                               _g196553_)))
                                  (let ((_%target195710195744%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196552_ 0)))
                                        (_%tl195712195746%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196552_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195712195746%_))
                                        (letrec ((_%loop195713195749%_
                                                  (lambda (_%hd195711195752%_
                                                           _%body195717195754%_
                                                           _%hd195718195755%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195711195752%_))
                                                        (let ((_%e195714195757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd195711195752%_))))
                  (let ((_%lp-hd195715195760%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195714195757%_)))
                        (_%lp-tl195716195762%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195714195757%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195715195760%_))
                        (let ((_%e195721195765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd195715195760%_))))
                          (let ((_%hd195722195768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195721195765%_)))
                                (_%tl195723195770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195721195765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195723195770%_))
                                (let ((_%e195724195773%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195723195770%_))))
                                  (let ((_%hd195725195776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195724195773%_)))
                                        (_%tl195726195778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195724195773%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195726195778%_))
                                        (_%loop195713195749%_
                                         _%lp-tl195716195762%_
                                         (cons _%hd195725195776%_
                                               _%body195717195754%_)
                                         (cons _%hd195722195768%_
                                               _%hd195718195755%_))
                                        (_%g195703195731%_
                                         _%g195704195734%_))))
                                (_%g195703195731%_ _%g195704195734%_))))
                        (_%g195703195731%_ _%g195704195734%_))))
                (let ((_%body195719195781%_ (reverse _%body195717195754%_))
                      (_%hd195720195782%_ (reverse _%hd195718195755%_)))
                  (for-each
                   (lambda (_%g195799195801%_)
                     (gxc#compile-e__1 _%self195700%_ _%g195799195801%_))
                   (let ((__tmp196554
                          (lambda (_%g195803195806%_ _%g195804195808%_)
                            (cons _%g195803195806%_ _%g195804195808%_))))
                     (declare (not safe))
                     (foldr__0 __tmp196554 '() _%body195719195781%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195713195749%_
                                           _%target195710195744%_
                                           '()
                                           '()))
                                        (_%g195703195731%_
                                         _%g195704195734%_)))))
                              (_%g195703195731%_ _%g195704195734%_))))
                      (_%g195703195731%_ _%g195704195734%_)))))
          (_%g195702195811%_ _%stx195701%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self195557%_ _%stx195558%_)
        (let* ((_%g195560195595%_
                (lambda (_%g195561195592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195561195592%_))))
               (_%g195559195697%_
                (lambda (_%g195561195598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195561195598%_))
                      (let ((_%e195565195600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195561195598%_))))
                        (let ((_%hd195566195603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195565195600%_)))
                              (_%tl195567195605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195565195600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195567195605%_))
                              (let ((_%e195568195608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195567195605%_))))
                                (let ((_%hd195569195611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195568195608%_)))
                                      (_%tl195570195613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195568195608%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd195569195611%_))
                                      (let ((_g196555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd195569195611%_
                                                '0))))
                                        (begin
                                          (let ((_g196556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196555_)
                                                       (##values-length
                                                        _g196555_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196556_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196556_)))
                                          (let ((_%target195571195616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196555_ 0)))
                                                (_%tl195573195618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196555_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195573195618%_))
                                                (letrec ((_%loop195574195621%_
                                                          (lambda (_%hd195572195624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr195578195626%_
                           _%hd195579195627%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195572195624%_))
                        (let ((_%e195575195629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd195572195624%_))))
                          (let ((_%lp-hd195576195632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195575195629%_)))
                                (_%lp-tl195577195634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195575195629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195576195632%_))
                                (let ((_%e195582195637%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd195576195632%_))))
                                  (let ((_%hd195583195640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195582195637%_)))
                                        (_%tl195584195642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195582195637%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195584195642%_))
                                        (let ((_%e195585195645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195584195642%_))))
                                          (let ((_%hd195586195648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195585195645%_)))
                                                (_%tl195587195650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195585195645%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195587195650%_))
                                                (_%loop195574195621%_
                                                 _%lp-tl195577195634%_
                                                 (cons _%hd195586195648%_
                                                       _%expr195578195626%_)
                                                 (cons _%hd195583195640%_
                                                       _%hd195579195627%_))
                                                (_%g195560195595%_
                                                 _%g195561195598%_))))
                                        (_%g195560195595%_
                                         _%g195561195598%_))))
                                (_%g195560195595%_ _%g195561195598%_))))
                        (let ((_%expr195580195653%_
                               (reverse _%expr195578195626%_))
                              (_%hd195581195654%_
                               (reverse _%hd195579195627%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195570195613%_))
                              (let ((_%e195588195656%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195570195613%_))))
                                (let ((_%hd195589195659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195588195656%_)))
                                      (_%tl195590195661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195588195656%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195590195661%_))
                                      (for-each
                                       (lambda (_%g195685195687%_)
                                         (gxc#compile-e__1
                                          _%self195557%_
                                          _%g195685195687%_))
                                       (let ((__tmp196558
                                              (lambda (_%g195689195692%_
                                                       _%g195690195694%_)
                                                (cons _%g195689195692%_
                                                      _%g195690195694%_)))
                                             (__tmp196557
                                              (cons _%hd195589195659%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp196558
                                          __tmp196557
                                          _%expr195580195653%_)))
                                      (_%g195560195595%_ _%g195561195598%_))))
                              (_%g195560195595%_ _%g195561195598%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195574195621%_
                                                   _%target195571195616%_
                                                   '()
                                                   '()))
                                                (_%g195560195595%_
                                                 _%g195561195598%_)))))
                                      (_%g195560195595%_ _%g195561195598%_))))
                              (_%g195560195595%_ _%g195561195598%_))))
                      (_%g195560195595%_ _%g195561195598%_)))))
          (_%g195559195697%_ _%stx195558%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self195502%_ _%stx195503%_)
        (let* ((_%g195505195519%_
                (lambda (_%g195506195516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195506195516%_))))
               (_%g195504195554%_
                (lambda (_%g195506195522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195506195522%_))
                      (let ((_%e195509195524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195506195522%_))))
                        (let ((_%hd195510195527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195509195524%_)))
                              (_%tl195511195529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195509195524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195511195529%_))
                              (let ((_%e195512195532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195511195529%_))))
                                (let ((_%hd195513195535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195512195532%_)))
                                      (_%tl195514195537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195512195532%_))))
                                  (gxc#compile-e__1
                                   _%self195502%_
                                   (last _%tl195514195537%_))))
                              (_%g195505195519%_ _%g195506195522%_))))
                      (_%g195505195519%_ _%g195506195522%_)))))
          (_%g195504195554%_ _%stx195503%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self195434%_ _%stx195435%_)
        (let* ((_%g195437195454%_
                (lambda (_%g195438195451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195438195451%_))))
               (_%g195436195499%_
                (lambda (_%g195438195457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195438195457%_))
                      (let ((_%e195441195459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195438195457%_))))
                        (let ((_%hd195442195462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195441195459%_)))
                              (_%tl195443195464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195441195459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195443195464%_))
                              (let ((_%e195444195467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195443195464%_))))
                                (let ((_%hd195445195470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195444195467%_)))
                                      (_%tl195446195472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195444195467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195446195472%_))
                                      (let ((_%e195447195475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195446195472%_))))
                                        (let ((_%hd195448195478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195447195475%_)))
                                              (_%tl195449195480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195447195475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195449195480%_))
                                              (gxc#compile-e__1
                                               _%self195434%_
                                               _%hd195448195478%_)
                                              (_%g195437195454%_
                                               _%g195438195457%_))))
                                      (_%g195437195454%_ _%g195438195457%_))))
                              (_%g195437195454%_ _%g195438195457%_))))
                      (_%g195437195454%_ _%g195438195457%_)))))
          (_%g195436195499%_ _%stx195435%_))))
    (define gxc#apply-operands
      (lambda (_%self195349%_ _%stx195350%_)
        (let* ((_%g195352195371%_
                (lambda (_%g195353195368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195353195368%_))))
               (_%g195351195431%_
                (lambda (_%g195353195374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195353195374%_))
                      (let ((_%e195355195376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195353195374%_))))
                        (let ((_%hd195356195379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195355195376%_)))
                              (_%tl195357195381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195355195376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195357195381%_))
                              (let ((_g196559_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195357195381%_
                                        '0))))
                                (begin
                                  (let ((_g196560_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g196559_)
                                               (##values-length _g196559_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g196560_ 2)))
                                        (error "Context expects 2 values"
                                               _g196560_)))
                                  (let ((_%target195358195384%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196559_ 0)))
                                        (_%tl195360195386%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196559_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195360195386%_))
                                        (letrec ((_%loop195361195389%_
                                                  (lambda (_%hd195359195392%_
                                                           _%rands195365195394%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195359195392%_))
                                                        (let ((_%e195362195396%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd195359195392%_))))
                  (let ((_%lp-hd195363195399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195362195396%_)))
                        (_%lp-tl195364195401%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195362195396%_))))
                    (_%loop195361195389%_
                     _%lp-tl195364195401%_
                     (cons _%lp-hd195363195399%_ _%rands195365195394%_))))
                (let ((_%rands195366195404%_ (reverse _%rands195365195394%_)))
                  (for-each
                   (lambda (_%g195419195421%_)
                     (gxc#compile-e__1 _%self195349%_ _%g195419195421%_))
                   (let ((__tmp196561
                          (lambda (_%g195423195426%_ _%g195424195428%_)
                            (cons _%g195423195426%_ _%g195424195428%_))))
                     (declare (not safe))
                     (foldr__0 __tmp196561 '() _%rands195366195404%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195361195389%_
                                           _%target195358195384%_
                                           '()))
                                        (_%g195352195371%_
                                         _%g195353195374%_)))))
                              (_%g195352195371%_ _%g195353195374%_))))
                      (_%g195352195371%_ _%g195353195374%_)))))
          (_%g195351195431%_ _%stx195350%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx195346%_ _%src-stx195347%_)
        (let ((__tmp196562
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx195347%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx195346%_ __tmp196562))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx195342%_ _%src-stx195343%_ _%ctx195344%_)
        (gxc#compile-e__1
         _%ctx195344%_
         (gxc#xform-wrap-source _%stx195342%_ _%src-stx195343%_))))
    (define gxc#xform-begin%
      (lambda (_%self195297%_ _%stx195298%_)
        (let* ((_%g195300195310%_
                (lambda (_%g195301195307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195301195307%_))))
               (_%g195299195339%_
                (lambda (_%g195301195313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195301195313%_))
                      (let ((_%e195303195315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195301195313%_))))
                        (let ((_%hd195304195318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195303195315%_)))
                              (_%tl195305195320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195303195315%_))))
                          (let ((_%forms195337%_
                                 (map (lambda (_%g195332195334%_)
                                        (gxc#compile-e__1
                                         _%self195297%_
                                         _%g195332195334%_))
                                      _%tl195305195320%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms195337%_)
                             _%stx195298%_))))
                      (_%g195300195310%_ _%g195301195313%_)))))
          (_%g195299195339%_ _%stx195298%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self195251%_ _%stx195252%_)
        (let* ((_%g195254195264%_
                (lambda (_%g195255195261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195255195261%_))))
               (_%g195253195294%_
                (lambda (_%g195255195267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195255195267%_))
                      (let ((_%e195257195269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195255195267%_))))
                        (let ((_%hd195258195272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195257195269%_)))
                              (_%tl195259195274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195257195269%_))))
                          (let ((__tmp196565
                                 (lambda ()
                                   (let ((_%forms195292%_
                                          (map (lambda (_%g195287195289%_)
                                                 (gxc#compile-e__1
                                                  _%self195251%_
                                                  _%g195287195289%_))
                                               _%tl195259195274%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms195292%_)
                                      _%stx195252%_))))
                                (__tmp196563
                                 (let ((__tmp196564
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp196564 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp196565
                             gx#current-expander-phi
                             __tmp196563))))
                      (_%g195254195264%_ _%g195255195267%_)))))
          (_%g195253195294%_ _%stx195252%_))))
    (define gxc#xform-module%
      (lambda (_%self195188%_ _%stx195189%_)
        (let* ((_%g195191195205%_
                (lambda (_%g195192195202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195192195202%_))))
               (_%g195190195248%_
                (lambda (_%g195192195208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195192195208%_))
                      (let ((_%e195195195210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195192195208%_))))
                        (let ((_%hd195196195213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195195195210%_)))
                              (_%tl195197195215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195195195210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195197195215%_))
                              (let ((_%e195198195218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195197195215%_))))
                                (let ((_%hd195199195221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195198195218%_)))
                                      (_%tl195200195223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195198195218%_))))
                                  (let* ((_%ctx195240%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd195199195221%_)))
                                         (_%code195242%_
                                          (##structure-ref
                                           _%ctx195240%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code195245%_
                                          (let ((__tmp196566
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self195188%_
                                                    _%code195242%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp196566
                                             gx#current-expander-context
                                             _%ctx195240%_))))
                                    (##structure-set!
                                     _%ctx195240%_
                                     _%code195245%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%hd195199195221%_
                                                 (cons _%code195245%_ '())))
                                     _%stx195189%_))))
                              (_%g195191195205%_ _%g195192195208%_))))
                      (_%g195191195205%_ _%g195192195208%_)))))
          (_%g195190195248%_ _%stx195189%_))))
    (define gxc#xform-define-values%
      (lambda (_%self195118%_ _%stx195119%_)
        (let* ((_%g195121195138%_
                (lambda (_%g195122195135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195122195135%_))))
               (_%g195120195185%_
                (lambda (_%g195122195141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195122195141%_))
                      (let ((_%e195125195143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195122195141%_))))
                        (let ((_%hd195126195146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195125195143%_)))
                              (_%tl195127195148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195125195143%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195127195148%_))
                              (let ((_%e195128195151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195127195148%_))))
                                (let ((_%hd195129195154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195128195151%_)))
                                      (_%tl195130195156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195128195151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195130195156%_))
                                      (let ((_%e195131195159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195130195156%_))))
                                        (let ((_%hd195132195162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195131195159%_)))
                                              (_%tl195133195164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195131195159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195133195164%_))
                                              (let ((_%expr195183%_
                                                     (gxc#compile-e__1
                                                      _%self195118%_
                                                      _%hd195132195162%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%hd195129195154%_
                                                             (cons _%expr195183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx195119%_))
                                              (_%g195121195138%_
                                               _%g195122195141%_))))
                                      (_%g195121195138%_ _%g195122195141%_))))
                              (_%g195121195138%_ _%g195122195141%_))))
                      (_%g195121195138%_ _%g195122195141%_)))))
          (_%g195120195185%_ _%stx195119%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self195047%_ _%stx195048%_)
        (let* ((_%g195050195067%_
                (lambda (_%g195051195064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195051195064%_))))
               (_%g195049195115%_
                (lambda (_%g195051195070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195051195070%_))
                      (let ((_%e195054195072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195051195070%_))))
                        (let ((_%hd195055195075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195054195072%_)))
                              (_%tl195056195077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195054195072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195056195077%_))
                              (let ((_%e195057195080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195056195077%_))))
                                (let ((_%hd195058195083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195057195080%_)))
                                      (_%tl195059195085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195057195080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195059195085%_))
                                      (let ((_%e195060195088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195059195085%_))))
                                        (let ((_%hd195061195091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195060195088%_)))
                                              (_%tl195062195093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195060195088%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195062195093%_))
                                              (let ((__tmp196569
                                                     (lambda ()
                                                       (let ((_%expr195113%_
                                                              (gxc#compile-e__1
                                                               _%self195047%_
                                                               _%hd195061195091%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%hd195058195083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr195113%_ '())))
                  _%stx195048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp196567
                                                     (let ((__tmp196568
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp196568
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp196569
                                                 gx#current-expander-phi
                                                 __tmp196567))
                                              (_%g195050195067%_
                                               _%g195051195070%_))))
                                      (_%g195050195067%_ _%g195051195070%_))))
                              (_%g195050195067%_ _%g195051195070%_))))
                      (_%g195050195067%_ _%g195051195070%_)))))
          (_%g195049195115%_ _%stx195048%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self194977%_ _%stx194978%_)
        (let* ((_%g194980194997%_
                (lambda (_%g194981194994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194981194994%_))))
               (_%g194979195044%_
                (lambda (_%g194981195000%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194981195000%_))
                      (let ((_%e194984195002%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194981195000%_))))
                        (let ((_%hd194985195005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194984195002%_)))
                              (_%tl194986195007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194984195002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194986195007%_))
                              (let ((_%e194987195010%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194986195007%_))))
                                (let ((_%hd194988195013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194987195010%_)))
                                      (_%tl194989195015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194987195010%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194989195015%_))
                                      (let ((_%e194990195018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194989195015%_))))
                                        (let ((_%hd194991195021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194990195018%_)))
                                              (_%tl194992195023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194990195018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194992195023%_))
                                              (let ((_%expr195042%_
                                                     (gxc#compile-e__1
                                                      _%self194977%_
                                                      _%hd194991195021%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%hd194988195013%_
                                                             (cons _%expr195042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx194978%_))
                                              (_%g194980194997%_
                                               _%g194981195000%_))))
                                      (_%g194980194997%_ _%g194981195000%_))))
                              (_%g194980194997%_ _%g194981195000%_))))
                      (_%g194980194997%_ _%g194981195000%_)))))
          (_%g194979195044%_ _%stx194978%_))))
    (define gxc#xform-lambda%
      (lambda (_%self194915%_ _%stx194916%_)
        (let* ((_%g194918194932%_
                (lambda (_%g194919194929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194919194929%_))))
               (_%g194917194974%_
                (lambda (_%g194919194935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194919194935%_))
                      (let ((_%e194922194937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194919194935%_))))
                        (let ((_%hd194923194940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194922194937%_)))
                              (_%tl194924194942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194922194937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194924194942%_))
                              (let ((_%e194925194945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194924194942%_))))
                                (let ((_%hd194926194948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194925194945%_)))
                                      (_%tl194927194950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194925194945%_))))
                                  (let ((__tmp196571
                                         (lambda ()
                                           (let ((_%body194972%_
                                                  (map (lambda (_%g194967194969%_)
                                                         (gxc#compile-e__1
                                                          _%self194915%_
                                                          _%g194967194969%_))
                                                       _%tl194927194950%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%hd194926194948%_
                                                          _%body194972%_))
                                              _%stx194916%_))))
                                        (__tmp196570
                                         (gxc#xform-let-locals
                                          _%hd194926194948%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp196571
                                     gxc#current-compile-local-env
                                     __tmp196570))))
                              (_%g194918194932%_ _%g194919194935%_))))
                      (_%g194918194932%_ _%g194919194935%_)))))
          (_%g194917194974%_ _%stx194916%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self194823%_ _%stx194824%_)
        (letrec ((_%clause-e194826%_
                  (lambda (_%clause194867%_)
                    (let* ((_%g194869194880%_
                            (lambda (_%g194870194877%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g194870194877%_))))
                           (_%g194868194912%_
                            (lambda (_%g194870194883%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g194870194883%_))
                                  (let ((_%e194873194885%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g194870194883%_))))
                                    (let ((_%hd194874194888%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194873194885%_)))
                                          (_%tl194875194890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194873194885%_))))
                                      (let ((__tmp196573
                                             (lambda ()
                                               (let ((_%body194910%_
                                                      (map (lambda (_%g194905194907%_)
                                                             (gxc#compile-e__1
                                                              _%self194823%_
                                                              _%g194905194907%_))
                                                           _%tl194875194890%_)))
                                                 (cons _%hd194874194888%_
                                                       _%body194910%_))))
                                            (__tmp196572
                                             (gxc#xform-let-locals
                                              _%hd194874194888%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp196573
                                         gxc#current-compile-local-env
                                         __tmp196572))))
                                  (_%g194869194880%_ _%g194870194883%_)))))
                      (_%g194868194912%_ _%clause194867%_)))))
          (let* ((_%g194828194838%_
                  (lambda (_%g194829194835%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194829194835%_))))
                 (_%g194827194864%_
                  (lambda (_%g194829194841%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194829194841%_))
                        (let ((_%e194831194843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194829194841%_))))
                          (let ((_%hd194832194846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194831194843%_)))
                                (_%tl194833194848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194831194843%_))))
                            (let ((_%clauses194862%_
                                   (map _%clause-e194826%_
                                        _%tl194833194848%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses194862%_)
                               _%stx194824%_))))
                        (_%g194828194838%_ _%g194829194841%_)))))
            (_%g194827194864%_ _%stx194824%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self194583%_ _%stx194584%_)
        (let* ((_%g194586194619%_
                (lambda (_%g194587194616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194587194616%_))))
               (_%g194585194820%_
                (lambda (_%g194587194622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194587194622%_))
                      (let ((_%e194592194624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194587194622%_))))
                        (let ((_%hd194593194627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194592194624%_)))
                              (_%tl194594194629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194592194624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194594194629%_))
                              (let ((_%e194595194632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194594194629%_))))
                                (let ((_%hd194596194635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194595194632%_)))
                                      (_%tl194597194637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194595194632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194596194635%_))
                                      (let ((_g196574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194596194635%_
                                                '0))))
                                        (begin
                                          (let ((_g196575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196574_)
                                                       (##values-length
                                                        _g196574_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196575_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196575_)))
                                          (let ((_%target194598194640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196574_ 0)))
                                                (_%tl194600194642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196574_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194600194642%_))
                                                (letrec ((_%loop194601194645%_
                                                          (lambda (_%hd194599194648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194605194650%_
                           _%hd194606194651%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194599194648%_))
                        (let ((_%e194602194653%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194599194648%_))))
                          (let ((_%lp-hd194603194656%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194602194653%_)))
                                (_%lp-tl194604194658%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194602194653%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194603194656%_))
                                (let ((_%e194609194661%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194603194656%_))))
                                  (let ((_%hd194610194664%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194609194661%_)))
                                        (_%tl194611194666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194609194661%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194611194666%_))
                                        (let ((_%e194612194669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194611194666%_))))
                                          (let ((_%hd194613194672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194612194669%_)))
                                                (_%tl194614194674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194612194669%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194614194674%_))
                                                (_%loop194601194645%_
                                                 _%lp-tl194604194658%_
                                                 (cons _%hd194613194672%_
                                                       _%expr194605194650%_)
                                                 (cons _%hd194610194664%_
                                                       _%hd194606194651%_))
                                                (_%g194586194619%_
                                                 _%g194587194622%_))))
                                        (_%g194586194619%_
                                         _%g194587194622%_))))
                                (_%g194586194619%_ _%g194587194622%_))))
                        (let ((_%expr194607194677%_
                               (reverse _%expr194605194650%_))
                              (_%hd194608194678%_
                               (reverse _%hd194606194651%_)))
                          (let* ((_%g194702194718%_
                                  (lambda (_%g194703194715%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g194703194715%_))))
                                 (_%g194701194806%_
                                  (lambda (_%g194703194721%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%g194703194721%_))
                                        (let ((_g196576_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%g194703194721%_
                                                  '0))))
                                          (begin
                                            (let ((_g196577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g196576_)
                                                         (##values-length
                                                          _g196576_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g196577_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g196577_)))
                                            (let ((_%target194705194723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g196576_
                                                      0)))
                                                  (_%tl194707194725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g196576_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl194707194725%_))
                                                  (letrec ((_%loop194708194728%_
                                                            (lambda (_%hd194706194731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr194712194733%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd194706194731%_))
                          (let ((_%e194709194735%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%hd194706194731%_))))
                            (let ((_%lp-hd194710194738%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194709194735%_)))
                                  (_%lp-tl194711194740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194709194735%_))))
                              (_%loop194708194728%_
                               _%lp-tl194711194740%_
                               (cons _%lp-hd194710194738%_
                                     _%expr194712194733%_))))
                          (let ((_%expr194713194743%_
                                 (reverse _%expr194712194733%_)))
                            (let ((__tmp196580
                                   (lambda ()
                                     (let* ((_%g194759194766%_
                                             (lambda (_%g194760194763%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g194760194763%_))))
                                            (_%g194758194792%_
                                             (lambda (_%g194760194769%_)
                                               (gxc#xform-wrap-source
                                                (cons _%hd194593194627%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%expr194713194743%_
                         _%hd194608194678%_))
                      (let ((__tmp196581
                             (lambda (_%g194781194785%_
                                      _%g194782194787%_
                                      _%g194783194789%_)
                               (cons (cons _%g194782194787%_
                                           (cons _%g194781194785%_ '()))
                                     _%g194783194789%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp196581
                         '()
                         _%expr194713194743%_
                         _%hd194608194678%_)))
                    _%g194760194769%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx194584%_))))
                                       (_%g194758194792%_
                                        (map (lambda (_%g194794194796%_)
                                               (gxc#compile-e__1
                                                _%self194583%_
                                                _%g194794194796%_))
                                             _%tl194597194637%_)))))
                                  (__tmp196578
                                   (gxc#xform-let-locals
                                    (let ((__tmp196579
                                           (lambda (_%g194798194801%_
                                                    _%g194799194803%_)
                                             (cons _%g194798194801%_
                                                   _%g194799194803%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp196579
                                       '()
                                       _%hd194608194678%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp196580
                               gxc#current-compile-local-env
                               __tmp196578)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop194708194728%_
                                                     _%target194705194723%_
                                                     '()))
                                                  (_%g194702194718%_
                                                   _%g194703194721%_)))))
                                        (_%g194702194718%_
                                         _%g194703194721%_)))))
                            (_%g194701194806%_
                             (map (lambda (_%g194808194810%_)
                                    (gxc#compile-e__1
                                     _%self194583%_
                                     _%g194808194810%_))
                                  (let ((__tmp196582
                                         (lambda (_%g194812194815%_
                                                  _%g194813194817%_)
                                           (cons _%g194812194815%_
                                                 _%g194813194817%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp196582
                                     '()
                                     _%expr194607194677%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194601194645%_
                                                   _%target194598194640%_
                                                   '()
                                                   '()))
                                                (_%g194586194619%_
                                                 _%g194587194622%_)))))
                                      (_%g194586194619%_ _%g194587194622%_))))
                              (_%g194586194619%_ _%g194587194622%_))))
                      (_%g194586194619%_ _%g194587194622%_)))))
          (_%g194585194820%_ _%stx194584%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self194343%_ _%stx194344%_)
        (let* ((_%g194346194379%_
                (lambda (_%g194347194376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194347194376%_))))
               (_%g194345194580%_
                (lambda (_%g194347194382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194347194382%_))
                      (let ((_%e194352194384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194347194382%_))))
                        (let ((_%hd194353194387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194352194384%_)))
                              (_%tl194354194389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194352194384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194354194389%_))
                              (let ((_%e194355194392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194354194389%_))))
                                (let ((_%hd194356194395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194355194392%_)))
                                      (_%tl194357194397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194355194392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194356194395%_))
                                      (let ((_g196583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194356194395%_
                                                '0))))
                                        (begin
                                          (let ((_g196584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196583_)
                                                       (##values-length
                                                        _g196583_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196584_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196584_)))
                                          (let ((_%target194358194400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196583_ 0)))
                                                (_%tl194360194402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196583_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194360194402%_))
                                                (letrec ((_%loop194361194405%_
                                                          (lambda (_%hd194359194408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194365194410%_
                           _%hd194366194411%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194359194408%_))
                        (let ((_%e194362194413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194359194408%_))))
                          (let ((_%lp-hd194363194416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194362194413%_)))
                                (_%lp-tl194364194418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194362194413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194363194416%_))
                                (let ((_%e194369194421%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194363194416%_))))
                                  (let ((_%hd194370194424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194369194421%_)))
                                        (_%tl194371194426%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194369194421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194371194426%_))
                                        (let ((_%e194372194429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194371194426%_))))
                                          (let ((_%hd194373194432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194372194429%_)))
                                                (_%tl194374194434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194372194429%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194374194434%_))
                                                (_%loop194361194405%_
                                                 _%lp-tl194364194418%_
                                                 (cons _%hd194373194432%_
                                                       _%expr194365194410%_)
                                                 (cons _%hd194370194424%_
                                                       _%hd194366194411%_))
                                                (_%g194346194379%_
                                                 _%g194347194382%_))))
                                        (_%g194346194379%_
                                         _%g194347194382%_))))
                                (_%g194346194379%_ _%g194347194382%_))))
                        (let ((_%expr194367194437%_
                               (reverse _%expr194365194410%_))
                              (_%hd194368194438%_
                               (reverse _%hd194366194411%_)))
                          (let ((__tmp196587
                                 (lambda ()
                                   (let* ((_%g194463194479%_
                                           (lambda (_%g194464194476%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g194464194476%_))))
                                          (_%g194462194559%_
                                           (lambda (_%g194464194482%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%g194464194482%_))
                                                 (let ((_g196588_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%g194464194482%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g196589_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g196588_)
                          (##values-length _g196588_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g196589_ 2)))
                   (error "Context expects 2 values" _g196589_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target194466194484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g196588_
                                                               0)))
                                                           (_%tl194468194486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g196588_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl194468194486%_))
                                                           (letrec ((_%loop194469194489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd194467194492%_ _%expr194473194494%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd194467194492%_))
                                   (let ((_%e194470194496%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd194467194492%_))))
                                     (let ((_%lp-hd194471194499%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e194470194496%_)))
                                           (_%lp-tl194472194501%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e194470194496%_))))
                                       (_%loop194469194489%_
                                        _%lp-tl194472194501%_
                                        (cons _%lp-hd194471194499%_
                                              _%expr194473194494%_))))
                                   (let* ((_%expr194474194504%_
                                           (reverse _%expr194473194494%_))
                                          (_%g194520194527%_
                                           (lambda (_%g194521194524%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g194521194524%_))))
                                          (_%g194519194552%_
                                           (lambda (_%g194521194530%_)
                                             (gxc#xform-wrap-source
                                              (cons _%hd194353194387%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%expr194474194504%_
                                                               _%hd194368194438%_))
                                                            (let ((__tmp196590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g194541194545%_
                                    _%g194542194547%_
                                    _%g194543194549%_)
                             (cons (cons _%g194542194547%_
                                         (cons _%g194541194545%_ '()))
                                   _%g194543194549%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp196590
                       '()
                       _%expr194474194504%_
                       _%hd194368194438%_)))
                  _%g194521194530%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx194344%_))))
                                     (_%g194519194552%_
                                      (map (lambda (_%g194554194556%_)
                                             (gxc#compile-e__1
                                              _%self194343%_
                                              _%g194554194556%_))
                                           _%tl194357194397%_)))))))
                     (_%loop194469194489%_ _%target194466194484%_ '()))
                   (_%g194463194479%_ _%g194464194482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g194463194479%_
                                                  _%g194464194482%_)))))
                                     (_%g194462194559%_
                                      (map (lambda (_%g194561194563%_)
                                             (gxc#compile-e__1
                                              _%self194343%_
                                              _%g194561194563%_))
                                           (let ((__tmp196591
                                                  (lambda (_%g194565194568%_
                                                           _%g194566194570%_)
                                                    (cons _%g194565194568%_
                                                          _%g194566194570%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp196591
                                              '()
                                              _%expr194367194437%_)))))))
                                (__tmp196585
                                 (gxc#xform-let-locals
                                  (let ((__tmp196586
                                         (lambda (_%g194572194575%_
                                                  _%g194573194577%_)
                                           (cons _%g194572194575%_
                                                 _%g194573194577%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp196586
                                     '()
                                     _%hd194368194438%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp196587
                             gxc#current-compile-local-env
                             __tmp196585)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194361194405%_
                                                   _%target194358194400%_
                                                   '()
                                                   '()))
                                                (_%g194346194379%_
                                                 _%g194347194382%_)))))
                                      (_%g194346194379%_ _%g194347194382%_))))
                              (_%g194346194379%_ _%g194347194382%_))))
                      (_%g194346194379%_ _%g194347194382%_)))))
          (_%g194345194580%_ _%stx194344%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings194210%_)
        (letrec ((_%flatten194212%_
                  (lambda (_%maybe-lst194270%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst194270%_))
                        (cons _%maybe-lst194270%_ '())
                        (let _%loop194272%_ ((_%rest194274%_
                                              _%maybe-lst194270%_)
                                             (_%result194275%_ '()))
                          (let* ((_%__stx196479196480%_ _%rest194274%_)
                                 (_%g194279194291%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx196479196480%_)))))
                            (let ((_%__kont196481196482%_
                                   (lambda (_%g194281194329%_
                                            _%g194282194330%_)
                                     (_%loop194272%_
                                      _%g194281194329%_
                                      (let ((__tmp196592
                                             (_%flatten194212%_
                                              _%g194282194330%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result194275%_
                                         __tmp196592)))))
                                  (_%__kont196483196484%_
                                   (lambda (_%g194286194303%_)
                                     (cons _%g194286194303%_
                                           _%result194275%_)))
                                  (_%__kont196485196486%_
                                   (lambda () _%result194275%_)))
                              (let ((_%g194277194316%_
                                     (lambda ()
                                       (let ((_%g194286194303%_
                                              _%__stx196479196480%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g194286194303%_))
                                             (_%__kont196483196484%_
                                              _%g194286194303%_)
                                             (_%__kont196485196486%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx196479196480%_))
                                    (let ((_%e194283194321%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx196479196480%_))))
                                      (let ((_%tl194285194326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194283194321%_)))
                                            (_%hd194284194324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194283194321%_))))
                                        (_%__kont196481196482%_
                                         _%tl194285194326%_
                                         _%hd194284194324%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g194277194316%_)))))))))))
          (let _%loop194214%_ ((_%rest194216%_
                                (_%flatten194212%_ _%bindings194210%_))
                               (_%locals194217%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest194218194229%_ _%rest194216%_)
                   (_%E194222194233%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest194218194229%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K194225194258%_
                     (lambda (_%rest194255%_ _%id194256%_)
                       (_%loop194214%_
                        _%rest194255%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id194256%_))
                              _%locals194217%_))))
                    (_%K194224194247%_
                     (lambda (_%id194245%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id194245%_))
                             _%locals194217%_)))
                    (_%K194223194238%_ (lambda () _%locals194217%_)))
                (let ((_%try-match194220194252%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest194218194229%_))
                             (let ((_%id194250%_ _%rest194218194229%_))
                               (_%K194224194247%_ _%id194250%_))
                             (_%K194223194238%_)))))
                  (if (pair? _%rest194218194229%_)
                      (let ((_%tl194227194263%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest194218194229%_)))
                            (_%hd194226194261%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest194218194229%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd194226194261%_))
                            (let ((_%id194266%_ _%hd194226194261%_)
                                  (_%rest194268%_ _%tl194227194263%_))
                              (_%K194225194258%_ _%rest194268%_ _%id194266%_))
                            (_%K194223194238%_)))
                      (_%try-match194220194252%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self194162%_ _%stx194163%_)
        (let* ((_%g194165194176%_
                (lambda (_%g194166194173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194166194173%_))))
               (_%g194164194207%_
                (lambda (_%g194166194179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194166194179%_))
                      (let ((_%e194169194181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194166194179%_))))
                        (let ((_%hd194170194184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194169194181%_)))
                              (_%tl194171194186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194169194181%_))))
                          (let ((_%rands194205%_
                                 (map (lambda (_%g194200194202%_)
                                        (gxc#compile-e__1
                                         _%self194162%_
                                         _%g194200194202%_))
                                      _%tl194171194186%_)))
                            (gxc#xform-wrap-source
                             (cons _%hd194170194184%_ _%rands194205%_)
                             _%stx194163%_))))
                      (_%g194165194176%_ _%g194166194179%_)))))
          (_%g194164194207%_ _%stx194163%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self194092%_ _%stx194093%_)
        (let* ((_%g194095194112%_
                (lambda (_%g194096194109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194096194109%_))))
               (_%g194094194159%_
                (lambda (_%g194096194115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194096194115%_))
                      (let ((_%e194099194117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194096194115%_))))
                        (let ((_%hd194100194120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194099194117%_)))
                              (_%tl194101194122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194099194117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194101194122%_))
                              (let ((_%e194102194125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194101194122%_))))
                                (let ((_%hd194103194128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194102194125%_)))
                                      (_%tl194104194130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194102194125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194104194130%_))
                                      (let ((_%e194105194133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194104194130%_))))
                                        (let ((_%hd194106194136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194105194133%_)))
                                              (_%tl194107194138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194105194133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194107194138%_))
                                              (let ((_%expr194157%_
                                                     (gxc#compile-e__1
                                                      _%self194092%_
                                                      _%hd194106194136%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%hd194103194128%_
                                                             (cons _%expr194157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx194093%_))
                                              (_%g194095194112%_
                                               _%g194096194115%_))))
                                      (_%g194095194112%_ _%g194096194115%_))))
                              (_%g194095194112%_ _%g194096194115%_))))
                      (_%g194095194112%_ _%g194096194115%_)))))
          (_%g194094194159%_ _%stx194093%_))))))
