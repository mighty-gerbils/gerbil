(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770333055)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161695%_)
        (let* ((_%self161697%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161699%_
                (let ((__tmp161917 (gxc#stx-car-e _%stx161695%_)))
                  (declare (not safe))
                  (method-ref _%self161697%_ __tmp161917))))
          (if _%$e161699%_
              ((lambda (_%method161702%_)
                 (declare (not safe))
                 (let ((_%$e161705%_ (gx#stx-source _%stx161695%_)))
                   (if _%$e161705%_
                       ((lambda (_%source161708%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161702%_ _%self161697%_ _%stx161695%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161708%_ '()))
                                 (let ((_%$e161712%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161712%_ _%$e161712%_ '())))))
                        _%$e161705%_)
                       (_%method161702%_ _%self161697%_ _%stx161695%_))))
               _%$e161699%_)
              (let ((__tmp161919 (gxc#stx-car-e _%stx161695%_))
                    (__tmp161918
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161695%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161697%_
                       __tmp161919
                       __tmp161918))))))
    (define gxc#compile-e__1
      (lambda (_%self161717%_ _%stx161718%_)
        (let ((_%$e161720%_
               (let ((__tmp161920 (gxc#stx-car-e _%stx161718%_)))
                 (declare (not safe))
                 (method-ref _%self161717%_ __tmp161920))))
          (if _%$e161720%_
              ((lambda (_%method161723%_)
                 (declare (not safe))
                 (let ((_%$e161726%_ (gx#stx-source _%stx161718%_)))
                   (if _%$e161726%_
                       ((lambda (_%source161729%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161723%_ _%self161717%_ _%stx161718%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161729%_ '()))
                                 (let ((_%$e161733%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161733%_ _%$e161733%_ '())))))
                        _%$e161726%_)
                       (_%method161723%_ _%self161717%_ _%stx161718%_))))
               _%$e161720%_)
              (let ((__tmp161922 (gxc#stx-car-e _%stx161718%_))
                    (__tmp161921
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161718%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161717%_
                       __tmp161922
                       __tmp161921))))))
    (define gxc#compile-e
      (lambda _g161923_
        (let ((_g161924_ (let () (declare (not safe)) (##length _g161923_))))
          (cond ((let () (declare (not safe)) (##fx= _g161924_ 1))
                 (apply gxc#compile-e__0 _g161923_))
                ((let () (declare (not safe)) (##fx= _g161924_ 2))
                 (apply gxc#compile-e__1 _g161923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161923_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161693%_)
        (let ((__tmp161925
               (car (let () (declare (not safe)) (gx#stx-e _%stx161693%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161925))))
    (define gxc#void-method (lambda (_%self161690%_ _%stx161691%_) '#!void))
    (define gxc#false-method (lambda (_%self161687%_ _%stx161688%_) '#f))
    (define gxc#true-method (lambda (_%self161684%_ _%stx161685%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161681%_ _%stx161682%_) _%stx161682%_))
    (define gxc#::void-expression::t
      (let ((__tmp161926 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161926
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161678%_
        (apply make-instance gxc#::void-expression::t _%$args161678%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161927
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
        (__make-atomic-promise __tmp161927)))
    (define gxc#::void-special-form::t
      (let ((__tmp161928 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161928
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161674%_
        (apply make-instance gxc#::void-special-form::t _%$args161674%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161929
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
        (__make-atomic-promise __tmp161929)))
    (define gxc#::void::t
      (let ((__tmp161930
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161930 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161670%_
        (apply make-instance gxc#::void::t _%$args161670%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161931
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161931)))
    (define gxc#::false-expression::t
      (let ((__tmp161932 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161932
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161666%_
        (apply make-instance gxc#::false-expression::t _%$args161666%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161933
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
        (__make-atomic-promise __tmp161933)))
    (define gxc#::false-special-form::t
      (let ((__tmp161934 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161934
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161662%_
        (apply make-instance gxc#::false-special-form::t _%$args161662%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161935
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
        (__make-atomic-promise __tmp161935)))
    (define gxc#::false::t
      (let ((__tmp161936
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161936 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161658%_
        (apply make-instance gxc#::false::t _%$args161658%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161937
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161937)))
    (define gxc#::identity-expression::t
      (let ((__tmp161938 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161938
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161654%_
        (apply make-instance gxc#::identity-expression::t _%$args161654%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161939
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
        (__make-atomic-promise __tmp161939)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161940
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161650%_
        (apply make-instance gxc#::identity-special-form::t _%$args161650%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161941
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
        (__make-atomic-promise __tmp161941)))
    (define gxc#::identity::t
      (let ((__tmp161942
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161942
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161646%_
        (apply make-instance gxc#::identity::t _%$args161646%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161943
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161943)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161944 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161944
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161642%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161642%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161945
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
        (__make-atomic-promise __tmp161945)))
    (define gxc#::basic-xform::t
      (let ((__tmp161946
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161946
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161638%_
        (apply make-instance gxc#::basic-xform::t _%$args161638%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161947
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
        (__make-atomic-promise __tmp161947)))
    (define gxc#apply-begin%
      (lambda (_%self161594%_ _%stx161595%_)
        (let* ((_%g161597161607%_
                (lambda (_%g161598161604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161598161604%_))))
               (_%g161596161634%_
                (lambda (_%g161598161610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161598161610%_))
                      (let ((_%e161600161612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161598161610%_))))
                        (let ((_%hd161601161615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161600161612%_)))
                              (_%tl161602161617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161600161612%_))))
                          ((lambda (_%g161599161620%_)
                             (for-each
                              (lambda (_%g161629161631%_)
                                (gxc#compile-e__1
                                 _%self161594%_
                                 _%g161629161631%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161599161620%_))))
                           _%tl161602161617%_)))
                      (_%g161597161607%_ _%g161598161610%_)))))
          (_%g161596161634%_ _%stx161595%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161555%_ _%stx161556%_)
        (let* ((_%g161558161568%_
                (lambda (_%g161559161565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161559161565%_))))
               (_%g161557161591%_
                (lambda (_%g161559161571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161559161571%_))
                      (let ((_%e161561161573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161559161571%_))))
                        (let ((_%hd161562161576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161561161573%_)))
                              (_%tl161563161578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161561161573%_))))
                          ((lambda (_%g161560161581%_)
                             (gxc#compile-e__1
                              _%self161555%_
                              (last _%g161560161581%_)))
                           _%tl161563161578%_)))
                      (_%g161558161568%_ _%g161559161571%_)))))
          (_%g161557161591%_ _%stx161556%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161551%_ _%stx161552%_)
        (let ((__tmp161950
               (lambda () (gxc#apply-begin% _%self161551%_ _%stx161552%_)))
              (__tmp161948
               (let ((__tmp161949
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161949 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161950
           gx#current-expander-phi
           __tmp161948))))
    (define gxc#apply-module%
      (lambda (_%self161490%_ _%stx161491%_)
        (let* ((_%g161493161507%_
                (lambda (_%g161494161504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161494161504%_))))
               (_%g161492161548%_
                (lambda (_%g161494161510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161494161510%_))
                      (let ((_%e161497161512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161494161510%_))))
                        (let ((_%hd161498161515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161497161512%_)))
                              (_%tl161499161517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161497161512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161499161517%_))
                              (let ((_%e161500161520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161499161517%_))))
                                (let ((_%hd161501161523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161500161520%_)))
                                      (_%tl161502161525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161500161520%_))))
                                  ((lambda (_%g161495161528%_
                                            _%g161496161529%_)
                                     (let* ((_%ctx161542%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161496161529%_)))
                                            (_%ctx-stx161544%_
                                             (##structure-ref
                                              _%ctx161542%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161951
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161490%_
                                                _%ctx-stx161544%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161951
                                        gx#current-expander-context
                                        _%ctx161542%_)))
                                   _%tl161502161525%_
                                   _%hd161501161523%_)))
                              (_%g161493161507%_ _%g161494161510%_))))
                      (_%g161493161507%_ _%g161494161510%_)))))
          (_%g161492161548%_ _%stx161491%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161422%_ _%stx161423%_)
        (let* ((_%g161425161442%_
                (lambda (_%g161426161439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161426161439%_))))
               (_%g161424161487%_
                (lambda (_%g161426161445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161426161445%_))
                      (let ((_%e161429161447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161426161445%_))))
                        (let ((_%hd161430161450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161429161447%_)))
                              (_%tl161431161452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161429161447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161431161452%_))
                              (let ((_%e161432161455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161431161452%_))))
                                (let ((_%hd161433161458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161432161455%_)))
                                      (_%tl161434161460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161432161455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161434161460%_))
                                      (let ((_%e161435161463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161434161460%_))))
                                        (let ((_%hd161436161466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161435161463%_)))
                                              (_%tl161437161468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161435161463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161437161468%_))
                                              ((lambda (_%g161427161471%_
                                                        _%g161428161472%_)
                                                 (gxc#compile-e__1
                                                  _%self161422%_
                                                  _%g161427161471%_))
                                               _%hd161436161466%_
                                               _%hd161433161458%_)
                                              (_%g161425161442%_
                                               _%g161426161445%_))))
                                      (_%g161425161442%_ _%g161426161445%_))))
                              (_%g161425161442%_ _%g161426161445%_))))
                      (_%g161425161442%_ _%g161426161445%_)))))
          (_%g161424161487%_ _%stx161423%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161354%_ _%stx161355%_)
        (let* ((_%g161357161374%_
                (lambda (_%g161358161371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161358161371%_))))
               (_%g161356161419%_
                (lambda (_%g161358161377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161358161377%_))
                      (let ((_%e161361161379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161358161377%_))))
                        (let ((_%hd161362161382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161361161379%_)))
                              (_%tl161363161384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161361161379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161363161384%_))
                              (let ((_%e161364161387%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161363161384%_))))
                                (let ((_%hd161365161390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161364161387%_)))
                                      (_%tl161366161392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161364161387%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161366161392%_))
                                      (let ((_%e161367161395%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161366161392%_))))
                                        (let ((_%hd161368161398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161367161395%_)))
                                              (_%tl161369161400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161367161395%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161369161400%_))
                                              ((lambda (_%g161359161403%_
                                                        _%g161360161404%_)
                                                 (gxc#compile-e__1
                                                  _%self161354%_
                                                  _%g161359161403%_))
                                               _%hd161368161398%_
                                               _%hd161365161390%_)
                                              (_%g161357161374%_
                                               _%g161358161377%_))))
                                      (_%g161357161374%_ _%g161358161377%_))))
                              (_%g161357161374%_ _%g161358161377%_))))
                      (_%g161357161374%_ _%g161358161377%_)))))
          (_%g161356161419%_ _%stx161355%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161285%_ _%stx161286%_)
        (let* ((_%g161288161305%_
                (lambda (_%g161289161302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161289161302%_))))
               (_%g161287161351%_
                (lambda (_%g161289161308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161289161308%_))
                      (let ((_%e161292161310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161289161308%_))))
                        (let ((_%hd161293161313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161292161310%_)))
                              (_%tl161294161315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161292161310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161294161315%_))
                              (let ((_%e161295161318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161294161315%_))))
                                (let ((_%hd161296161321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161295161318%_)))
                                      (_%tl161297161323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161295161318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161297161323%_))
                                      (let ((_%e161298161326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161297161323%_))))
                                        (let ((_%hd161299161329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161298161326%_)))
                                              (_%tl161300161331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161298161326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161300161331%_))
                                              ((lambda (_%g161290161334%_
                                                        _%g161291161335%_)
                                                 (let ((__tmp161954
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161285%_
                                                           _%g161290161334%_)))
                                                       (__tmp161952
                                                        (let ((__tmp161953
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161953 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161954
                                                    gx#current-expander-phi
                                                    __tmp161952)))
                                               _%hd161299161329%_
                                               _%hd161296161321%_)
                                              (_%g161288161305%_
                                               _%g161289161308%_))))
                                      (_%g161288161305%_ _%g161289161308%_))))
                              (_%g161288161305%_ _%g161289161308%_))))
                      (_%g161288161305%_ _%g161289161308%_)))))
          (_%g161287161351%_ _%stx161286%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161217%_ _%stx161218%_)
        (let* ((_%g161220161237%_
                (lambda (_%g161221161234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161221161234%_))))
               (_%g161219161282%_
                (lambda (_%g161221161240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161221161240%_))
                      (let ((_%e161224161242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161221161240%_))))
                        (let ((_%hd161225161245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161224161242%_)))
                              (_%tl161226161247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161224161242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161226161247%_))
                              (let ((_%e161227161250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161226161247%_))))
                                (let ((_%hd161228161253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161227161250%_)))
                                      (_%tl161229161255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161227161250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161229161255%_))
                                      (let ((_%e161230161258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161229161255%_))))
                                        (let ((_%hd161231161261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161230161258%_)))
                                              (_%tl161232161263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161230161258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161232161263%_))
                                              ((lambda (_%g161222161266%_
                                                        _%g161223161267%_)
                                                 (gxc#compile-e__1
                                                  _%self161217%_
                                                  _%g161222161266%_))
                                               _%hd161231161261%_
                                               _%hd161228161253%_)
                                              (_%g161220161237%_
                                               _%g161221161240%_))))
                                      (_%g161220161237%_ _%g161221161240%_))))
                              (_%g161220161237%_ _%g161221161240%_))))
                      (_%g161220161237%_ _%g161221161240%_)))))
          (_%g161219161282%_ _%stx161218%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self161103%_ _%stx161104%_)
        (let* ((_%g161106161134%_
                (lambda (_%g161107161131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161107161131%_))))
               (_%g161105161214%_
                (lambda (_%g161107161137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161107161137%_))
                      (let ((_%e161110161139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161107161137%_))))
                        (let ((_%hd161111161142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161110161139%_)))
                              (_%tl161112161144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161110161139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161112161144%_))
                              (let ((_g161955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161112161144%_
                                        '0))))
                                (begin
                                  (let ((_g161956_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161955_)
                                               (##values-length _g161955_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161956_ 2)))
                                        (error "Context expects 2 values"
                                               _g161956_)))
                                  (let ((_%target161113161147%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161955_ 0)))
                                        (_%tl161115161149%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161955_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161115161149%_))
                                        (letrec ((_%loop161116161152%_
                                                  (lambda (_%hd161114161155%_
                                                           _%body161120161157%_
                                                           _%hd161121161158%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161114161155%_))
                                                        (let ((_%e161117161160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161114161155%_))))
                  (let ((_%lp-hd161118161163%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161117161160%_)))
                        (_%lp-tl161119161165%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161117161160%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd161118161163%_))
                        (let ((_%e161124161168%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd161118161163%_))))
                          (let ((_%hd161125161171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161124161168%_)))
                                (_%tl161126161173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161124161168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161126161173%_))
                                (let ((_%e161127161176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161126161173%_))))
                                  (let ((_%hd161128161179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161127161176%_)))
                                        (_%tl161129161181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161127161176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161129161181%_))
                                        (_%loop161116161152%_
                                         _%lp-tl161119161165%_
                                         (cons _%hd161128161179%_
                                               _%body161120161157%_)
                                         (cons _%hd161125161171%_
                                               _%hd161121161158%_))
                                        (_%g161106161134%_
                                         _%g161107161137%_))))
                                (_%g161106161134%_ _%g161107161137%_))))
                        (_%g161106161134%_ _%g161107161137%_))))
                (let ((_%body161122161184%_ (reverse _%body161120161157%_))
                      (_%hd161123161185%_ (reverse _%hd161121161158%_)))
                  ((lambda (_%g161108161187%_ _%g161109161188%_)
                     (for-each
                      (lambda (_%g161202161204%_)
                        (gxc#compile-e__1 _%self161103%_ _%g161202161204%_))
                      (let ((__tmp161957
                             (lambda (_%g161206161209%_ _%g161207161211%_)
                               (cons _%g161206161209%_ _%g161207161211%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161957 '() _%g161108161187%_))))
                   _%body161122161184%_
                   _%hd161123161185%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161116161152%_
                                           _%target161113161147%_
                                           '()
                                           '()))
                                        (_%g161106161134%_
                                         _%g161107161137%_)))))
                              (_%g161106161134%_ _%g161107161137%_))))
                      (_%g161106161134%_ _%g161107161137%_)))))
          (_%g161105161214%_ _%stx161104%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160960%_ _%stx160961%_)
        (let* ((_%g160963160998%_
                (lambda (_%g160964160995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160964160995%_))))
               (_%g160962161100%_
                (lambda (_%g160964161001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160964161001%_))
                      (let ((_%e160968161003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160964161001%_))))
                        (let ((_%hd160969161006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160968161003%_)))
                              (_%tl160970161008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160968161003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160970161008%_))
                              (let ((_%e160971161011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160970161008%_))))
                                (let ((_%hd160972161014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160971161011%_)))
                                      (_%tl160973161016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160971161011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160972161014%_))
                                      (let ((_g161958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160972161014%_
                                                '0))))
                                        (begin
                                          (let ((_g161959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161958_)
                                                       (##values-length
                                                        _g161958_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161959_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161959_)))
                                          (let ((_%target160974161019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161958_ 0)))
                                                (_%tl160976161021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161958_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160976161021%_))
                                                (letrec ((_%loop160977161024%_
                                                          (lambda (_%hd160975161027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160981161029%_
                           _%hd160982161030%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160975161027%_))
                        (let ((_%e160978161032%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160975161027%_))))
                          (let ((_%lp-hd160979161035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160978161032%_)))
                                (_%lp-tl160980161037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160978161032%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160979161035%_))
                                (let ((_%e160985161040%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160979161035%_))))
                                  (let ((_%hd160986161043%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160985161040%_)))
                                        (_%tl160987161045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160985161040%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160987161045%_))
                                        (let ((_%e160988161048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160987161045%_))))
                                          (let ((_%hd160989161051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160988161048%_)))
                                                (_%tl160990161053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160988161048%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160990161053%_))
                                                (_%loop160977161024%_
                                                 _%lp-tl160980161037%_
                                                 (cons _%hd160989161051%_
                                                       _%expr160981161029%_)
                                                 (cons _%hd160986161043%_
                                                       _%hd160982161030%_))
                                                (_%g160963160998%_
                                                 _%g160964161001%_))))
                                        (_%g160963160998%_
                                         _%g160964161001%_))))
                                (_%g160963160998%_ _%g160964161001%_))))
                        (let ((_%expr160983161056%_
                               (reverse _%expr160981161029%_))
                              (_%hd160984161057%_
                               (reverse _%hd160982161030%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160973161016%_))
                              (let ((_%e160991161059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160973161016%_))))
                                (let ((_%hd160992161062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160991161059%_)))
                                      (_%tl160993161064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160991161059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160993161064%_))
                                      ((lambda (_%g160965161067%_
                                                _%g160966161068%_
                                                _%g160967161069%_)
                                         (for-each
                                          (lambda (_%g161088161090%_)
                                            (gxc#compile-e__1
                                             _%self160960%_
                                             _%g161088161090%_))
                                          (let ((__tmp161961
                                                 (lambda (_%g161092161095%_
                                                          _%g161093161097%_)
                                                   (cons _%g161092161095%_
                                                         _%g161093161097%_)))
                                                (__tmp161960
                                                 (cons _%g160965161067%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161961
                                             __tmp161960
                                             _%g160966161068%_))))
                                       _%hd160992161062%_
                                       _%expr160983161056%_
                                       _%hd160984161057%_)
                                      (_%g160963160998%_ _%g160964161001%_))))
                              (_%g160963160998%_ _%g160964161001%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160977161024%_
                                                   _%target160974161019%_
                                                   '()
                                                   '()))
                                                (_%g160963160998%_
                                                 _%g160964161001%_)))))
                                      (_%g160963160998%_ _%g160964161001%_))))
                              (_%g160963160998%_ _%g160964161001%_))))
                      (_%g160963160998%_ _%g160964161001%_)))))
          (_%g160962161100%_ _%stx160961%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160905%_ _%stx160906%_)
        (let* ((_%g160908160922%_
                (lambda (_%g160909160919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160909160919%_))))
               (_%g160907160957%_
                (lambda (_%g160909160925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160909160925%_))
                      (let ((_%e160912160927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160909160925%_))))
                        (let ((_%hd160913160930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160912160927%_)))
                              (_%tl160914160932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160912160927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160914160932%_))
                              (let ((_%e160915160935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160914160932%_))))
                                (let ((_%hd160916160938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160915160935%_)))
                                      (_%tl160917160940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160915160935%_))))
                                  ((lambda (_%g160910160943%_
                                            _%g160911160944%_)
                                     (gxc#compile-e__1
                                      _%self160905%_
                                      (last _%g160910160943%_)))
                                   _%tl160917160940%_
                                   _%hd160916160938%_)))
                              (_%g160908160922%_ _%g160909160925%_))))
                      (_%g160908160922%_ _%g160909160925%_)))))
          (_%g160907160957%_ _%stx160906%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160837%_ _%stx160838%_)
        (let* ((_%g160840160857%_
                (lambda (_%g160841160854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160841160854%_))))
               (_%g160839160902%_
                (lambda (_%g160841160860%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160841160860%_))
                      (let ((_%e160844160862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160841160860%_))))
                        (let ((_%hd160845160865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160844160862%_)))
                              (_%tl160846160867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160844160862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160846160867%_))
                              (let ((_%e160847160870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160846160867%_))))
                                (let ((_%hd160848160873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160847160870%_)))
                                      (_%tl160849160875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160847160870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160849160875%_))
                                      (let ((_%e160850160878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160849160875%_))))
                                        (let ((_%hd160851160881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160850160878%_)))
                                              (_%tl160852160883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160850160878%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160852160883%_))
                                              ((lambda (_%g160842160886%_
                                                        _%g160843160887%_)
                                                 (gxc#compile-e__1
                                                  _%self160837%_
                                                  _%g160842160886%_))
                                               _%hd160851160881%_
                                               _%hd160848160873%_)
                                              (_%g160840160857%_
                                               _%g160841160860%_))))
                                      (_%g160840160857%_ _%g160841160860%_))))
                              (_%g160840160857%_ _%g160841160860%_))))
                      (_%g160840160857%_ _%g160841160860%_)))))
          (_%g160839160902%_ _%stx160838%_))))
    (define gxc#apply-operands
      (lambda (_%self160752%_ _%stx160753%_)
        (let* ((_%g160755160774%_
                (lambda (_%g160756160771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160756160771%_))))
               (_%g160754160834%_
                (lambda (_%g160756160777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160756160777%_))
                      (let ((_%e160758160779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160756160777%_))))
                        (let ((_%hd160759160782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160758160779%_)))
                              (_%tl160760160784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160758160779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160760160784%_))
                              (let ((_g161962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160760160784%_
                                        '0))))
                                (begin
                                  (let ((_g161963_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161962_)
                                               (##values-length _g161962_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161963_ 2)))
                                        (error "Context expects 2 values"
                                               _g161963_)))
                                  (let ((_%target160761160787%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161962_ 0)))
                                        (_%tl160763160789%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161962_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160763160789%_))
                                        (letrec ((_%loop160764160792%_
                                                  (lambda (_%hd160762160795%_
                                                           _%rands160768160797%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160762160795%_))
                                                        (let ((_%e160765160799%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160762160795%_))))
                  (let ((_%lp-hd160766160802%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160765160799%_)))
                        (_%lp-tl160767160804%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160765160799%_))))
                    (_%loop160764160792%_
                     _%lp-tl160767160804%_
                     (cons _%lp-hd160766160802%_ _%rands160768160797%_))))
                (let ((_%rands160769160807%_ (reverse _%rands160768160797%_)))
                  ((lambda (_%g160757160809%_)
                     (for-each
                      (lambda (_%g160822160824%_)
                        (gxc#compile-e__1 _%self160752%_ _%g160822160824%_))
                      (let ((__tmp161964
                             (lambda (_%g160826160829%_ _%g160827160831%_)
                               (cons _%g160826160829%_ _%g160827160831%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161964 '() _%g160757160809%_))))
                   _%rands160769160807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160764160792%_
                                           _%target160761160787%_
                                           '()))
                                        (_%g160755160774%_
                                         _%g160756160777%_)))))
                              (_%g160755160774%_ _%g160756160777%_))))
                      (_%g160755160774%_ _%g160756160777%_)))))
          (_%g160754160834%_ _%stx160753%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160749%_ _%src-stx160750%_)
        (let ((__tmp161965
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160750%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160749%_ __tmp161965))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160745%_ _%src-stx160746%_ _%ctx160747%_)
        (gxc#compile-e__1
         _%ctx160747%_
         (gxc#xform-wrap-source _%stx160745%_ _%src-stx160746%_))))
    (define gxc#xform-begin%
      (lambda (_%self160700%_ _%stx160701%_)
        (let* ((_%g160703160713%_
                (lambda (_%g160704160710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160704160710%_))))
               (_%g160702160742%_
                (lambda (_%g160704160716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160704160716%_))
                      (let ((_%e160706160718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160704160716%_))))
                        (let ((_%hd160707160721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160706160718%_)))
                              (_%tl160708160723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160706160718%_))))
                          ((lambda (_%g160705160726%_)
                             (let ((_%forms160740%_
                                    (map (lambda (_%g160735160737%_)
                                           (gxc#compile-e__1
                                            _%self160700%_
                                            _%g160735160737%_))
                                         _%g160705160726%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160740%_)
                                _%stx160701%_)))
                           _%tl160708160723%_)))
                      (_%g160703160713%_ _%g160704160716%_)))))
          (_%g160702160742%_ _%stx160701%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160654%_ _%stx160655%_)
        (let* ((_%g160657160667%_
                (lambda (_%g160658160664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160658160664%_))))
               (_%g160656160697%_
                (lambda (_%g160658160670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160658160670%_))
                      (let ((_%e160660160672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160658160670%_))))
                        (let ((_%hd160661160675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160660160672%_)))
                              (_%tl160662160677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160660160672%_))))
                          ((lambda (_%g160659160680%_)
                             (let ((__tmp161968
                                    (lambda ()
                                      (let ((_%forms160695%_
                                             (map (lambda (_%g160690160692%_)
                                                    (gxc#compile-e__1
                                                     _%self160654%_
                                                     _%g160690160692%_))
                                                  _%g160659160680%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160695%_)
                                         _%stx160655%_))))
                                   (__tmp161966
                                    (let ((__tmp161967
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161967 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161968
                                gx#current-expander-phi
                                __tmp161966)))
                           _%tl160662160677%_)))
                      (_%g160657160667%_ _%g160658160670%_)))))
          (_%g160656160697%_ _%stx160655%_))))
    (define gxc#xform-module%
      (lambda (_%self160591%_ _%stx160592%_)
        (let* ((_%g160594160608%_
                (lambda (_%g160595160605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160595160605%_))))
               (_%g160593160651%_
                (lambda (_%g160595160611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160595160611%_))
                      (let ((_%e160598160613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160595160611%_))))
                        (let ((_%hd160599160616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160598160613%_)))
                              (_%tl160600160618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160598160613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160600160618%_))
                              (let ((_%e160601160621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160600160618%_))))
                                (let ((_%hd160602160624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160601160621%_)))
                                      (_%tl160603160626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160601160621%_))))
                                  ((lambda (_%g160596160629%_
                                            _%g160597160630%_)
                                     (let* ((_%ctx160643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160597160630%_)))
                                            (_%code160645%_
                                             (##structure-ref
                                              _%ctx160643%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160648%_
                                             (let ((__tmp161969
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160591%_
                                                       _%code160645%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161969
                                                gx#current-expander-context
                                                _%ctx160643%_))))
                                       (##structure-set!
                                        _%ctx160643%_
                                        _%code160648%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160597160630%_
                                                    (cons _%code160648%_ '())))
                                        _%stx160592%_)))
                                   _%tl160603160626%_
                                   _%hd160602160624%_)))
                              (_%g160594160608%_ _%g160595160611%_))))
                      (_%g160594160608%_ _%g160595160611%_)))))
          (_%g160593160651%_ _%stx160592%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160521%_ _%stx160522%_)
        (let* ((_%g160524160541%_
                (lambda (_%g160525160538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160525160538%_))))
               (_%g160523160588%_
                (lambda (_%g160525160544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160525160544%_))
                      (let ((_%e160528160546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160525160544%_))))
                        (let ((_%hd160529160549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160528160546%_)))
                              (_%tl160530160551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160528160546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160530160551%_))
                              (let ((_%e160531160554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160530160551%_))))
                                (let ((_%hd160532160557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160531160554%_)))
                                      (_%tl160533160559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160531160554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160533160559%_))
                                      (let ((_%e160534160562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160533160559%_))))
                                        (let ((_%hd160535160565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160534160562%_)))
                                              (_%tl160536160567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160534160562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160536160567%_))
                                              ((lambda (_%g160526160570%_
                                                        _%g160527160571%_)
                                                 (let ((_%expr160586%_
                                                        (gxc#compile-e__1
                                                         _%self160521%_
                                                         _%g160526160570%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160527160571%_
                                                                (cons _%expr160586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160522%_)))
                                               _%hd160535160565%_
                                               _%hd160532160557%_)
                                              (_%g160524160541%_
                                               _%g160525160544%_))))
                                      (_%g160524160541%_ _%g160525160544%_))))
                              (_%g160524160541%_ _%g160525160544%_))))
                      (_%g160524160541%_ _%g160525160544%_)))))
          (_%g160523160588%_ _%stx160522%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160450%_ _%stx160451%_)
        (let* ((_%g160453160470%_
                (lambda (_%g160454160467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160454160467%_))))
               (_%g160452160518%_
                (lambda (_%g160454160473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160454160473%_))
                      (let ((_%e160457160475%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160454160473%_))))
                        (let ((_%hd160458160478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160457160475%_)))
                              (_%tl160459160480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160457160475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160459160480%_))
                              (let ((_%e160460160483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160459160480%_))))
                                (let ((_%hd160461160486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160460160483%_)))
                                      (_%tl160462160488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160460160483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160462160488%_))
                                      (let ((_%e160463160491%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160462160488%_))))
                                        (let ((_%hd160464160494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160463160491%_)))
                                              (_%tl160465160496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160463160491%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160465160496%_))
                                              ((lambda (_%g160455160499%_
                                                        _%g160456160500%_)
                                                 (let ((__tmp161972
                                                        (lambda ()
                                                          (let ((_%expr160516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160450%_ _%g160455160499%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160456160500%_ (cons _%expr160516%_ '())))
                     _%stx160451%_))))
               (__tmp161970
                (let ((__tmp161971
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161971 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161972
                                                    gx#current-expander-phi
                                                    __tmp161970)))
                                               _%hd160464160494%_
                                               _%hd160461160486%_)
                                              (_%g160453160470%_
                                               _%g160454160473%_))))
                                      (_%g160453160470%_ _%g160454160473%_))))
                              (_%g160453160470%_ _%g160454160473%_))))
                      (_%g160453160470%_ _%g160454160473%_)))))
          (_%g160452160518%_ _%stx160451%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160380%_ _%stx160381%_)
        (let* ((_%g160383160400%_
                (lambda (_%g160384160397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160384160397%_))))
               (_%g160382160447%_
                (lambda (_%g160384160403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160384160403%_))
                      (let ((_%e160387160405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160384160403%_))))
                        (let ((_%hd160388160408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160387160405%_)))
                              (_%tl160389160410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160387160405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160389160410%_))
                              (let ((_%e160390160413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160389160410%_))))
                                (let ((_%hd160391160416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160390160413%_)))
                                      (_%tl160392160418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160390160413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160392160418%_))
                                      (let ((_%e160393160421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160392160418%_))))
                                        (let ((_%hd160394160424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160393160421%_)))
                                              (_%tl160395160426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160393160421%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160395160426%_))
                                              ((lambda (_%g160385160429%_
                                                        _%g160386160430%_)
                                                 (let ((_%expr160445%_
                                                        (gxc#compile-e__1
                                                         _%self160380%_
                                                         _%g160385160429%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160386160430%_
                                                                (cons _%expr160445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160381%_)))
                                               _%hd160394160424%_
                                               _%hd160391160416%_)
                                              (_%g160383160400%_
                                               _%g160384160403%_))))
                                      (_%g160383160400%_ _%g160384160403%_))))
                              (_%g160383160400%_ _%g160384160403%_))))
                      (_%g160383160400%_ _%g160384160403%_)))))
          (_%g160382160447%_ _%stx160381%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160318%_ _%stx160319%_)
        (let* ((_%g160321160335%_
                (lambda (_%g160322160332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160322160332%_))))
               (_%g160320160377%_
                (lambda (_%g160322160338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160322160338%_))
                      (let ((_%e160325160340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160322160338%_))))
                        (let ((_%hd160326160343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160325160340%_)))
                              (_%tl160327160345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160325160340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160327160345%_))
                              (let ((_%e160328160348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160327160345%_))))
                                (let ((_%hd160329160351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160328160348%_)))
                                      (_%tl160330160353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160328160348%_))))
                                  ((lambda (_%g160323160356%_
                                            _%g160324160357%_)
                                     (let ((__tmp161974
                                            (lambda ()
                                              (let ((_%body160375%_
                                                     (map (lambda (_%g160370160372%_)
                                                            (gxc#compile-e__1
                                                             _%self160318%_
                                                             _%g160370160372%_))
                                                          _%g160323160356%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160324160357%_
                                                             _%body160375%_))
                                                 _%stx160319%_))))
                                           (__tmp161973
                                            (gxc#xform-let-locals
                                             _%g160324160357%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161974
                                        gxc#current-compile-local-env
                                        __tmp161973)))
                                   _%tl160330160353%_
                                   _%hd160329160351%_)))
                              (_%g160321160335%_ _%g160322160338%_))))
                      (_%g160321160335%_ _%g160322160338%_)))))
          (_%g160320160377%_ _%stx160319%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160226%_ _%stx160227%_)
        (letrec ((_%clause-e160229%_
                  (lambda (_%clause160270%_)
                    (let* ((_%g160272160283%_
                            (lambda (_%g160273160280%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160273160280%_))))
                           (_%g160271160315%_
                            (lambda (_%g160273160286%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160273160286%_))
                                  (let ((_%e160276160288%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160273160286%_))))
                                    (let ((_%hd160277160291%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160276160288%_)))
                                          (_%tl160278160293%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160276160288%_))))
                                      ((lambda (_%g160274160296%_
                                                _%g160275160297%_)
                                         (let ((__tmp161976
                                                (lambda ()
                                                  (let ((_%body160313%_
                                                         (map (lambda (_%g160308160310%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160226%_
                         _%g160308160310%_))
                      _%g160274160296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160275160297%_
                                                          _%body160313%_))))
                                               (__tmp161975
                                                (gxc#xform-let-locals
                                                 _%g160275160297%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161976
                                            gxc#current-compile-local-env
                                            __tmp161975)))
                                       _%tl160278160293%_
                                       _%hd160277160291%_)))
                                  (_%g160272160283%_ _%g160273160286%_)))))
                      (_%g160271160315%_ _%clause160270%_)))))
          (let* ((_%g160231160241%_
                  (lambda (_%g160232160238%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160232160238%_))))
                 (_%g160230160267%_
                  (lambda (_%g160232160244%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160232160244%_))
                        (let ((_%e160234160246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160232160244%_))))
                          (let ((_%hd160235160249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160234160246%_)))
                                (_%tl160236160251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160234160246%_))))
                            ((lambda (_%g160233160254%_)
                               (let ((_%clauses160265%_
                                      (map _%clause-e160229%_
                                           _%g160233160254%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160265%_)
                                  _%stx160227%_)))
                             _%tl160236160251%_)))
                        (_%g160231160241%_ _%g160232160244%_)))))
            (_%g160230160267%_ _%stx160227%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159986%_ _%stx159987%_)
        (let* ((_%g159989160022%_
                (lambda (_%g159990160019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159990160019%_))))
               (_%g159988160223%_
                (lambda (_%g159990160025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159990160025%_))
                      (let ((_%e159995160027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159990160025%_))))
                        (let ((_%hd159996160030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159995160027%_)))
                              (_%tl159997160032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159995160027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159997160032%_))
                              (let ((_%e159998160035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159997160032%_))))
                                (let ((_%hd159999160038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159998160035%_)))
                                      (_%tl160000160040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159998160035%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159999160038%_))
                                      (let ((_g161977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159999160038%_
                                                '0))))
                                        (begin
                                          (let ((_g161978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161977_)
                                                       (##values-length
                                                        _g161977_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161978_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161978_)))
                                          (let ((_%target160001160043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161977_ 0)))
                                                (_%tl160003160045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161977_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160003160045%_))
                                                (letrec ((_%loop160004160048%_
                                                          (lambda (_%hd160002160051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160008160053%_
                           _%hd160009160054%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160002160051%_))
                        (let ((_%e160005160056%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160002160051%_))))
                          (let ((_%lp-hd160006160059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160005160056%_)))
                                (_%lp-tl160007160061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160005160056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160006160059%_))
                                (let ((_%e160012160064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160006160059%_))))
                                  (let ((_%hd160013160067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160012160064%_)))
                                        (_%tl160014160069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160012160064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160014160069%_))
                                        (let ((_%e160015160072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160014160069%_))))
                                          (let ((_%hd160016160075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160015160072%_)))
                                                (_%tl160017160077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160015160072%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160017160077%_))
                                                (_%loop160004160048%_
                                                 _%lp-tl160007160061%_
                                                 (cons _%hd160016160075%_
                                                       _%expr160008160053%_)
                                                 (cons _%hd160013160067%_
                                                       _%hd160009160054%_))
                                                (_%g159989160022%_
                                                 _%g159990160025%_))))
                                        (_%g159989160022%_
                                         _%g159990160025%_))))
                                (_%g159989160022%_ _%g159990160025%_))))
                        (let ((_%expr160010160080%_
                               (reverse _%expr160008160053%_))
                              (_%hd160011160081%_
                               (reverse _%hd160009160054%_)))
                          ((lambda (_%g159991160083%_
                                    _%g159992160084%_
                                    _%g159993160085%_
                                    _%g159994160086%_)
                             (let* ((_%g160105160121%_
                                     (lambda (_%g160106160118%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g160106160118%_))))
                                    (_%g160104160209%_
                                     (lambda (_%g160106160124%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g160106160124%_))
                                           (let ((_g161979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g160106160124%_
                                                     '0))))
                                             (begin
                                               (let ((_g161980_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161979_)
                                                            (##values-length
                                                             _g161979_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161980_)))
                                               (let ((_%target160108160126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161979_
                                                         0)))
                                                     (_%tl160110160128%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161979_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl160110160128%_))
                                                     (letrec ((_%loop160111160131%_
                                                               (lambda (_%hd160109160134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr160115160136%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd160109160134%_))
                             (let ((_%e160112160138%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd160109160134%_))))
                               (let ((_%lp-hd160113160141%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e160112160138%_)))
                                     (_%lp-tl160114160143%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e160112160138%_))))
                                 (_%loop160111160131%_
                                  _%lp-tl160114160143%_
                                  (cons _%lp-hd160113160141%_
                                        _%expr160115160136%_))))
                             (let ((_%expr160116160146%_
                                    (reverse _%expr160115160136%_)))
                               ((lambda (_%g160107160148%_)
                                  (let ((__tmp161983
                                         (lambda ()
                                           (let* ((_%g160162160169%_
                                                   (lambda (_%g160163160166%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160163160166%_))))
                                                  (_%g160161160195%_
                                                   (lambda (_%g160163160172%_)
                                                     ((lambda (_%g160164160174%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159994160086%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g160107160148%_
                                  _%g159993160085%_))
                               (let ((__tmp161984
                                      (lambda (_%g160184160188%_
                                               _%g160185160190%_
                                               _%g160186160192%_)
                                        (cons (cons _%g160185160190%_
                                                    (cons _%g160184160188%_
                                                          '()))
                                              _%g160186160192%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161984
                                  '()
                                  _%g160107160148%_
                                  _%g159993160085%_)))
                             _%g160164160174%_))
                 _%stx159987%_))
              _%g160163160172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g160161160195%_
                                              (map (lambda (_%g160197160199%_)
                                                     (gxc#compile-e__1
                                                      _%self159986%_
                                                      _%g160197160199%_))
                                                   _%g159991160083%_)))))
                                        (__tmp161981
                                         (gxc#xform-let-locals
                                          (let ((__tmp161982
                                                 (lambda (_%g160201160204%_
                                                          _%g160202160206%_)
                                                   (cons _%g160201160204%_
                                                         _%g160202160206%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161982
                                             '()
                                             _%g159993160085%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161983
                                     gxc#current-compile-local-env
                                     __tmp161981)))
                                _%expr160116160146%_))))))
               (_%loop160111160131%_ _%target160108160126%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160105160121%_
                                                      _%g160106160124%_)))))
                                           (_%g160105160121%_
                                            _%g160106160124%_)))))
                               (_%g160104160209%_
                                (map (lambda (_%g160211160213%_)
                                       (gxc#compile-e__1
                                        _%self159986%_
                                        _%g160211160213%_))
                                     (let ((__tmp161985
                                            (lambda (_%g160215160218%_
                                                     _%g160216160220%_)
                                              (cons _%g160215160218%_
                                                    _%g160216160220%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161985
                                        '()
                                        _%g159992160084%_))))))
                           _%tl160000160040%_
                           _%expr160010160080%_
                           _%hd160011160081%_
                           _%hd159996160030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160004160048%_
                                                   _%target160001160043%_
                                                   '()
                                                   '()))
                                                (_%g159989160022%_
                                                 _%g159990160025%_)))))
                                      (_%g159989160022%_ _%g159990160025%_))))
                              (_%g159989160022%_ _%g159990160025%_))))
                      (_%g159989160022%_ _%g159990160025%_)))))
          (_%g159988160223%_ _%stx159987%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159746%_ _%stx159747%_)
        (let* ((_%g159749159782%_
                (lambda (_%g159750159779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159750159779%_))))
               (_%g159748159983%_
                (lambda (_%g159750159785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159750159785%_))
                      (let ((_%e159755159787%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159750159785%_))))
                        (let ((_%hd159756159790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159755159787%_)))
                              (_%tl159757159792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159755159787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159757159792%_))
                              (let ((_%e159758159795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159757159792%_))))
                                (let ((_%hd159759159798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159758159795%_)))
                                      (_%tl159760159800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159758159795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159759159798%_))
                                      (let ((_g161986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159759159798%_
                                                '0))))
                                        (begin
                                          (let ((_g161987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161986_)
                                                       (##values-length
                                                        _g161986_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161987_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161987_)))
                                          (let ((_%target159761159803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161986_ 0)))
                                                (_%tl159763159805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161986_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159763159805%_))
                                                (letrec ((_%loop159764159808%_
                                                          (lambda (_%hd159762159811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159768159813%_
                           _%hd159769159814%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159762159811%_))
                        (let ((_%e159765159816%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159762159811%_))))
                          (let ((_%lp-hd159766159819%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159765159816%_)))
                                (_%lp-tl159767159821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159765159816%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159766159819%_))
                                (let ((_%e159772159824%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159766159819%_))))
                                  (let ((_%hd159773159827%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159772159824%_)))
                                        (_%tl159774159829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159772159824%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159774159829%_))
                                        (let ((_%e159775159832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159774159829%_))))
                                          (let ((_%hd159776159835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159775159832%_)))
                                                (_%tl159777159837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159775159832%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159777159837%_))
                                                (_%loop159764159808%_
                                                 _%lp-tl159767159821%_
                                                 (cons _%hd159776159835%_
                                                       _%expr159768159813%_)
                                                 (cons _%hd159773159827%_
                                                       _%hd159769159814%_))
                                                (_%g159749159782%_
                                                 _%g159750159785%_))))
                                        (_%g159749159782%_
                                         _%g159750159785%_))))
                                (_%g159749159782%_ _%g159750159785%_))))
                        (let ((_%expr159770159840%_
                               (reverse _%expr159768159813%_))
                              (_%hd159771159841%_
                               (reverse _%hd159769159814%_)))
                          ((lambda (_%g159751159843%_
                                    _%g159752159844%_
                                    _%g159753159845%_
                                    _%g159754159846%_)
                             (let ((__tmp161990
                                    (lambda ()
                                      (let* ((_%g159866159882%_
                                              (lambda (_%g159867159879%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159867159879%_))))
                                             (_%g159865159962%_
                                              (lambda (_%g159867159885%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159867159885%_))
                                                    (let ((_g161991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159867159885%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161992_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161991_)
                             (##values-length _g161991_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161992_ 2)))
                      (error "Context expects 2 values" _g161992_)))
                (let ((_%target159869159887%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161991_ 0)))
                      (_%tl159871159889%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161991_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159871159889%_))
                      (letrec ((_%loop159872159892%_
                                (lambda (_%hd159870159895%_
                                         _%expr159876159897%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159870159895%_))
                                      (let ((_%e159873159899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159870159895%_))))
                                        (let ((_%lp-hd159874159902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159873159899%_)))
                                              (_%lp-tl159875159904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159873159899%_))))
                                          (_%loop159872159892%_
                                           _%lp-tl159875159904%_
                                           (cons _%lp-hd159874159902%_
                                                 _%expr159876159897%_))))
                                      (let ((_%expr159877159907%_
                                             (reverse _%expr159876159897%_)))
                                        ((lambda (_%g159868159909%_)
                                           (let* ((_%g159923159930%_
                                                   (lambda (_%g159924159927%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159924159927%_))))
                                                  (_%g159922159955%_
                                                   (lambda (_%g159924159933%_)
                                                     ((lambda (_%g159925159935%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159754159846%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159868159909%_
                                  _%g159753159845%_))
                               (let ((__tmp161993
                                      (lambda (_%g159944159948%_
                                               _%g159945159950%_
                                               _%g159946159952%_)
                                        (cons (cons _%g159945159950%_
                                                    (cons _%g159944159948%_
                                                          '()))
                                              _%g159946159952%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161993
                                  '()
                                  _%g159868159909%_
                                  _%g159753159845%_)))
                             _%g159925159935%_))
                 _%stx159747%_))
              _%g159924159933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159922159955%_
                                              (map (lambda (_%g159957159959%_)
                                                     (gxc#compile-e__1
                                                      _%self159746%_
                                                      _%g159957159959%_))
                                                   _%g159751159843%_))))
                                         _%expr159877159907%_))))))
                        (_%loop159872159892%_ _%target159869159887%_ '()))
                      (_%g159866159882%_ _%g159867159885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159866159882%_
                                                     _%g159867159885%_)))))
                                        (_%g159865159962%_
                                         (map (lambda (_%g159964159966%_)
                                                (gxc#compile-e__1
                                                 _%self159746%_
                                                 _%g159964159966%_))
                                              (let ((__tmp161994
                                                     (lambda (_%g159968159971%_
                                                              _%g159969159973%_)
                                                       (cons _%g159968159971%_
                                                             _%g159969159973%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161994
                                                 '()
                                                 _%g159752159844%_)))))))
                                   (__tmp161988
                                    (gxc#xform-let-locals
                                     (let ((__tmp161989
                                            (lambda (_%g159975159978%_
                                                     _%g159976159980%_)
                                              (cons _%g159975159978%_
                                                    _%g159976159980%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161989
                                        '()
                                        _%g159753159845%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161990
                                gxc#current-compile-local-env
                                __tmp161988)))
                           _%tl159760159800%_
                           _%expr159770159840%_
                           _%hd159771159841%_
                           _%hd159756159790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159764159808%_
                                                   _%target159761159803%_
                                                   '()
                                                   '()))
                                                (_%g159749159782%_
                                                 _%g159750159785%_)))))
                                      (_%g159749159782%_ _%g159750159785%_))))
                              (_%g159749159782%_ _%g159750159785%_))))
                      (_%g159749159782%_ _%g159750159785%_)))))
          (_%g159748159983%_ _%stx159747%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159613%_)
        (letrec ((_%flatten159615%_
                  (lambda (_%maybe-lst159673%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159673%_))
                        (cons _%maybe-lst159673%_ '())
                        (let _%loop159675%_ ((_%rest159677%_
                                              _%maybe-lst159673%_)
                                             (_%result159678%_ '()))
                          (let* ((_%__stx161882161883%_ _%rest159677%_)
                                 (_%g159682159694%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161882161883%_)))))
                            (let ((_%__kont161884161885%_
                                   (lambda (_%g159684159732%_
                                            _%g159685159733%_)
                                     (_%loop159675%_
                                      _%g159684159732%_
                                      (let ((__tmp161995
                                             (_%flatten159615%_
                                              _%g159685159733%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159678%_
                                         __tmp161995)))))
                                  (_%__kont161886161887%_
                                   (lambda (_%g159689159706%_)
                                     (cons _%g159689159706%_
                                           _%result159678%_)))
                                  (_%__kont161888161889%_
                                   (lambda () _%result159678%_)))
                              (let ((_%g159680159719%_
                                     (lambda ()
                                       (let ((_%g159689159706%_
                                              _%__stx161882161883%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159689159706%_))
                                             (_%__kont161886161887%_
                                              _%g159689159706%_)
                                             (_%__kont161888161889%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161882161883%_))
                                    (let ((_%e159686159724%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161882161883%_))))
                                      (let ((_%tl159688159729%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159686159724%_)))
                                            (_%hd159687159727%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159686159724%_))))
                                        (_%__kont161884161885%_
                                         _%tl159688159729%_
                                         _%hd159687159727%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159680159719%_)))))))))))
          (let _%loop159617%_ ((_%rest159619%_
                                (_%flatten159615%_ _%bindings159613%_))
                               (_%locals159620%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159621159632%_ _%rest159619%_)
                   (_%E159625159636%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159621159632%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159628159661%_
                     (lambda (_%rest159658%_ _%id159659%_)
                       (_%loop159617%_
                        _%rest159658%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159659%_))
                              _%locals159620%_))))
                    (_%K159627159650%_
                     (lambda (_%id159648%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159648%_))
                             _%locals159620%_)))
                    (_%K159626159641%_ (lambda () _%locals159620%_)))
                (let ((_%try-match159623159655%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159621159632%_))
                             (let ((_%id159653%_ _%rest159621159632%_))
                               (_%K159627159650%_ _%id159653%_))
                             (_%K159626159641%_)))))
                  (if (pair? _%rest159621159632%_)
                      (let ((_%tl159630159666%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159621159632%_)))
                            (_%hd159629159664%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159621159632%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159629159664%_))
                            (let ((_%id159669%_ _%hd159629159664%_)
                                  (_%rest159671%_ _%tl159630159666%_))
                              (_%K159628159661%_ _%rest159671%_ _%id159669%_))
                            (_%K159626159641%_)))
                      (_%try-match159623159655%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159565%_ _%stx159566%_)
        (let* ((_%g159568159579%_
                (lambda (_%g159569159576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159569159576%_))))
               (_%g159567159610%_
                (lambda (_%g159569159582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159569159582%_))
                      (let ((_%e159572159584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159569159582%_))))
                        (let ((_%hd159573159587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159572159584%_)))
                              (_%tl159574159589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159572159584%_))))
                          ((lambda (_%g159570159592%_ _%g159571159593%_)
                             (let ((_%rands159608%_
                                    (map (lambda (_%g159603159605%_)
                                           (gxc#compile-e__1
                                            _%self159565%_
                                            _%g159603159605%_))
                                         _%g159570159592%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159571159593%_ _%rands159608%_)
                                _%stx159566%_)))
                           _%tl159574159589%_
                           _%hd159573159587%_)))
                      (_%g159568159579%_ _%g159569159582%_)))))
          (_%g159567159610%_ _%stx159566%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159495%_ _%stx159496%_)
        (let* ((_%g159498159515%_
                (lambda (_%g159499159512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159499159512%_))))
               (_%g159497159562%_
                (lambda (_%g159499159518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159499159518%_))
                      (let ((_%e159502159520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159499159518%_))))
                        (let ((_%hd159503159523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159502159520%_)))
                              (_%tl159504159525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159502159520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159504159525%_))
                              (let ((_%e159505159528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159504159525%_))))
                                (let ((_%hd159506159531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159505159528%_)))
                                      (_%tl159507159533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159505159528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159507159533%_))
                                      (let ((_%e159508159536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159507159533%_))))
                                        (let ((_%hd159509159539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159508159536%_)))
                                              (_%tl159510159541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159508159536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159510159541%_))
                                              ((lambda (_%g159500159544%_
                                                        _%g159501159545%_)
                                                 (let ((_%expr159560%_
                                                        (gxc#compile-e__1
                                                         _%self159495%_
                                                         _%g159500159544%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159501159545%_
                                                                (cons _%expr159560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159496%_)))
                                               _%hd159509159539%_
                                               _%hd159506159531%_)
                                              (_%g159498159515%_
                                               _%g159499159518%_))))
                                      (_%g159498159515%_ _%g159499159518%_))))
                              (_%g159498159515%_ _%g159499159518%_))))
                      (_%g159498159515%_ _%g159499159518%_)))))
          (_%g159497159562%_ _%stx159496%_))))))
