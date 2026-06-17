(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1781697564)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx199639%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp199861
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx199639%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp199861))
            '#!void)
        (let* ((_%self199641%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e199643%_
                (let ((__tmp199862 (gxc#stx-car-e _%stx199639%_)))
                  (declare (not safe))
                  (method-ref _%self199641%_ __tmp199862))))
          (if _%$e199643%_
              (let ()
                (declare (not safe))
                (let ((_%$e199649%_ (gx#stx-source _%stx199639%_)))
                  (if _%$e199649%_
                      (call-with-parameters__1
                       (lambda () (_%$e199643%_ _%self199641%_ _%stx199639%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e199649%_ '()))
                             (let ((_%$e199656%_
                                    (gxc#current-compile-context)))
                               (if _%$e199656%_ _%$e199656%_ '()))))
                      (_%$e199643%_ _%self199641%_ _%stx199639%_))))
              (let ((__tmp199864 (gxc#stx-car-e _%stx199639%_))
                    (__tmp199863
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx199639%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self199641%_
                       __tmp199864
                       __tmp199863))))))
    (define gxc#compile-e__1
      (lambda (_%self199661%_ _%stx199662%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp199865
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx199662%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp199865))
            '#!void)
        (let ((_%$e199664%_
               (let ((__tmp199866 (gxc#stx-car-e _%stx199662%_)))
                 (declare (not safe))
                 (method-ref _%self199661%_ __tmp199866))))
          (if _%$e199664%_
              (let ()
                (declare (not safe))
                (let ((_%$e199670%_ (gx#stx-source _%stx199662%_)))
                  (if _%$e199670%_
                      (call-with-parameters__1
                       (lambda () (_%$e199664%_ _%self199661%_ _%stx199662%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e199670%_ '()))
                             (let ((_%$e199677%_
                                    (gxc#current-compile-context)))
                               (if _%$e199677%_ _%$e199677%_ '()))))
                      (_%$e199664%_ _%self199661%_ _%stx199662%_))))
              (let ((__tmp199868 (gxc#stx-car-e _%stx199662%_))
                    (__tmp199867
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx199662%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self199661%_
                       __tmp199868
                       __tmp199867))))))
    (define gxc#compile-e
      (lambda _g199869_
        (let ((_g199870_ (let () (declare (not safe)) (##length _g199869_))))
          (cond ((let () (declare (not safe)) (##fx= _g199870_ 1))
                 (apply gxc#compile-e__0 _g199869_))
                ((let () (declare (not safe)) (##fx= _g199870_ 2))
                 (apply gxc#compile-e__1 _g199869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g199869_))))))
    (define gxc#stx-car-e
      (lambda (_%stx199637%_)
        (let ((__tmp199871
               (car (let () (declare (not safe)) (gx#stx-e _%stx199637%_)))))
          (declare (not safe))
          (gx#stx-e __tmp199871))))
    (define gxc#void-method (lambda (_%self199634%_ _%stx199635%_) '#!void))
    (define gxc#false-method (lambda (_%self199631%_ _%stx199632%_) '#f))
    (define gxc#true-method (lambda (_%self199628%_ _%stx199629%_) '#t))
    (define gxc#identity-method
      (lambda (_%self199625%_ _%stx199626%_) _%stx199626%_))
    (define gxc#::void-expression::t
      (let ((__tmp199872 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp199872
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args199622%_
        (apply make-instance gxc#::void-expression::t _%$args199622%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp199873
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
        (__make-atomic-promise __tmp199873)))
    (define gxc#::void-special-form::t
      (let ((__tmp199874 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp199874
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args199618%_
        (apply make-instance gxc#::void-special-form::t _%$args199618%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp199875
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
                  '%#define-runtime
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp199875)))
    (define gxc#::void::t
      (let ((__tmp199876
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp199876 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args199614%_
        (apply make-instance gxc#::void::t _%$args199614%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp199877
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp199877)))
    (define gxc#::false-expression::t
      (let ((__tmp199878 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp199878
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args199610%_
        (apply make-instance gxc#::false-expression::t _%$args199610%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp199879
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
        (__make-atomic-promise __tmp199879)))
    (define gxc#::false-special-form::t
      (let ((__tmp199880 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp199880
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args199606%_
        (apply make-instance gxc#::false-special-form::t _%$args199606%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp199881
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
                  '%#define-runtime
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp199881)))
    (define gxc#::false::t
      (let ((__tmp199882
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp199882 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args199602%_
        (apply make-instance gxc#::false::t _%$args199602%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp199883
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp199883)))
    (define gxc#::identity-expression::t
      (let ((__tmp199884 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp199884
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args199598%_
        (apply make-instance gxc#::identity-expression::t _%$args199598%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp199885
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
        (__make-atomic-promise __tmp199885)))
    (define gxc#::identity-special-form::t
      (let ((__tmp199886 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp199886
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args199594%_
        (apply make-instance gxc#::identity-special-form::t _%$args199594%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp199887
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
                  '%#define-runtime
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp199887)))
    (define gxc#::identity::t
      (let ((__tmp199888
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp199888
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args199590%_
        (apply make-instance gxc#::identity::t _%$args199590%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp199889
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp199889)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp199890 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp199890
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args199586%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args199586%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp199891
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
        (__make-atomic-promise __tmp199891)))
    (define gxc#::basic-xform::t
      (let ((__tmp199892
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp199892
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args199582%_
        (apply make-instance gxc#::basic-xform::t _%$args199582%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp199893
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
        (__make-atomic-promise __tmp199893)))
    (define gxc#apply-begin%
      (lambda (_%self199538%_ _%stx199539%_)
        (let* ((_%$%g199541199551%_
                (lambda (_%$%g199542199548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199542199548%_))))
               (_%$%g199540199578%_
                (lambda (_%$%g199542199554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199542199554%_))
                      (let ((_%$%e199544199556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199542199554%_))))
                        (let ((_%$%hd199545199559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199544199556%_)))
                              (_%$%tl199546199561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199544199556%_))))
                          (for-each
                           (lambda (_%$%g199573199575%_)
                             (gxc#compile-e__1
                              _%self199538%_
                              _%$%g199573199575%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl199546199561%_)))))
                      (_%$%g199541199551%_ _%$%g199542199554%_)))))
          (_%$%g199540199578%_ _%stx199539%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self199499%_ _%stx199500%_)
        (let* ((_%$%g199502199512%_
                (lambda (_%$%g199503199509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199503199509%_))))
               (_%$%g199501199535%_
                (lambda (_%$%g199503199515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199503199515%_))
                      (let ((_%$%e199505199517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199503199515%_))))
                        (let ((_%$%hd199506199520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199505199517%_)))
                              (_%$%tl199507199522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199505199517%_))))
                          (gxc#compile-e__1
                           _%self199499%_
                           (last _%$%tl199507199522%_))))
                      (_%$%g199502199512%_ _%$%g199503199515%_)))))
          (_%$%g199501199535%_ _%stx199500%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self199495%_ _%stx199496%_)
        (let ((__tmp199896
               (lambda () (gxc#apply-begin% _%self199495%_ _%stx199496%_)))
              (__tmp199894
               (let ((__tmp199895
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp199895 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp199896
           gx#current-expander-phi
           __tmp199894))))
    (define gxc#apply-module%
      (lambda (_%self199434%_ _%stx199435%_)
        (let* ((_%$%g199437199451%_
                (lambda (_%$%g199438199448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199438199448%_))))
               (_%$%g199436199492%_
                (lambda (_%$%g199438199454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199438199454%_))
                      (let ((_%$%e199441199456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199438199454%_))))
                        (let ((_%$%hd199442199459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199441199456%_)))
                              (_%$%tl199443199461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199441199456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199443199461%_))
                              (let ((_%$%e199444199464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199443199461%_))))
                                (let ((_%$%hd199445199467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199444199464%_)))
                                      (_%$%tl199446199469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199444199464%_))))
                                  (let* ((_%ctx199486%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd199445199467%_)))
                                         (_%ctx-stx199488%_
                                          (##structure-ref
                                           _%ctx199486%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp199897
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self199434%_
                                             _%ctx-stx199488%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp199897
                                     gx#current-expander-context
                                     _%ctx199486%_))))
                              (_%$%g199437199451%_ _%$%g199438199454%_))))
                      (_%$%g199437199451%_ _%$%g199438199454%_)))))
          (_%$%g199436199492%_ _%stx199435%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self199366%_ _%stx199367%_)
        (let* ((_%$%g199369199386%_
                (lambda (_%$%g199370199383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199370199383%_))))
               (_%$%g199368199431%_
                (lambda (_%$%g199370199389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199370199389%_))
                      (let ((_%$%e199373199391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199370199389%_))))
                        (let ((_%$%hd199374199394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199373199391%_)))
                              (_%$%tl199375199396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199373199391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199375199396%_))
                              (let ((_%$%e199376199399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199375199396%_))))
                                (let ((_%$%hd199377199402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199376199399%_)))
                                      (_%$%tl199378199404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199376199399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199378199404%_))
                                      (let ((_%$%e199379199407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199378199404%_))))
                                        (let ((_%$%hd199380199410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199379199407%_)))
                                              (_%$%tl199381199412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199379199407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199381199412%_))
                                              (gxc#compile-e__1
                                               _%self199366%_
                                               _%$%hd199380199410%_)
                                              (_%$%g199369199386%_
                                               _%$%g199370199389%_))))
                                      (_%$%g199369199386%_
                                       _%$%g199370199389%_))))
                              (_%$%g199369199386%_ _%$%g199370199389%_))))
                      (_%$%g199369199386%_ _%$%g199370199389%_)))))
          (_%$%g199368199431%_ _%stx199367%_))))
    (define gxc#apply-define-values%
      (lambda (_%self199298%_ _%stx199299%_)
        (let* ((_%$%g199301199318%_
                (lambda (_%$%g199302199315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199302199315%_))))
               (_%$%g199300199363%_
                (lambda (_%$%g199302199321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199302199321%_))
                      (let ((_%$%e199305199323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199302199321%_))))
                        (let ((_%$%hd199306199326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199305199323%_)))
                              (_%$%tl199307199328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199305199323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199307199328%_))
                              (let ((_%$%e199308199331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199307199328%_))))
                                (let ((_%$%hd199309199334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199308199331%_)))
                                      (_%$%tl199310199336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199308199331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199310199336%_))
                                      (let ((_%$%e199311199339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199310199336%_))))
                                        (let ((_%$%hd199312199342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199311199339%_)))
                                              (_%$%tl199313199344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199311199339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199313199344%_))
                                              (gxc#compile-e__1
                                               _%self199298%_
                                               _%$%hd199312199342%_)
                                              (_%$%g199301199318%_
                                               _%$%g199302199321%_))))
                                      (_%$%g199301199318%_
                                       _%$%g199302199321%_))))
                              (_%$%g199301199318%_ _%$%g199302199321%_))))
                      (_%$%g199301199318%_ _%$%g199302199321%_)))))
          (_%$%g199300199363%_ _%stx199299%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self199229%_ _%stx199230%_)
        (let* ((_%$%g199232199249%_
                (lambda (_%$%g199233199246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199233199246%_))))
               (_%$%g199231199295%_
                (lambda (_%$%g199233199252%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199233199252%_))
                      (let ((_%$%e199236199254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199233199252%_))))
                        (let ((_%$%hd199237199257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199236199254%_)))
                              (_%$%tl199238199259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199236199254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199238199259%_))
                              (let ((_%$%e199239199262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199238199259%_))))
                                (let ((_%$%hd199240199265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199239199262%_)))
                                      (_%$%tl199241199267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199239199262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199241199267%_))
                                      (let ((_%$%e199242199270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199241199267%_))))
                                        (let ((_%$%hd199243199273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199242199270%_)))
                                              (_%$%tl199244199275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199242199270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199244199275%_))
                                              (let ((__tmp199900
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self199229%_
                                                        _%$%hd199243199273%_)))
                                                    (__tmp199898
                                                     (let ((__tmp199899
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp199899
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp199900
                                                 gx#current-expander-phi
                                                 __tmp199898))
                                              (_%$%g199232199249%_
                                               _%$%g199233199252%_))))
                                      (_%$%g199232199249%_
                                       _%$%g199233199252%_))))
                              (_%$%g199232199249%_ _%$%g199233199252%_))))
                      (_%$%g199232199249%_ _%$%g199233199252%_)))))
          (_%$%g199231199295%_ _%stx199230%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self199161%_ _%stx199162%_)
        (let* ((_%$%g199164199181%_
                (lambda (_%$%g199165199178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199165199178%_))))
               (_%$%g199163199226%_
                (lambda (_%$%g199165199184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199165199184%_))
                      (let ((_%$%e199168199186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199165199184%_))))
                        (let ((_%$%hd199169199189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199168199186%_)))
                              (_%$%tl199170199191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199168199186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199170199191%_))
                              (let ((_%$%e199171199194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199170199191%_))))
                                (let ((_%$%hd199172199197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199171199194%_)))
                                      (_%$%tl199173199199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199171199194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199173199199%_))
                                      (let ((_%$%e199174199202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199173199199%_))))
                                        (let ((_%$%hd199175199205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199174199202%_)))
                                              (_%$%tl199176199207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199174199202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199176199207%_))
                                              (gxc#compile-e__1
                                               _%self199161%_
                                               _%$%hd199175199205%_)
                                              (_%$%g199164199181%_
                                               _%$%g199165199184%_))))
                                      (_%$%g199164199181%_
                                       _%$%g199165199184%_))))
                              (_%$%g199164199181%_ _%$%g199165199184%_))))
                      (_%$%g199164199181%_ _%$%g199165199184%_)))))
          (_%$%g199163199226%_ _%stx199162%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self199047%_ _%stx199048%_)
        (let* ((_%$%g199050199078%_
                (lambda (_%$%g199051199075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199051199075%_))))
               (_%$%g199049199158%_
                (lambda (_%$%g199051199081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199051199081%_))
                      (let ((_%$%e199054199083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199051199081%_))))
                        (let ((_%$%hd199055199086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199054199083%_)))
                              (_%$%tl199056199088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199054199083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl199056199088%_))
                              (let ((_g199901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl199056199088%_
                                        '0))))
                                (begin
                                  (let ((_g199902_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g199901_)
                                               (##values-length _g199901_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g199902_ 2)))
                                        (error "Context expects 2 values"
                                               _g199902_)))
                                  (let ((_%$%target199057199091%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g199901_ 0)))
                                        (_%$%tl199059199093%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g199901_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl199059199093%_))
                                        (letrec ((_%$%loop199060199096%_
                                                  (lambda (_%$%hd199058199099%_
                                                           _%$%body199064199101%_
                                                           _%$%hd199065199102%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd199058199099%_))
                                                        (let ((_%$%e199061199104%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd199058199099%_))))
                  (let ((_%$%lp-hd199062199107%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e199061199104%_)))
                        (_%$%lp-tl199063199109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e199061199104%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd199062199107%_))
                        (let ((_%$%e199068199112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd199062199107%_))))
                          (let ((_%$%hd199069199115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199068199112%_)))
                                (_%$%tl199070199117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199068199112%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl199070199117%_))
                                (let ((_%$%e199071199120%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl199070199117%_))))
                                  (let ((_%$%hd199072199123%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199071199120%_)))
                                        (_%$%tl199073199125%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199071199120%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl199073199125%_))
                                        (_%$%loop199060199096%_
                                         _%$%lp-tl199063199109%_
                                         (cons _%$%hd199072199123%_
                                               _%$%body199064199101%_)
                                         (cons _%$%hd199069199115%_
                                               _%$%hd199065199102%_))
                                        (_%$%g199050199078%_
                                         _%$%g199051199081%_))))
                                (_%$%g199050199078%_ _%$%g199051199081%_))))
                        (_%$%g199050199078%_ _%$%g199051199081%_))))
                (let ((_%$%body199066199128%_ (reverse _%$%body199064199101%_))
                      (_%$%hd199067199129%_ (reverse _%$%hd199065199102%_)))
                  (for-each
                   (lambda (_%$%g199146199148%_)
                     (gxc#compile-e__1 _%self199047%_ _%$%g199146199148%_))
                   (let ((__tmp199903
                          (lambda (_%$%g199150199153%_ _%$%g199151199155%_)
                            (cons _%$%g199150199153%_ _%$%g199151199155%_))))
                     (declare (not safe))
                     (foldr__0 __tmp199903 '() _%$%body199066199128%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop199060199096%_
                                           _%$%target199057199091%_
                                           '()
                                           '()))
                                        (_%$%g199050199078%_
                                         _%$%g199051199081%_)))))
                              (_%$%g199050199078%_ _%$%g199051199081%_))))
                      (_%$%g199050199078%_ _%$%g199051199081%_)))))
          (_%$%g199049199158%_ _%stx199048%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self198904%_ _%stx198905%_)
        (let* ((_%$%g198907198942%_
                (lambda (_%$%g198908198939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198908198939%_))))
               (_%$%g198906199044%_
                (lambda (_%$%g198908198945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198908198945%_))
                      (let ((_%$%e198912198947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198908198945%_))))
                        (let ((_%$%hd198913198950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198912198947%_)))
                              (_%$%tl198914198952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198912198947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198914198952%_))
                              (let ((_%$%e198915198955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198914198952%_))))
                                (let ((_%$%hd198916198958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198915198955%_)))
                                      (_%$%tl198917198960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198915198955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd198916198958%_))
                                      (let ((_g199904_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd198916198958%_
                                                '0))))
                                        (begin
                                          (let ((_g199905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199904_)
                                                       (##values-length
                                                        _g199904_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199905_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199905_)))
                                          (let ((_%$%target198918198963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199904_ 0)))
                                                (_%$%tl198920198965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199904_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl198920198965%_))
                                                (letrec ((_%$%loop198921198968%_
                                                          (lambda (_%$%hd198919198971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr198925198973%_
                           _%$%hd198926198974%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd198919198971%_))
                        (let ((_%$%e198922198976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd198919198971%_))))
                          (let ((_%$%lp-hd198923198979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198922198976%_)))
                                (_%$%lp-tl198924198981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198922198976%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd198923198979%_))
                                (let ((_%$%e198929198984%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd198923198979%_))))
                                  (let ((_%$%hd198930198987%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198929198984%_)))
                                        (_%$%tl198931198989%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198929198984%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl198931198989%_))
                                        (let ((_%$%e198932198992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl198931198989%_))))
                                          (let ((_%$%hd198933198995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e198932198992%_)))
                                                (_%$%tl198934198997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e198932198992%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl198934198997%_))
                                                (_%$%loop198921198968%_
                                                 _%$%lp-tl198924198981%_
                                                 (cons _%$%hd198933198995%_
                                                       _%$%expr198925198973%_)
                                                 (cons _%$%hd198930198987%_
                                                       _%$%hd198926198974%_))
                                                (_%$%g198907198942%_
                                                 _%$%g198908198945%_))))
                                        (_%$%g198907198942%_
                                         _%$%g198908198945%_))))
                                (_%$%g198907198942%_ _%$%g198908198945%_))))
                        (let ((_%$%expr198927199000%_
                               (reverse _%$%expr198925198973%_))
                              (_%$%hd198928199001%_
                               (reverse _%$%hd198926198974%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198917198960%_))
                              (let ((_%$%e198935199003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198917198960%_))))
                                (let ((_%$%hd198936199006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198935199003%_)))
                                      (_%$%tl198937199008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198935199003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl198937199008%_))
                                      (for-each
                                       (lambda (_%$%g199032199034%_)
                                         (gxc#compile-e__1
                                          _%self198904%_
                                          _%$%g199032199034%_))
                                       (let ((__tmp199907
                                              (lambda (_%$%g199036199039%_
                                                       _%$%g199037199041%_)
                                                (cons _%$%g199036199039%_
                                                      _%$%g199037199041%_)))
                                             (__tmp199906
                                              (cons _%$%hd198936199006%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp199907
                                          __tmp199906
                                          _%$%expr198927199000%_)))
                                      (_%$%g198907198942%_
                                       _%$%g198908198945%_))))
                              (_%$%g198907198942%_ _%$%g198908198945%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop198921198968%_
                                                   _%$%target198918198963%_
                                                   '()
                                                   '()))
                                                (_%$%g198907198942%_
                                                 _%$%g198908198945%_)))))
                                      (_%$%g198907198942%_
                                       _%$%g198908198945%_))))
                              (_%$%g198907198942%_ _%$%g198908198945%_))))
                      (_%$%g198907198942%_ _%$%g198908198945%_)))))
          (_%$%g198906199044%_ _%stx198905%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self198849%_ _%stx198850%_)
        (let* ((_%$%g198852198866%_
                (lambda (_%$%g198853198863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198853198863%_))))
               (_%$%g198851198901%_
                (lambda (_%$%g198853198869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198853198869%_))
                      (let ((_%$%e198856198871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198853198869%_))))
                        (let ((_%$%hd198857198874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198856198871%_)))
                              (_%$%tl198858198876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198856198871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198858198876%_))
                              (let ((_%$%e198859198879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198858198876%_))))
                                (let ((_%$%hd198860198882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198859198879%_)))
                                      (_%$%tl198861198884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198859198879%_))))
                                  (gxc#compile-e__1
                                   _%self198849%_
                                   (last _%$%tl198861198884%_))))
                              (_%$%g198852198866%_ _%$%g198853198869%_))))
                      (_%$%g198852198866%_ _%$%g198853198869%_)))))
          (_%$%g198851198901%_ _%stx198850%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self198781%_ _%stx198782%_)
        (let* ((_%$%g198784198801%_
                (lambda (_%$%g198785198798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198785198798%_))))
               (_%$%g198783198846%_
                (lambda (_%$%g198785198804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198785198804%_))
                      (let ((_%$%e198788198806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198785198804%_))))
                        (let ((_%$%hd198789198809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198788198806%_)))
                              (_%$%tl198790198811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198788198806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198790198811%_))
                              (let ((_%$%e198791198814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198790198811%_))))
                                (let ((_%$%hd198792198817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198791198814%_)))
                                      (_%$%tl198793198819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198791198814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198793198819%_))
                                      (let ((_%$%e198794198822%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198793198819%_))))
                                        (let ((_%$%hd198795198825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198794198822%_)))
                                              (_%$%tl198796198827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198794198822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198796198827%_))
                                              (gxc#compile-e__1
                                               _%self198781%_
                                               _%$%hd198795198825%_)
                                              (_%$%g198784198801%_
                                               _%$%g198785198804%_))))
                                      (_%$%g198784198801%_
                                       _%$%g198785198804%_))))
                              (_%$%g198784198801%_ _%$%g198785198804%_))))
                      (_%$%g198784198801%_ _%$%g198785198804%_)))))
          (_%$%g198783198846%_ _%stx198782%_))))
    (define gxc#apply-operands
      (lambda (_%self198696%_ _%stx198697%_)
        (let* ((_%$%g198699198718%_
                (lambda (_%$%g198700198715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198700198715%_))))
               (_%$%g198698198778%_
                (lambda (_%$%g198700198721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198700198721%_))
                      (let ((_%$%e198702198723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198700198721%_))))
                        (let ((_%$%hd198703198726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198702198723%_)))
                              (_%$%tl198704198728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198702198723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl198704198728%_))
                              (let ((_g199908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl198704198728%_
                                        '0))))
                                (begin
                                  (let ((_g199909_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g199908_)
                                               (##values-length _g199908_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g199909_ 2)))
                                        (error "Context expects 2 values"
                                               _g199909_)))
                                  (let ((_%$%target198705198731%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g199908_ 0)))
                                        (_%$%tl198707198733%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g199908_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl198707198733%_))
                                        (letrec ((_%$%loop198708198736%_
                                                  (lambda (_%$%hd198706198739%_
                                                           _%$%rands198712198741%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd198706198739%_))
                                                        (let ((_%$%e198709198743%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd198706198739%_))))
                  (let ((_%$%lp-hd198710198746%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198709198743%_)))
                        (_%$%lp-tl198711198748%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198709198743%_))))
                    (_%$%loop198708198736%_
                     _%$%lp-tl198711198748%_
                     (cons _%$%lp-hd198710198746%_ _%$%rands198712198741%_))))
                (let ((_%$%rands198713198751%_
                       (reverse _%$%rands198712198741%_)))
                  (for-each
                   (lambda (_%$%g198766198768%_)
                     (gxc#compile-e__1 _%self198696%_ _%$%g198766198768%_))
                   (let ((__tmp199910
                          (lambda (_%$%g198770198773%_ _%$%g198771198775%_)
                            (cons _%$%g198770198773%_ _%$%g198771198775%_))))
                     (declare (not safe))
                     (foldr__0 __tmp199910 '() _%$%rands198713198751%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop198708198736%_
                                           _%$%target198705198731%_
                                           '()))
                                        (_%$%g198699198718%_
                                         _%$%g198700198721%_)))))
                              (_%$%g198699198718%_ _%$%g198700198721%_))))
                      (_%$%g198699198718%_ _%$%g198700198721%_)))))
          (_%$%g198698198778%_ _%stx198697%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx198693%_ _%src-stx198694%_)
        (let ((__tmp199911
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx198694%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx198693%_ __tmp199911))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx198689%_ _%src-stx198690%_ _%ctx198691%_)
        (gxc#compile-e__1
         _%ctx198691%_
         (gxc#xform-wrap-source _%stx198689%_ _%src-stx198690%_))))
    (define gxc#xform-begin%
      (lambda (_%self198644%_ _%stx198645%_)
        (let* ((_%$%g198647198657%_
                (lambda (_%$%g198648198654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198648198654%_))))
               (_%$%g198646198686%_
                (lambda (_%$%g198648198660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198648198660%_))
                      (let ((_%$%e198650198662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198648198660%_))))
                        (let ((_%$%hd198651198665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198650198662%_)))
                              (_%$%tl198652198667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198650198662%_))))
                          (let ((_%forms198684%_
                                 (map (lambda (_%$%g198679198681%_)
                                        (gxc#compile-e__1
                                         _%self198644%_
                                         _%$%g198679198681%_))
                                      _%$%tl198652198667%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms198684%_)
                             _%stx198645%_))))
                      (_%$%g198647198657%_ _%$%g198648198660%_)))))
          (_%$%g198646198686%_ _%stx198645%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self198598%_ _%stx198599%_)
        (let* ((_%$%g198601198611%_
                (lambda (_%$%g198602198608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198602198608%_))))
               (_%$%g198600198641%_
                (lambda (_%$%g198602198614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198602198614%_))
                      (let ((_%$%e198604198616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198602198614%_))))
                        (let ((_%$%hd198605198619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198604198616%_)))
                              (_%$%tl198606198621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198604198616%_))))
                          (let ((__tmp199914
                                 (lambda ()
                                   (let ((_%forms198639%_
                                          (map (lambda (_%$%g198634198636%_)
                                                 (gxc#compile-e__1
                                                  _%self198598%_
                                                  _%$%g198634198636%_))
                                               _%$%tl198606198621%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms198639%_)
                                      _%stx198599%_))))
                                (__tmp199912
                                 (let ((__tmp199913
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp199913 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp199914
                             gx#current-expander-phi
                             __tmp199912))))
                      (_%$%g198601198611%_ _%$%g198602198614%_)))))
          (_%$%g198600198641%_ _%stx198599%_))))
    (define gxc#xform-module%
      (lambda (_%self198535%_ _%stx198536%_)
        (let* ((_%$%g198538198552%_
                (lambda (_%$%g198539198549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198539198549%_))))
               (_%$%g198537198595%_
                (lambda (_%$%g198539198555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198539198555%_))
                      (let ((_%$%e198542198557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198539198555%_))))
                        (let ((_%$%hd198543198560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198542198557%_)))
                              (_%$%tl198544198562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198542198557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198544198562%_))
                              (let ((_%$%e198545198565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198544198562%_))))
                                (let ((_%$%hd198546198568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198545198565%_)))
                                      (_%$%tl198547198570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198545198565%_))))
                                  (let* ((_%ctx198587%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd198546198568%_)))
                                         (_%code198589%_
                                          (##structure-ref
                                           _%ctx198587%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code198592%_
                                          (let ((__tmp199915
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self198535%_
                                                    _%code198589%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp199915
                                             gx#current-expander-context
                                             _%ctx198587%_))))
                                    (##structure-set!
                                     _%ctx198587%_
                                     _%code198592%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd198546198568%_
                                                 (cons _%code198592%_ '())))
                                     _%stx198536%_))))
                              (_%$%g198538198552%_ _%$%g198539198555%_))))
                      (_%$%g198538198552%_ _%$%g198539198555%_)))))
          (_%$%g198537198595%_ _%stx198536%_))))
    (define gxc#xform-define-values%
      (lambda (_%self198465%_ _%stx198466%_)
        (let* ((_%$%g198468198485%_
                (lambda (_%$%g198469198482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198469198482%_))))
               (_%$%g198467198532%_
                (lambda (_%$%g198469198488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198469198488%_))
                      (let ((_%$%e198472198490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198469198488%_))))
                        (let ((_%$%hd198473198493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198472198490%_)))
                              (_%$%tl198474198495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198472198490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198474198495%_))
                              (let ((_%$%e198475198498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198474198495%_))))
                                (let ((_%$%hd198476198501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198475198498%_)))
                                      (_%$%tl198477198503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198475198498%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198477198503%_))
                                      (let ((_%$%e198478198506%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198477198503%_))))
                                        (let ((_%$%hd198479198509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198478198506%_)))
                                              (_%$%tl198480198511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198478198506%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198480198511%_))
                                              (let ((_%expr198530%_
                                                     (gxc#compile-e__1
                                                      _%self198465%_
                                                      _%$%hd198479198509%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd198476198501%_
                                                             (cons _%expr198530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx198466%_))
                                              (_%$%g198468198485%_
                                               _%$%g198469198488%_))))
                                      (_%$%g198468198485%_
                                       _%$%g198469198488%_))))
                              (_%$%g198468198485%_ _%$%g198469198488%_))))
                      (_%$%g198468198485%_ _%$%g198469198488%_)))))
          (_%$%g198467198532%_ _%stx198466%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self198394%_ _%stx198395%_)
        (let* ((_%$%g198397198414%_
                (lambda (_%$%g198398198411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198398198411%_))))
               (_%$%g198396198462%_
                (lambda (_%$%g198398198417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198398198417%_))
                      (let ((_%$%e198401198419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198398198417%_))))
                        (let ((_%$%hd198402198422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198401198419%_)))
                              (_%$%tl198403198424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198401198419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198403198424%_))
                              (let ((_%$%e198404198427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198403198424%_))))
                                (let ((_%$%hd198405198430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198404198427%_)))
                                      (_%$%tl198406198432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198404198427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198406198432%_))
                                      (let ((_%$%e198407198435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198406198432%_))))
                                        (let ((_%$%hd198408198438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198407198435%_)))
                                              (_%$%tl198409198440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198407198435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198409198440%_))
                                              (let ((__tmp199918
                                                     (lambda ()
                                                       (let ((_%expr198460%_
                                                              (gxc#compile-e__1
                                                               _%self198394%_
                                                               _%$%hd198408198438%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd198405198430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr198460%_ '())))
                  _%stx198395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp199916
                                                     (let ((__tmp199917
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp199917
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp199918
                                                 gx#current-expander-phi
                                                 __tmp199916))
                                              (_%$%g198397198414%_
                                               _%$%g198398198417%_))))
                                      (_%$%g198397198414%_
                                       _%$%g198398198417%_))))
                              (_%$%g198397198414%_ _%$%g198398198417%_))))
                      (_%$%g198397198414%_ _%$%g198398198417%_)))))
          (_%$%g198396198462%_ _%stx198395%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self198324%_ _%stx198325%_)
        (let* ((_%$%g198327198344%_
                (lambda (_%$%g198328198341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198328198341%_))))
               (_%$%g198326198391%_
                (lambda (_%$%g198328198347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198328198347%_))
                      (let ((_%$%e198331198349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198328198347%_))))
                        (let ((_%$%hd198332198352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198331198349%_)))
                              (_%$%tl198333198354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198331198349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198333198354%_))
                              (let ((_%$%e198334198357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198333198354%_))))
                                (let ((_%$%hd198335198360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198334198357%_)))
                                      (_%$%tl198336198362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198334198357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198336198362%_))
                                      (let ((_%$%e198337198365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl198336198362%_))))
                                        (let ((_%$%hd198338198368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198337198365%_)))
                                              (_%$%tl198339198370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198337198365%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl198339198370%_))
                                              (let ((_%expr198389%_
                                                     (gxc#compile-e__1
                                                      _%self198324%_
                                                      _%$%hd198338198368%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd198335198360%_
                                                             (cons _%expr198389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx198325%_))
                                              (_%$%g198327198344%_
                                               _%$%g198328198347%_))))
                                      (_%$%g198327198344%_
                                       _%$%g198328198347%_))))
                              (_%$%g198327198344%_ _%$%g198328198347%_))))
                      (_%$%g198327198344%_ _%$%g198328198347%_)))))
          (_%$%g198326198391%_ _%stx198325%_))))
    (define gxc#xform-lambda%
      (lambda (_%self198262%_ _%stx198263%_)
        (let* ((_%$%g198265198279%_
                (lambda (_%$%g198266198276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198266198276%_))))
               (_%$%g198264198321%_
                (lambda (_%$%g198266198282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198266198282%_))
                      (let ((_%$%e198269198284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g198266198282%_))))
                        (let ((_%$%hd198270198287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198269198284%_)))
                              (_%$%tl198271198289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198269198284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198271198289%_))
                              (let ((_%$%e198272198292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl198271198289%_))))
                                (let ((_%$%hd198273198295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198272198292%_)))
                                      (_%$%tl198274198297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198272198292%_))))
                                  (let ((__tmp199920
                                         (lambda ()
                                           (let ((_%body198319%_
                                                  (map (lambda (_%$%g198314198316%_)
                                                         (gxc#compile-e__1
                                                          _%self198262%_
                                                          _%$%g198314198316%_))
                                                       _%$%tl198274198297%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd198273198295%_
                                                          _%body198319%_))
                                              _%stx198263%_))))
                                        (__tmp199919
                                         (gxc#xform-let-locals
                                          _%$%hd198273198295%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp199920
                                     gxc#current-compile-local-env
                                     __tmp199919))))
                              (_%$%g198265198279%_ _%$%g198266198282%_))))
                      (_%$%g198265198279%_ _%$%g198266198282%_)))))
          (_%$%g198264198321%_ _%stx198263%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self198170%_ _%stx198171%_)
        (letrec ((_%clause-e198173%_
                  (lambda (_%clause198214%_)
                    (let* ((_%$%g198216198227%_
                            (lambda (_%$%g198217198224%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g198217198224%_))))
                           (_%$%g198215198259%_
                            (lambda (_%$%g198217198230%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g198217198230%_))
                                  (let ((_%$%e198220198232%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g198217198230%_))))
                                    (let ((_%$%hd198221198235%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e198220198232%_)))
                                          (_%$%tl198222198237%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e198220198232%_))))
                                      (let ((__tmp199922
                                             (lambda ()
                                               (let ((_%body198257%_
                                                      (map (lambda (_%$%g198252198254%_)
                                                             (gxc#compile-e__1
                                                              _%self198170%_
                                                              _%$%g198252198254%_))
                                                           _%$%tl198222198237%_)))
                                                 (cons _%$%hd198221198235%_
                                                       _%body198257%_))))
                                            (__tmp199921
                                             (gxc#xform-let-locals
                                              _%$%hd198221198235%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp199922
                                         gxc#current-compile-local-env
                                         __tmp199921))))
                                  (_%$%g198216198227%_ _%$%g198217198230%_)))))
                      (_%$%g198215198259%_ _%clause198214%_)))))
          (let* ((_%$%g198175198185%_
                  (lambda (_%$%g198176198182%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g198176198182%_))))
                 (_%$%g198174198211%_
                  (lambda (_%$%g198176198188%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g198176198188%_))
                        (let ((_%$%e198178198190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g198176198188%_))))
                          (let ((_%$%hd198179198193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198178198190%_)))
                                (_%$%tl198180198195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198178198190%_))))
                            (let ((_%clauses198209%_
                                   (map _%clause-e198173%_
                                        _%$%tl198180198195%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses198209%_)
                               _%stx198171%_))))
                        (_%$%g198175198185%_ _%$%g198176198188%_)))))
            (_%$%g198174198211%_ _%stx198171%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self197930%_ _%stx197931%_)
        (let* ((_%$%g197933197966%_
                (lambda (_%$%g197934197963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197934197963%_))))
               (_%$%g197932198167%_
                (lambda (_%$%g197934197969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197934197969%_))
                      (let ((_%$%e197939197971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197934197969%_))))
                        (let ((_%$%hd197940197974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197939197971%_)))
                              (_%$%tl197941197976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197939197971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197941197976%_))
                              (let ((_%$%e197942197979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197941197976%_))))
                                (let ((_%$%hd197943197982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197942197979%_)))
                                      (_%$%tl197944197984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197942197979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd197943197982%_))
                                      (let ((_g199923_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd197943197982%_
                                                '0))))
                                        (begin
                                          (let ((_g199924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199923_)
                                                       (##values-length
                                                        _g199923_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199924_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199924_)))
                                          (let ((_%$%target197945197987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199923_ 0)))
                                                (_%$%tl197947197989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199923_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl197947197989%_))
                                                (letrec ((_%$%loop197948197992%_
                                                          (lambda (_%$%hd197946197995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr197952197997%_
                           _%$%hd197953197998%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd197946197995%_))
                        (let ((_%$%e197949198000%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd197946197995%_))))
                          (let ((_%$%lp-hd197950198003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197949198000%_)))
                                (_%$%lp-tl197951198005%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197949198000%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd197950198003%_))
                                (let ((_%$%e197956198008%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd197950198003%_))))
                                  (let ((_%$%hd197957198011%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197956198008%_)))
                                        (_%$%tl197958198013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197956198008%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl197958198013%_))
                                        (let ((_%$%e197959198016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl197958198013%_))))
                                          (let ((_%$%hd197960198019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e197959198016%_)))
                                                (_%$%tl197961198021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e197959198016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl197961198021%_))
                                                (_%$%loop197948197992%_
                                                 _%$%lp-tl197951198005%_
                                                 (cons _%$%hd197960198019%_
                                                       _%$%expr197952197997%_)
                                                 (cons _%$%hd197957198011%_
                                                       _%$%hd197953197998%_))
                                                (_%$%g197933197966%_
                                                 _%$%g197934197969%_))))
                                        (_%$%g197933197966%_
                                         _%$%g197934197969%_))))
                                (_%$%g197933197966%_ _%$%g197934197969%_))))
                        (let ((_%$%expr197954198024%_
                               (reverse _%$%expr197952197997%_))
                              (_%$%hd197955198025%_
                               (reverse _%$%hd197953197998%_)))
                          (let* ((_%$%g198049198065%_
                                  (lambda (_%$%g198050198062%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g198050198062%_))))
                                 (_%$%g198048198153%_
                                  (lambda (_%$%g198050198068%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g198050198068%_))
                                        (let ((_g199925_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g198050198068%_
                                                  '0))))
                                          (begin
                                            (let ((_g199926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g199925_)
                                                         (##values-length
                                                          _g199925_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g199926_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g199926_)))
                                            (let ((_%$%target198052198070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g199925_
                                                      0)))
                                                  (_%$%tl198054198072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g199925_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl198054198072%_))
                                                  (letrec ((_%$%loop198055198075%_
                                                            (lambda (_%$%hd198053198078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr198059198080%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd198053198078%_))
                          (let ((_%$%e198056198082%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd198053198078%_))))
                            (let ((_%$%lp-hd198057198085%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e198056198082%_)))
                                  (_%$%lp-tl198058198087%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e198056198082%_))))
                              (_%$%loop198055198075%_
                               _%$%lp-tl198058198087%_
                               (cons _%$%lp-hd198057198085%_
                                     _%$%expr198059198080%_))))
                          (let ((_%$%expr198060198090%_
                                 (reverse _%$%expr198059198080%_)))
                            (let ((__tmp199929
                                   (lambda ()
                                     (let* ((_%$%g198106198113%_
                                             (lambda (_%$%g198107198110%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g198107198110%_))))
                                            (_%$%g198105198139%_
                                             (lambda (_%$%g198107198116%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd197940197974%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr198060198090%_
                         _%$%hd197955198025%_))
                      (let ((__tmp199930
                             (lambda (_%$%g198128198132%_
                                      _%$%g198129198134%_
                                      _%$%g198130198136%_)
                               (cons (cons _%$%g198129198134%_
                                           (cons _%$%g198128198132%_ '()))
                                     _%$%g198130198136%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp199930
                         '()
                         _%$%expr198060198090%_
                         _%$%hd197955198025%_)))
                    _%$%g198107198116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx197931%_))))
                                       (_%$%g198105198139%_
                                        (map (lambda (_%$%g198141198143%_)
                                               (gxc#compile-e__1
                                                _%self197930%_
                                                _%$%g198141198143%_))
                                             _%$%tl197944197984%_)))))
                                  (__tmp199927
                                   (gxc#xform-let-locals
                                    (let ((__tmp199928
                                           (lambda (_%$%g198145198148%_
                                                    _%$%g198146198150%_)
                                             (cons _%$%g198145198148%_
                                                   _%$%g198146198150%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp199928
                                       '()
                                       _%$%hd197955198025%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp199929
                               gxc#current-compile-local-env
                               __tmp199927)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop198055198075%_
                                                     _%$%target198052198070%_
                                                     '()))
                                                  (_%$%g198049198065%_
                                                   _%$%g198050198068%_)))))
                                        (_%$%g198049198065%_
                                         _%$%g198050198068%_)))))
                            (_%$%g198048198153%_
                             (map (lambda (_%$%g198155198157%_)
                                    (gxc#compile-e__1
                                     _%self197930%_
                                     _%$%g198155198157%_))
                                  (let ((__tmp199931
                                         (lambda (_%$%g198159198162%_
                                                  _%$%g198160198164%_)
                                           (cons _%$%g198159198162%_
                                                 _%$%g198160198164%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp199931
                                     '()
                                     _%$%expr197954198024%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop197948197992%_
                                                   _%$%target197945197987%_
                                                   '()
                                                   '()))
                                                (_%$%g197933197966%_
                                                 _%$%g197934197969%_)))))
                                      (_%$%g197933197966%_
                                       _%$%g197934197969%_))))
                              (_%$%g197933197966%_ _%$%g197934197969%_))))
                      (_%$%g197933197966%_ _%$%g197934197969%_)))))
          (_%$%g197932198167%_ _%stx197931%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self197690%_ _%stx197691%_)
        (let* ((_%$%g197693197726%_
                (lambda (_%$%g197694197723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197694197723%_))))
               (_%$%g197692197927%_
                (lambda (_%$%g197694197729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197694197729%_))
                      (let ((_%$%e197699197731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197694197729%_))))
                        (let ((_%$%hd197700197734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197699197731%_)))
                              (_%$%tl197701197736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197699197731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197701197736%_))
                              (let ((_%$%e197702197739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197701197736%_))))
                                (let ((_%$%hd197703197742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197702197739%_)))
                                      (_%$%tl197704197744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197702197739%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd197703197742%_))
                                      (let ((_g199932_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd197703197742%_
                                                '0))))
                                        (begin
                                          (let ((_g199933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199932_)
                                                       (##values-length
                                                        _g199932_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199933_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199933_)))
                                          (let ((_%$%target197705197747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199932_ 0)))
                                                (_%$%tl197707197749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199932_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl197707197749%_))
                                                (letrec ((_%$%loop197708197752%_
                                                          (lambda (_%$%hd197706197755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr197712197757%_
                           _%$%hd197713197758%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd197706197755%_))
                        (let ((_%$%e197709197760%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd197706197755%_))))
                          (let ((_%$%lp-hd197710197763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197709197760%_)))
                                (_%$%lp-tl197711197765%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197709197760%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd197710197763%_))
                                (let ((_%$%e197716197768%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd197710197763%_))))
                                  (let ((_%$%hd197717197771%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197716197768%_)))
                                        (_%$%tl197718197773%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197716197768%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl197718197773%_))
                                        (let ((_%$%e197719197776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl197718197773%_))))
                                          (let ((_%$%hd197720197779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e197719197776%_)))
                                                (_%$%tl197721197781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e197719197776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl197721197781%_))
                                                (_%$%loop197708197752%_
                                                 _%$%lp-tl197711197765%_
                                                 (cons _%$%hd197720197779%_
                                                       _%$%expr197712197757%_)
                                                 (cons _%$%hd197717197771%_
                                                       _%$%hd197713197758%_))
                                                (_%$%g197693197726%_
                                                 _%$%g197694197729%_))))
                                        (_%$%g197693197726%_
                                         _%$%g197694197729%_))))
                                (_%$%g197693197726%_ _%$%g197694197729%_))))
                        (let ((_%$%expr197714197784%_
                               (reverse _%$%expr197712197757%_))
                              (_%$%hd197715197785%_
                               (reverse _%$%hd197713197758%_)))
                          (let ((__tmp199936
                                 (lambda ()
                                   (let* ((_%$%g197810197826%_
                                           (lambda (_%$%g197811197823%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g197811197823%_))))
                                          (_%$%g197809197906%_
                                           (lambda (_%$%g197811197829%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g197811197829%_))
                                                 (let ((_g199937_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g197811197829%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g199938_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g199937_)
                          (##values-length _g199937_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g199938_ 2)))
                   (error "Context expects 2 values" _g199938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target197813197831%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g199937_
                                                               0)))
                                                           (_%$%tl197815197833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g199937_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl197815197833%_))
                                                           (letrec ((_%$%loop197816197836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd197814197839%_
                                      _%$%expr197820197841%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd197814197839%_))
                                   (let ((_%$%e197817197843%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd197814197839%_))))
                                     (let ((_%$%lp-hd197818197846%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e197817197843%_)))
                                           (_%$%lp-tl197819197848%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e197817197843%_))))
                                       (_%$%loop197816197836%_
                                        _%$%lp-tl197819197848%_
                                        (cons _%$%lp-hd197818197846%_
                                              _%$%expr197820197841%_))))
                                   (let* ((_%$%expr197821197851%_
                                           (reverse _%$%expr197820197841%_))
                                          (_%$%g197867197874%_
                                           (lambda (_%$%g197868197871%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g197868197871%_))))
                                          (_%$%g197866197899%_
                                           (lambda (_%$%g197868197877%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd197700197734%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr197821197851%_
                                                               _%$%hd197715197785%_))
                                                            (let ((__tmp199939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g197888197892%_
                                    _%$%g197889197894%_
                                    _%$%g197890197896%_)
                             (cons (cons _%$%g197889197894%_
                                         (cons _%$%g197888197892%_ '()))
                                   _%$%g197890197896%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp199939
                       '()
                       _%$%expr197821197851%_
                       _%$%hd197715197785%_)))
                  _%$%g197868197877%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx197691%_))))
                                     (_%$%g197866197899%_
                                      (map (lambda (_%$%g197901197903%_)
                                             (gxc#compile-e__1
                                              _%self197690%_
                                              _%$%g197901197903%_))
                                           _%$%tl197704197744%_)))))))
                     (_%$%loop197816197836%_ _%$%target197813197831%_ '()))
                   (_%$%g197810197826%_ _%$%g197811197829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g197810197826%_
                                                  _%$%g197811197829%_)))))
                                     (_%$%g197809197906%_
                                      (map (lambda (_%$%g197908197910%_)
                                             (gxc#compile-e__1
                                              _%self197690%_
                                              _%$%g197908197910%_))
                                           (let ((__tmp199940
                                                  (lambda (_%$%g197912197915%_
                                                           _%$%g197913197917%_)
                                                    (cons _%$%g197912197915%_
                                                          _%$%g197913197917%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp199940
                                              '()
                                              _%$%expr197714197784%_)))))))
                                (__tmp199934
                                 (gxc#xform-let-locals
                                  (let ((__tmp199935
                                         (lambda (_%$%g197919197922%_
                                                  _%$%g197920197924%_)
                                           (cons _%$%g197919197922%_
                                                 _%$%g197920197924%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp199935
                                     '()
                                     _%$%hd197715197785%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp199936
                             gxc#current-compile-local-env
                             __tmp199934)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop197708197752%_
                                                   _%$%target197705197747%_
                                                   '()
                                                   '()))
                                                (_%$%g197693197726%_
                                                 _%$%g197694197729%_)))))
                                      (_%$%g197693197726%_
                                       _%$%g197694197729%_))))
                              (_%$%g197693197726%_ _%$%g197694197729%_))))
                      (_%$%g197693197726%_ _%$%g197694197729%_)))))
          (_%$%g197692197927%_ _%stx197691%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings197557%_)
        (letrec ((_%flatten197559%_
                  (lambda (_%maybe-lst197617%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst197617%_))
                        (cons _%maybe-lst197617%_ '())
                        (let _%loop197619%_ ((_%rest197621%_
                                              _%maybe-lst197617%_)
                                             (_%result197622%_ '()))
                          (let* ((_%__stx199826199827%_ _%rest197621%_)
                                 (_%$%g197626197638%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx199826199827%_)))))
                            (let ((_%__kont199828199829%_
                                   (lambda (_%$%g197628197676%_
                                            _%$%g197629197677%_)
                                     (_%loop197619%_
                                      _%$%g197628197676%_
                                      (let ((__tmp199941
                                             (_%flatten197559%_
                                              _%$%g197629197677%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result197622%_
                                         __tmp199941)))))
                                  (_%__kont199830199831%_
                                   (lambda (_%$%g197633197650%_)
                                     (cons _%$%g197633197650%_
                                           _%result197622%_)))
                                  (_%__kont199832199833%_
                                   (lambda () _%result197622%_)))
                              (let ((_%$%g197624197663%_
                                     (lambda ()
                                       (let ((_%$%g197633197650%_
                                              _%__stx199826199827%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g197633197650%_))
                                             (_%__kont199830199831%_
                                              _%$%g197633197650%_)
                                             (_%__kont199832199833%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx199826199827%_))
                                    (let ((_%$%e197630197668%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx199826199827%_))))
                                      (let ((_%$%tl197632197673%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e197630197668%_)))
                                            (_%$%hd197631197671%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e197630197668%_))))
                                        (_%__kont199828199829%_
                                         _%$%tl197632197673%_
                                         _%$%hd197631197671%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g197624197663%_)))))))))))
          (let _%loop197561%_ ((_%rest197563%_
                                (_%flatten197559%_ _%bindings197557%_))
                               (_%locals197564%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest197565197576%_ _%rest197563%_)
                   (_%$%E197569197580%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest197565197576%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K197572197605%_
                     (lambda (_%rest197602%_ _%id197603%_)
                       (_%loop197561%_
                        _%rest197602%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id197603%_))
                              _%locals197564%_))))
                    (_%$%K197571197594%_
                     (lambda (_%id197592%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id197592%_))
                             _%locals197564%_)))
                    (_%$%K197570197585%_ (lambda () _%locals197564%_)))
                (let ((_%$%try-match197567197599%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest197565197576%_))
                             (let ((_%id197597%_ _%$%rest197565197576%_))
                               (_%$%K197571197594%_ _%id197597%_))
                             (_%$%K197570197585%_)))))
                  (if (pair? _%$%rest197565197576%_)
                      (let ((_%$%tl197574197610%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest197565197576%_)))
                            (_%$%hd197573197608%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest197565197576%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd197573197608%_))
                            (let ((_%id197613%_ _%$%hd197573197608%_)
                                  (_%rest197615%_ _%$%tl197574197610%_))
                              (_%$%K197572197605%_
                               _%rest197615%_
                               _%id197613%_))
                            (_%$%K197570197585%_)))
                      (_%$%try-match197567197599%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self197509%_ _%stx197510%_)
        (let* ((_%$%g197512197523%_
                (lambda (_%$%g197513197520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197513197520%_))))
               (_%$%g197511197554%_
                (lambda (_%$%g197513197526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197513197526%_))
                      (let ((_%$%e197516197528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197513197526%_))))
                        (let ((_%$%hd197517197531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197516197528%_)))
                              (_%$%tl197518197533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197516197528%_))))
                          (let ((_%rands197552%_
                                 (map (lambda (_%$%g197547197549%_)
                                        (gxc#compile-e__1
                                         _%self197509%_
                                         _%$%g197547197549%_))
                                      _%$%tl197518197533%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd197517197531%_ _%rands197552%_)
                             _%stx197510%_))))
                      (_%$%g197512197523%_ _%$%g197513197526%_)))))
          (_%$%g197511197554%_ _%stx197510%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self197439%_ _%stx197440%_)
        (let* ((_%$%g197442197459%_
                (lambda (_%$%g197443197456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197443197456%_))))
               (_%$%g197441197506%_
                (lambda (_%$%g197443197462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197443197462%_))
                      (let ((_%$%e197446197464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g197443197462%_))))
                        (let ((_%$%hd197447197467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197446197464%_)))
                              (_%$%tl197448197469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197446197464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197448197469%_))
                              (let ((_%$%e197449197472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl197448197469%_))))
                                (let ((_%$%hd197450197475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197449197472%_)))
                                      (_%$%tl197451197477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197449197472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl197451197477%_))
                                      (let ((_%$%e197452197480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl197451197477%_))))
                                        (let ((_%$%hd197453197483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197452197480%_)))
                                              (_%$%tl197454197485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197452197480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl197454197485%_))
                                              (let ((_%expr197504%_
                                                     (gxc#compile-e__1
                                                      _%self197439%_
                                                      _%$%hd197453197483%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd197450197475%_
                                                             (cons _%expr197504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx197440%_))
                                              (_%$%g197442197459%_
                                               _%$%g197443197462%_))))
                                      (_%$%g197442197459%_
                                       _%$%g197443197462%_))))
                              (_%$%g197442197459%_ _%$%g197443197462%_))))
                      (_%$%g197442197459%_ _%$%g197443197462%_)))))
          (_%$%g197441197506%_ _%stx197440%_))))))
