(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770313936)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161664%_)
        (let* ((_%self161666%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161668%_
                (let ((__tmp161886 (gxc#stx-car-e _%stx161664%_)))
                  (declare (not safe))
                  (method-ref _%self161666%_ __tmp161886))))
          (if _%$e161668%_
              ((lambda (_%method161671%_)
                 (declare (not safe))
                 (let ((_%$e161674%_ (gx#stx-source _%stx161664%_)))
                   (if _%$e161674%_
                       ((lambda (_%source161677%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161671%_ _%self161666%_ _%stx161664%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161677%_ '()))
                                 (let ((_%$e161681%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161681%_ _%$e161681%_ '())))))
                        _%$e161674%_)
                       (_%method161671%_ _%self161666%_ _%stx161664%_))))
               _%$e161668%_)
              (let ((__tmp161888 (gxc#stx-car-e _%stx161664%_))
                    (__tmp161887
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161664%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161666%_
                       __tmp161888
                       __tmp161887))))))
    (define gxc#compile-e__1
      (lambda (_%self161686%_ _%stx161687%_)
        (let ((_%$e161689%_
               (let ((__tmp161889 (gxc#stx-car-e _%stx161687%_)))
                 (declare (not safe))
                 (method-ref _%self161686%_ __tmp161889))))
          (if _%$e161689%_
              ((lambda (_%method161692%_)
                 (declare (not safe))
                 (let ((_%$e161695%_ (gx#stx-source _%stx161687%_)))
                   (if _%$e161695%_
                       ((lambda (_%source161698%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161692%_ _%self161686%_ _%stx161687%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161698%_ '()))
                                 (let ((_%$e161702%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161702%_ _%$e161702%_ '())))))
                        _%$e161695%_)
                       (_%method161692%_ _%self161686%_ _%stx161687%_))))
               _%$e161689%_)
              (let ((__tmp161891 (gxc#stx-car-e _%stx161687%_))
                    (__tmp161890
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161687%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161686%_
                       __tmp161891
                       __tmp161890))))))
    (define gxc#compile-e
      (lambda _g161892_
        (let ((_g161893_ (let () (declare (not safe)) (##length _g161892_))))
          (cond ((let () (declare (not safe)) (##fx= _g161893_ 1))
                 (apply gxc#compile-e__0 _g161892_))
                ((let () (declare (not safe)) (##fx= _g161893_ 2))
                 (apply gxc#compile-e__1 _g161892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161892_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161662%_)
        (let ((__tmp161894
               (car (let () (declare (not safe)) (gx#stx-e _%stx161662%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161894))))
    (define gxc#void-method (lambda (_%self161659%_ _%stx161660%_) '#!void))
    (define gxc#false-method (lambda (_%self161656%_ _%stx161657%_) '#f))
    (define gxc#true-method (lambda (_%self161653%_ _%stx161654%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161650%_ _%stx161651%_) _%stx161651%_))
    (define gxc#::void-expression::t
      (let ((__tmp161895 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161895
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161647%_
        (apply make-instance gxc#::void-expression::t _%$args161647%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161896
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
        (__make-atomic-promise __tmp161896)))
    (define gxc#::void-special-form::t
      (let ((__tmp161897 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161897
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161643%_
        (apply make-instance gxc#::void-special-form::t _%$args161643%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161898
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
        (__make-atomic-promise __tmp161898)))
    (define gxc#::void::t
      (let ((__tmp161899
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161899 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161639%_
        (apply make-instance gxc#::void::t _%$args161639%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161900
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161900)))
    (define gxc#::false-expression::t
      (let ((__tmp161901 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161901
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161635%_
        (apply make-instance gxc#::false-expression::t _%$args161635%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161902
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
        (__make-atomic-promise __tmp161902)))
    (define gxc#::false-special-form::t
      (let ((__tmp161903 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161903
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161631%_
        (apply make-instance gxc#::false-special-form::t _%$args161631%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161904
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
        (__make-atomic-promise __tmp161904)))
    (define gxc#::false::t
      (let ((__tmp161905
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161905 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161627%_
        (apply make-instance gxc#::false::t _%$args161627%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161906
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161906)))
    (define gxc#::identity-expression::t
      (let ((__tmp161907 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161907
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161623%_
        (apply make-instance gxc#::identity-expression::t _%$args161623%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161908
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
        (__make-atomic-promise __tmp161908)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161909 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161909
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161619%_
        (apply make-instance gxc#::identity-special-form::t _%$args161619%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161910
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
        (__make-atomic-promise __tmp161910)))
    (define gxc#::identity::t
      (let ((__tmp161911
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161911
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161615%_
        (apply make-instance gxc#::identity::t _%$args161615%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161912
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161912)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161913 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161913
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161611%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161611%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161914
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
        (__make-atomic-promise __tmp161914)))
    (define gxc#::basic-xform::t
      (let ((__tmp161915
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161915
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161607%_
        (apply make-instance gxc#::basic-xform::t _%$args161607%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161916
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
        (__make-atomic-promise __tmp161916)))
    (define gxc#apply-begin%
      (lambda (_%self161563%_ _%stx161564%_)
        (let* ((_%g161566161576%_
                (lambda (_%g161567161573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161567161573%_))))
               (_%g161565161603%_
                (lambda (_%g161567161579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161567161579%_))
                      (let ((_%e161569161581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161567161579%_))))
                        (let ((_%hd161570161584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161569161581%_)))
                              (_%tl161571161586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161569161581%_))))
                          ((lambda (_%g161568161589%_)
                             (for-each
                              (lambda (_%g161598161600%_)
                                (gxc#compile-e__1
                                 _%self161563%_
                                 _%g161598161600%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161568161589%_))))
                           _%tl161571161586%_)))
                      (_%g161566161576%_ _%g161567161579%_)))))
          (_%g161565161603%_ _%stx161564%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161524%_ _%stx161525%_)
        (let* ((_%g161527161537%_
                (lambda (_%g161528161534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161528161534%_))))
               (_%g161526161560%_
                (lambda (_%g161528161540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161528161540%_))
                      (let ((_%e161530161542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161528161540%_))))
                        (let ((_%hd161531161545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161530161542%_)))
                              (_%tl161532161547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161530161542%_))))
                          ((lambda (_%g161529161550%_)
                             (gxc#compile-e__1
                              _%self161524%_
                              (last _%g161529161550%_)))
                           _%tl161532161547%_)))
                      (_%g161527161537%_ _%g161528161540%_)))))
          (_%g161526161560%_ _%stx161525%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161520%_ _%stx161521%_)
        (let ((__tmp161919
               (lambda () (gxc#apply-begin% _%self161520%_ _%stx161521%_)))
              (__tmp161917
               (let ((__tmp161918
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161918 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161919
           gx#current-expander-phi
           __tmp161917))))
    (define gxc#apply-module%
      (lambda (_%self161459%_ _%stx161460%_)
        (let* ((_%g161462161476%_
                (lambda (_%g161463161473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161463161473%_))))
               (_%g161461161517%_
                (lambda (_%g161463161479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161463161479%_))
                      (let ((_%e161466161481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161463161479%_))))
                        (let ((_%hd161467161484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161466161481%_)))
                              (_%tl161468161486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161466161481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161468161486%_))
                              (let ((_%e161469161489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161468161486%_))))
                                (let ((_%hd161470161492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161469161489%_)))
                                      (_%tl161471161494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161469161489%_))))
                                  ((lambda (_%g161464161497%_
                                            _%g161465161498%_)
                                     (let* ((_%ctx161511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161465161498%_)))
                                            (_%ctx-stx161513%_
                                             (##structure-ref
                                              _%ctx161511%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161920
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161459%_
                                                _%ctx-stx161513%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161920
                                        gx#current-expander-context
                                        _%ctx161511%_)))
                                   _%tl161471161494%_
                                   _%hd161470161492%_)))
                              (_%g161462161476%_ _%g161463161479%_))))
                      (_%g161462161476%_ _%g161463161479%_)))))
          (_%g161461161517%_ _%stx161460%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161391%_ _%stx161392%_)
        (let* ((_%g161394161411%_
                (lambda (_%g161395161408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161395161408%_))))
               (_%g161393161456%_
                (lambda (_%g161395161414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161395161414%_))
                      (let ((_%e161398161416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161395161414%_))))
                        (let ((_%hd161399161419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161398161416%_)))
                              (_%tl161400161421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161398161416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161400161421%_))
                              (let ((_%e161401161424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161400161421%_))))
                                (let ((_%hd161402161427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161401161424%_)))
                                      (_%tl161403161429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161401161424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161403161429%_))
                                      (let ((_%e161404161432%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161403161429%_))))
                                        (let ((_%hd161405161435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161404161432%_)))
                                              (_%tl161406161437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161404161432%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161406161437%_))
                                              ((lambda (_%g161396161440%_
                                                        _%g161397161441%_)
                                                 (gxc#compile-e__1
                                                  _%self161391%_
                                                  _%g161396161440%_))
                                               _%hd161405161435%_
                                               _%hd161402161427%_)
                                              (_%g161394161411%_
                                               _%g161395161414%_))))
                                      (_%g161394161411%_ _%g161395161414%_))))
                              (_%g161394161411%_ _%g161395161414%_))))
                      (_%g161394161411%_ _%g161395161414%_)))))
          (_%g161393161456%_ _%stx161392%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161323%_ _%stx161324%_)
        (let* ((_%g161326161343%_
                (lambda (_%g161327161340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161327161340%_))))
               (_%g161325161388%_
                (lambda (_%g161327161346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161327161346%_))
                      (let ((_%e161330161348%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161327161346%_))))
                        (let ((_%hd161331161351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161330161348%_)))
                              (_%tl161332161353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161330161348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161332161353%_))
                              (let ((_%e161333161356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161332161353%_))))
                                (let ((_%hd161334161359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161333161356%_)))
                                      (_%tl161335161361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161333161356%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161335161361%_))
                                      (let ((_%e161336161364%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161335161361%_))))
                                        (let ((_%hd161337161367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161336161364%_)))
                                              (_%tl161338161369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161336161364%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161338161369%_))
                                              ((lambda (_%g161328161372%_
                                                        _%g161329161373%_)
                                                 (gxc#compile-e__1
                                                  _%self161323%_
                                                  _%g161328161372%_))
                                               _%hd161337161367%_
                                               _%hd161334161359%_)
                                              (_%g161326161343%_
                                               _%g161327161346%_))))
                                      (_%g161326161343%_ _%g161327161346%_))))
                              (_%g161326161343%_ _%g161327161346%_))))
                      (_%g161326161343%_ _%g161327161346%_)))))
          (_%g161325161388%_ _%stx161324%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161254%_ _%stx161255%_)
        (let* ((_%g161257161274%_
                (lambda (_%g161258161271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161258161271%_))))
               (_%g161256161320%_
                (lambda (_%g161258161277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161258161277%_))
                      (let ((_%e161261161279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161258161277%_))))
                        (let ((_%hd161262161282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161261161279%_)))
                              (_%tl161263161284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161261161279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161263161284%_))
                              (let ((_%e161264161287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161263161284%_))))
                                (let ((_%hd161265161290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161264161287%_)))
                                      (_%tl161266161292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161264161287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161266161292%_))
                                      (let ((_%e161267161295%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161266161292%_))))
                                        (let ((_%hd161268161298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161267161295%_)))
                                              (_%tl161269161300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161267161295%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161269161300%_))
                                              ((lambda (_%g161259161303%_
                                                        _%g161260161304%_)
                                                 (let ((__tmp161923
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161254%_
                                                           _%g161259161303%_)))
                                                       (__tmp161921
                                                        (let ((__tmp161922
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161922 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161923
                                                    gx#current-expander-phi
                                                    __tmp161921)))
                                               _%hd161268161298%_
                                               _%hd161265161290%_)
                                              (_%g161257161274%_
                                               _%g161258161277%_))))
                                      (_%g161257161274%_ _%g161258161277%_))))
                              (_%g161257161274%_ _%g161258161277%_))))
                      (_%g161257161274%_ _%g161258161277%_)))))
          (_%g161256161320%_ _%stx161255%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161186%_ _%stx161187%_)
        (let* ((_%g161189161206%_
                (lambda (_%g161190161203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161190161203%_))))
               (_%g161188161251%_
                (lambda (_%g161190161209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161190161209%_))
                      (let ((_%e161193161211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161190161209%_))))
                        (let ((_%hd161194161214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161193161211%_)))
                              (_%tl161195161216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161193161211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161195161216%_))
                              (let ((_%e161196161219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161195161216%_))))
                                (let ((_%hd161197161222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161196161219%_)))
                                      (_%tl161198161224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161196161219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161198161224%_))
                                      (let ((_%e161199161227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161198161224%_))))
                                        (let ((_%hd161200161230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161199161227%_)))
                                              (_%tl161201161232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161199161227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161201161232%_))
                                              ((lambda (_%g161191161235%_
                                                        _%g161192161236%_)
                                                 (gxc#compile-e__1
                                                  _%self161186%_
                                                  _%g161191161235%_))
                                               _%hd161200161230%_
                                               _%hd161197161222%_)
                                              (_%g161189161206%_
                                               _%g161190161209%_))))
                                      (_%g161189161206%_ _%g161190161209%_))))
                              (_%g161189161206%_ _%g161190161209%_))))
                      (_%g161189161206%_ _%g161190161209%_)))))
          (_%g161188161251%_ _%stx161187%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self161072%_ _%stx161073%_)
        (let* ((_%g161075161103%_
                (lambda (_%g161076161100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161076161100%_))))
               (_%g161074161183%_
                (lambda (_%g161076161106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161076161106%_))
                      (let ((_%e161079161108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161076161106%_))))
                        (let ((_%hd161080161111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161079161108%_)))
                              (_%tl161081161113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161079161108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161081161113%_))
                              (let ((_g161924_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161081161113%_
                                        '0))))
                                (begin
                                  (let ((_g161925_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161924_)
                                               (##values-length _g161924_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161925_ 2)))
                                        (error "Context expects 2 values"
                                               _g161925_)))
                                  (let ((_%target161082161116%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161924_ 0)))
                                        (_%tl161084161118%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161924_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161084161118%_))
                                        (letrec ((_%loop161085161121%_
                                                  (lambda (_%hd161083161124%_
                                                           _%body161089161126%_
                                                           _%hd161090161127%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161083161124%_))
                                                        (let ((_%e161086161129%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161083161124%_))))
                  (let ((_%lp-hd161087161132%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161086161129%_)))
                        (_%lp-tl161088161134%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161086161129%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd161087161132%_))
                        (let ((_%e161093161137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd161087161132%_))))
                          (let ((_%hd161094161140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161093161137%_)))
                                (_%tl161095161142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161093161137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161095161142%_))
                                (let ((_%e161096161145%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161095161142%_))))
                                  (let ((_%hd161097161148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161096161145%_)))
                                        (_%tl161098161150%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161096161145%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161098161150%_))
                                        (_%loop161085161121%_
                                         _%lp-tl161088161134%_
                                         (cons _%hd161097161148%_
                                               _%body161089161126%_)
                                         (cons _%hd161094161140%_
                                               _%hd161090161127%_))
                                        (_%g161075161103%_
                                         _%g161076161106%_))))
                                (_%g161075161103%_ _%g161076161106%_))))
                        (_%g161075161103%_ _%g161076161106%_))))
                (let ((_%body161091161153%_ (reverse _%body161089161126%_))
                      (_%hd161092161154%_ (reverse _%hd161090161127%_)))
                  ((lambda (_%g161077161156%_ _%g161078161157%_)
                     (for-each
                      (lambda (_%g161171161173%_)
                        (gxc#compile-e__1 _%self161072%_ _%g161171161173%_))
                      (let ((__tmp161926
                             (lambda (_%g161175161178%_ _%g161176161180%_)
                               (cons _%g161175161178%_ _%g161176161180%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161926 '() _%g161077161156%_))))
                   _%body161091161153%_
                   _%hd161092161154%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161085161121%_
                                           _%target161082161116%_
                                           '()
                                           '()))
                                        (_%g161075161103%_
                                         _%g161076161106%_)))))
                              (_%g161075161103%_ _%g161076161106%_))))
                      (_%g161075161103%_ _%g161076161106%_)))))
          (_%g161074161183%_ _%stx161073%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160929%_ _%stx160930%_)
        (let* ((_%g160932160967%_
                (lambda (_%g160933160964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160933160964%_))))
               (_%g160931161069%_
                (lambda (_%g160933160970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160933160970%_))
                      (let ((_%e160937160972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160933160970%_))))
                        (let ((_%hd160938160975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160937160972%_)))
                              (_%tl160939160977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160937160972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160939160977%_))
                              (let ((_%e160940160980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160939160977%_))))
                                (let ((_%hd160941160983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160940160980%_)))
                                      (_%tl160942160985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160940160980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160941160983%_))
                                      (let ((_g161927_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160941160983%_
                                                '0))))
                                        (begin
                                          (let ((_g161928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161927_)
                                                       (##values-length
                                                        _g161927_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161928_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161928_)))
                                          (let ((_%target160943160988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161927_ 0)))
                                                (_%tl160945160990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161927_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160945160990%_))
                                                (letrec ((_%loop160946160993%_
                                                          (lambda (_%hd160944160996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160950160998%_
                           _%hd160951160999%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160944160996%_))
                        (let ((_%e160947161001%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160944160996%_))))
                          (let ((_%lp-hd160948161004%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160947161001%_)))
                                (_%lp-tl160949161006%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160947161001%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160948161004%_))
                                (let ((_%e160954161009%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160948161004%_))))
                                  (let ((_%hd160955161012%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160954161009%_)))
                                        (_%tl160956161014%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160954161009%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160956161014%_))
                                        (let ((_%e160957161017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160956161014%_))))
                                          (let ((_%hd160958161020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160957161017%_)))
                                                (_%tl160959161022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160957161017%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160959161022%_))
                                                (_%loop160946160993%_
                                                 _%lp-tl160949161006%_
                                                 (cons _%hd160958161020%_
                                                       _%expr160950160998%_)
                                                 (cons _%hd160955161012%_
                                                       _%hd160951160999%_))
                                                (_%g160932160967%_
                                                 _%g160933160970%_))))
                                        (_%g160932160967%_
                                         _%g160933160970%_))))
                                (_%g160932160967%_ _%g160933160970%_))))
                        (let ((_%expr160952161025%_
                               (reverse _%expr160950160998%_))
                              (_%hd160953161026%_
                               (reverse _%hd160951160999%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160942160985%_))
                              (let ((_%e160960161028%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160942160985%_))))
                                (let ((_%hd160961161031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160960161028%_)))
                                      (_%tl160962161033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160960161028%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160962161033%_))
                                      ((lambda (_%g160934161036%_
                                                _%g160935161037%_
                                                _%g160936161038%_)
                                         (for-each
                                          (lambda (_%g161057161059%_)
                                            (gxc#compile-e__1
                                             _%self160929%_
                                             _%g161057161059%_))
                                          (let ((__tmp161930
                                                 (lambda (_%g161061161064%_
                                                          _%g161062161066%_)
                                                   (cons _%g161061161064%_
                                                         _%g161062161066%_)))
                                                (__tmp161929
                                                 (cons _%g160934161036%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161930
                                             __tmp161929
                                             _%g160935161037%_))))
                                       _%hd160961161031%_
                                       _%expr160952161025%_
                                       _%hd160953161026%_)
                                      (_%g160932160967%_ _%g160933160970%_))))
                              (_%g160932160967%_ _%g160933160970%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160946160993%_
                                                   _%target160943160988%_
                                                   '()
                                                   '()))
                                                (_%g160932160967%_
                                                 _%g160933160970%_)))))
                                      (_%g160932160967%_ _%g160933160970%_))))
                              (_%g160932160967%_ _%g160933160970%_))))
                      (_%g160932160967%_ _%g160933160970%_)))))
          (_%g160931161069%_ _%stx160930%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160874%_ _%stx160875%_)
        (let* ((_%g160877160891%_
                (lambda (_%g160878160888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160878160888%_))))
               (_%g160876160926%_
                (lambda (_%g160878160894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160878160894%_))
                      (let ((_%e160881160896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160878160894%_))))
                        (let ((_%hd160882160899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160881160896%_)))
                              (_%tl160883160901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160881160896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160883160901%_))
                              (let ((_%e160884160904%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160883160901%_))))
                                (let ((_%hd160885160907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160884160904%_)))
                                      (_%tl160886160909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160884160904%_))))
                                  ((lambda (_%g160879160912%_
                                            _%g160880160913%_)
                                     (gxc#compile-e__1
                                      _%self160874%_
                                      (last _%g160879160912%_)))
                                   _%tl160886160909%_
                                   _%hd160885160907%_)))
                              (_%g160877160891%_ _%g160878160894%_))))
                      (_%g160877160891%_ _%g160878160894%_)))))
          (_%g160876160926%_ _%stx160875%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160806%_ _%stx160807%_)
        (let* ((_%g160809160826%_
                (lambda (_%g160810160823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160810160823%_))))
               (_%g160808160871%_
                (lambda (_%g160810160829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160810160829%_))
                      (let ((_%e160813160831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160810160829%_))))
                        (let ((_%hd160814160834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160813160831%_)))
                              (_%tl160815160836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160813160831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160815160836%_))
                              (let ((_%e160816160839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160815160836%_))))
                                (let ((_%hd160817160842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160816160839%_)))
                                      (_%tl160818160844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160816160839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160818160844%_))
                                      (let ((_%e160819160847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160818160844%_))))
                                        (let ((_%hd160820160850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160819160847%_)))
                                              (_%tl160821160852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160819160847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160821160852%_))
                                              ((lambda (_%g160811160855%_
                                                        _%g160812160856%_)
                                                 (gxc#compile-e__1
                                                  _%self160806%_
                                                  _%g160811160855%_))
                                               _%hd160820160850%_
                                               _%hd160817160842%_)
                                              (_%g160809160826%_
                                               _%g160810160829%_))))
                                      (_%g160809160826%_ _%g160810160829%_))))
                              (_%g160809160826%_ _%g160810160829%_))))
                      (_%g160809160826%_ _%g160810160829%_)))))
          (_%g160808160871%_ _%stx160807%_))))
    (define gxc#apply-operands
      (lambda (_%self160721%_ _%stx160722%_)
        (let* ((_%g160724160743%_
                (lambda (_%g160725160740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160725160740%_))))
               (_%g160723160803%_
                (lambda (_%g160725160746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160725160746%_))
                      (let ((_%e160727160748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160725160746%_))))
                        (let ((_%hd160728160751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160727160748%_)))
                              (_%tl160729160753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160727160748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160729160753%_))
                              (let ((_g161931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160729160753%_
                                        '0))))
                                (begin
                                  (let ((_g161932_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161931_)
                                               (##values-length _g161931_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161932_ 2)))
                                        (error "Context expects 2 values"
                                               _g161932_)))
                                  (let ((_%target160730160756%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161931_ 0)))
                                        (_%tl160732160758%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161931_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160732160758%_))
                                        (letrec ((_%loop160733160761%_
                                                  (lambda (_%hd160731160764%_
                                                           _%rands160737160766%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160731160764%_))
                                                        (let ((_%e160734160768%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160731160764%_))))
                  (let ((_%lp-hd160735160771%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160734160768%_)))
                        (_%lp-tl160736160773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160734160768%_))))
                    (_%loop160733160761%_
                     _%lp-tl160736160773%_
                     (cons _%lp-hd160735160771%_ _%rands160737160766%_))))
                (let ((_%rands160738160776%_ (reverse _%rands160737160766%_)))
                  ((lambda (_%g160726160778%_)
                     (for-each
                      (lambda (_%g160791160793%_)
                        (gxc#compile-e__1 _%self160721%_ _%g160791160793%_))
                      (let ((__tmp161933
                             (lambda (_%g160795160798%_ _%g160796160800%_)
                               (cons _%g160795160798%_ _%g160796160800%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161933 '() _%g160726160778%_))))
                   _%rands160738160776%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160733160761%_
                                           _%target160730160756%_
                                           '()))
                                        (_%g160724160743%_
                                         _%g160725160746%_)))))
                              (_%g160724160743%_ _%g160725160746%_))))
                      (_%g160724160743%_ _%g160725160746%_)))))
          (_%g160723160803%_ _%stx160722%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160718%_ _%src-stx160719%_)
        (let ((__tmp161934
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160719%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160718%_ __tmp161934))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160714%_ _%src-stx160715%_ _%ctx160716%_)
        (gxc#compile-e__1
         _%ctx160716%_
         (gxc#xform-wrap-source _%stx160714%_ _%src-stx160715%_))))
    (define gxc#xform-begin%
      (lambda (_%self160669%_ _%stx160670%_)
        (let* ((_%g160672160682%_
                (lambda (_%g160673160679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160673160679%_))))
               (_%g160671160711%_
                (lambda (_%g160673160685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160673160685%_))
                      (let ((_%e160675160687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160673160685%_))))
                        (let ((_%hd160676160690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160675160687%_)))
                              (_%tl160677160692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160675160687%_))))
                          ((lambda (_%g160674160695%_)
                             (let ((_%forms160709%_
                                    (map (lambda (_%g160704160706%_)
                                           (gxc#compile-e__1
                                            _%self160669%_
                                            _%g160704160706%_))
                                         _%g160674160695%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160709%_)
                                _%stx160670%_)))
                           _%tl160677160692%_)))
                      (_%g160672160682%_ _%g160673160685%_)))))
          (_%g160671160711%_ _%stx160670%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160623%_ _%stx160624%_)
        (let* ((_%g160626160636%_
                (lambda (_%g160627160633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160627160633%_))))
               (_%g160625160666%_
                (lambda (_%g160627160639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160627160639%_))
                      (let ((_%e160629160641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160627160639%_))))
                        (let ((_%hd160630160644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160629160641%_)))
                              (_%tl160631160646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160629160641%_))))
                          ((lambda (_%g160628160649%_)
                             (let ((__tmp161937
                                    (lambda ()
                                      (let ((_%forms160664%_
                                             (map (lambda (_%g160659160661%_)
                                                    (gxc#compile-e__1
                                                     _%self160623%_
                                                     _%g160659160661%_))
                                                  _%g160628160649%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160664%_)
                                         _%stx160624%_))))
                                   (__tmp161935
                                    (let ((__tmp161936
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161936 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161937
                                gx#current-expander-phi
                                __tmp161935)))
                           _%tl160631160646%_)))
                      (_%g160626160636%_ _%g160627160639%_)))))
          (_%g160625160666%_ _%stx160624%_))))
    (define gxc#xform-module%
      (lambda (_%self160560%_ _%stx160561%_)
        (let* ((_%g160563160577%_
                (lambda (_%g160564160574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160564160574%_))))
               (_%g160562160620%_
                (lambda (_%g160564160580%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160564160580%_))
                      (let ((_%e160567160582%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160564160580%_))))
                        (let ((_%hd160568160585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160567160582%_)))
                              (_%tl160569160587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160567160582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160569160587%_))
                              (let ((_%e160570160590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160569160587%_))))
                                (let ((_%hd160571160593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160570160590%_)))
                                      (_%tl160572160595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160570160590%_))))
                                  ((lambda (_%g160565160598%_
                                            _%g160566160599%_)
                                     (let* ((_%ctx160612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160566160599%_)))
                                            (_%code160614%_
                                             (##structure-ref
                                              _%ctx160612%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160617%_
                                             (let ((__tmp161938
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160560%_
                                                       _%code160614%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161938
                                                gx#current-expander-context
                                                _%ctx160612%_))))
                                       (##structure-set!
                                        _%ctx160612%_
                                        _%code160617%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160566160599%_
                                                    (cons _%code160617%_ '())))
                                        _%stx160561%_)))
                                   _%tl160572160595%_
                                   _%hd160571160593%_)))
                              (_%g160563160577%_ _%g160564160580%_))))
                      (_%g160563160577%_ _%g160564160580%_)))))
          (_%g160562160620%_ _%stx160561%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160490%_ _%stx160491%_)
        (let* ((_%g160493160510%_
                (lambda (_%g160494160507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160494160507%_))))
               (_%g160492160557%_
                (lambda (_%g160494160513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160494160513%_))
                      (let ((_%e160497160515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160494160513%_))))
                        (let ((_%hd160498160518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160497160515%_)))
                              (_%tl160499160520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160497160515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160499160520%_))
                              (let ((_%e160500160523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160499160520%_))))
                                (let ((_%hd160501160526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160500160523%_)))
                                      (_%tl160502160528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160500160523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160502160528%_))
                                      (let ((_%e160503160531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160502160528%_))))
                                        (let ((_%hd160504160534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160503160531%_)))
                                              (_%tl160505160536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160503160531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160505160536%_))
                                              ((lambda (_%g160495160539%_
                                                        _%g160496160540%_)
                                                 (let ((_%expr160555%_
                                                        (gxc#compile-e__1
                                                         _%self160490%_
                                                         _%g160495160539%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160496160540%_
                                                                (cons _%expr160555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160491%_)))
                                               _%hd160504160534%_
                                               _%hd160501160526%_)
                                              (_%g160493160510%_
                                               _%g160494160513%_))))
                                      (_%g160493160510%_ _%g160494160513%_))))
                              (_%g160493160510%_ _%g160494160513%_))))
                      (_%g160493160510%_ _%g160494160513%_)))))
          (_%g160492160557%_ _%stx160491%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160419%_ _%stx160420%_)
        (let* ((_%g160422160439%_
                (lambda (_%g160423160436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160423160436%_))))
               (_%g160421160487%_
                (lambda (_%g160423160442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160423160442%_))
                      (let ((_%e160426160444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160423160442%_))))
                        (let ((_%hd160427160447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160426160444%_)))
                              (_%tl160428160449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160426160444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160428160449%_))
                              (let ((_%e160429160452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160428160449%_))))
                                (let ((_%hd160430160455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160429160452%_)))
                                      (_%tl160431160457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160429160452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160431160457%_))
                                      (let ((_%e160432160460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160431160457%_))))
                                        (let ((_%hd160433160463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160432160460%_)))
                                              (_%tl160434160465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160432160460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160434160465%_))
                                              ((lambda (_%g160424160468%_
                                                        _%g160425160469%_)
                                                 (let ((__tmp161941
                                                        (lambda ()
                                                          (let ((_%expr160485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160419%_ _%g160424160468%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160425160469%_ (cons _%expr160485%_ '())))
                     _%stx160420%_))))
               (__tmp161939
                (let ((__tmp161940
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161940 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161941
                                                    gx#current-expander-phi
                                                    __tmp161939)))
                                               _%hd160433160463%_
                                               _%hd160430160455%_)
                                              (_%g160422160439%_
                                               _%g160423160442%_))))
                                      (_%g160422160439%_ _%g160423160442%_))))
                              (_%g160422160439%_ _%g160423160442%_))))
                      (_%g160422160439%_ _%g160423160442%_)))))
          (_%g160421160487%_ _%stx160420%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160349%_ _%stx160350%_)
        (let* ((_%g160352160369%_
                (lambda (_%g160353160366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160353160366%_))))
               (_%g160351160416%_
                (lambda (_%g160353160372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160353160372%_))
                      (let ((_%e160356160374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160353160372%_))))
                        (let ((_%hd160357160377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160356160374%_)))
                              (_%tl160358160379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160356160374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160358160379%_))
                              (let ((_%e160359160382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160358160379%_))))
                                (let ((_%hd160360160385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160359160382%_)))
                                      (_%tl160361160387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160359160382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160361160387%_))
                                      (let ((_%e160362160390%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160361160387%_))))
                                        (let ((_%hd160363160393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160362160390%_)))
                                              (_%tl160364160395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160362160390%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160364160395%_))
                                              ((lambda (_%g160354160398%_
                                                        _%g160355160399%_)
                                                 (let ((_%expr160414%_
                                                        (gxc#compile-e__1
                                                         _%self160349%_
                                                         _%g160354160398%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160355160399%_
                                                                (cons _%expr160414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160350%_)))
                                               _%hd160363160393%_
                                               _%hd160360160385%_)
                                              (_%g160352160369%_
                                               _%g160353160372%_))))
                                      (_%g160352160369%_ _%g160353160372%_))))
                              (_%g160352160369%_ _%g160353160372%_))))
                      (_%g160352160369%_ _%g160353160372%_)))))
          (_%g160351160416%_ _%stx160350%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160287%_ _%stx160288%_)
        (let* ((_%g160290160304%_
                (lambda (_%g160291160301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160291160301%_))))
               (_%g160289160346%_
                (lambda (_%g160291160307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160291160307%_))
                      (let ((_%e160294160309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160291160307%_))))
                        (let ((_%hd160295160312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160294160309%_)))
                              (_%tl160296160314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160294160309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160296160314%_))
                              (let ((_%e160297160317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160296160314%_))))
                                (let ((_%hd160298160320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160297160317%_)))
                                      (_%tl160299160322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160297160317%_))))
                                  ((lambda (_%g160292160325%_
                                            _%g160293160326%_)
                                     (let ((__tmp161943
                                            (lambda ()
                                              (let ((_%body160344%_
                                                     (map (lambda (_%g160339160341%_)
                                                            (gxc#compile-e__1
                                                             _%self160287%_
                                                             _%g160339160341%_))
                                                          _%g160292160325%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160293160326%_
                                                             _%body160344%_))
                                                 _%stx160288%_))))
                                           (__tmp161942
                                            (gxc#xform-let-locals
                                             _%g160293160326%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161943
                                        gxc#current-compile-local-env
                                        __tmp161942)))
                                   _%tl160299160322%_
                                   _%hd160298160320%_)))
                              (_%g160290160304%_ _%g160291160307%_))))
                      (_%g160290160304%_ _%g160291160307%_)))))
          (_%g160289160346%_ _%stx160288%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160195%_ _%stx160196%_)
        (letrec ((_%clause-e160198%_
                  (lambda (_%clause160239%_)
                    (let* ((_%g160241160252%_
                            (lambda (_%g160242160249%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160242160249%_))))
                           (_%g160240160284%_
                            (lambda (_%g160242160255%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160242160255%_))
                                  (let ((_%e160245160257%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160242160255%_))))
                                    (let ((_%hd160246160260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160245160257%_)))
                                          (_%tl160247160262%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160245160257%_))))
                                      ((lambda (_%g160243160265%_
                                                _%g160244160266%_)
                                         (let ((__tmp161945
                                                (lambda ()
                                                  (let ((_%body160282%_
                                                         (map (lambda (_%g160277160279%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160195%_
                         _%g160277160279%_))
                      _%g160243160265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160244160266%_
                                                          _%body160282%_))))
                                               (__tmp161944
                                                (gxc#xform-let-locals
                                                 _%g160244160266%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161945
                                            gxc#current-compile-local-env
                                            __tmp161944)))
                                       _%tl160247160262%_
                                       _%hd160246160260%_)))
                                  (_%g160241160252%_ _%g160242160255%_)))))
                      (_%g160240160284%_ _%clause160239%_)))))
          (let* ((_%g160200160210%_
                  (lambda (_%g160201160207%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160201160207%_))))
                 (_%g160199160236%_
                  (lambda (_%g160201160213%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160201160213%_))
                        (let ((_%e160203160215%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160201160213%_))))
                          (let ((_%hd160204160218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160203160215%_)))
                                (_%tl160205160220%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160203160215%_))))
                            ((lambda (_%g160202160223%_)
                               (let ((_%clauses160234%_
                                      (map _%clause-e160198%_
                                           _%g160202160223%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160234%_)
                                  _%stx160196%_)))
                             _%tl160205160220%_)))
                        (_%g160200160210%_ _%g160201160213%_)))))
            (_%g160199160236%_ _%stx160196%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159955%_ _%stx159956%_)
        (let* ((_%g159958159991%_
                (lambda (_%g159959159988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159959159988%_))))
               (_%g159957160192%_
                (lambda (_%g159959159994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159959159994%_))
                      (let ((_%e159964159996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159959159994%_))))
                        (let ((_%hd159965159999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159964159996%_)))
                              (_%tl159966160001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159964159996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159966160001%_))
                              (let ((_%e159967160004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159966160001%_))))
                                (let ((_%hd159968160007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159967160004%_)))
                                      (_%tl159969160009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159967160004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159968160007%_))
                                      (let ((_g161946_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159968160007%_
                                                '0))))
                                        (begin
                                          (let ((_g161947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161946_)
                                                       (##values-length
                                                        _g161946_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161947_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161947_)))
                                          (let ((_%target159970160012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161946_ 0)))
                                                (_%tl159972160014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161946_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159972160014%_))
                                                (letrec ((_%loop159973160017%_
                                                          (lambda (_%hd159971160020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159977160022%_
                           _%hd159978160023%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159971160020%_))
                        (let ((_%e159974160025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159971160020%_))))
                          (let ((_%lp-hd159975160028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159974160025%_)))
                                (_%lp-tl159976160030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159974160025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159975160028%_))
                                (let ((_%e159981160033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159975160028%_))))
                                  (let ((_%hd159982160036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159981160033%_)))
                                        (_%tl159983160038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159981160033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159983160038%_))
                                        (let ((_%e159984160041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159983160038%_))))
                                          (let ((_%hd159985160044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159984160041%_)))
                                                (_%tl159986160046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159984160041%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159986160046%_))
                                                (_%loop159973160017%_
                                                 _%lp-tl159976160030%_
                                                 (cons _%hd159985160044%_
                                                       _%expr159977160022%_)
                                                 (cons _%hd159982160036%_
                                                       _%hd159978160023%_))
                                                (_%g159958159991%_
                                                 _%g159959159994%_))))
                                        (_%g159958159991%_
                                         _%g159959159994%_))))
                                (_%g159958159991%_ _%g159959159994%_))))
                        (let ((_%expr159979160049%_
                               (reverse _%expr159977160022%_))
                              (_%hd159980160050%_
                               (reverse _%hd159978160023%_)))
                          ((lambda (_%g159960160052%_
                                    _%g159961160053%_
                                    _%g159962160054%_
                                    _%g159963160055%_)
                             (let* ((_%g160074160090%_
                                     (lambda (_%g160075160087%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g160075160087%_))))
                                    (_%g160073160178%_
                                     (lambda (_%g160075160093%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g160075160093%_))
                                           (let ((_g161948_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g160075160093%_
                                                     '0))))
                                             (begin
                                               (let ((_g161949_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161948_)
                                                            (##values-length
                                                             _g161948_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161949_)))
                                               (let ((_%target160077160095%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161948_
                                                         0)))
                                                     (_%tl160079160097%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161948_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl160079160097%_))
                                                     (letrec ((_%loop160080160100%_
                                                               (lambda (_%hd160078160103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr160084160105%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd160078160103%_))
                             (let ((_%e160081160107%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd160078160103%_))))
                               (let ((_%lp-hd160082160110%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e160081160107%_)))
                                     (_%lp-tl160083160112%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e160081160107%_))))
                                 (_%loop160080160100%_
                                  _%lp-tl160083160112%_
                                  (cons _%lp-hd160082160110%_
                                        _%expr160084160105%_))))
                             (let ((_%expr160085160115%_
                                    (reverse _%expr160084160105%_)))
                               ((lambda (_%g160076160117%_)
                                  (let ((__tmp161952
                                         (lambda ()
                                           (let* ((_%g160131160138%_
                                                   (lambda (_%g160132160135%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160132160135%_))))
                                                  (_%g160130160164%_
                                                   (lambda (_%g160132160141%_)
                                                     ((lambda (_%g160133160143%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159963160055%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g160076160117%_
                                  _%g159962160054%_))
                               (let ((__tmp161953
                                      (lambda (_%g160153160157%_
                                               _%g160154160159%_
                                               _%g160155160161%_)
                                        (cons (cons _%g160154160159%_
                                                    (cons _%g160153160157%_
                                                          '()))
                                              _%g160155160161%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161953
                                  '()
                                  _%g160076160117%_
                                  _%g159962160054%_)))
                             _%g160133160143%_))
                 _%stx159956%_))
              _%g160132160141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g160130160164%_
                                              (map (lambda (_%g160166160168%_)
                                                     (gxc#compile-e__1
                                                      _%self159955%_
                                                      _%g160166160168%_))
                                                   _%g159960160052%_)))))
                                        (__tmp161950
                                         (gxc#xform-let-locals
                                          (let ((__tmp161951
                                                 (lambda (_%g160170160173%_
                                                          _%g160171160175%_)
                                                   (cons _%g160170160173%_
                                                         _%g160171160175%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161951
                                             '()
                                             _%g159962160054%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161952
                                     gxc#current-compile-local-env
                                     __tmp161950)))
                                _%expr160085160115%_))))))
               (_%loop160080160100%_ _%target160077160095%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160074160090%_
                                                      _%g160075160093%_)))))
                                           (_%g160074160090%_
                                            _%g160075160093%_)))))
                               (_%g160073160178%_
                                (map (lambda (_%g160180160182%_)
                                       (gxc#compile-e__1
                                        _%self159955%_
                                        _%g160180160182%_))
                                     (let ((__tmp161954
                                            (lambda (_%g160184160187%_
                                                     _%g160185160189%_)
                                              (cons _%g160184160187%_
                                                    _%g160185160189%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161954
                                        '()
                                        _%g159961160053%_))))))
                           _%tl159969160009%_
                           _%expr159979160049%_
                           _%hd159980160050%_
                           _%hd159965159999%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159973160017%_
                                                   _%target159970160012%_
                                                   '()
                                                   '()))
                                                (_%g159958159991%_
                                                 _%g159959159994%_)))))
                                      (_%g159958159991%_ _%g159959159994%_))))
                              (_%g159958159991%_ _%g159959159994%_))))
                      (_%g159958159991%_ _%g159959159994%_)))))
          (_%g159957160192%_ _%stx159956%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159715%_ _%stx159716%_)
        (let* ((_%g159718159751%_
                (lambda (_%g159719159748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159719159748%_))))
               (_%g159717159952%_
                (lambda (_%g159719159754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159719159754%_))
                      (let ((_%e159724159756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159719159754%_))))
                        (let ((_%hd159725159759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159724159756%_)))
                              (_%tl159726159761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159724159756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159726159761%_))
                              (let ((_%e159727159764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159726159761%_))))
                                (let ((_%hd159728159767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159727159764%_)))
                                      (_%tl159729159769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159727159764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159728159767%_))
                                      (let ((_g161955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159728159767%_
                                                '0))))
                                        (begin
                                          (let ((_g161956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161955_)
                                                       (##values-length
                                                        _g161955_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161956_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161956_)))
                                          (let ((_%target159730159772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161955_ 0)))
                                                (_%tl159732159774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161955_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159732159774%_))
                                                (letrec ((_%loop159733159777%_
                                                          (lambda (_%hd159731159780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159737159782%_
                           _%hd159738159783%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159731159780%_))
                        (let ((_%e159734159785%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159731159780%_))))
                          (let ((_%lp-hd159735159788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159734159785%_)))
                                (_%lp-tl159736159790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159734159785%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159735159788%_))
                                (let ((_%e159741159793%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159735159788%_))))
                                  (let ((_%hd159742159796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159741159793%_)))
                                        (_%tl159743159798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159741159793%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159743159798%_))
                                        (let ((_%e159744159801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159743159798%_))))
                                          (let ((_%hd159745159804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159744159801%_)))
                                                (_%tl159746159806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159744159801%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159746159806%_))
                                                (_%loop159733159777%_
                                                 _%lp-tl159736159790%_
                                                 (cons _%hd159745159804%_
                                                       _%expr159737159782%_)
                                                 (cons _%hd159742159796%_
                                                       _%hd159738159783%_))
                                                (_%g159718159751%_
                                                 _%g159719159754%_))))
                                        (_%g159718159751%_
                                         _%g159719159754%_))))
                                (_%g159718159751%_ _%g159719159754%_))))
                        (let ((_%expr159739159809%_
                               (reverse _%expr159737159782%_))
                              (_%hd159740159810%_
                               (reverse _%hd159738159783%_)))
                          ((lambda (_%g159720159812%_
                                    _%g159721159813%_
                                    _%g159722159814%_
                                    _%g159723159815%_)
                             (let ((__tmp161959
                                    (lambda ()
                                      (let* ((_%g159835159851%_
                                              (lambda (_%g159836159848%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159836159848%_))))
                                             (_%g159834159931%_
                                              (lambda (_%g159836159854%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159836159854%_))
                                                    (let ((_g161960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159836159854%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161960_)
                             (##values-length _g161960_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161961_ 2)))
                      (error "Context expects 2 values" _g161961_)))
                (let ((_%target159838159856%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161960_ 0)))
                      (_%tl159840159858%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161960_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159840159858%_))
                      (letrec ((_%loop159841159861%_
                                (lambda (_%hd159839159864%_
                                         _%expr159845159866%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159839159864%_))
                                      (let ((_%e159842159868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159839159864%_))))
                                        (let ((_%lp-hd159843159871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159842159868%_)))
                                              (_%lp-tl159844159873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159842159868%_))))
                                          (_%loop159841159861%_
                                           _%lp-tl159844159873%_
                                           (cons _%lp-hd159843159871%_
                                                 _%expr159845159866%_))))
                                      (let ((_%expr159846159876%_
                                             (reverse _%expr159845159866%_)))
                                        ((lambda (_%g159837159878%_)
                                           (let* ((_%g159892159899%_
                                                   (lambda (_%g159893159896%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159893159896%_))))
                                                  (_%g159891159924%_
                                                   (lambda (_%g159893159902%_)
                                                     ((lambda (_%g159894159904%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159723159815%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159837159878%_
                                  _%g159722159814%_))
                               (let ((__tmp161962
                                      (lambda (_%g159913159917%_
                                               _%g159914159919%_
                                               _%g159915159921%_)
                                        (cons (cons _%g159914159919%_
                                                    (cons _%g159913159917%_
                                                          '()))
                                              _%g159915159921%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161962
                                  '()
                                  _%g159837159878%_
                                  _%g159722159814%_)))
                             _%g159894159904%_))
                 _%stx159716%_))
              _%g159893159902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159891159924%_
                                              (map (lambda (_%g159926159928%_)
                                                     (gxc#compile-e__1
                                                      _%self159715%_
                                                      _%g159926159928%_))
                                                   _%g159720159812%_))))
                                         _%expr159846159876%_))))))
                        (_%loop159841159861%_ _%target159838159856%_ '()))
                      (_%g159835159851%_ _%g159836159854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159835159851%_
                                                     _%g159836159854%_)))))
                                        (_%g159834159931%_
                                         (map (lambda (_%g159933159935%_)
                                                (gxc#compile-e__1
                                                 _%self159715%_
                                                 _%g159933159935%_))
                                              (let ((__tmp161963
                                                     (lambda (_%g159937159940%_
                                                              _%g159938159942%_)
                                                       (cons _%g159937159940%_
                                                             _%g159938159942%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161963
                                                 '()
                                                 _%g159721159813%_)))))))
                                   (__tmp161957
                                    (gxc#xform-let-locals
                                     (let ((__tmp161958
                                            (lambda (_%g159944159947%_
                                                     _%g159945159949%_)
                                              (cons _%g159944159947%_
                                                    _%g159945159949%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161958
                                        '()
                                        _%g159722159814%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161959
                                gxc#current-compile-local-env
                                __tmp161957)))
                           _%tl159729159769%_
                           _%expr159739159809%_
                           _%hd159740159810%_
                           _%hd159725159759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159733159777%_
                                                   _%target159730159772%_
                                                   '()
                                                   '()))
                                                (_%g159718159751%_
                                                 _%g159719159754%_)))))
                                      (_%g159718159751%_ _%g159719159754%_))))
                              (_%g159718159751%_ _%g159719159754%_))))
                      (_%g159718159751%_ _%g159719159754%_)))))
          (_%g159717159952%_ _%stx159716%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159582%_)
        (letrec ((_%flatten159584%_
                  (lambda (_%maybe-lst159642%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159642%_))
                        (cons _%maybe-lst159642%_ '())
                        (let _%loop159644%_ ((_%rest159646%_
                                              _%maybe-lst159642%_)
                                             (_%result159647%_ '()))
                          (let* ((_%__stx161851161852%_ _%rest159646%_)
                                 (_%g159651159663%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161851161852%_)))))
                            (let ((_%__kont161853161854%_
                                   (lambda (_%g159653159701%_
                                            _%g159654159702%_)
                                     (_%loop159644%_
                                      _%g159653159701%_
                                      (let ((__tmp161964
                                             (_%flatten159584%_
                                              _%g159654159702%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159647%_
                                         __tmp161964)))))
                                  (_%__kont161855161856%_
                                   (lambda (_%g159658159675%_)
                                     (cons _%g159658159675%_
                                           _%result159647%_)))
                                  (_%__kont161857161858%_
                                   (lambda () _%result159647%_)))
                              (let ((_%g159649159688%_
                                     (lambda ()
                                       (let ((_%g159658159675%_
                                              _%__stx161851161852%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159658159675%_))
                                             (_%__kont161855161856%_
                                              _%g159658159675%_)
                                             (_%__kont161857161858%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161851161852%_))
                                    (let ((_%e159655159693%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161851161852%_))))
                                      (let ((_%tl159657159698%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159655159693%_)))
                                            (_%hd159656159696%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159655159693%_))))
                                        (_%__kont161853161854%_
                                         _%tl159657159698%_
                                         _%hd159656159696%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159649159688%_)))))))))))
          (let _%loop159586%_ ((_%rest159588%_
                                (_%flatten159584%_ _%bindings159582%_))
                               (_%locals159589%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159590159601%_ _%rest159588%_)
                   (_%E159594159605%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159590159601%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159597159630%_
                     (lambda (_%rest159627%_ _%id159628%_)
                       (_%loop159586%_
                        _%rest159627%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159628%_))
                              _%locals159589%_))))
                    (_%K159596159619%_
                     (lambda (_%id159617%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159617%_))
                             _%locals159589%_)))
                    (_%K159595159610%_ (lambda () _%locals159589%_)))
                (let ((_%try-match159592159624%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159590159601%_))
                             (let ((_%id159622%_ _%rest159590159601%_))
                               (_%K159596159619%_ _%id159622%_))
                             (_%K159595159610%_)))))
                  (if (pair? _%rest159590159601%_)
                      (let ((_%tl159599159635%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159590159601%_)))
                            (_%hd159598159633%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159590159601%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159598159633%_))
                            (let ((_%id159638%_ _%hd159598159633%_)
                                  (_%rest159640%_ _%tl159599159635%_))
                              (_%K159597159630%_ _%rest159640%_ _%id159638%_))
                            (_%K159595159610%_)))
                      (_%try-match159592159624%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159534%_ _%stx159535%_)
        (let* ((_%g159537159548%_
                (lambda (_%g159538159545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159538159545%_))))
               (_%g159536159579%_
                (lambda (_%g159538159551%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159538159551%_))
                      (let ((_%e159541159553%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159538159551%_))))
                        (let ((_%hd159542159556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159541159553%_)))
                              (_%tl159543159558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159541159553%_))))
                          ((lambda (_%g159539159561%_ _%g159540159562%_)
                             (let ((_%rands159577%_
                                    (map (lambda (_%g159572159574%_)
                                           (gxc#compile-e__1
                                            _%self159534%_
                                            _%g159572159574%_))
                                         _%g159539159561%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159540159562%_ _%rands159577%_)
                                _%stx159535%_)))
                           _%tl159543159558%_
                           _%hd159542159556%_)))
                      (_%g159537159548%_ _%g159538159551%_)))))
          (_%g159536159579%_ _%stx159535%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159464%_ _%stx159465%_)
        (let* ((_%g159467159484%_
                (lambda (_%g159468159481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159468159481%_))))
               (_%g159466159531%_
                (lambda (_%g159468159487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159468159487%_))
                      (let ((_%e159471159489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159468159487%_))))
                        (let ((_%hd159472159492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159471159489%_)))
                              (_%tl159473159494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159471159489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159473159494%_))
                              (let ((_%e159474159497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159473159494%_))))
                                (let ((_%hd159475159500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159474159497%_)))
                                      (_%tl159476159502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159474159497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159476159502%_))
                                      (let ((_%e159477159505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159476159502%_))))
                                        (let ((_%hd159478159508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159477159505%_)))
                                              (_%tl159479159510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159477159505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159479159510%_))
                                              ((lambda (_%g159469159513%_
                                                        _%g159470159514%_)
                                                 (let ((_%expr159529%_
                                                        (gxc#compile-e__1
                                                         _%self159464%_
                                                         _%g159469159513%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159470159514%_
                                                                (cons _%expr159529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159465%_)))
                                               _%hd159478159508%_
                                               _%hd159475159500%_)
                                              (_%g159467159484%_
                                               _%g159468159487%_))))
                                      (_%g159467159484%_ _%g159468159487%_))))
                              (_%g159467159484%_ _%g159468159487%_))))
                      (_%g159467159484%_ _%g159468159487%_)))))
          (_%g159466159531%_ _%stx159465%_))))))
