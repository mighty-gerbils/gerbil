(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770513297)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx191516%_)
        (let* ((_%self191518%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e191520%_
                (let ((__tmp191738 (gxc#stx-car-e _%stx191516%_)))
                  (declare (not safe))
                  (method-ref _%self191518%_ __tmp191738))))
          (if _%$e191520%_
              ((lambda (_%method191523%_)
                 (declare (not safe))
                 (let ((_%$e191526%_ (gx#stx-source _%stx191516%_)))
                   (if _%$e191526%_
                       ((lambda (_%source191529%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191523%_ _%self191518%_ _%stx191516%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191529%_ '()))
                                 (let ((_%$e191533%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191533%_ _%$e191533%_ '())))))
                        _%$e191526%_)
                       (_%method191523%_ _%self191518%_ _%stx191516%_))))
               _%$e191520%_)
              (let ((__tmp191740 (gxc#stx-car-e _%stx191516%_))
                    (__tmp191739
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191516%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191518%_
                       __tmp191740
                       __tmp191739))))))
    (define gxc#compile-e__1
      (lambda (_%self191538%_ _%stx191539%_)
        (let ((_%$e191541%_
               (let ((__tmp191741 (gxc#stx-car-e _%stx191539%_)))
                 (declare (not safe))
                 (method-ref _%self191538%_ __tmp191741))))
          (if _%$e191541%_
              ((lambda (_%method191544%_)
                 (declare (not safe))
                 (let ((_%$e191547%_ (gx#stx-source _%stx191539%_)))
                   (if _%$e191547%_
                       ((lambda (_%source191550%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191544%_ _%self191538%_ _%stx191539%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191550%_ '()))
                                 (let ((_%$e191554%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191554%_ _%$e191554%_ '())))))
                        _%$e191547%_)
                       (_%method191544%_ _%self191538%_ _%stx191539%_))))
               _%$e191541%_)
              (let ((__tmp191743 (gxc#stx-car-e _%stx191539%_))
                    (__tmp191742
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191539%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191538%_
                       __tmp191743
                       __tmp191742))))))
    (define gxc#compile-e
      (lambda _g191744_
        (let ((_g191745_ (let () (declare (not safe)) (##length _g191744_))))
          (cond ((let () (declare (not safe)) (##fx= _g191745_ 1))
                 (apply gxc#compile-e__0 _g191744_))
                ((let () (declare (not safe)) (##fx= _g191745_ 2))
                 (apply gxc#compile-e__1 _g191744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g191744_))))))
    (define gxc#stx-car-e
      (lambda (_%stx191514%_)
        (let ((__tmp191746
               (car (let () (declare (not safe)) (gx#stx-e _%stx191514%_)))))
          (declare (not safe))
          (gx#stx-e __tmp191746))))
    (define gxc#void-method (lambda (_%self191511%_ _%stx191512%_) '#!void))
    (define gxc#false-method (lambda (_%self191508%_ _%stx191509%_) '#f))
    (define gxc#true-method (lambda (_%self191505%_ _%stx191506%_) '#t))
    (define gxc#identity-method
      (lambda (_%self191502%_ _%stx191503%_) _%stx191503%_))
    (define gxc#::void-expression::t
      (let ((__tmp191747 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp191747
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args191499%_
        (apply make-instance gxc#::void-expression::t _%$args191499%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp191748
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
        (__make-atomic-promise __tmp191748)))
    (define gxc#::void-special-form::t
      (let ((__tmp191749 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp191749
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args191495%_
        (apply make-instance gxc#::void-special-form::t _%$args191495%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp191750
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
        (__make-atomic-promise __tmp191750)))
    (define gxc#::void::t
      (let ((__tmp191751
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp191751 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args191491%_
        (apply make-instance gxc#::void::t _%$args191491%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp191752
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191752)))
    (define gxc#::false-expression::t
      (let ((__tmp191753 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp191753
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args191487%_
        (apply make-instance gxc#::false-expression::t _%$args191487%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp191754
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
        (__make-atomic-promise __tmp191754)))
    (define gxc#::false-special-form::t
      (let ((__tmp191755 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp191755
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args191483%_
        (apply make-instance gxc#::false-special-form::t _%$args191483%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp191756
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
        (__make-atomic-promise __tmp191756)))
    (define gxc#::false::t
      (let ((__tmp191757
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp191757 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args191479%_
        (apply make-instance gxc#::false::t _%$args191479%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp191758
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191758)))
    (define gxc#::identity-expression::t
      (let ((__tmp191759 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp191759
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args191475%_
        (apply make-instance gxc#::identity-expression::t _%$args191475%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp191760
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
        (__make-atomic-promise __tmp191760)))
    (define gxc#::identity-special-form::t
      (let ((__tmp191761 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp191761
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args191471%_
        (apply make-instance gxc#::identity-special-form::t _%$args191471%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp191762
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
        (__make-atomic-promise __tmp191762)))
    (define gxc#::identity::t
      (let ((__tmp191763
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp191763
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args191467%_
        (apply make-instance gxc#::identity::t _%$args191467%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp191764
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191764)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp191765 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp191765
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args191463%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args191463%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp191766
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
        (__make-atomic-promise __tmp191766)))
    (define gxc#::basic-xform::t
      (let ((__tmp191767
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp191767
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args191459%_
        (apply make-instance gxc#::basic-xform::t _%$args191459%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp191768
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
        (__make-atomic-promise __tmp191768)))
    (define gxc#apply-begin%
      (lambda (_%self191415%_ _%stx191416%_)
        (let* ((_%g191418191428%_
                (lambda (_%g191419191425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191419191425%_))))
               (_%g191417191455%_
                (lambda (_%g191419191431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191419191431%_))
                      (let ((_%e191421191433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191419191431%_))))
                        (let ((_%hd191422191436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191421191433%_)))
                              (_%tl191423191438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191421191433%_))))
                          ((lambda (_%g191420191441%_)
                             (for-each
                              (lambda (_%g191450191452%_)
                                (gxc#compile-e__1
                                 _%self191415%_
                                 _%g191450191452%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g191420191441%_))))
                           _%tl191423191438%_)))
                      (_%g191418191428%_ _%g191419191431%_)))))
          (_%g191417191455%_ _%stx191416%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self191376%_ _%stx191377%_)
        (let* ((_%g191379191389%_
                (lambda (_%g191380191386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191380191386%_))))
               (_%g191378191412%_
                (lambda (_%g191380191392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191380191392%_))
                      (let ((_%e191382191394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191380191392%_))))
                        (let ((_%hd191383191397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191382191394%_)))
                              (_%tl191384191399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191382191394%_))))
                          ((lambda (_%g191381191402%_)
                             (gxc#compile-e__1
                              _%self191376%_
                              (last _%g191381191402%_)))
                           _%tl191384191399%_)))
                      (_%g191379191389%_ _%g191380191392%_)))))
          (_%g191378191412%_ _%stx191377%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self191372%_ _%stx191373%_)
        (let ((__tmp191771
               (lambda () (gxc#apply-begin% _%self191372%_ _%stx191373%_)))
              (__tmp191769
               (let ((__tmp191770
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp191770 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp191771
           gx#current-expander-phi
           __tmp191769))))
    (define gxc#apply-module%
      (lambda (_%self191311%_ _%stx191312%_)
        (let* ((_%g191314191328%_
                (lambda (_%g191315191325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191315191325%_))))
               (_%g191313191369%_
                (lambda (_%g191315191331%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191315191331%_))
                      (let ((_%e191318191333%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191315191331%_))))
                        (let ((_%hd191319191336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191318191333%_)))
                              (_%tl191320191338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191318191333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191320191338%_))
                              (let ((_%e191321191341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191320191338%_))))
                                (let ((_%hd191322191344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191321191341%_)))
                                      (_%tl191323191346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191321191341%_))))
                                  ((lambda (_%g191316191349%_
                                            _%g191317191350%_)
                                     (let* ((_%ctx191363%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g191317191350%_)))
                                            (_%ctx-stx191365%_
                                             (##structure-ref
                                              _%ctx191363%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp191772
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self191311%_
                                                _%ctx-stx191365%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191772
                                        gx#current-expander-context
                                        _%ctx191363%_)))
                                   _%tl191323191346%_
                                   _%hd191322191344%_)))
                              (_%g191314191328%_ _%g191315191331%_))))
                      (_%g191314191328%_ _%g191315191331%_)))))
          (_%g191313191369%_ _%stx191312%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self191243%_ _%stx191244%_)
        (let* ((_%g191246191263%_
                (lambda (_%g191247191260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191247191260%_))))
               (_%g191245191308%_
                (lambda (_%g191247191266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191247191266%_))
                      (let ((_%e191250191268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191247191266%_))))
                        (let ((_%hd191251191271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191250191268%_)))
                              (_%tl191252191273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191250191268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191252191273%_))
                              (let ((_%e191253191276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191252191273%_))))
                                (let ((_%hd191254191279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191253191276%_)))
                                      (_%tl191255191281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191253191276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191255191281%_))
                                      (let ((_%e191256191284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191255191281%_))))
                                        (let ((_%hd191257191287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191256191284%_)))
                                              (_%tl191258191289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191256191284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191258191289%_))
                                              ((lambda (_%g191248191292%_
                                                        _%g191249191293%_)
                                                 (gxc#compile-e__1
                                                  _%self191243%_
                                                  _%g191248191292%_))
                                               _%hd191257191287%_
                                               _%hd191254191279%_)
                                              (_%g191246191263%_
                                               _%g191247191266%_))))
                                      (_%g191246191263%_ _%g191247191266%_))))
                              (_%g191246191263%_ _%g191247191266%_))))
                      (_%g191246191263%_ _%g191247191266%_)))))
          (_%g191245191308%_ _%stx191244%_))))
    (define gxc#apply-define-values%
      (lambda (_%self191175%_ _%stx191176%_)
        (let* ((_%g191178191195%_
                (lambda (_%g191179191192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191179191192%_))))
               (_%g191177191240%_
                (lambda (_%g191179191198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191179191198%_))
                      (let ((_%e191182191200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191179191198%_))))
                        (let ((_%hd191183191203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191182191200%_)))
                              (_%tl191184191205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191182191200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191184191205%_))
                              (let ((_%e191185191208%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191184191205%_))))
                                (let ((_%hd191186191211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191185191208%_)))
                                      (_%tl191187191213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191185191208%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191187191213%_))
                                      (let ((_%e191188191216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191187191213%_))))
                                        (let ((_%hd191189191219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191188191216%_)))
                                              (_%tl191190191221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191188191216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191190191221%_))
                                              ((lambda (_%g191180191224%_
                                                        _%g191181191225%_)
                                                 (gxc#compile-e__1
                                                  _%self191175%_
                                                  _%g191180191224%_))
                                               _%hd191189191219%_
                                               _%hd191186191211%_)
                                              (_%g191178191195%_
                                               _%g191179191198%_))))
                                      (_%g191178191195%_ _%g191179191198%_))))
                              (_%g191178191195%_ _%g191179191198%_))))
                      (_%g191178191195%_ _%g191179191198%_)))))
          (_%g191177191240%_ _%stx191176%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self191106%_ _%stx191107%_)
        (let* ((_%g191109191126%_
                (lambda (_%g191110191123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191110191123%_))))
               (_%g191108191172%_
                (lambda (_%g191110191129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191110191129%_))
                      (let ((_%e191113191131%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191110191129%_))))
                        (let ((_%hd191114191134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191113191131%_)))
                              (_%tl191115191136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191113191131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191115191136%_))
                              (let ((_%e191116191139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191115191136%_))))
                                (let ((_%hd191117191142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191116191139%_)))
                                      (_%tl191118191144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191116191139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191118191144%_))
                                      (let ((_%e191119191147%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191118191144%_))))
                                        (let ((_%hd191120191150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191119191147%_)))
                                              (_%tl191121191152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191119191147%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191121191152%_))
                                              ((lambda (_%g191111191155%_
                                                        _%g191112191156%_)
                                                 (let ((__tmp191775
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self191106%_
                                                           _%g191111191155%_)))
                                                       (__tmp191773
                                                        (let ((__tmp191774
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191774 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191775
                                                    gx#current-expander-phi
                                                    __tmp191773)))
                                               _%hd191120191150%_
                                               _%hd191117191142%_)
                                              (_%g191109191126%_
                                               _%g191110191129%_))))
                                      (_%g191109191126%_ _%g191110191129%_))))
                              (_%g191109191126%_ _%g191110191129%_))))
                      (_%g191109191126%_ _%g191110191129%_)))))
          (_%g191108191172%_ _%stx191107%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self191038%_ _%stx191039%_)
        (let* ((_%g191041191058%_
                (lambda (_%g191042191055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191042191055%_))))
               (_%g191040191103%_
                (lambda (_%g191042191061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191042191061%_))
                      (let ((_%e191045191063%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191042191061%_))))
                        (let ((_%hd191046191066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191045191063%_)))
                              (_%tl191047191068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191045191063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191047191068%_))
                              (let ((_%e191048191071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191047191068%_))))
                                (let ((_%hd191049191074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191048191071%_)))
                                      (_%tl191050191076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191048191071%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191050191076%_))
                                      (let ((_%e191051191079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191050191076%_))))
                                        (let ((_%hd191052191082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191051191079%_)))
                                              (_%tl191053191084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191051191079%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191053191084%_))
                                              ((lambda (_%g191043191087%_
                                                        _%g191044191088%_)
                                                 (gxc#compile-e__1
                                                  _%self191038%_
                                                  _%g191043191087%_))
                                               _%hd191052191082%_
                                               _%hd191049191074%_)
                                              (_%g191041191058%_
                                               _%g191042191061%_))))
                                      (_%g191041191058%_ _%g191042191061%_))))
                              (_%g191041191058%_ _%g191042191061%_))))
                      (_%g191041191058%_ _%g191042191061%_)))))
          (_%g191040191103%_ _%stx191039%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self190924%_ _%stx190925%_)
        (let* ((_%g190927190955%_
                (lambda (_%g190928190952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190928190952%_))))
               (_%g190926191035%_
                (lambda (_%g190928190958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190928190958%_))
                      (let ((_%e190931190960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190928190958%_))))
                        (let ((_%hd190932190963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190931190960%_)))
                              (_%tl190933190965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190931190960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190933190965%_))
                              (let ((_g191776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190933190965%_
                                        '0))))
                                (begin
                                  (let ((_g191777_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191776_)
                                               (##values-length _g191776_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191777_ 2)))
                                        (error "Context expects 2 values"
                                               _g191777_)))
                                  (let ((_%target190934190968%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191776_ 0)))
                                        (_%tl190936190970%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191776_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190936190970%_))
                                        (letrec ((_%loop190937190973%_
                                                  (lambda (_%hd190935190976%_
                                                           _%body190941190978%_
                                                           _%hd190942190979%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190935190976%_))
                                                        (let ((_%e190938190981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190935190976%_))))
                  (let ((_%lp-hd190939190984%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190938190981%_)))
                        (_%lp-tl190940190986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190938190981%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd190939190984%_))
                        (let ((_%e190945190989%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd190939190984%_))))
                          (let ((_%hd190946190992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190945190989%_)))
                                (_%tl190947190994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190945190989%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190947190994%_))
                                (let ((_%e190948190997%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl190947190994%_))))
                                  (let ((_%hd190949191000%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190948190997%_)))
                                        (_%tl190950191002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190948190997%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190950191002%_))
                                        (_%loop190937190973%_
                                         _%lp-tl190940190986%_
                                         (cons _%hd190949191000%_
                                               _%body190941190978%_)
                                         (cons _%hd190946190992%_
                                               _%hd190942190979%_))
                                        (_%g190927190955%_
                                         _%g190928190958%_))))
                                (_%g190927190955%_ _%g190928190958%_))))
                        (_%g190927190955%_ _%g190928190958%_))))
                (let ((_%body190943191005%_ (reverse _%body190941190978%_))
                      (_%hd190944191006%_ (reverse _%hd190942190979%_)))
                  ((lambda (_%g190929191008%_ _%g190930191009%_)
                     (for-each
                      (lambda (_%g191023191025%_)
                        (gxc#compile-e__1 _%self190924%_ _%g191023191025%_))
                      (let ((__tmp191778
                             (lambda (_%g191027191030%_ _%g191028191032%_)
                               (cons _%g191027191030%_ _%g191028191032%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191778 '() _%g190929191008%_))))
                   _%body190943191005%_
                   _%hd190944191006%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190937190973%_
                                           _%target190934190968%_
                                           '()
                                           '()))
                                        (_%g190927190955%_
                                         _%g190928190958%_)))))
                              (_%g190927190955%_ _%g190928190958%_))))
                      (_%g190927190955%_ _%g190928190958%_)))))
          (_%g190926191035%_ _%stx190925%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self190781%_ _%stx190782%_)
        (let* ((_%g190784190819%_
                (lambda (_%g190785190816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190785190816%_))))
               (_%g190783190921%_
                (lambda (_%g190785190822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190785190822%_))
                      (let ((_%e190789190824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190785190822%_))))
                        (let ((_%hd190790190827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190789190824%_)))
                              (_%tl190791190829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190789190824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190791190829%_))
                              (let ((_%e190792190832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190791190829%_))))
                                (let ((_%hd190793190835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190792190832%_)))
                                      (_%tl190794190837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190792190832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190793190835%_))
                                      (let ((_g191779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190793190835%_
                                                '0))))
                                        (begin
                                          (let ((_g191780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191779_)
                                                       (##values-length
                                                        _g191779_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191780_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191780_)))
                                          (let ((_%target190795190840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191779_ 0)))
                                                (_%tl190797190842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191779_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190797190842%_))
                                                (letrec ((_%loop190798190845%_
                                                          (lambda (_%hd190796190848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190802190850%_
                           _%hd190803190851%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190796190848%_))
                        (let ((_%e190799190853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190796190848%_))))
                          (let ((_%lp-hd190800190856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190799190853%_)))
                                (_%lp-tl190801190858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190799190853%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190800190856%_))
                                (let ((_%e190806190861%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190800190856%_))))
                                  (let ((_%hd190807190864%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190806190861%_)))
                                        (_%tl190808190866%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190806190861%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190808190866%_))
                                        (let ((_%e190809190869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190808190866%_))))
                                          (let ((_%hd190810190872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190809190869%_)))
                                                (_%tl190811190874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190809190869%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190811190874%_))
                                                (_%loop190798190845%_
                                                 _%lp-tl190801190858%_
                                                 (cons _%hd190810190872%_
                                                       _%expr190802190850%_)
                                                 (cons _%hd190807190864%_
                                                       _%hd190803190851%_))
                                                (_%g190784190819%_
                                                 _%g190785190822%_))))
                                        (_%g190784190819%_
                                         _%g190785190822%_))))
                                (_%g190784190819%_ _%g190785190822%_))))
                        (let ((_%expr190804190877%_
                               (reverse _%expr190802190850%_))
                              (_%hd190805190878%_
                               (reverse _%hd190803190851%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190794190837%_))
                              (let ((_%e190812190880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190794190837%_))))
                                (let ((_%hd190813190883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190812190880%_)))
                                      (_%tl190814190885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190812190880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190814190885%_))
                                      ((lambda (_%g190786190888%_
                                                _%g190787190889%_
                                                _%g190788190890%_)
                                         (for-each
                                          (lambda (_%g190909190911%_)
                                            (gxc#compile-e__1
                                             _%self190781%_
                                             _%g190909190911%_))
                                          (let ((__tmp191782
                                                 (lambda (_%g190913190916%_
                                                          _%g190914190918%_)
                                                   (cons _%g190913190916%_
                                                         _%g190914190918%_)))
                                                (__tmp191781
                                                 (cons _%g190786190888%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191782
                                             __tmp191781
                                             _%g190787190889%_))))
                                       _%hd190813190883%_
                                       _%expr190804190877%_
                                       _%hd190805190878%_)
                                      (_%g190784190819%_ _%g190785190822%_))))
                              (_%g190784190819%_ _%g190785190822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190798190845%_
                                                   _%target190795190840%_
                                                   '()
                                                   '()))
                                                (_%g190784190819%_
                                                 _%g190785190822%_)))))
                                      (_%g190784190819%_ _%g190785190822%_))))
                              (_%g190784190819%_ _%g190785190822%_))))
                      (_%g190784190819%_ _%g190785190822%_)))))
          (_%g190783190921%_ _%stx190782%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self190726%_ _%stx190727%_)
        (let* ((_%g190729190743%_
                (lambda (_%g190730190740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190730190740%_))))
               (_%g190728190778%_
                (lambda (_%g190730190746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190730190746%_))
                      (let ((_%e190733190748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190730190746%_))))
                        (let ((_%hd190734190751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190733190748%_)))
                              (_%tl190735190753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190733190748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190735190753%_))
                              (let ((_%e190736190756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190735190753%_))))
                                (let ((_%hd190737190759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190736190756%_)))
                                      (_%tl190738190761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190736190756%_))))
                                  ((lambda (_%g190731190764%_
                                            _%g190732190765%_)
                                     (gxc#compile-e__1
                                      _%self190726%_
                                      (last _%g190731190764%_)))
                                   _%tl190738190761%_
                                   _%hd190737190759%_)))
                              (_%g190729190743%_ _%g190730190746%_))))
                      (_%g190729190743%_ _%g190730190746%_)))))
          (_%g190728190778%_ _%stx190727%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self190658%_ _%stx190659%_)
        (let* ((_%g190661190678%_
                (lambda (_%g190662190675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190662190675%_))))
               (_%g190660190723%_
                (lambda (_%g190662190681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190662190681%_))
                      (let ((_%e190665190683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190662190681%_))))
                        (let ((_%hd190666190686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190665190683%_)))
                              (_%tl190667190688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190665190683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190667190688%_))
                              (let ((_%e190668190691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190667190688%_))))
                                (let ((_%hd190669190694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190668190691%_)))
                                      (_%tl190670190696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190668190691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190670190696%_))
                                      (let ((_%e190671190699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190670190696%_))))
                                        (let ((_%hd190672190702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190671190699%_)))
                                              (_%tl190673190704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190671190699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190673190704%_))
                                              ((lambda (_%g190663190707%_
                                                        _%g190664190708%_)
                                                 (gxc#compile-e__1
                                                  _%self190658%_
                                                  _%g190663190707%_))
                                               _%hd190672190702%_
                                               _%hd190669190694%_)
                                              (_%g190661190678%_
                                               _%g190662190681%_))))
                                      (_%g190661190678%_ _%g190662190681%_))))
                              (_%g190661190678%_ _%g190662190681%_))))
                      (_%g190661190678%_ _%g190662190681%_)))))
          (_%g190660190723%_ _%stx190659%_))))
    (define gxc#apply-operands
      (lambda (_%self190573%_ _%stx190574%_)
        (let* ((_%g190576190595%_
                (lambda (_%g190577190592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190577190592%_))))
               (_%g190575190655%_
                (lambda (_%g190577190598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190577190598%_))
                      (let ((_%e190579190600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190577190598%_))))
                        (let ((_%hd190580190603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190579190600%_)))
                              (_%tl190581190605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190579190600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190581190605%_))
                              (let ((_g191783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190581190605%_
                                        '0))))
                                (begin
                                  (let ((_g191784_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191783_)
                                               (##values-length _g191783_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191784_ 2)))
                                        (error "Context expects 2 values"
                                               _g191784_)))
                                  (let ((_%target190582190608%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191783_ 0)))
                                        (_%tl190584190610%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191783_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190584190610%_))
                                        (letrec ((_%loop190585190613%_
                                                  (lambda (_%hd190583190616%_
                                                           _%rands190589190618%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190583190616%_))
                                                        (let ((_%e190586190620%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190583190616%_))))
                  (let ((_%lp-hd190587190623%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190586190620%_)))
                        (_%lp-tl190588190625%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190586190620%_))))
                    (_%loop190585190613%_
                     _%lp-tl190588190625%_
                     (cons _%lp-hd190587190623%_ _%rands190589190618%_))))
                (let ((_%rands190590190628%_ (reverse _%rands190589190618%_)))
                  ((lambda (_%g190578190630%_)
                     (for-each
                      (lambda (_%g190643190645%_)
                        (gxc#compile-e__1 _%self190573%_ _%g190643190645%_))
                      (let ((__tmp191785
                             (lambda (_%g190647190650%_ _%g190648190652%_)
                               (cons _%g190647190650%_ _%g190648190652%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191785 '() _%g190578190630%_))))
                   _%rands190590190628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190585190613%_
                                           _%target190582190608%_
                                           '()))
                                        (_%g190576190595%_
                                         _%g190577190598%_)))))
                              (_%g190576190595%_ _%g190577190598%_))))
                      (_%g190576190595%_ _%g190577190598%_)))))
          (_%g190575190655%_ _%stx190574%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx190570%_ _%src-stx190571%_)
        (let ((__tmp191786
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx190571%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx190570%_ __tmp191786))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx190566%_ _%src-stx190567%_ _%ctx190568%_)
        (gxc#compile-e__1
         _%ctx190568%_
         (gxc#xform-wrap-source _%stx190566%_ _%src-stx190567%_))))
    (define gxc#xform-begin%
      (lambda (_%self190521%_ _%stx190522%_)
        (let* ((_%g190524190534%_
                (lambda (_%g190525190531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190525190531%_))))
               (_%g190523190563%_
                (lambda (_%g190525190537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190525190537%_))
                      (let ((_%e190527190539%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190525190537%_))))
                        (let ((_%hd190528190542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190527190539%_)))
                              (_%tl190529190544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190527190539%_))))
                          ((lambda (_%g190526190547%_)
                             (let ((_%forms190561%_
                                    (map (lambda (_%g190556190558%_)
                                           (gxc#compile-e__1
                                            _%self190521%_
                                            _%g190556190558%_))
                                         _%g190526190547%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms190561%_)
                                _%stx190522%_)))
                           _%tl190529190544%_)))
                      (_%g190524190534%_ _%g190525190537%_)))))
          (_%g190523190563%_ _%stx190522%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self190475%_ _%stx190476%_)
        (let* ((_%g190478190488%_
                (lambda (_%g190479190485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190479190485%_))))
               (_%g190477190518%_
                (lambda (_%g190479190491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190479190491%_))
                      (let ((_%e190481190493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190479190491%_))))
                        (let ((_%hd190482190496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190481190493%_)))
                              (_%tl190483190498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190481190493%_))))
                          ((lambda (_%g190480190501%_)
                             (let ((__tmp191789
                                    (lambda ()
                                      (let ((_%forms190516%_
                                             (map (lambda (_%g190511190513%_)
                                                    (gxc#compile-e__1
                                                     _%self190475%_
                                                     _%g190511190513%_))
                                                  _%g190480190501%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms190516%_)
                                         _%stx190476%_))))
                                   (__tmp191787
                                    (let ((__tmp191788
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp191788 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191789
                                gx#current-expander-phi
                                __tmp191787)))
                           _%tl190483190498%_)))
                      (_%g190478190488%_ _%g190479190491%_)))))
          (_%g190477190518%_ _%stx190476%_))))
    (define gxc#xform-module%
      (lambda (_%self190412%_ _%stx190413%_)
        (let* ((_%g190415190429%_
                (lambda (_%g190416190426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190416190426%_))))
               (_%g190414190472%_
                (lambda (_%g190416190432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190416190432%_))
                      (let ((_%e190419190434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190416190432%_))))
                        (let ((_%hd190420190437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190419190434%_)))
                              (_%tl190421190439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190419190434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190421190439%_))
                              (let ((_%e190422190442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190421190439%_))))
                                (let ((_%hd190423190445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190422190442%_)))
                                      (_%tl190424190447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190422190442%_))))
                                  ((lambda (_%g190417190450%_
                                            _%g190418190451%_)
                                     (let* ((_%ctx190464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g190418190451%_)))
                                            (_%code190466%_
                                             (##structure-ref
                                              _%ctx190464%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code190469%_
                                             (let ((__tmp191790
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self190412%_
                                                       _%code190466%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp191790
                                                gx#current-expander-context
                                                _%ctx190464%_))))
                                       (##structure-set!
                                        _%ctx190464%_
                                        _%code190469%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g190418190451%_
                                                    (cons _%code190469%_ '())))
                                        _%stx190413%_)))
                                   _%tl190424190447%_
                                   _%hd190423190445%_)))
                              (_%g190415190429%_ _%g190416190432%_))))
                      (_%g190415190429%_ _%g190416190432%_)))))
          (_%g190414190472%_ _%stx190413%_))))
    (define gxc#xform-define-values%
      (lambda (_%self190342%_ _%stx190343%_)
        (let* ((_%g190345190362%_
                (lambda (_%g190346190359%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190346190359%_))))
               (_%g190344190409%_
                (lambda (_%g190346190365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190346190365%_))
                      (let ((_%e190349190367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190346190365%_))))
                        (let ((_%hd190350190370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190349190367%_)))
                              (_%tl190351190372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190349190367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190351190372%_))
                              (let ((_%e190352190375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190351190372%_))))
                                (let ((_%hd190353190378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190352190375%_)))
                                      (_%tl190354190380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190352190375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190354190380%_))
                                      (let ((_%e190355190383%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190354190380%_))))
                                        (let ((_%hd190356190386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190355190383%_)))
                                              (_%tl190357190388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190355190383%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190357190388%_))
                                              ((lambda (_%g190347190391%_
                                                        _%g190348190392%_)
                                                 (let ((_%expr190407%_
                                                        (gxc#compile-e__1
                                                         _%self190342%_
                                                         _%g190347190391%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g190348190392%_
                                                                (cons _%expr190407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190343%_)))
                                               _%hd190356190386%_
                                               _%hd190353190378%_)
                                              (_%g190345190362%_
                                               _%g190346190365%_))))
                                      (_%g190345190362%_ _%g190346190365%_))))
                              (_%g190345190362%_ _%g190346190365%_))))
                      (_%g190345190362%_ _%g190346190365%_)))))
          (_%g190344190409%_ _%stx190343%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self190271%_ _%stx190272%_)
        (let* ((_%g190274190291%_
                (lambda (_%g190275190288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190275190288%_))))
               (_%g190273190339%_
                (lambda (_%g190275190294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190275190294%_))
                      (let ((_%e190278190296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190275190294%_))))
                        (let ((_%hd190279190299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190278190296%_)))
                              (_%tl190280190301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190278190296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190280190301%_))
                              (let ((_%e190281190304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190280190301%_))))
                                (let ((_%hd190282190307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190281190304%_)))
                                      (_%tl190283190309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190281190304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190283190309%_))
                                      (let ((_%e190284190312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190283190309%_))))
                                        (let ((_%hd190285190315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190284190312%_)))
                                              (_%tl190286190317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190284190312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190286190317%_))
                                              ((lambda (_%g190276190320%_
                                                        _%g190277190321%_)
                                                 (let ((__tmp191793
                                                        (lambda ()
                                                          (let ((_%expr190337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self190271%_ _%g190276190320%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g190277190321%_ (cons _%expr190337%_ '())))
                     _%stx190272%_))))
               (__tmp191791
                (let ((__tmp191792
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191792 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191793
                                                    gx#current-expander-phi
                                                    __tmp191791)))
                                               _%hd190285190315%_
                                               _%hd190282190307%_)
                                              (_%g190274190291%_
                                               _%g190275190294%_))))
                                      (_%g190274190291%_ _%g190275190294%_))))
                              (_%g190274190291%_ _%g190275190294%_))))
                      (_%g190274190291%_ _%g190275190294%_)))))
          (_%g190273190339%_ _%stx190272%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self190201%_ _%stx190202%_)
        (let* ((_%g190204190221%_
                (lambda (_%g190205190218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190205190218%_))))
               (_%g190203190268%_
                (lambda (_%g190205190224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190205190224%_))
                      (let ((_%e190208190226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190205190224%_))))
                        (let ((_%hd190209190229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190208190226%_)))
                              (_%tl190210190231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190208190226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190210190231%_))
                              (let ((_%e190211190234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190210190231%_))))
                                (let ((_%hd190212190237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190211190234%_)))
                                      (_%tl190213190239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190211190234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190213190239%_))
                                      (let ((_%e190214190242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190213190239%_))))
                                        (let ((_%hd190215190245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190214190242%_)))
                                              (_%tl190216190247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190214190242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190216190247%_))
                                              ((lambda (_%g190206190250%_
                                                        _%g190207190251%_)
                                                 (let ((_%expr190266%_
                                                        (gxc#compile-e__1
                                                         _%self190201%_
                                                         _%g190206190250%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g190207190251%_
                                                                (cons _%expr190266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190202%_)))
                                               _%hd190215190245%_
                                               _%hd190212190237%_)
                                              (_%g190204190221%_
                                               _%g190205190224%_))))
                                      (_%g190204190221%_ _%g190205190224%_))))
                              (_%g190204190221%_ _%g190205190224%_))))
                      (_%g190204190221%_ _%g190205190224%_)))))
          (_%g190203190268%_ _%stx190202%_))))
    (define gxc#xform-lambda%
      (lambda (_%self190139%_ _%stx190140%_)
        (let* ((_%g190142190156%_
                (lambda (_%g190143190153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190143190153%_))))
               (_%g190141190198%_
                (lambda (_%g190143190159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190143190159%_))
                      (let ((_%e190146190161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190143190159%_))))
                        (let ((_%hd190147190164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190146190161%_)))
                              (_%tl190148190166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190146190161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190148190166%_))
                              (let ((_%e190149190169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190148190166%_))))
                                (let ((_%hd190150190172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190149190169%_)))
                                      (_%tl190151190174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190149190169%_))))
                                  ((lambda (_%g190144190177%_
                                            _%g190145190178%_)
                                     (let ((__tmp191795
                                            (lambda ()
                                              (let ((_%body190196%_
                                                     (map (lambda (_%g190191190193%_)
                                                            (gxc#compile-e__1
                                                             _%self190139%_
                                                             _%g190191190193%_))
                                                          _%g190144190177%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g190145190178%_
                                                             _%body190196%_))
                                                 _%stx190140%_))))
                                           (__tmp191794
                                            (gxc#xform-let-locals
                                             _%g190145190178%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191795
                                        gxc#current-compile-local-env
                                        __tmp191794)))
                                   _%tl190151190174%_
                                   _%hd190150190172%_)))
                              (_%g190142190156%_ _%g190143190159%_))))
                      (_%g190142190156%_ _%g190143190159%_)))))
          (_%g190141190198%_ _%stx190140%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self190047%_ _%stx190048%_)
        (letrec ((_%clause-e190050%_
                  (lambda (_%clause190091%_)
                    (let* ((_%g190093190104%_
                            (lambda (_%g190094190101%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g190094190101%_))))
                           (_%g190092190136%_
                            (lambda (_%g190094190107%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g190094190107%_))
                                  (let ((_%e190097190109%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g190094190107%_))))
                                    (let ((_%hd190098190112%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190097190109%_)))
                                          (_%tl190099190114%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190097190109%_))))
                                      ((lambda (_%g190095190117%_
                                                _%g190096190118%_)
                                         (let ((__tmp191797
                                                (lambda ()
                                                  (let ((_%body190134%_
                                                         (map (lambda (_%g190129190131%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self190047%_
                         _%g190129190131%_))
                      _%g190095190117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g190096190118%_
                                                          _%body190134%_))))
                                               (__tmp191796
                                                (gxc#xform-let-locals
                                                 _%g190096190118%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp191797
                                            gxc#current-compile-local-env
                                            __tmp191796)))
                                       _%tl190099190114%_
                                       _%hd190098190112%_)))
                                  (_%g190093190104%_ _%g190094190107%_)))))
                      (_%g190092190136%_ _%clause190091%_)))))
          (let* ((_%g190052190062%_
                  (lambda (_%g190053190059%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g190053190059%_))))
                 (_%g190051190088%_
                  (lambda (_%g190053190065%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g190053190065%_))
                        (let ((_%e190055190067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g190053190065%_))))
                          (let ((_%hd190056190070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190055190067%_)))
                                (_%tl190057190072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190055190067%_))))
                            ((lambda (_%g190054190075%_)
                               (let ((_%clauses190086%_
                                      (map _%clause-e190050%_
                                           _%g190054190075%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses190086%_)
                                  _%stx190048%_)))
                             _%tl190057190072%_)))
                        (_%g190052190062%_ _%g190053190065%_)))))
            (_%g190051190088%_ _%stx190048%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self189807%_ _%stx189808%_)
        (let* ((_%g189810189843%_
                (lambda (_%g189811189840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189811189840%_))))
               (_%g189809190044%_
                (lambda (_%g189811189846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189811189846%_))
                      (let ((_%e189816189848%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189811189846%_))))
                        (let ((_%hd189817189851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189816189848%_)))
                              (_%tl189818189853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189816189848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189818189853%_))
                              (let ((_%e189819189856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189818189853%_))))
                                (let ((_%hd189820189859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189819189856%_)))
                                      (_%tl189821189861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189819189856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189820189859%_))
                                      (let ((_g191798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189820189859%_
                                                '0))))
                                        (begin
                                          (let ((_g191799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191798_)
                                                       (##values-length
                                                        _g191798_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191799_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191799_)))
                                          (let ((_%target189822189864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191798_ 0)))
                                                (_%tl189824189866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191798_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189824189866%_))
                                                (letrec ((_%loop189825189869%_
                                                          (lambda (_%hd189823189872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189829189874%_
                           _%hd189830189875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189823189872%_))
                        (let ((_%e189826189877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189823189872%_))))
                          (let ((_%lp-hd189827189880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189826189877%_)))
                                (_%lp-tl189828189882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189826189877%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189827189880%_))
                                (let ((_%e189833189885%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189827189880%_))))
                                  (let ((_%hd189834189888%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189833189885%_)))
                                        (_%tl189835189890%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189833189885%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189835189890%_))
                                        (let ((_%e189836189893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189835189890%_))))
                                          (let ((_%hd189837189896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189836189893%_)))
                                                (_%tl189838189898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189836189893%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189838189898%_))
                                                (_%loop189825189869%_
                                                 _%lp-tl189828189882%_
                                                 (cons _%hd189837189896%_
                                                       _%expr189829189874%_)
                                                 (cons _%hd189834189888%_
                                                       _%hd189830189875%_))
                                                (_%g189810189843%_
                                                 _%g189811189846%_))))
                                        (_%g189810189843%_
                                         _%g189811189846%_))))
                                (_%g189810189843%_ _%g189811189846%_))))
                        (let ((_%expr189831189901%_
                               (reverse _%expr189829189874%_))
                              (_%hd189832189902%_
                               (reverse _%hd189830189875%_)))
                          ((lambda (_%g189812189904%_
                                    _%g189813189905%_
                                    _%g189814189906%_
                                    _%g189815189907%_)
                             (let* ((_%g189926189942%_
                                     (lambda (_%g189927189939%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g189927189939%_))))
                                    (_%g189925190030%_
                                     (lambda (_%g189927189945%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g189927189945%_))
                                           (let ((_g191800_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g189927189945%_
                                                     '0))))
                                             (begin
                                               (let ((_g191801_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g191800_)
                                                            (##values-length
                                                             _g191800_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g191801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g191801_)))
                                               (let ((_%target189929189947%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191800_
                                                         0)))
                                                     (_%tl189931189949%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191800_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl189931189949%_))
                                                     (letrec ((_%loop189932189952%_
                                                               (lambda (_%hd189930189955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr189936189957%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd189930189955%_))
                             (let ((_%e189933189959%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd189930189955%_))))
                               (let ((_%lp-hd189934189962%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e189933189959%_)))
                                     (_%lp-tl189935189964%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e189933189959%_))))
                                 (_%loop189932189952%_
                                  _%lp-tl189935189964%_
                                  (cons _%lp-hd189934189962%_
                                        _%expr189936189957%_))))
                             (let ((_%expr189937189967%_
                                    (reverse _%expr189936189957%_)))
                               ((lambda (_%g189928189969%_)
                                  (let ((__tmp191804
                                         (lambda ()
                                           (let* ((_%g189983189990%_
                                                   (lambda (_%g189984189987%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189984189987%_))))
                                                  (_%g189982190016%_
                                                   (lambda (_%g189984189993%_)
                                                     ((lambda (_%g189985189995%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189815189907%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189928189969%_
                                  _%g189814189906%_))
                               (let ((__tmp191805
                                      (lambda (_%g190005190009%_
                                               _%g190006190011%_
                                               _%g190007190013%_)
                                        (cons (cons _%g190006190011%_
                                                    (cons _%g190005190009%_
                                                          '()))
                                              _%g190007190013%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191805
                                  '()
                                  _%g189928189969%_
                                  _%g189814189906%_)))
                             _%g189985189995%_))
                 _%stx189808%_))
              _%g189984189993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189982190016%_
                                              (map (lambda (_%g190018190020%_)
                                                     (gxc#compile-e__1
                                                      _%self189807%_
                                                      _%g190018190020%_))
                                                   _%g189812189904%_)))))
                                        (__tmp191802
                                         (gxc#xform-let-locals
                                          (let ((__tmp191803
                                                 (lambda (_%g190022190025%_
                                                          _%g190023190027%_)
                                                   (cons _%g190022190025%_
                                                         _%g190023190027%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191803
                                             '()
                                             _%g189814189906%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp191804
                                     gxc#current-compile-local-env
                                     __tmp191802)))
                                _%expr189937189967%_))))))
               (_%loop189932189952%_ _%target189929189947%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g189926189942%_
                                                      _%g189927189945%_)))))
                                           (_%g189926189942%_
                                            _%g189927189945%_)))))
                               (_%g189925190030%_
                                (map (lambda (_%g190032190034%_)
                                       (gxc#compile-e__1
                                        _%self189807%_
                                        _%g190032190034%_))
                                     (let ((__tmp191806
                                            (lambda (_%g190036190039%_
                                                     _%g190037190041%_)
                                              (cons _%g190036190039%_
                                                    _%g190037190041%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191806
                                        '()
                                        _%g189813189905%_))))))
                           _%tl189821189861%_
                           _%expr189831189901%_
                           _%hd189832189902%_
                           _%hd189817189851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189825189869%_
                                                   _%target189822189864%_
                                                   '()
                                                   '()))
                                                (_%g189810189843%_
                                                 _%g189811189846%_)))))
                                      (_%g189810189843%_ _%g189811189846%_))))
                              (_%g189810189843%_ _%g189811189846%_))))
                      (_%g189810189843%_ _%g189811189846%_)))))
          (_%g189809190044%_ _%stx189808%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self189567%_ _%stx189568%_)
        (let* ((_%g189570189603%_
                (lambda (_%g189571189600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189571189600%_))))
               (_%g189569189804%_
                (lambda (_%g189571189606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189571189606%_))
                      (let ((_%e189576189608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189571189606%_))))
                        (let ((_%hd189577189611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189576189608%_)))
                              (_%tl189578189613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189576189608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189578189613%_))
                              (let ((_%e189579189616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189578189613%_))))
                                (let ((_%hd189580189619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189579189616%_)))
                                      (_%tl189581189621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189579189616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189580189619%_))
                                      (let ((_g191807_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189580189619%_
                                                '0))))
                                        (begin
                                          (let ((_g191808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191807_)
                                                       (##values-length
                                                        _g191807_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191808_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191808_)))
                                          (let ((_%target189582189624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191807_ 0)))
                                                (_%tl189584189626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191807_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189584189626%_))
                                                (letrec ((_%loop189585189629%_
                                                          (lambda (_%hd189583189632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189589189634%_
                           _%hd189590189635%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189583189632%_))
                        (let ((_%e189586189637%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189583189632%_))))
                          (let ((_%lp-hd189587189640%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189586189637%_)))
                                (_%lp-tl189588189642%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189586189637%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189587189640%_))
                                (let ((_%e189593189645%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189587189640%_))))
                                  (let ((_%hd189594189648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189593189645%_)))
                                        (_%tl189595189650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189593189645%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189595189650%_))
                                        (let ((_%e189596189653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189595189650%_))))
                                          (let ((_%hd189597189656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189596189653%_)))
                                                (_%tl189598189658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189596189653%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189598189658%_))
                                                (_%loop189585189629%_
                                                 _%lp-tl189588189642%_
                                                 (cons _%hd189597189656%_
                                                       _%expr189589189634%_)
                                                 (cons _%hd189594189648%_
                                                       _%hd189590189635%_))
                                                (_%g189570189603%_
                                                 _%g189571189606%_))))
                                        (_%g189570189603%_
                                         _%g189571189606%_))))
                                (_%g189570189603%_ _%g189571189606%_))))
                        (let ((_%expr189591189661%_
                               (reverse _%expr189589189634%_))
                              (_%hd189592189662%_
                               (reverse _%hd189590189635%_)))
                          ((lambda (_%g189572189664%_
                                    _%g189573189665%_
                                    _%g189574189666%_
                                    _%g189575189667%_)
                             (let ((__tmp191811
                                    (lambda ()
                                      (let* ((_%g189687189703%_
                                              (lambda (_%g189688189700%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g189688189700%_))))
                                             (_%g189686189783%_
                                              (lambda (_%g189688189706%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g189688189706%_))
                                                    (let ((_g191812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g189688189706%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g191813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g191812_)
                             (##values-length _g191812_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g191813_ 2)))
                      (error "Context expects 2 values" _g191813_)))
                (let ((_%target189690189708%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191812_ 0)))
                      (_%tl189692189710%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191812_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189692189710%_))
                      (letrec ((_%loop189693189713%_
                                (lambda (_%hd189691189716%_
                                         _%expr189697189718%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189691189716%_))
                                      (let ((_%e189694189720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd189691189716%_))))
                                        (let ((_%lp-hd189695189723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189694189720%_)))
                                              (_%lp-tl189696189725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189694189720%_))))
                                          (_%loop189693189713%_
                                           _%lp-tl189696189725%_
                                           (cons _%lp-hd189695189723%_
                                                 _%expr189697189718%_))))
                                      (let ((_%expr189698189728%_
                                             (reverse _%expr189697189718%_)))
                                        ((lambda (_%g189689189730%_)
                                           (let* ((_%g189744189751%_
                                                   (lambda (_%g189745189748%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189745189748%_))))
                                                  (_%g189743189776%_
                                                   (lambda (_%g189745189754%_)
                                                     ((lambda (_%g189746189756%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189575189667%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189689189730%_
                                  _%g189574189666%_))
                               (let ((__tmp191814
                                      (lambda (_%g189765189769%_
                                               _%g189766189771%_
                                               _%g189767189773%_)
                                        (cons (cons _%g189766189771%_
                                                    (cons _%g189765189769%_
                                                          '()))
                                              _%g189767189773%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191814
                                  '()
                                  _%g189689189730%_
                                  _%g189574189666%_)))
                             _%g189746189756%_))
                 _%stx189568%_))
              _%g189745189754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189743189776%_
                                              (map (lambda (_%g189778189780%_)
                                                     (gxc#compile-e__1
                                                      _%self189567%_
                                                      _%g189778189780%_))
                                                   _%g189572189664%_))))
                                         _%expr189698189728%_))))))
                        (_%loop189693189713%_ _%target189690189708%_ '()))
                      (_%g189687189703%_ _%g189688189706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g189687189703%_
                                                     _%g189688189706%_)))))
                                        (_%g189686189783%_
                                         (map (lambda (_%g189785189787%_)
                                                (gxc#compile-e__1
                                                 _%self189567%_
                                                 _%g189785189787%_))
                                              (let ((__tmp191815
                                                     (lambda (_%g189789189792%_
                                                              _%g189790189794%_)
                                                       (cons _%g189789189792%_
                                                             _%g189790189794%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp191815
                                                 '()
                                                 _%g189573189665%_)))))))
                                   (__tmp191809
                                    (gxc#xform-let-locals
                                     (let ((__tmp191810
                                            (lambda (_%g189796189799%_
                                                     _%g189797189801%_)
                                              (cons _%g189796189799%_
                                                    _%g189797189801%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191810
                                        '()
                                        _%g189574189666%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191811
                                gxc#current-compile-local-env
                                __tmp191809)))
                           _%tl189581189621%_
                           _%expr189591189661%_
                           _%hd189592189662%_
                           _%hd189577189611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189585189629%_
                                                   _%target189582189624%_
                                                   '()
                                                   '()))
                                                (_%g189570189603%_
                                                 _%g189571189606%_)))))
                                      (_%g189570189603%_ _%g189571189606%_))))
                              (_%g189570189603%_ _%g189571189606%_))))
                      (_%g189570189603%_ _%g189571189606%_)))))
          (_%g189569189804%_ _%stx189568%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings189434%_)
        (letrec ((_%flatten189436%_
                  (lambda (_%maybe-lst189494%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst189494%_))
                        (cons _%maybe-lst189494%_ '())
                        (let _%loop189496%_ ((_%rest189498%_
                                              _%maybe-lst189494%_)
                                             (_%result189499%_ '()))
                          (let* ((_%__stx191703191704%_ _%rest189498%_)
                                 (_%g189503189515%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx191703191704%_)))))
                            (let ((_%__kont191705191706%_
                                   (lambda (_%g189505189553%_
                                            _%g189506189554%_)
                                     (_%loop189496%_
                                      _%g189505189553%_
                                      (let ((__tmp191816
                                             (_%flatten189436%_
                                              _%g189506189554%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result189499%_
                                         __tmp191816)))))
                                  (_%__kont191707191708%_
                                   (lambda (_%g189510189527%_)
                                     (cons _%g189510189527%_
                                           _%result189499%_)))
                                  (_%__kont191709191710%_
                                   (lambda () _%result189499%_)))
                              (let ((_%g189501189540%_
                                     (lambda ()
                                       (let ((_%g189510189527%_
                                              _%__stx191703191704%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g189510189527%_))
                                             (_%__kont191707191708%_
                                              _%g189510189527%_)
                                             (_%__kont191709191710%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx191703191704%_))
                                    (let ((_%e189507189545%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx191703191704%_))))
                                      (let ((_%tl189509189550%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189507189545%_)))
                                            (_%hd189508189548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189507189545%_))))
                                        (_%__kont191705191706%_
                                         _%tl189509189550%_
                                         _%hd189508189548%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g189501189540%_)))))))))))
          (let _%loop189438%_ ((_%rest189440%_
                                (_%flatten189436%_ _%bindings189434%_))
                               (_%locals189441%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest189442189453%_ _%rest189440%_)
                   (_%E189446189457%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest189442189453%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K189449189482%_
                     (lambda (_%rest189479%_ _%id189480%_)
                       (_%loop189438%_
                        _%rest189479%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id189480%_))
                              _%locals189441%_))))
                    (_%K189448189471%_
                     (lambda (_%id189469%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id189469%_))
                             _%locals189441%_)))
                    (_%K189447189462%_ (lambda () _%locals189441%_)))
                (let ((_%try-match189444189476%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest189442189453%_))
                             (let ((_%id189474%_ _%rest189442189453%_))
                               (_%K189448189471%_ _%id189474%_))
                             (_%K189447189462%_)))))
                  (if (pair? _%rest189442189453%_)
                      (let ((_%tl189451189487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest189442189453%_)))
                            (_%hd189450189485%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest189442189453%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd189450189485%_))
                            (let ((_%id189490%_ _%hd189450189485%_)
                                  (_%rest189492%_ _%tl189451189487%_))
                              (_%K189449189482%_ _%rest189492%_ _%id189490%_))
                            (_%K189447189462%_)))
                      (_%try-match189444189476%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self189386%_ _%stx189387%_)
        (let* ((_%g189389189400%_
                (lambda (_%g189390189397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189390189397%_))))
               (_%g189388189431%_
                (lambda (_%g189390189403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189390189403%_))
                      (let ((_%e189393189405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189390189403%_))))
                        (let ((_%hd189394189408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189393189405%_)))
                              (_%tl189395189410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189393189405%_))))
                          ((lambda (_%g189391189413%_ _%g189392189414%_)
                             (let ((_%rands189429%_
                                    (map (lambda (_%g189424189426%_)
                                           (gxc#compile-e__1
                                            _%self189386%_
                                            _%g189424189426%_))
                                         _%g189391189413%_)))
                               (gxc#xform-wrap-source
                                (cons _%g189392189414%_ _%rands189429%_)
                                _%stx189387%_)))
                           _%tl189395189410%_
                           _%hd189394189408%_)))
                      (_%g189389189400%_ _%g189390189403%_)))))
          (_%g189388189431%_ _%stx189387%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self189316%_ _%stx189317%_)
        (let* ((_%g189319189336%_
                (lambda (_%g189320189333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189320189333%_))))
               (_%g189318189383%_
                (lambda (_%g189320189339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189320189339%_))
                      (let ((_%e189323189341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189320189339%_))))
                        (let ((_%hd189324189344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189323189341%_)))
                              (_%tl189325189346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189323189341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189325189346%_))
                              (let ((_%e189326189349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189325189346%_))))
                                (let ((_%hd189327189352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189326189349%_)))
                                      (_%tl189328189354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189326189349%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189328189354%_))
                                      (let ((_%e189329189357%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189328189354%_))))
                                        (let ((_%hd189330189360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189329189357%_)))
                                              (_%tl189331189362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189329189357%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189331189362%_))
                                              ((lambda (_%g189321189365%_
                                                        _%g189322189366%_)
                                                 (let ((_%expr189381%_
                                                        (gxc#compile-e__1
                                                         _%self189316%_
                                                         _%g189321189365%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g189322189366%_
                                                                (cons _%expr189381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx189317%_)))
                                               _%hd189330189360%_
                                               _%hd189327189352%_)
                                              (_%g189319189336%_
                                               _%g189320189339%_))))
                                      (_%g189319189336%_ _%g189320189339%_))))
                              (_%g189319189336%_ _%g189320189339%_))))
                      (_%g189319189336%_ _%g189320189339%_)))))
          (_%g189318189383%_ _%stx189317%_))))))
