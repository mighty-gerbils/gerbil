(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770327922)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161620%_)
        (let* ((_%self161622%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161624%_
                (let ((__tmp161842 (gxc#stx-car-e _%stx161620%_)))
                  (declare (not safe))
                  (method-ref _%self161622%_ __tmp161842))))
          (if _%$e161624%_
              ((lambda (_%method161627%_)
                 (declare (not safe))
                 (let ((_%$e161630%_ (gx#stx-source _%stx161620%_)))
                   (if _%$e161630%_
                       ((lambda (_%source161633%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161627%_ _%self161622%_ _%stx161620%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161633%_ '()))
                                 (let ((_%$e161637%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161637%_ _%$e161637%_ '())))))
                        _%$e161630%_)
                       (_%method161627%_ _%self161622%_ _%stx161620%_))))
               _%$e161624%_)
              (let ((__tmp161844 (gxc#stx-car-e _%stx161620%_))
                    (__tmp161843
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161620%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161622%_
                       __tmp161844
                       __tmp161843))))))
    (define gxc#compile-e__1
      (lambda (_%self161642%_ _%stx161643%_)
        (let ((_%$e161645%_
               (let ((__tmp161845 (gxc#stx-car-e _%stx161643%_)))
                 (declare (not safe))
                 (method-ref _%self161642%_ __tmp161845))))
          (if _%$e161645%_
              ((lambda (_%method161648%_)
                 (declare (not safe))
                 (let ((_%$e161651%_ (gx#stx-source _%stx161643%_)))
                   (if _%$e161651%_
                       ((lambda (_%source161654%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161648%_ _%self161642%_ _%stx161643%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161654%_ '()))
                                 (let ((_%$e161658%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161658%_ _%$e161658%_ '())))))
                        _%$e161651%_)
                       (_%method161648%_ _%self161642%_ _%stx161643%_))))
               _%$e161645%_)
              (let ((__tmp161847 (gxc#stx-car-e _%stx161643%_))
                    (__tmp161846
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161643%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161642%_
                       __tmp161847
                       __tmp161846))))))
    (define gxc#compile-e
      (lambda _g161848_
        (let ((_g161849_ (let () (declare (not safe)) (##length _g161848_))))
          (cond ((let () (declare (not safe)) (##fx= _g161849_ 1))
                 (apply gxc#compile-e__0 _g161848_))
                ((let () (declare (not safe)) (##fx= _g161849_ 2))
                 (apply gxc#compile-e__1 _g161848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161848_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161618%_)
        (let ((__tmp161850
               (car (let () (declare (not safe)) (gx#stx-e _%stx161618%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161850))))
    (define gxc#void-method (lambda (_%self161615%_ _%stx161616%_) '#!void))
    (define gxc#false-method (lambda (_%self161612%_ _%stx161613%_) '#f))
    (define gxc#true-method (lambda (_%self161609%_ _%stx161610%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161606%_ _%stx161607%_) _%stx161607%_))
    (define gxc#::void-expression::t
      (let ((__tmp161851 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161851
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161603%_
        (apply make-instance gxc#::void-expression::t _%$args161603%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161852
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
        (__make-atomic-promise __tmp161852)))
    (define gxc#::void-special-form::t
      (let ((__tmp161853 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161853
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161599%_
        (apply make-instance gxc#::void-special-form::t _%$args161599%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161854
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
        (__make-atomic-promise __tmp161854)))
    (define gxc#::void::t
      (let ((__tmp161855
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161855 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161595%_
        (apply make-instance gxc#::void::t _%$args161595%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161856
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161856)))
    (define gxc#::false-expression::t
      (let ((__tmp161857 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161857
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161591%_
        (apply make-instance gxc#::false-expression::t _%$args161591%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161858
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
        (__make-atomic-promise __tmp161858)))
    (define gxc#::false-special-form::t
      (let ((__tmp161859 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161859
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161587%_
        (apply make-instance gxc#::false-special-form::t _%$args161587%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161860
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
        (__make-atomic-promise __tmp161860)))
    (define gxc#::false::t
      (let ((__tmp161861
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161861 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161583%_
        (apply make-instance gxc#::false::t _%$args161583%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161862
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161862)))
    (define gxc#::identity-expression::t
      (let ((__tmp161863 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161863
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161579%_
        (apply make-instance gxc#::identity-expression::t _%$args161579%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161864
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
        (__make-atomic-promise __tmp161864)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161865 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161865
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161575%_
        (apply make-instance gxc#::identity-special-form::t _%$args161575%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161866
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
        (__make-atomic-promise __tmp161866)))
    (define gxc#::identity::t
      (let ((__tmp161867
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161867
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161571%_
        (apply make-instance gxc#::identity::t _%$args161571%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161868
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161868)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161869 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161869
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161567%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161567%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161870
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
        (__make-atomic-promise __tmp161870)))
    (define gxc#::basic-xform::t
      (let ((__tmp161871
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161871
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161563%_
        (apply make-instance gxc#::basic-xform::t _%$args161563%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161872
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
        (__make-atomic-promise __tmp161872)))
    (define gxc#apply-begin%
      (lambda (_%self161519%_ _%stx161520%_)
        (let* ((_%g161522161532%_
                (lambda (_%g161523161529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161523161529%_))))
               (_%g161521161559%_
                (lambda (_%g161523161535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161523161535%_))
                      (let ((_%e161525161537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161523161535%_))))
                        (let ((_%hd161526161540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161525161537%_)))
                              (_%tl161527161542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161525161537%_))))
                          ((lambda (_%g161524161545%_)
                             (for-each
                              (lambda (_%g161554161556%_)
                                (gxc#compile-e__1
                                 _%self161519%_
                                 _%g161554161556%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161524161545%_))))
                           _%tl161527161542%_)))
                      (_%g161522161532%_ _%g161523161535%_)))))
          (_%g161521161559%_ _%stx161520%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161480%_ _%stx161481%_)
        (let* ((_%g161483161493%_
                (lambda (_%g161484161490%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161484161490%_))))
               (_%g161482161516%_
                (lambda (_%g161484161496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161484161496%_))
                      (let ((_%e161486161498%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161484161496%_))))
                        (let ((_%hd161487161501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161486161498%_)))
                              (_%tl161488161503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161486161498%_))))
                          ((lambda (_%g161485161506%_)
                             (gxc#compile-e__1
                              _%self161480%_
                              (last _%g161485161506%_)))
                           _%tl161488161503%_)))
                      (_%g161483161493%_ _%g161484161496%_)))))
          (_%g161482161516%_ _%stx161481%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161476%_ _%stx161477%_)
        (let ((__tmp161875
               (lambda () (gxc#apply-begin% _%self161476%_ _%stx161477%_)))
              (__tmp161873
               (let ((__tmp161874
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161874 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161875
           gx#current-expander-phi
           __tmp161873))))
    (define gxc#apply-module%
      (lambda (_%self161415%_ _%stx161416%_)
        (let* ((_%g161418161432%_
                (lambda (_%g161419161429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161419161429%_))))
               (_%g161417161473%_
                (lambda (_%g161419161435%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161419161435%_))
                      (let ((_%e161422161437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161419161435%_))))
                        (let ((_%hd161423161440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161422161437%_)))
                              (_%tl161424161442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161422161437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161424161442%_))
                              (let ((_%e161425161445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161424161442%_))))
                                (let ((_%hd161426161448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161425161445%_)))
                                      (_%tl161427161450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161425161445%_))))
                                  ((lambda (_%g161420161453%_
                                            _%g161421161454%_)
                                     (let* ((_%ctx161467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161421161454%_)))
                                            (_%ctx-stx161469%_
                                             (##structure-ref
                                              _%ctx161467%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161876
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161415%_
                                                _%ctx-stx161469%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161876
                                        gx#current-expander-context
                                        _%ctx161467%_)))
                                   _%tl161427161450%_
                                   _%hd161426161448%_)))
                              (_%g161418161432%_ _%g161419161435%_))))
                      (_%g161418161432%_ _%g161419161435%_)))))
          (_%g161417161473%_ _%stx161416%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161347%_ _%stx161348%_)
        (let* ((_%g161350161367%_
                (lambda (_%g161351161364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161351161364%_))))
               (_%g161349161412%_
                (lambda (_%g161351161370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161351161370%_))
                      (let ((_%e161354161372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161351161370%_))))
                        (let ((_%hd161355161375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161354161372%_)))
                              (_%tl161356161377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161354161372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161356161377%_))
                              (let ((_%e161357161380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161356161377%_))))
                                (let ((_%hd161358161383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161357161380%_)))
                                      (_%tl161359161385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161357161380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161359161385%_))
                                      (let ((_%e161360161388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161359161385%_))))
                                        (let ((_%hd161361161391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161360161388%_)))
                                              (_%tl161362161393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161360161388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161362161393%_))
                                              ((lambda (_%g161352161396%_
                                                        _%g161353161397%_)
                                                 (gxc#compile-e__1
                                                  _%self161347%_
                                                  _%g161352161396%_))
                                               _%hd161361161391%_
                                               _%hd161358161383%_)
                                              (_%g161350161367%_
                                               _%g161351161370%_))))
                                      (_%g161350161367%_ _%g161351161370%_))))
                              (_%g161350161367%_ _%g161351161370%_))))
                      (_%g161350161367%_ _%g161351161370%_)))))
          (_%g161349161412%_ _%stx161348%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161279%_ _%stx161280%_)
        (let* ((_%g161282161299%_
                (lambda (_%g161283161296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161283161296%_))))
               (_%g161281161344%_
                (lambda (_%g161283161302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161283161302%_))
                      (let ((_%e161286161304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161283161302%_))))
                        (let ((_%hd161287161307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161286161304%_)))
                              (_%tl161288161309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161286161304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161288161309%_))
                              (let ((_%e161289161312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161288161309%_))))
                                (let ((_%hd161290161315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161289161312%_)))
                                      (_%tl161291161317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161289161312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161291161317%_))
                                      (let ((_%e161292161320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161291161317%_))))
                                        (let ((_%hd161293161323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161292161320%_)))
                                              (_%tl161294161325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161292161320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161294161325%_))
                                              ((lambda (_%g161284161328%_
                                                        _%g161285161329%_)
                                                 (gxc#compile-e__1
                                                  _%self161279%_
                                                  _%g161284161328%_))
                                               _%hd161293161323%_
                                               _%hd161290161315%_)
                                              (_%g161282161299%_
                                               _%g161283161302%_))))
                                      (_%g161282161299%_ _%g161283161302%_))))
                              (_%g161282161299%_ _%g161283161302%_))))
                      (_%g161282161299%_ _%g161283161302%_)))))
          (_%g161281161344%_ _%stx161280%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161210%_ _%stx161211%_)
        (let* ((_%g161213161230%_
                (lambda (_%g161214161227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161214161227%_))))
               (_%g161212161276%_
                (lambda (_%g161214161233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161214161233%_))
                      (let ((_%e161217161235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161214161233%_))))
                        (let ((_%hd161218161238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161217161235%_)))
                              (_%tl161219161240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161217161235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161219161240%_))
                              (let ((_%e161220161243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161219161240%_))))
                                (let ((_%hd161221161246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161220161243%_)))
                                      (_%tl161222161248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161220161243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161222161248%_))
                                      (let ((_%e161223161251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161222161248%_))))
                                        (let ((_%hd161224161254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161223161251%_)))
                                              (_%tl161225161256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161223161251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161225161256%_))
                                              ((lambda (_%g161215161259%_
                                                        _%g161216161260%_)
                                                 (let ((__tmp161879
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161210%_
                                                           _%g161215161259%_)))
                                                       (__tmp161877
                                                        (let ((__tmp161878
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161878 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161879
                                                    gx#current-expander-phi
                                                    __tmp161877)))
                                               _%hd161224161254%_
                                               _%hd161221161246%_)
                                              (_%g161213161230%_
                                               _%g161214161233%_))))
                                      (_%g161213161230%_ _%g161214161233%_))))
                              (_%g161213161230%_ _%g161214161233%_))))
                      (_%g161213161230%_ _%g161214161233%_)))))
          (_%g161212161276%_ _%stx161211%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161142%_ _%stx161143%_)
        (let* ((_%g161145161162%_
                (lambda (_%g161146161159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161146161159%_))))
               (_%g161144161207%_
                (lambda (_%g161146161165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161146161165%_))
                      (let ((_%e161149161167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161146161165%_))))
                        (let ((_%hd161150161170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161149161167%_)))
                              (_%tl161151161172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161149161167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161151161172%_))
                              (let ((_%e161152161175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161151161172%_))))
                                (let ((_%hd161153161178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161152161175%_)))
                                      (_%tl161154161180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161152161175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161154161180%_))
                                      (let ((_%e161155161183%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161154161180%_))))
                                        (let ((_%hd161156161186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161155161183%_)))
                                              (_%tl161157161188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161155161183%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161157161188%_))
                                              ((lambda (_%g161147161191%_
                                                        _%g161148161192%_)
                                                 (gxc#compile-e__1
                                                  _%self161142%_
                                                  _%g161147161191%_))
                                               _%hd161156161186%_
                                               _%hd161153161178%_)
                                              (_%g161145161162%_
                                               _%g161146161165%_))))
                                      (_%g161145161162%_ _%g161146161165%_))))
                              (_%g161145161162%_ _%g161146161165%_))))
                      (_%g161145161162%_ _%g161146161165%_)))))
          (_%g161144161207%_ _%stx161143%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self161028%_ _%stx161029%_)
        (let* ((_%g161031161059%_
                (lambda (_%g161032161056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161032161056%_))))
               (_%g161030161139%_
                (lambda (_%g161032161062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161032161062%_))
                      (let ((_%e161035161064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161032161062%_))))
                        (let ((_%hd161036161067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161035161064%_)))
                              (_%tl161037161069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161035161064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161037161069%_))
                              (let ((_g161880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161037161069%_
                                        '0))))
                                (begin
                                  (let ((_g161881_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161880_)
                                               (##values-length _g161880_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161881_ 2)))
                                        (error "Context expects 2 values"
                                               _g161881_)))
                                  (let ((_%target161038161072%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161880_ 0)))
                                        (_%tl161040161074%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161880_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161040161074%_))
                                        (letrec ((_%loop161041161077%_
                                                  (lambda (_%hd161039161080%_
                                                           _%body161045161082%_
                                                           _%hd161046161083%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161039161080%_))
                                                        (let ((_%e161042161085%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161039161080%_))))
                  (let ((_%lp-hd161043161088%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161042161085%_)))
                        (_%lp-tl161044161090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161042161085%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd161043161088%_))
                        (let ((_%e161049161093%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd161043161088%_))))
                          (let ((_%hd161050161096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161049161093%_)))
                                (_%tl161051161098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161049161093%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161051161098%_))
                                (let ((_%e161052161101%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161051161098%_))))
                                  (let ((_%hd161053161104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161052161101%_)))
                                        (_%tl161054161106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161052161101%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161054161106%_))
                                        (_%loop161041161077%_
                                         _%lp-tl161044161090%_
                                         (cons _%hd161053161104%_
                                               _%body161045161082%_)
                                         (cons _%hd161050161096%_
                                               _%hd161046161083%_))
                                        (_%g161031161059%_
                                         _%g161032161062%_))))
                                (_%g161031161059%_ _%g161032161062%_))))
                        (_%g161031161059%_ _%g161032161062%_))))
                (let ((_%body161047161109%_ (reverse _%body161045161082%_))
                      (_%hd161048161110%_ (reverse _%hd161046161083%_)))
                  ((lambda (_%g161033161112%_ _%g161034161113%_)
                     (for-each
                      (lambda (_%g161127161129%_)
                        (gxc#compile-e__1 _%self161028%_ _%g161127161129%_))
                      (let ((__tmp161882
                             (lambda (_%g161131161134%_ _%g161132161136%_)
                               (cons _%g161131161134%_ _%g161132161136%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161882 '() _%g161033161112%_))))
                   _%body161047161109%_
                   _%hd161048161110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161041161077%_
                                           _%target161038161072%_
                                           '()
                                           '()))
                                        (_%g161031161059%_
                                         _%g161032161062%_)))))
                              (_%g161031161059%_ _%g161032161062%_))))
                      (_%g161031161059%_ _%g161032161062%_)))))
          (_%g161030161139%_ _%stx161029%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160885%_ _%stx160886%_)
        (let* ((_%g160888160923%_
                (lambda (_%g160889160920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160889160920%_))))
               (_%g160887161025%_
                (lambda (_%g160889160926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160889160926%_))
                      (let ((_%e160893160928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160889160926%_))))
                        (let ((_%hd160894160931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160893160928%_)))
                              (_%tl160895160933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160893160928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160895160933%_))
                              (let ((_%e160896160936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160895160933%_))))
                                (let ((_%hd160897160939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160896160936%_)))
                                      (_%tl160898160941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160896160936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160897160939%_))
                                      (let ((_g161883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160897160939%_
                                                '0))))
                                        (begin
                                          (let ((_g161884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161883_)
                                                       (##values-length
                                                        _g161883_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161884_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161884_)))
                                          (let ((_%target160899160944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161883_ 0)))
                                                (_%tl160901160946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161883_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160901160946%_))
                                                (letrec ((_%loop160902160949%_
                                                          (lambda (_%hd160900160952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160906160954%_
                           _%hd160907160955%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160900160952%_))
                        (let ((_%e160903160957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160900160952%_))))
                          (let ((_%lp-hd160904160960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160903160957%_)))
                                (_%lp-tl160905160962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160903160957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160904160960%_))
                                (let ((_%e160910160965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160904160960%_))))
                                  (let ((_%hd160911160968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160910160965%_)))
                                        (_%tl160912160970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160910160965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160912160970%_))
                                        (let ((_%e160913160973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160912160970%_))))
                                          (let ((_%hd160914160976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160913160973%_)))
                                                (_%tl160915160978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160913160973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160915160978%_))
                                                (_%loop160902160949%_
                                                 _%lp-tl160905160962%_
                                                 (cons _%hd160914160976%_
                                                       _%expr160906160954%_)
                                                 (cons _%hd160911160968%_
                                                       _%hd160907160955%_))
                                                (_%g160888160923%_
                                                 _%g160889160926%_))))
                                        (_%g160888160923%_
                                         _%g160889160926%_))))
                                (_%g160888160923%_ _%g160889160926%_))))
                        (let ((_%expr160908160981%_
                               (reverse _%expr160906160954%_))
                              (_%hd160909160982%_
                               (reverse _%hd160907160955%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160898160941%_))
                              (let ((_%e160916160984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160898160941%_))))
                                (let ((_%hd160917160987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160916160984%_)))
                                      (_%tl160918160989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160916160984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160918160989%_))
                                      ((lambda (_%g160890160992%_
                                                _%g160891160993%_
                                                _%g160892160994%_)
                                         (for-each
                                          (lambda (_%g161013161015%_)
                                            (gxc#compile-e__1
                                             _%self160885%_
                                             _%g161013161015%_))
                                          (let ((__tmp161886
                                                 (lambda (_%g161017161020%_
                                                          _%g161018161022%_)
                                                   (cons _%g161017161020%_
                                                         _%g161018161022%_)))
                                                (__tmp161885
                                                 (cons _%g160890160992%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161886
                                             __tmp161885
                                             _%g160891160993%_))))
                                       _%hd160917160987%_
                                       _%expr160908160981%_
                                       _%hd160909160982%_)
                                      (_%g160888160923%_ _%g160889160926%_))))
                              (_%g160888160923%_ _%g160889160926%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160902160949%_
                                                   _%target160899160944%_
                                                   '()
                                                   '()))
                                                (_%g160888160923%_
                                                 _%g160889160926%_)))))
                                      (_%g160888160923%_ _%g160889160926%_))))
                              (_%g160888160923%_ _%g160889160926%_))))
                      (_%g160888160923%_ _%g160889160926%_)))))
          (_%g160887161025%_ _%stx160886%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160830%_ _%stx160831%_)
        (let* ((_%g160833160847%_
                (lambda (_%g160834160844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160834160844%_))))
               (_%g160832160882%_
                (lambda (_%g160834160850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160834160850%_))
                      (let ((_%e160837160852%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160834160850%_))))
                        (let ((_%hd160838160855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160837160852%_)))
                              (_%tl160839160857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160837160852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160839160857%_))
                              (let ((_%e160840160860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160839160857%_))))
                                (let ((_%hd160841160863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160840160860%_)))
                                      (_%tl160842160865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160840160860%_))))
                                  ((lambda (_%g160835160868%_
                                            _%g160836160869%_)
                                     (gxc#compile-e__1
                                      _%self160830%_
                                      (last _%g160835160868%_)))
                                   _%tl160842160865%_
                                   _%hd160841160863%_)))
                              (_%g160833160847%_ _%g160834160850%_))))
                      (_%g160833160847%_ _%g160834160850%_)))))
          (_%g160832160882%_ _%stx160831%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160762%_ _%stx160763%_)
        (let* ((_%g160765160782%_
                (lambda (_%g160766160779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160766160779%_))))
               (_%g160764160827%_
                (lambda (_%g160766160785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160766160785%_))
                      (let ((_%e160769160787%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160766160785%_))))
                        (let ((_%hd160770160790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160769160787%_)))
                              (_%tl160771160792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160769160787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160771160792%_))
                              (let ((_%e160772160795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160771160792%_))))
                                (let ((_%hd160773160798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160772160795%_)))
                                      (_%tl160774160800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160772160795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160774160800%_))
                                      (let ((_%e160775160803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160774160800%_))))
                                        (let ((_%hd160776160806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160775160803%_)))
                                              (_%tl160777160808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160775160803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160777160808%_))
                                              ((lambda (_%g160767160811%_
                                                        _%g160768160812%_)
                                                 (gxc#compile-e__1
                                                  _%self160762%_
                                                  _%g160767160811%_))
                                               _%hd160776160806%_
                                               _%hd160773160798%_)
                                              (_%g160765160782%_
                                               _%g160766160785%_))))
                                      (_%g160765160782%_ _%g160766160785%_))))
                              (_%g160765160782%_ _%g160766160785%_))))
                      (_%g160765160782%_ _%g160766160785%_)))))
          (_%g160764160827%_ _%stx160763%_))))
    (define gxc#apply-operands
      (lambda (_%self160677%_ _%stx160678%_)
        (let* ((_%g160680160699%_
                (lambda (_%g160681160696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160681160696%_))))
               (_%g160679160759%_
                (lambda (_%g160681160702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160681160702%_))
                      (let ((_%e160683160704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160681160702%_))))
                        (let ((_%hd160684160707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160683160704%_)))
                              (_%tl160685160709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160683160704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160685160709%_))
                              (let ((_g161887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160685160709%_
                                        '0))))
                                (begin
                                  (let ((_g161888_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161887_)
                                               (##values-length _g161887_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161888_ 2)))
                                        (error "Context expects 2 values"
                                               _g161888_)))
                                  (let ((_%target160686160712%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161887_ 0)))
                                        (_%tl160688160714%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161887_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160688160714%_))
                                        (letrec ((_%loop160689160717%_
                                                  (lambda (_%hd160687160720%_
                                                           _%rands160693160722%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160687160720%_))
                                                        (let ((_%e160690160724%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160687160720%_))))
                  (let ((_%lp-hd160691160727%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160690160724%_)))
                        (_%lp-tl160692160729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160690160724%_))))
                    (_%loop160689160717%_
                     _%lp-tl160692160729%_
                     (cons _%lp-hd160691160727%_ _%rands160693160722%_))))
                (let ((_%rands160694160732%_ (reverse _%rands160693160722%_)))
                  ((lambda (_%g160682160734%_)
                     (for-each
                      (lambda (_%g160747160749%_)
                        (gxc#compile-e__1 _%self160677%_ _%g160747160749%_))
                      (let ((__tmp161889
                             (lambda (_%g160751160754%_ _%g160752160756%_)
                               (cons _%g160751160754%_ _%g160752160756%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161889 '() _%g160682160734%_))))
                   _%rands160694160732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160689160717%_
                                           _%target160686160712%_
                                           '()))
                                        (_%g160680160699%_
                                         _%g160681160702%_)))))
                              (_%g160680160699%_ _%g160681160702%_))))
                      (_%g160680160699%_ _%g160681160702%_)))))
          (_%g160679160759%_ _%stx160678%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160674%_ _%src-stx160675%_)
        (let ((__tmp161890
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160675%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160674%_ __tmp161890))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160670%_ _%src-stx160671%_ _%ctx160672%_)
        (gxc#compile-e__1
         _%ctx160672%_
         (gxc#xform-wrap-source _%stx160670%_ _%src-stx160671%_))))
    (define gxc#xform-begin%
      (lambda (_%self160625%_ _%stx160626%_)
        (let* ((_%g160628160638%_
                (lambda (_%g160629160635%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160629160635%_))))
               (_%g160627160667%_
                (lambda (_%g160629160641%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160629160641%_))
                      (let ((_%e160631160643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160629160641%_))))
                        (let ((_%hd160632160646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160631160643%_)))
                              (_%tl160633160648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160631160643%_))))
                          ((lambda (_%g160630160651%_)
                             (let ((_%forms160665%_
                                    (map (lambda (_%g160660160662%_)
                                           (gxc#compile-e__1
                                            _%self160625%_
                                            _%g160660160662%_))
                                         _%g160630160651%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160665%_)
                                _%stx160626%_)))
                           _%tl160633160648%_)))
                      (_%g160628160638%_ _%g160629160641%_)))))
          (_%g160627160667%_ _%stx160626%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160579%_ _%stx160580%_)
        (let* ((_%g160582160592%_
                (lambda (_%g160583160589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160583160589%_))))
               (_%g160581160622%_
                (lambda (_%g160583160595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160583160595%_))
                      (let ((_%e160585160597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160583160595%_))))
                        (let ((_%hd160586160600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160585160597%_)))
                              (_%tl160587160602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160585160597%_))))
                          ((lambda (_%g160584160605%_)
                             (let ((__tmp161893
                                    (lambda ()
                                      (let ((_%forms160620%_
                                             (map (lambda (_%g160615160617%_)
                                                    (gxc#compile-e__1
                                                     _%self160579%_
                                                     _%g160615160617%_))
                                                  _%g160584160605%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160620%_)
                                         _%stx160580%_))))
                                   (__tmp161891
                                    (let ((__tmp161892
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161892 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161893
                                gx#current-expander-phi
                                __tmp161891)))
                           _%tl160587160602%_)))
                      (_%g160582160592%_ _%g160583160595%_)))))
          (_%g160581160622%_ _%stx160580%_))))
    (define gxc#xform-module%
      (lambda (_%self160516%_ _%stx160517%_)
        (let* ((_%g160519160533%_
                (lambda (_%g160520160530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160520160530%_))))
               (_%g160518160576%_
                (lambda (_%g160520160536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160520160536%_))
                      (let ((_%e160523160538%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160520160536%_))))
                        (let ((_%hd160524160541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160523160538%_)))
                              (_%tl160525160543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160523160538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160525160543%_))
                              (let ((_%e160526160546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160525160543%_))))
                                (let ((_%hd160527160549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160526160546%_)))
                                      (_%tl160528160551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160526160546%_))))
                                  ((lambda (_%g160521160554%_
                                            _%g160522160555%_)
                                     (let* ((_%ctx160568%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160522160555%_)))
                                            (_%code160570%_
                                             (##structure-ref
                                              _%ctx160568%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160573%_
                                             (let ((__tmp161894
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160516%_
                                                       _%code160570%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161894
                                                gx#current-expander-context
                                                _%ctx160568%_))))
                                       (##structure-set!
                                        _%ctx160568%_
                                        _%code160573%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160522160555%_
                                                    (cons _%code160573%_ '())))
                                        _%stx160517%_)))
                                   _%tl160528160551%_
                                   _%hd160527160549%_)))
                              (_%g160519160533%_ _%g160520160536%_))))
                      (_%g160519160533%_ _%g160520160536%_)))))
          (_%g160518160576%_ _%stx160517%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160446%_ _%stx160447%_)
        (let* ((_%g160449160466%_
                (lambda (_%g160450160463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160450160463%_))))
               (_%g160448160513%_
                (lambda (_%g160450160469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160450160469%_))
                      (let ((_%e160453160471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160450160469%_))))
                        (let ((_%hd160454160474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160453160471%_)))
                              (_%tl160455160476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160453160471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160455160476%_))
                              (let ((_%e160456160479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160455160476%_))))
                                (let ((_%hd160457160482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160456160479%_)))
                                      (_%tl160458160484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160456160479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160458160484%_))
                                      (let ((_%e160459160487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160458160484%_))))
                                        (let ((_%hd160460160490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160459160487%_)))
                                              (_%tl160461160492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160459160487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160461160492%_))
                                              ((lambda (_%g160451160495%_
                                                        _%g160452160496%_)
                                                 (let ((_%expr160511%_
                                                        (gxc#compile-e__1
                                                         _%self160446%_
                                                         _%g160451160495%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160452160496%_
                                                                (cons _%expr160511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160447%_)))
                                               _%hd160460160490%_
                                               _%hd160457160482%_)
                                              (_%g160449160466%_
                                               _%g160450160469%_))))
                                      (_%g160449160466%_ _%g160450160469%_))))
                              (_%g160449160466%_ _%g160450160469%_))))
                      (_%g160449160466%_ _%g160450160469%_)))))
          (_%g160448160513%_ _%stx160447%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160375%_ _%stx160376%_)
        (let* ((_%g160378160395%_
                (lambda (_%g160379160392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160379160392%_))))
               (_%g160377160443%_
                (lambda (_%g160379160398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160379160398%_))
                      (let ((_%e160382160400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160379160398%_))))
                        (let ((_%hd160383160403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160382160400%_)))
                              (_%tl160384160405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160382160400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160384160405%_))
                              (let ((_%e160385160408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160384160405%_))))
                                (let ((_%hd160386160411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160385160408%_)))
                                      (_%tl160387160413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160385160408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160387160413%_))
                                      (let ((_%e160388160416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160387160413%_))))
                                        (let ((_%hd160389160419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160388160416%_)))
                                              (_%tl160390160421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160388160416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160390160421%_))
                                              ((lambda (_%g160380160424%_
                                                        _%g160381160425%_)
                                                 (let ((__tmp161897
                                                        (lambda ()
                                                          (let ((_%expr160441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160375%_ _%g160380160424%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160381160425%_ (cons _%expr160441%_ '())))
                     _%stx160376%_))))
               (__tmp161895
                (let ((__tmp161896
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161896 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161897
                                                    gx#current-expander-phi
                                                    __tmp161895)))
                                               _%hd160389160419%_
                                               _%hd160386160411%_)
                                              (_%g160378160395%_
                                               _%g160379160398%_))))
                                      (_%g160378160395%_ _%g160379160398%_))))
                              (_%g160378160395%_ _%g160379160398%_))))
                      (_%g160378160395%_ _%g160379160398%_)))))
          (_%g160377160443%_ _%stx160376%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160305%_ _%stx160306%_)
        (let* ((_%g160308160325%_
                (lambda (_%g160309160322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160309160322%_))))
               (_%g160307160372%_
                (lambda (_%g160309160328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160309160328%_))
                      (let ((_%e160312160330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160309160328%_))))
                        (let ((_%hd160313160333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160312160330%_)))
                              (_%tl160314160335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160312160330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160314160335%_))
                              (let ((_%e160315160338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160314160335%_))))
                                (let ((_%hd160316160341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160315160338%_)))
                                      (_%tl160317160343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160315160338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160317160343%_))
                                      (let ((_%e160318160346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160317160343%_))))
                                        (let ((_%hd160319160349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160318160346%_)))
                                              (_%tl160320160351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160318160346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160320160351%_))
                                              ((lambda (_%g160310160354%_
                                                        _%g160311160355%_)
                                                 (let ((_%expr160370%_
                                                        (gxc#compile-e__1
                                                         _%self160305%_
                                                         _%g160310160354%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160311160355%_
                                                                (cons _%expr160370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160306%_)))
                                               _%hd160319160349%_
                                               _%hd160316160341%_)
                                              (_%g160308160325%_
                                               _%g160309160328%_))))
                                      (_%g160308160325%_ _%g160309160328%_))))
                              (_%g160308160325%_ _%g160309160328%_))))
                      (_%g160308160325%_ _%g160309160328%_)))))
          (_%g160307160372%_ _%stx160306%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160243%_ _%stx160244%_)
        (let* ((_%g160246160260%_
                (lambda (_%g160247160257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160247160257%_))))
               (_%g160245160302%_
                (lambda (_%g160247160263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160247160263%_))
                      (let ((_%e160250160265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160247160263%_))))
                        (let ((_%hd160251160268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160250160265%_)))
                              (_%tl160252160270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160250160265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160252160270%_))
                              (let ((_%e160253160273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160252160270%_))))
                                (let ((_%hd160254160276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160253160273%_)))
                                      (_%tl160255160278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160253160273%_))))
                                  ((lambda (_%g160248160281%_
                                            _%g160249160282%_)
                                     (let ((__tmp161899
                                            (lambda ()
                                              (let ((_%body160300%_
                                                     (map (lambda (_%g160295160297%_)
                                                            (gxc#compile-e__1
                                                             _%self160243%_
                                                             _%g160295160297%_))
                                                          _%g160248160281%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160249160282%_
                                                             _%body160300%_))
                                                 _%stx160244%_))))
                                           (__tmp161898
                                            (gxc#xform-let-locals
                                             _%g160249160282%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161899
                                        gxc#current-compile-local-env
                                        __tmp161898)))
                                   _%tl160255160278%_
                                   _%hd160254160276%_)))
                              (_%g160246160260%_ _%g160247160263%_))))
                      (_%g160246160260%_ _%g160247160263%_)))))
          (_%g160245160302%_ _%stx160244%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160151%_ _%stx160152%_)
        (letrec ((_%clause-e160154%_
                  (lambda (_%clause160195%_)
                    (let* ((_%g160197160208%_
                            (lambda (_%g160198160205%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160198160205%_))))
                           (_%g160196160240%_
                            (lambda (_%g160198160211%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160198160211%_))
                                  (let ((_%e160201160213%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160198160211%_))))
                                    (let ((_%hd160202160216%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160201160213%_)))
                                          (_%tl160203160218%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160201160213%_))))
                                      ((lambda (_%g160199160221%_
                                                _%g160200160222%_)
                                         (let ((__tmp161901
                                                (lambda ()
                                                  (let ((_%body160238%_
                                                         (map (lambda (_%g160233160235%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160151%_
                         _%g160233160235%_))
                      _%g160199160221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160200160222%_
                                                          _%body160238%_))))
                                               (__tmp161900
                                                (gxc#xform-let-locals
                                                 _%g160200160222%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161901
                                            gxc#current-compile-local-env
                                            __tmp161900)))
                                       _%tl160203160218%_
                                       _%hd160202160216%_)))
                                  (_%g160197160208%_ _%g160198160211%_)))))
                      (_%g160196160240%_ _%clause160195%_)))))
          (let* ((_%g160156160166%_
                  (lambda (_%g160157160163%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160157160163%_))))
                 (_%g160155160192%_
                  (lambda (_%g160157160169%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160157160169%_))
                        (let ((_%e160159160171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160157160169%_))))
                          (let ((_%hd160160160174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160159160171%_)))
                                (_%tl160161160176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160159160171%_))))
                            ((lambda (_%g160158160179%_)
                               (let ((_%clauses160190%_
                                      (map _%clause-e160154%_
                                           _%g160158160179%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160190%_)
                                  _%stx160152%_)))
                             _%tl160161160176%_)))
                        (_%g160156160166%_ _%g160157160169%_)))))
            (_%g160155160192%_ _%stx160152%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159911%_ _%stx159912%_)
        (let* ((_%g159914159947%_
                (lambda (_%g159915159944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159915159944%_))))
               (_%g159913160148%_
                (lambda (_%g159915159950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159915159950%_))
                      (let ((_%e159920159952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159915159950%_))))
                        (let ((_%hd159921159955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159920159952%_)))
                              (_%tl159922159957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159920159952%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159922159957%_))
                              (let ((_%e159923159960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159922159957%_))))
                                (let ((_%hd159924159963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159923159960%_)))
                                      (_%tl159925159965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159923159960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159924159963%_))
                                      (let ((_g161902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159924159963%_
                                                '0))))
                                        (begin
                                          (let ((_g161903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161902_)
                                                       (##values-length
                                                        _g161902_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161903_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161903_)))
                                          (let ((_%target159926159968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161902_ 0)))
                                                (_%tl159928159970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161902_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159928159970%_))
                                                (letrec ((_%loop159929159973%_
                                                          (lambda (_%hd159927159976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159933159978%_
                           _%hd159934159979%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159927159976%_))
                        (let ((_%e159930159981%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159927159976%_))))
                          (let ((_%lp-hd159931159984%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159930159981%_)))
                                (_%lp-tl159932159986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159930159981%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159931159984%_))
                                (let ((_%e159937159989%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159931159984%_))))
                                  (let ((_%hd159938159992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159937159989%_)))
                                        (_%tl159939159994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159937159989%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159939159994%_))
                                        (let ((_%e159940159997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159939159994%_))))
                                          (let ((_%hd159941160000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159940159997%_)))
                                                (_%tl159942160002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159940159997%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159942160002%_))
                                                (_%loop159929159973%_
                                                 _%lp-tl159932159986%_
                                                 (cons _%hd159941160000%_
                                                       _%expr159933159978%_)
                                                 (cons _%hd159938159992%_
                                                       _%hd159934159979%_))
                                                (_%g159914159947%_
                                                 _%g159915159950%_))))
                                        (_%g159914159947%_
                                         _%g159915159950%_))))
                                (_%g159914159947%_ _%g159915159950%_))))
                        (let ((_%expr159935160005%_
                               (reverse _%expr159933159978%_))
                              (_%hd159936160006%_
                               (reverse _%hd159934159979%_)))
                          ((lambda (_%g159916160008%_
                                    _%g159917160009%_
                                    _%g159918160010%_
                                    _%g159919160011%_)
                             (let* ((_%g160030160046%_
                                     (lambda (_%g160031160043%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g160031160043%_))))
                                    (_%g160029160134%_
                                     (lambda (_%g160031160049%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g160031160049%_))
                                           (let ((_g161904_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g160031160049%_
                                                     '0))))
                                             (begin
                                               (let ((_g161905_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161904_)
                                                            (##values-length
                                                             _g161904_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161905_)))
                                               (let ((_%target160033160051%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161904_
                                                         0)))
                                                     (_%tl160035160053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161904_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl160035160053%_))
                                                     (letrec ((_%loop160036160056%_
                                                               (lambda (_%hd160034160059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr160040160061%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd160034160059%_))
                             (let ((_%e160037160063%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd160034160059%_))))
                               (let ((_%lp-hd160038160066%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e160037160063%_)))
                                     (_%lp-tl160039160068%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e160037160063%_))))
                                 (_%loop160036160056%_
                                  _%lp-tl160039160068%_
                                  (cons _%lp-hd160038160066%_
                                        _%expr160040160061%_))))
                             (let ((_%expr160041160071%_
                                    (reverse _%expr160040160061%_)))
                               ((lambda (_%g160032160073%_)
                                  (let ((__tmp161908
                                         (lambda ()
                                           (let* ((_%g160087160094%_
                                                   (lambda (_%g160088160091%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160088160091%_))))
                                                  (_%g160086160120%_
                                                   (lambda (_%g160088160097%_)
                                                     ((lambda (_%g160089160099%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159919160011%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g160032160073%_
                                  _%g159918160010%_))
                               (let ((__tmp161909
                                      (lambda (_%g160109160113%_
                                               _%g160110160115%_
                                               _%g160111160117%_)
                                        (cons (cons _%g160110160115%_
                                                    (cons _%g160109160113%_
                                                          '()))
                                              _%g160111160117%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161909
                                  '()
                                  _%g160032160073%_
                                  _%g159918160010%_)))
                             _%g160089160099%_))
                 _%stx159912%_))
              _%g160088160097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g160086160120%_
                                              (map (lambda (_%g160122160124%_)
                                                     (gxc#compile-e__1
                                                      _%self159911%_
                                                      _%g160122160124%_))
                                                   _%g159916160008%_)))))
                                        (__tmp161906
                                         (gxc#xform-let-locals
                                          (let ((__tmp161907
                                                 (lambda (_%g160126160129%_
                                                          _%g160127160131%_)
                                                   (cons _%g160126160129%_
                                                         _%g160127160131%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161907
                                             '()
                                             _%g159918160010%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161908
                                     gxc#current-compile-local-env
                                     __tmp161906)))
                                _%expr160041160071%_))))))
               (_%loop160036160056%_ _%target160033160051%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160030160046%_
                                                      _%g160031160049%_)))))
                                           (_%g160030160046%_
                                            _%g160031160049%_)))))
                               (_%g160029160134%_
                                (map (lambda (_%g160136160138%_)
                                       (gxc#compile-e__1
                                        _%self159911%_
                                        _%g160136160138%_))
                                     (let ((__tmp161910
                                            (lambda (_%g160140160143%_
                                                     _%g160141160145%_)
                                              (cons _%g160140160143%_
                                                    _%g160141160145%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161910
                                        '()
                                        _%g159917160009%_))))))
                           _%tl159925159965%_
                           _%expr159935160005%_
                           _%hd159936160006%_
                           _%hd159921159955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159929159973%_
                                                   _%target159926159968%_
                                                   '()
                                                   '()))
                                                (_%g159914159947%_
                                                 _%g159915159950%_)))))
                                      (_%g159914159947%_ _%g159915159950%_))))
                              (_%g159914159947%_ _%g159915159950%_))))
                      (_%g159914159947%_ _%g159915159950%_)))))
          (_%g159913160148%_ _%stx159912%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159671%_ _%stx159672%_)
        (let* ((_%g159674159707%_
                (lambda (_%g159675159704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159675159704%_))))
               (_%g159673159908%_
                (lambda (_%g159675159710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159675159710%_))
                      (let ((_%e159680159712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159675159710%_))))
                        (let ((_%hd159681159715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159680159712%_)))
                              (_%tl159682159717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159680159712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159682159717%_))
                              (let ((_%e159683159720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159682159717%_))))
                                (let ((_%hd159684159723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159683159720%_)))
                                      (_%tl159685159725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159683159720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159684159723%_))
                                      (let ((_g161911_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159684159723%_
                                                '0))))
                                        (begin
                                          (let ((_g161912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161911_)
                                                       (##values-length
                                                        _g161911_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161912_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161912_)))
                                          (let ((_%target159686159728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161911_ 0)))
                                                (_%tl159688159730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161911_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159688159730%_))
                                                (letrec ((_%loop159689159733%_
                                                          (lambda (_%hd159687159736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159693159738%_
                           _%hd159694159739%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159687159736%_))
                        (let ((_%e159690159741%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159687159736%_))))
                          (let ((_%lp-hd159691159744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159690159741%_)))
                                (_%lp-tl159692159746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159690159741%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159691159744%_))
                                (let ((_%e159697159749%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159691159744%_))))
                                  (let ((_%hd159698159752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159697159749%_)))
                                        (_%tl159699159754%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159697159749%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159699159754%_))
                                        (let ((_%e159700159757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159699159754%_))))
                                          (let ((_%hd159701159760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159700159757%_)))
                                                (_%tl159702159762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159700159757%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159702159762%_))
                                                (_%loop159689159733%_
                                                 _%lp-tl159692159746%_
                                                 (cons _%hd159701159760%_
                                                       _%expr159693159738%_)
                                                 (cons _%hd159698159752%_
                                                       _%hd159694159739%_))
                                                (_%g159674159707%_
                                                 _%g159675159710%_))))
                                        (_%g159674159707%_
                                         _%g159675159710%_))))
                                (_%g159674159707%_ _%g159675159710%_))))
                        (let ((_%expr159695159765%_
                               (reverse _%expr159693159738%_))
                              (_%hd159696159766%_
                               (reverse _%hd159694159739%_)))
                          ((lambda (_%g159676159768%_
                                    _%g159677159769%_
                                    _%g159678159770%_
                                    _%g159679159771%_)
                             (let ((__tmp161915
                                    (lambda ()
                                      (let* ((_%g159791159807%_
                                              (lambda (_%g159792159804%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159792159804%_))))
                                             (_%g159790159887%_
                                              (lambda (_%g159792159810%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159792159810%_))
                                                    (let ((_g161916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159792159810%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161917_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161916_)
                             (##values-length _g161916_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161917_ 2)))
                      (error "Context expects 2 values" _g161917_)))
                (let ((_%target159794159812%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161916_ 0)))
                      (_%tl159796159814%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161916_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159796159814%_))
                      (letrec ((_%loop159797159817%_
                                (lambda (_%hd159795159820%_
                                         _%expr159801159822%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159795159820%_))
                                      (let ((_%e159798159824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159795159820%_))))
                                        (let ((_%lp-hd159799159827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159798159824%_)))
                                              (_%lp-tl159800159829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159798159824%_))))
                                          (_%loop159797159817%_
                                           _%lp-tl159800159829%_
                                           (cons _%lp-hd159799159827%_
                                                 _%expr159801159822%_))))
                                      (let ((_%expr159802159832%_
                                             (reverse _%expr159801159822%_)))
                                        ((lambda (_%g159793159834%_)
                                           (let* ((_%g159848159855%_
                                                   (lambda (_%g159849159852%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159849159852%_))))
                                                  (_%g159847159880%_
                                                   (lambda (_%g159849159858%_)
                                                     ((lambda (_%g159850159860%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159679159771%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159793159834%_
                                  _%g159678159770%_))
                               (let ((__tmp161918
                                      (lambda (_%g159869159873%_
                                               _%g159870159875%_
                                               _%g159871159877%_)
                                        (cons (cons _%g159870159875%_
                                                    (cons _%g159869159873%_
                                                          '()))
                                              _%g159871159877%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161918
                                  '()
                                  _%g159793159834%_
                                  _%g159678159770%_)))
                             _%g159850159860%_))
                 _%stx159672%_))
              _%g159849159858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159847159880%_
                                              (map (lambda (_%g159882159884%_)
                                                     (gxc#compile-e__1
                                                      _%self159671%_
                                                      _%g159882159884%_))
                                                   _%g159676159768%_))))
                                         _%expr159802159832%_))))))
                        (_%loop159797159817%_ _%target159794159812%_ '()))
                      (_%g159791159807%_ _%g159792159810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159791159807%_
                                                     _%g159792159810%_)))))
                                        (_%g159790159887%_
                                         (map (lambda (_%g159889159891%_)
                                                (gxc#compile-e__1
                                                 _%self159671%_
                                                 _%g159889159891%_))
                                              (let ((__tmp161919
                                                     (lambda (_%g159893159896%_
                                                              _%g159894159898%_)
                                                       (cons _%g159893159896%_
                                                             _%g159894159898%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161919
                                                 '()
                                                 _%g159677159769%_)))))))
                                   (__tmp161913
                                    (gxc#xform-let-locals
                                     (let ((__tmp161914
                                            (lambda (_%g159900159903%_
                                                     _%g159901159905%_)
                                              (cons _%g159900159903%_
                                                    _%g159901159905%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161914
                                        '()
                                        _%g159678159770%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161915
                                gxc#current-compile-local-env
                                __tmp161913)))
                           _%tl159685159725%_
                           _%expr159695159765%_
                           _%hd159696159766%_
                           _%hd159681159715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159689159733%_
                                                   _%target159686159728%_
                                                   '()
                                                   '()))
                                                (_%g159674159707%_
                                                 _%g159675159710%_)))))
                                      (_%g159674159707%_ _%g159675159710%_))))
                              (_%g159674159707%_ _%g159675159710%_))))
                      (_%g159674159707%_ _%g159675159710%_)))))
          (_%g159673159908%_ _%stx159672%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159538%_)
        (letrec ((_%flatten159540%_
                  (lambda (_%maybe-lst159598%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159598%_))
                        (cons _%maybe-lst159598%_ '())
                        (let _%loop159600%_ ((_%rest159602%_
                                              _%maybe-lst159598%_)
                                             (_%result159603%_ '()))
                          (let* ((_%__stx161807161808%_ _%rest159602%_)
                                 (_%g159607159619%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161807161808%_)))))
                            (let ((_%__kont161809161810%_
                                   (lambda (_%g159609159657%_
                                            _%g159610159658%_)
                                     (_%loop159600%_
                                      _%g159609159657%_
                                      (let ((__tmp161920
                                             (_%flatten159540%_
                                              _%g159610159658%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159603%_
                                         __tmp161920)))))
                                  (_%__kont161811161812%_
                                   (lambda (_%g159614159631%_)
                                     (cons _%g159614159631%_
                                           _%result159603%_)))
                                  (_%__kont161813161814%_
                                   (lambda () _%result159603%_)))
                              (let ((_%g159605159644%_
                                     (lambda ()
                                       (let ((_%g159614159631%_
                                              _%__stx161807161808%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159614159631%_))
                                             (_%__kont161811161812%_
                                              _%g159614159631%_)
                                             (_%__kont161813161814%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161807161808%_))
                                    (let ((_%e159611159649%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161807161808%_))))
                                      (let ((_%tl159613159654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159611159649%_)))
                                            (_%hd159612159652%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159611159649%_))))
                                        (_%__kont161809161810%_
                                         _%tl159613159654%_
                                         _%hd159612159652%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159605159644%_)))))))))))
          (let _%loop159542%_ ((_%rest159544%_
                                (_%flatten159540%_ _%bindings159538%_))
                               (_%locals159545%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159546159557%_ _%rest159544%_)
                   (_%E159550159561%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159546159557%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159553159586%_
                     (lambda (_%rest159583%_ _%id159584%_)
                       (_%loop159542%_
                        _%rest159583%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159584%_))
                              _%locals159545%_))))
                    (_%K159552159575%_
                     (lambda (_%id159573%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159573%_))
                             _%locals159545%_)))
                    (_%K159551159566%_ (lambda () _%locals159545%_)))
                (let ((_%try-match159548159580%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159546159557%_))
                             (let ((_%id159578%_ _%rest159546159557%_))
                               (_%K159552159575%_ _%id159578%_))
                             (_%K159551159566%_)))))
                  (if (pair? _%rest159546159557%_)
                      (let ((_%tl159555159591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159546159557%_)))
                            (_%hd159554159589%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159546159557%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159554159589%_))
                            (let ((_%id159594%_ _%hd159554159589%_)
                                  (_%rest159596%_ _%tl159555159591%_))
                              (_%K159553159586%_ _%rest159596%_ _%id159594%_))
                            (_%K159551159566%_)))
                      (_%try-match159548159580%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159490%_ _%stx159491%_)
        (let* ((_%g159493159504%_
                (lambda (_%g159494159501%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159494159501%_))))
               (_%g159492159535%_
                (lambda (_%g159494159507%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159494159507%_))
                      (let ((_%e159497159509%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159494159507%_))))
                        (let ((_%hd159498159512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159497159509%_)))
                              (_%tl159499159514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159497159509%_))))
                          ((lambda (_%g159495159517%_ _%g159496159518%_)
                             (let ((_%rands159533%_
                                    (map (lambda (_%g159528159530%_)
                                           (gxc#compile-e__1
                                            _%self159490%_
                                            _%g159528159530%_))
                                         _%g159495159517%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159496159518%_ _%rands159533%_)
                                _%stx159491%_)))
                           _%tl159499159514%_
                           _%hd159498159512%_)))
                      (_%g159493159504%_ _%g159494159507%_)))))
          (_%g159492159535%_ _%stx159491%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159420%_ _%stx159421%_)
        (let* ((_%g159423159440%_
                (lambda (_%g159424159437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159424159437%_))))
               (_%g159422159487%_
                (lambda (_%g159424159443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159424159443%_))
                      (let ((_%e159427159445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159424159443%_))))
                        (let ((_%hd159428159448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159427159445%_)))
                              (_%tl159429159450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159427159445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159429159450%_))
                              (let ((_%e159430159453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159429159450%_))))
                                (let ((_%hd159431159456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159430159453%_)))
                                      (_%tl159432159458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159430159453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159432159458%_))
                                      (let ((_%e159433159461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159432159458%_))))
                                        (let ((_%hd159434159464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159433159461%_)))
                                              (_%tl159435159466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159433159461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159435159466%_))
                                              ((lambda (_%g159425159469%_
                                                        _%g159426159470%_)
                                                 (let ((_%expr159485%_
                                                        (gxc#compile-e__1
                                                         _%self159420%_
                                                         _%g159425159469%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159426159470%_
                                                                (cons _%expr159485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159421%_)))
                                               _%hd159434159464%_
                                               _%hd159431159456%_)
                                              (_%g159423159440%_
                                               _%g159424159443%_))))
                                      (_%g159423159440%_ _%g159424159443%_))))
                              (_%g159423159440%_ _%g159424159443%_))))
                      (_%g159423159440%_ _%g159424159443%_)))))
          (_%g159422159487%_ _%stx159421%_))))))
