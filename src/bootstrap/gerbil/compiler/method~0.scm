(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770338923)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161698%_)
        (let* ((_%self161700%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161702%_
                (let ((__tmp161920 (gxc#stx-car-e _%stx161698%_)))
                  (declare (not safe))
                  (method-ref _%self161700%_ __tmp161920))))
          (if _%$e161702%_
              ((lambda (_%method161705%_)
                 (declare (not safe))
                 (let ((_%$e161708%_ (gx#stx-source _%stx161698%_)))
                   (if _%$e161708%_
                       ((lambda (_%source161711%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161705%_ _%self161700%_ _%stx161698%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161711%_ '()))
                                 (let ((_%$e161715%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161715%_ _%$e161715%_ '())))))
                        _%$e161708%_)
                       (_%method161705%_ _%self161700%_ _%stx161698%_))))
               _%$e161702%_)
              (let ((__tmp161922 (gxc#stx-car-e _%stx161698%_))
                    (__tmp161921
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161698%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161700%_
                       __tmp161922
                       __tmp161921))))))
    (define gxc#compile-e__1
      (lambda (_%self161720%_ _%stx161721%_)
        (let ((_%$e161723%_
               (let ((__tmp161923 (gxc#stx-car-e _%stx161721%_)))
                 (declare (not safe))
                 (method-ref _%self161720%_ __tmp161923))))
          (if _%$e161723%_
              ((lambda (_%method161726%_)
                 (declare (not safe))
                 (let ((_%$e161729%_ (gx#stx-source _%stx161721%_)))
                   (if _%$e161729%_
                       ((lambda (_%source161732%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161726%_ _%self161720%_ _%stx161721%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161732%_ '()))
                                 (let ((_%$e161736%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161736%_ _%$e161736%_ '())))))
                        _%$e161729%_)
                       (_%method161726%_ _%self161720%_ _%stx161721%_))))
               _%$e161723%_)
              (let ((__tmp161925 (gxc#stx-car-e _%stx161721%_))
                    (__tmp161924
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161721%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161720%_
                       __tmp161925
                       __tmp161924))))))
    (define gxc#compile-e
      (lambda _g161926_
        (let ((_g161927_ (let () (declare (not safe)) (##length _g161926_))))
          (cond ((let () (declare (not safe)) (##fx= _g161927_ 1))
                 (apply gxc#compile-e__0 _g161926_))
                ((let () (declare (not safe)) (##fx= _g161927_ 2))
                 (apply gxc#compile-e__1 _g161926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161926_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161696%_)
        (let ((__tmp161928
               (car (let () (declare (not safe)) (gx#stx-e _%stx161696%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161928))))
    (define gxc#void-method (lambda (_%self161693%_ _%stx161694%_) '#!void))
    (define gxc#false-method (lambda (_%self161690%_ _%stx161691%_) '#f))
    (define gxc#true-method (lambda (_%self161687%_ _%stx161688%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161684%_ _%stx161685%_) _%stx161685%_))
    (define gxc#::void-expression::t
      (let ((__tmp161929 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161929
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161681%_
        (apply make-instance gxc#::void-expression::t _%$args161681%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161930
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
        (__make-atomic-promise __tmp161930)))
    (define gxc#::void-special-form::t
      (let ((__tmp161931 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161931
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161677%_
        (apply make-instance gxc#::void-special-form::t _%$args161677%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161932
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
        (__make-atomic-promise __tmp161932)))
    (define gxc#::void::t
      (let ((__tmp161933
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161933 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161673%_
        (apply make-instance gxc#::void::t _%$args161673%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161934
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161934)))
    (define gxc#::false-expression::t
      (let ((__tmp161935 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161935
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161669%_
        (apply make-instance gxc#::false-expression::t _%$args161669%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161936
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
        (__make-atomic-promise __tmp161936)))
    (define gxc#::false-special-form::t
      (let ((__tmp161937 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161937
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161665%_
        (apply make-instance gxc#::false-special-form::t _%$args161665%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161938
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
        (__make-atomic-promise __tmp161938)))
    (define gxc#::false::t
      (let ((__tmp161939
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161939 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161661%_
        (apply make-instance gxc#::false::t _%$args161661%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161940
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161940)))
    (define gxc#::identity-expression::t
      (let ((__tmp161941 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161941
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161657%_
        (apply make-instance gxc#::identity-expression::t _%$args161657%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161942
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
        (__make-atomic-promise __tmp161942)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161943
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161653%_
        (apply make-instance gxc#::identity-special-form::t _%$args161653%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161944
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
        (__make-atomic-promise __tmp161944)))
    (define gxc#::identity::t
      (let ((__tmp161945
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161945
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161649%_
        (apply make-instance gxc#::identity::t _%$args161649%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161946
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161946)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161947 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161947
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161645%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161645%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161948
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
        (__make-atomic-promise __tmp161948)))
    (define gxc#::basic-xform::t
      (let ((__tmp161949
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161949
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161641%_
        (apply make-instance gxc#::basic-xform::t _%$args161641%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161950
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
        (__make-atomic-promise __tmp161950)))
    (define gxc#apply-begin%
      (lambda (_%self161597%_ _%stx161598%_)
        (let* ((_%g161600161610%_
                (lambda (_%g161601161607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161601161607%_))))
               (_%g161599161637%_
                (lambda (_%g161601161613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161601161613%_))
                      (let ((_%e161603161615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161601161613%_))))
                        (let ((_%hd161604161618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161603161615%_)))
                              (_%tl161605161620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161603161615%_))))
                          ((lambda (_%g161602161623%_)
                             (for-each
                              (lambda (_%g161632161634%_)
                                (gxc#compile-e__1
                                 _%self161597%_
                                 _%g161632161634%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161602161623%_))))
                           _%tl161605161620%_)))
                      (_%g161600161610%_ _%g161601161613%_)))))
          (_%g161599161637%_ _%stx161598%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161558%_ _%stx161559%_)
        (let* ((_%g161561161571%_
                (lambda (_%g161562161568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161562161568%_))))
               (_%g161560161594%_
                (lambda (_%g161562161574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161562161574%_))
                      (let ((_%e161564161576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161562161574%_))))
                        (let ((_%hd161565161579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161564161576%_)))
                              (_%tl161566161581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161564161576%_))))
                          ((lambda (_%g161563161584%_)
                             (gxc#compile-e__1
                              _%self161558%_
                              (last _%g161563161584%_)))
                           _%tl161566161581%_)))
                      (_%g161561161571%_ _%g161562161574%_)))))
          (_%g161560161594%_ _%stx161559%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161554%_ _%stx161555%_)
        (let ((__tmp161953
               (lambda () (gxc#apply-begin% _%self161554%_ _%stx161555%_)))
              (__tmp161951
               (let ((__tmp161952
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161952 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161953
           gx#current-expander-phi
           __tmp161951))))
    (define gxc#apply-module%
      (lambda (_%self161493%_ _%stx161494%_)
        (let* ((_%g161496161510%_
                (lambda (_%g161497161507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161497161507%_))))
               (_%g161495161551%_
                (lambda (_%g161497161513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161497161513%_))
                      (let ((_%e161500161515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161497161513%_))))
                        (let ((_%hd161501161518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161500161515%_)))
                              (_%tl161502161520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161500161515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161502161520%_))
                              (let ((_%e161503161523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161502161520%_))))
                                (let ((_%hd161504161526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161503161523%_)))
                                      (_%tl161505161528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161503161523%_))))
                                  ((lambda (_%g161498161531%_
                                            _%g161499161532%_)
                                     (let* ((_%ctx161545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161499161532%_)))
                                            (_%ctx-stx161547%_
                                             (##structure-ref
                                              _%ctx161545%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161954
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161493%_
                                                _%ctx-stx161547%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161954
                                        gx#current-expander-context
                                        _%ctx161545%_)))
                                   _%tl161505161528%_
                                   _%hd161504161526%_)))
                              (_%g161496161510%_ _%g161497161513%_))))
                      (_%g161496161510%_ _%g161497161513%_)))))
          (_%g161495161551%_ _%stx161494%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161425%_ _%stx161426%_)
        (let* ((_%g161428161445%_
                (lambda (_%g161429161442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161429161442%_))))
               (_%g161427161490%_
                (lambda (_%g161429161448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161429161448%_))
                      (let ((_%e161432161450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161429161448%_))))
                        (let ((_%hd161433161453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161432161450%_)))
                              (_%tl161434161455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161432161450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161434161455%_))
                              (let ((_%e161435161458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161434161455%_))))
                                (let ((_%hd161436161461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161435161458%_)))
                                      (_%tl161437161463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161435161458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161437161463%_))
                                      (let ((_%e161438161466%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161437161463%_))))
                                        (let ((_%hd161439161469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161438161466%_)))
                                              (_%tl161440161471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161438161466%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161440161471%_))
                                              ((lambda (_%g161430161474%_
                                                        _%g161431161475%_)
                                                 (gxc#compile-e__1
                                                  _%self161425%_
                                                  _%g161430161474%_))
                                               _%hd161439161469%_
                                               _%hd161436161461%_)
                                              (_%g161428161445%_
                                               _%g161429161448%_))))
                                      (_%g161428161445%_ _%g161429161448%_))))
                              (_%g161428161445%_ _%g161429161448%_))))
                      (_%g161428161445%_ _%g161429161448%_)))))
          (_%g161427161490%_ _%stx161426%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161357%_ _%stx161358%_)
        (let* ((_%g161360161377%_
                (lambda (_%g161361161374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161361161374%_))))
               (_%g161359161422%_
                (lambda (_%g161361161380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161361161380%_))
                      (let ((_%e161364161382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161361161380%_))))
                        (let ((_%hd161365161385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161364161382%_)))
                              (_%tl161366161387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161364161382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161366161387%_))
                              (let ((_%e161367161390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161366161387%_))))
                                (let ((_%hd161368161393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161367161390%_)))
                                      (_%tl161369161395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161367161390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161369161395%_))
                                      (let ((_%e161370161398%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161369161395%_))))
                                        (let ((_%hd161371161401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161370161398%_)))
                                              (_%tl161372161403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161370161398%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161372161403%_))
                                              ((lambda (_%g161362161406%_
                                                        _%g161363161407%_)
                                                 (gxc#compile-e__1
                                                  _%self161357%_
                                                  _%g161362161406%_))
                                               _%hd161371161401%_
                                               _%hd161368161393%_)
                                              (_%g161360161377%_
                                               _%g161361161380%_))))
                                      (_%g161360161377%_ _%g161361161380%_))))
                              (_%g161360161377%_ _%g161361161380%_))))
                      (_%g161360161377%_ _%g161361161380%_)))))
          (_%g161359161422%_ _%stx161358%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161288%_ _%stx161289%_)
        (let* ((_%g161291161308%_
                (lambda (_%g161292161305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161292161305%_))))
               (_%g161290161354%_
                (lambda (_%g161292161311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161292161311%_))
                      (let ((_%e161295161313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161292161311%_))))
                        (let ((_%hd161296161316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161295161313%_)))
                              (_%tl161297161318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161295161313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161297161318%_))
                              (let ((_%e161298161321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161297161318%_))))
                                (let ((_%hd161299161324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161298161321%_)))
                                      (_%tl161300161326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161298161321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161300161326%_))
                                      (let ((_%e161301161329%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161300161326%_))))
                                        (let ((_%hd161302161332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161301161329%_)))
                                              (_%tl161303161334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161301161329%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161303161334%_))
                                              ((lambda (_%g161293161337%_
                                                        _%g161294161338%_)
                                                 (let ((__tmp161957
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161288%_
                                                           _%g161293161337%_)))
                                                       (__tmp161955
                                                        (let ((__tmp161956
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161956 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161957
                                                    gx#current-expander-phi
                                                    __tmp161955)))
                                               _%hd161302161332%_
                                               _%hd161299161324%_)
                                              (_%g161291161308%_
                                               _%g161292161311%_))))
                                      (_%g161291161308%_ _%g161292161311%_))))
                              (_%g161291161308%_ _%g161292161311%_))))
                      (_%g161291161308%_ _%g161292161311%_)))))
          (_%g161290161354%_ _%stx161289%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161220%_ _%stx161221%_)
        (let* ((_%g161223161240%_
                (lambda (_%g161224161237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161224161237%_))))
               (_%g161222161285%_
                (lambda (_%g161224161243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161224161243%_))
                      (let ((_%e161227161245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161224161243%_))))
                        (let ((_%hd161228161248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161227161245%_)))
                              (_%tl161229161250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161227161245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161229161250%_))
                              (let ((_%e161230161253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161229161250%_))))
                                (let ((_%hd161231161256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161230161253%_)))
                                      (_%tl161232161258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161230161253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161232161258%_))
                                      (let ((_%e161233161261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161232161258%_))))
                                        (let ((_%hd161234161264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161233161261%_)))
                                              (_%tl161235161266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161233161261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161235161266%_))
                                              ((lambda (_%g161225161269%_
                                                        _%g161226161270%_)
                                                 (gxc#compile-e__1
                                                  _%self161220%_
                                                  _%g161225161269%_))
                                               _%hd161234161264%_
                                               _%hd161231161256%_)
                                              (_%g161223161240%_
                                               _%g161224161243%_))))
                                      (_%g161223161240%_ _%g161224161243%_))))
                              (_%g161223161240%_ _%g161224161243%_))))
                      (_%g161223161240%_ _%g161224161243%_)))))
          (_%g161222161285%_ _%stx161221%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self161106%_ _%stx161107%_)
        (let* ((_%g161109161137%_
                (lambda (_%g161110161134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161110161134%_))))
               (_%g161108161217%_
                (lambda (_%g161110161140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161110161140%_))
                      (let ((_%e161113161142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161110161140%_))))
                        (let ((_%hd161114161145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161113161142%_)))
                              (_%tl161115161147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161113161142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161115161147%_))
                              (let ((_g161958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161115161147%_
                                        '0))))
                                (begin
                                  (let ((_g161959_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161958_)
                                               (##values-length _g161958_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161959_ 2)))
                                        (error "Context expects 2 values"
                                               _g161959_)))
                                  (let ((_%target161116161150%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161958_ 0)))
                                        (_%tl161118161152%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161958_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161118161152%_))
                                        (letrec ((_%loop161119161155%_
                                                  (lambda (_%hd161117161158%_
                                                           _%body161123161160%_
                                                           _%hd161124161161%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161117161158%_))
                                                        (let ((_%e161120161163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161117161158%_))))
                  (let ((_%lp-hd161121161166%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161120161163%_)))
                        (_%lp-tl161122161168%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161120161163%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd161121161166%_))
                        (let ((_%e161127161171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd161121161166%_))))
                          (let ((_%hd161128161174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161127161171%_)))
                                (_%tl161129161176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161127161171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161129161176%_))
                                (let ((_%e161130161179%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161129161176%_))))
                                  (let ((_%hd161131161182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161130161179%_)))
                                        (_%tl161132161184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161130161179%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161132161184%_))
                                        (_%loop161119161155%_
                                         _%lp-tl161122161168%_
                                         (cons _%hd161131161182%_
                                               _%body161123161160%_)
                                         (cons _%hd161128161174%_
                                               _%hd161124161161%_))
                                        (_%g161109161137%_
                                         _%g161110161140%_))))
                                (_%g161109161137%_ _%g161110161140%_))))
                        (_%g161109161137%_ _%g161110161140%_))))
                (let ((_%body161125161187%_ (reverse _%body161123161160%_))
                      (_%hd161126161188%_ (reverse _%hd161124161161%_)))
                  ((lambda (_%g161111161190%_ _%g161112161191%_)
                     (for-each
                      (lambda (_%g161205161207%_)
                        (gxc#compile-e__1 _%self161106%_ _%g161205161207%_))
                      (let ((__tmp161960
                             (lambda (_%g161209161212%_ _%g161210161214%_)
                               (cons _%g161209161212%_ _%g161210161214%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161960 '() _%g161111161190%_))))
                   _%body161125161187%_
                   _%hd161126161188%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161119161155%_
                                           _%target161116161150%_
                                           '()
                                           '()))
                                        (_%g161109161137%_
                                         _%g161110161140%_)))))
                              (_%g161109161137%_ _%g161110161140%_))))
                      (_%g161109161137%_ _%g161110161140%_)))))
          (_%g161108161217%_ _%stx161107%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160963%_ _%stx160964%_)
        (let* ((_%g160966161001%_
                (lambda (_%g160967160998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160967160998%_))))
               (_%g160965161103%_
                (lambda (_%g160967161004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160967161004%_))
                      (let ((_%e160971161006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160967161004%_))))
                        (let ((_%hd160972161009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160971161006%_)))
                              (_%tl160973161011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160971161006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160973161011%_))
                              (let ((_%e160974161014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160973161011%_))))
                                (let ((_%hd160975161017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160974161014%_)))
                                      (_%tl160976161019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160974161014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160975161017%_))
                                      (let ((_g161961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160975161017%_
                                                '0))))
                                        (begin
                                          (let ((_g161962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161961_)
                                                       (##values-length
                                                        _g161961_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161962_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161962_)))
                                          (let ((_%target160977161022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161961_ 0)))
                                                (_%tl160979161024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161961_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160979161024%_))
                                                (letrec ((_%loop160980161027%_
                                                          (lambda (_%hd160978161030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160984161032%_
                           _%hd160985161033%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160978161030%_))
                        (let ((_%e160981161035%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160978161030%_))))
                          (let ((_%lp-hd160982161038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160981161035%_)))
                                (_%lp-tl160983161040%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160981161035%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160982161038%_))
                                (let ((_%e160988161043%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160982161038%_))))
                                  (let ((_%hd160989161046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160988161043%_)))
                                        (_%tl160990161048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160988161043%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160990161048%_))
                                        (let ((_%e160991161051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160990161048%_))))
                                          (let ((_%hd160992161054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160991161051%_)))
                                                (_%tl160993161056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160991161051%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160993161056%_))
                                                (_%loop160980161027%_
                                                 _%lp-tl160983161040%_
                                                 (cons _%hd160992161054%_
                                                       _%expr160984161032%_)
                                                 (cons _%hd160989161046%_
                                                       _%hd160985161033%_))
                                                (_%g160966161001%_
                                                 _%g160967161004%_))))
                                        (_%g160966161001%_
                                         _%g160967161004%_))))
                                (_%g160966161001%_ _%g160967161004%_))))
                        (let ((_%expr160986161059%_
                               (reverse _%expr160984161032%_))
                              (_%hd160987161060%_
                               (reverse _%hd160985161033%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160976161019%_))
                              (let ((_%e160994161062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160976161019%_))))
                                (let ((_%hd160995161065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160994161062%_)))
                                      (_%tl160996161067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160994161062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160996161067%_))
                                      ((lambda (_%g160968161070%_
                                                _%g160969161071%_
                                                _%g160970161072%_)
                                         (for-each
                                          (lambda (_%g161091161093%_)
                                            (gxc#compile-e__1
                                             _%self160963%_
                                             _%g161091161093%_))
                                          (let ((__tmp161964
                                                 (lambda (_%g161095161098%_
                                                          _%g161096161100%_)
                                                   (cons _%g161095161098%_
                                                         _%g161096161100%_)))
                                                (__tmp161963
                                                 (cons _%g160968161070%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161964
                                             __tmp161963
                                             _%g160969161071%_))))
                                       _%hd160995161065%_
                                       _%expr160986161059%_
                                       _%hd160987161060%_)
                                      (_%g160966161001%_ _%g160967161004%_))))
                              (_%g160966161001%_ _%g160967161004%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160980161027%_
                                                   _%target160977161022%_
                                                   '()
                                                   '()))
                                                (_%g160966161001%_
                                                 _%g160967161004%_)))))
                                      (_%g160966161001%_ _%g160967161004%_))))
                              (_%g160966161001%_ _%g160967161004%_))))
                      (_%g160966161001%_ _%g160967161004%_)))))
          (_%g160965161103%_ _%stx160964%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160908%_ _%stx160909%_)
        (let* ((_%g160911160925%_
                (lambda (_%g160912160922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160912160922%_))))
               (_%g160910160960%_
                (lambda (_%g160912160928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160912160928%_))
                      (let ((_%e160915160930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160912160928%_))))
                        (let ((_%hd160916160933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160915160930%_)))
                              (_%tl160917160935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160915160930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160917160935%_))
                              (let ((_%e160918160938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160917160935%_))))
                                (let ((_%hd160919160941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160918160938%_)))
                                      (_%tl160920160943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160918160938%_))))
                                  ((lambda (_%g160913160946%_
                                            _%g160914160947%_)
                                     (gxc#compile-e__1
                                      _%self160908%_
                                      (last _%g160913160946%_)))
                                   _%tl160920160943%_
                                   _%hd160919160941%_)))
                              (_%g160911160925%_ _%g160912160928%_))))
                      (_%g160911160925%_ _%g160912160928%_)))))
          (_%g160910160960%_ _%stx160909%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160840%_ _%stx160841%_)
        (let* ((_%g160843160860%_
                (lambda (_%g160844160857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160844160857%_))))
               (_%g160842160905%_
                (lambda (_%g160844160863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160844160863%_))
                      (let ((_%e160847160865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160844160863%_))))
                        (let ((_%hd160848160868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160847160865%_)))
                              (_%tl160849160870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160847160865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160849160870%_))
                              (let ((_%e160850160873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160849160870%_))))
                                (let ((_%hd160851160876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160850160873%_)))
                                      (_%tl160852160878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160850160873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160852160878%_))
                                      (let ((_%e160853160881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160852160878%_))))
                                        (let ((_%hd160854160884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160853160881%_)))
                                              (_%tl160855160886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160853160881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160855160886%_))
                                              ((lambda (_%g160845160889%_
                                                        _%g160846160890%_)
                                                 (gxc#compile-e__1
                                                  _%self160840%_
                                                  _%g160845160889%_))
                                               _%hd160854160884%_
                                               _%hd160851160876%_)
                                              (_%g160843160860%_
                                               _%g160844160863%_))))
                                      (_%g160843160860%_ _%g160844160863%_))))
                              (_%g160843160860%_ _%g160844160863%_))))
                      (_%g160843160860%_ _%g160844160863%_)))))
          (_%g160842160905%_ _%stx160841%_))))
    (define gxc#apply-operands
      (lambda (_%self160755%_ _%stx160756%_)
        (let* ((_%g160758160777%_
                (lambda (_%g160759160774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160759160774%_))))
               (_%g160757160837%_
                (lambda (_%g160759160780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160759160780%_))
                      (let ((_%e160761160782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160759160780%_))))
                        (let ((_%hd160762160785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160761160782%_)))
                              (_%tl160763160787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160761160782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160763160787%_))
                              (let ((_g161965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160763160787%_
                                        '0))))
                                (begin
                                  (let ((_g161966_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161965_)
                                               (##values-length _g161965_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161966_ 2)))
                                        (error "Context expects 2 values"
                                               _g161966_)))
                                  (let ((_%target160764160790%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161965_ 0)))
                                        (_%tl160766160792%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161965_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160766160792%_))
                                        (letrec ((_%loop160767160795%_
                                                  (lambda (_%hd160765160798%_
                                                           _%rands160771160800%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160765160798%_))
                                                        (let ((_%e160768160802%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160765160798%_))))
                  (let ((_%lp-hd160769160805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160768160802%_)))
                        (_%lp-tl160770160807%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160768160802%_))))
                    (_%loop160767160795%_
                     _%lp-tl160770160807%_
                     (cons _%lp-hd160769160805%_ _%rands160771160800%_))))
                (let ((_%rands160772160810%_ (reverse _%rands160771160800%_)))
                  ((lambda (_%g160760160812%_)
                     (for-each
                      (lambda (_%g160825160827%_)
                        (gxc#compile-e__1 _%self160755%_ _%g160825160827%_))
                      (let ((__tmp161967
                             (lambda (_%g160829160832%_ _%g160830160834%_)
                               (cons _%g160829160832%_ _%g160830160834%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161967 '() _%g160760160812%_))))
                   _%rands160772160810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160767160795%_
                                           _%target160764160790%_
                                           '()))
                                        (_%g160758160777%_
                                         _%g160759160780%_)))))
                              (_%g160758160777%_ _%g160759160780%_))))
                      (_%g160758160777%_ _%g160759160780%_)))))
          (_%g160757160837%_ _%stx160756%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160752%_ _%src-stx160753%_)
        (let ((__tmp161968
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160753%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160752%_ __tmp161968))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160748%_ _%src-stx160749%_ _%ctx160750%_)
        (gxc#compile-e__1
         _%ctx160750%_
         (gxc#xform-wrap-source _%stx160748%_ _%src-stx160749%_))))
    (define gxc#xform-begin%
      (lambda (_%self160703%_ _%stx160704%_)
        (let* ((_%g160706160716%_
                (lambda (_%g160707160713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160707160713%_))))
               (_%g160705160745%_
                (lambda (_%g160707160719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160707160719%_))
                      (let ((_%e160709160721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160707160719%_))))
                        (let ((_%hd160710160724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160709160721%_)))
                              (_%tl160711160726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160709160721%_))))
                          ((lambda (_%g160708160729%_)
                             (let ((_%forms160743%_
                                    (map (lambda (_%g160738160740%_)
                                           (gxc#compile-e__1
                                            _%self160703%_
                                            _%g160738160740%_))
                                         _%g160708160729%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160743%_)
                                _%stx160704%_)))
                           _%tl160711160726%_)))
                      (_%g160706160716%_ _%g160707160719%_)))))
          (_%g160705160745%_ _%stx160704%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160657%_ _%stx160658%_)
        (let* ((_%g160660160670%_
                (lambda (_%g160661160667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160661160667%_))))
               (_%g160659160700%_
                (lambda (_%g160661160673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160661160673%_))
                      (let ((_%e160663160675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160661160673%_))))
                        (let ((_%hd160664160678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160663160675%_)))
                              (_%tl160665160680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160663160675%_))))
                          ((lambda (_%g160662160683%_)
                             (let ((__tmp161971
                                    (lambda ()
                                      (let ((_%forms160698%_
                                             (map (lambda (_%g160693160695%_)
                                                    (gxc#compile-e__1
                                                     _%self160657%_
                                                     _%g160693160695%_))
                                                  _%g160662160683%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160698%_)
                                         _%stx160658%_))))
                                   (__tmp161969
                                    (let ((__tmp161970
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161970 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161971
                                gx#current-expander-phi
                                __tmp161969)))
                           _%tl160665160680%_)))
                      (_%g160660160670%_ _%g160661160673%_)))))
          (_%g160659160700%_ _%stx160658%_))))
    (define gxc#xform-module%
      (lambda (_%self160594%_ _%stx160595%_)
        (let* ((_%g160597160611%_
                (lambda (_%g160598160608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160598160608%_))))
               (_%g160596160654%_
                (lambda (_%g160598160614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160598160614%_))
                      (let ((_%e160601160616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160598160614%_))))
                        (let ((_%hd160602160619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160601160616%_)))
                              (_%tl160603160621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160601160616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160603160621%_))
                              (let ((_%e160604160624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160603160621%_))))
                                (let ((_%hd160605160627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160604160624%_)))
                                      (_%tl160606160629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160604160624%_))))
                                  ((lambda (_%g160599160632%_
                                            _%g160600160633%_)
                                     (let* ((_%ctx160646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160600160633%_)))
                                            (_%code160648%_
                                             (##structure-ref
                                              _%ctx160646%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160651%_
                                             (let ((__tmp161972
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160594%_
                                                       _%code160648%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161972
                                                gx#current-expander-context
                                                _%ctx160646%_))))
                                       (##structure-set!
                                        _%ctx160646%_
                                        _%code160651%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160600160633%_
                                                    (cons _%code160651%_ '())))
                                        _%stx160595%_)))
                                   _%tl160606160629%_
                                   _%hd160605160627%_)))
                              (_%g160597160611%_ _%g160598160614%_))))
                      (_%g160597160611%_ _%g160598160614%_)))))
          (_%g160596160654%_ _%stx160595%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160524%_ _%stx160525%_)
        (let* ((_%g160527160544%_
                (lambda (_%g160528160541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160528160541%_))))
               (_%g160526160591%_
                (lambda (_%g160528160547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160528160547%_))
                      (let ((_%e160531160549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160528160547%_))))
                        (let ((_%hd160532160552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160531160549%_)))
                              (_%tl160533160554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160531160549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160533160554%_))
                              (let ((_%e160534160557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160533160554%_))))
                                (let ((_%hd160535160560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160534160557%_)))
                                      (_%tl160536160562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160534160557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160536160562%_))
                                      (let ((_%e160537160565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160536160562%_))))
                                        (let ((_%hd160538160568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160537160565%_)))
                                              (_%tl160539160570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160537160565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160539160570%_))
                                              ((lambda (_%g160529160573%_
                                                        _%g160530160574%_)
                                                 (let ((_%expr160589%_
                                                        (gxc#compile-e__1
                                                         _%self160524%_
                                                         _%g160529160573%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160530160574%_
                                                                (cons _%expr160589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160525%_)))
                                               _%hd160538160568%_
                                               _%hd160535160560%_)
                                              (_%g160527160544%_
                                               _%g160528160547%_))))
                                      (_%g160527160544%_ _%g160528160547%_))))
                              (_%g160527160544%_ _%g160528160547%_))))
                      (_%g160527160544%_ _%g160528160547%_)))))
          (_%g160526160591%_ _%stx160525%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160453%_ _%stx160454%_)
        (let* ((_%g160456160473%_
                (lambda (_%g160457160470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160457160470%_))))
               (_%g160455160521%_
                (lambda (_%g160457160476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160457160476%_))
                      (let ((_%e160460160478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160457160476%_))))
                        (let ((_%hd160461160481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160460160478%_)))
                              (_%tl160462160483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160460160478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160462160483%_))
                              (let ((_%e160463160486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160462160483%_))))
                                (let ((_%hd160464160489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160463160486%_)))
                                      (_%tl160465160491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160463160486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160465160491%_))
                                      (let ((_%e160466160494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160465160491%_))))
                                        (let ((_%hd160467160497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160466160494%_)))
                                              (_%tl160468160499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160466160494%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160468160499%_))
                                              ((lambda (_%g160458160502%_
                                                        _%g160459160503%_)
                                                 (let ((__tmp161975
                                                        (lambda ()
                                                          (let ((_%expr160519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160453%_ _%g160458160502%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160459160503%_ (cons _%expr160519%_ '())))
                     _%stx160454%_))))
               (__tmp161973
                (let ((__tmp161974
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161974 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161975
                                                    gx#current-expander-phi
                                                    __tmp161973)))
                                               _%hd160467160497%_
                                               _%hd160464160489%_)
                                              (_%g160456160473%_
                                               _%g160457160476%_))))
                                      (_%g160456160473%_ _%g160457160476%_))))
                              (_%g160456160473%_ _%g160457160476%_))))
                      (_%g160456160473%_ _%g160457160476%_)))))
          (_%g160455160521%_ _%stx160454%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160383%_ _%stx160384%_)
        (let* ((_%g160386160403%_
                (lambda (_%g160387160400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160387160400%_))))
               (_%g160385160450%_
                (lambda (_%g160387160406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160387160406%_))
                      (let ((_%e160390160408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160387160406%_))))
                        (let ((_%hd160391160411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160390160408%_)))
                              (_%tl160392160413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160390160408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160392160413%_))
                              (let ((_%e160393160416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160392160413%_))))
                                (let ((_%hd160394160419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160393160416%_)))
                                      (_%tl160395160421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160393160416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160395160421%_))
                                      (let ((_%e160396160424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160395160421%_))))
                                        (let ((_%hd160397160427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160396160424%_)))
                                              (_%tl160398160429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160396160424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160398160429%_))
                                              ((lambda (_%g160388160432%_
                                                        _%g160389160433%_)
                                                 (let ((_%expr160448%_
                                                        (gxc#compile-e__1
                                                         _%self160383%_
                                                         _%g160388160432%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160389160433%_
                                                                (cons _%expr160448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160384%_)))
                                               _%hd160397160427%_
                                               _%hd160394160419%_)
                                              (_%g160386160403%_
                                               _%g160387160406%_))))
                                      (_%g160386160403%_ _%g160387160406%_))))
                              (_%g160386160403%_ _%g160387160406%_))))
                      (_%g160386160403%_ _%g160387160406%_)))))
          (_%g160385160450%_ _%stx160384%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160321%_ _%stx160322%_)
        (let* ((_%g160324160338%_
                (lambda (_%g160325160335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160325160335%_))))
               (_%g160323160380%_
                (lambda (_%g160325160341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160325160341%_))
                      (let ((_%e160328160343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160325160341%_))))
                        (let ((_%hd160329160346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160328160343%_)))
                              (_%tl160330160348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160328160343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160330160348%_))
                              (let ((_%e160331160351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160330160348%_))))
                                (let ((_%hd160332160354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160331160351%_)))
                                      (_%tl160333160356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160331160351%_))))
                                  ((lambda (_%g160326160359%_
                                            _%g160327160360%_)
                                     (let ((__tmp161977
                                            (lambda ()
                                              (let ((_%body160378%_
                                                     (map (lambda (_%g160373160375%_)
                                                            (gxc#compile-e__1
                                                             _%self160321%_
                                                             _%g160373160375%_))
                                                          _%g160326160359%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160327160360%_
                                                             _%body160378%_))
                                                 _%stx160322%_))))
                                           (__tmp161976
                                            (gxc#xform-let-locals
                                             _%g160327160360%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161977
                                        gxc#current-compile-local-env
                                        __tmp161976)))
                                   _%tl160333160356%_
                                   _%hd160332160354%_)))
                              (_%g160324160338%_ _%g160325160341%_))))
                      (_%g160324160338%_ _%g160325160341%_)))))
          (_%g160323160380%_ _%stx160322%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160229%_ _%stx160230%_)
        (letrec ((_%clause-e160232%_
                  (lambda (_%clause160273%_)
                    (let* ((_%g160275160286%_
                            (lambda (_%g160276160283%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160276160283%_))))
                           (_%g160274160318%_
                            (lambda (_%g160276160289%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160276160289%_))
                                  (let ((_%e160279160291%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160276160289%_))))
                                    (let ((_%hd160280160294%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160279160291%_)))
                                          (_%tl160281160296%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160279160291%_))))
                                      ((lambda (_%g160277160299%_
                                                _%g160278160300%_)
                                         (let ((__tmp161979
                                                (lambda ()
                                                  (let ((_%body160316%_
                                                         (map (lambda (_%g160311160313%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160229%_
                         _%g160311160313%_))
                      _%g160277160299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160278160300%_
                                                          _%body160316%_))))
                                               (__tmp161978
                                                (gxc#xform-let-locals
                                                 _%g160278160300%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161979
                                            gxc#current-compile-local-env
                                            __tmp161978)))
                                       _%tl160281160296%_
                                       _%hd160280160294%_)))
                                  (_%g160275160286%_ _%g160276160289%_)))))
                      (_%g160274160318%_ _%clause160273%_)))))
          (let* ((_%g160234160244%_
                  (lambda (_%g160235160241%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160235160241%_))))
                 (_%g160233160270%_
                  (lambda (_%g160235160247%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160235160247%_))
                        (let ((_%e160237160249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160235160247%_))))
                          (let ((_%hd160238160252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160237160249%_)))
                                (_%tl160239160254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160237160249%_))))
                            ((lambda (_%g160236160257%_)
                               (let ((_%clauses160268%_
                                      (map _%clause-e160232%_
                                           _%g160236160257%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160268%_)
                                  _%stx160230%_)))
                             _%tl160239160254%_)))
                        (_%g160234160244%_ _%g160235160247%_)))))
            (_%g160233160270%_ _%stx160230%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159989%_ _%stx159990%_)
        (let* ((_%g159992160025%_
                (lambda (_%g159993160022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159993160022%_))))
               (_%g159991160226%_
                (lambda (_%g159993160028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159993160028%_))
                      (let ((_%e159998160030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159993160028%_))))
                        (let ((_%hd159999160033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159998160030%_)))
                              (_%tl160000160035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159998160030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160000160035%_))
                              (let ((_%e160001160038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160000160035%_))))
                                (let ((_%hd160002160041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160001160038%_)))
                                      (_%tl160003160043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160001160038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160002160041%_))
                                      (let ((_g161980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160002160041%_
                                                '0))))
                                        (begin
                                          (let ((_g161981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161980_)
                                                       (##values-length
                                                        _g161980_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161981_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161981_)))
                                          (let ((_%target160004160046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161980_ 0)))
                                                (_%tl160006160048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161980_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160006160048%_))
                                                (letrec ((_%loop160007160051%_
                                                          (lambda (_%hd160005160054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160011160056%_
                           _%hd160012160057%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160005160054%_))
                        (let ((_%e160008160059%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160005160054%_))))
                          (let ((_%lp-hd160009160062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160008160059%_)))
                                (_%lp-tl160010160064%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160008160059%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160009160062%_))
                                (let ((_%e160015160067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160009160062%_))))
                                  (let ((_%hd160016160070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160015160067%_)))
                                        (_%tl160017160072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160015160067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160017160072%_))
                                        (let ((_%e160018160075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160017160072%_))))
                                          (let ((_%hd160019160078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160018160075%_)))
                                                (_%tl160020160080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160018160075%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160020160080%_))
                                                (_%loop160007160051%_
                                                 _%lp-tl160010160064%_
                                                 (cons _%hd160019160078%_
                                                       _%expr160011160056%_)
                                                 (cons _%hd160016160070%_
                                                       _%hd160012160057%_))
                                                (_%g159992160025%_
                                                 _%g159993160028%_))))
                                        (_%g159992160025%_
                                         _%g159993160028%_))))
                                (_%g159992160025%_ _%g159993160028%_))))
                        (let ((_%expr160013160083%_
                               (reverse _%expr160011160056%_))
                              (_%hd160014160084%_
                               (reverse _%hd160012160057%_)))
                          ((lambda (_%g159994160086%_
                                    _%g159995160087%_
                                    _%g159996160088%_
                                    _%g159997160089%_)
                             (let* ((_%g160108160124%_
                                     (lambda (_%g160109160121%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g160109160121%_))))
                                    (_%g160107160212%_
                                     (lambda (_%g160109160127%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g160109160127%_))
                                           (let ((_g161982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g160109160127%_
                                                     '0))))
                                             (begin
                                               (let ((_g161983_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161982_)
                                                            (##values-length
                                                             _g161982_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161983_)))
                                               (let ((_%target160111160129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161982_
                                                         0)))
                                                     (_%tl160113160131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161982_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl160113160131%_))
                                                     (letrec ((_%loop160114160134%_
                                                               (lambda (_%hd160112160137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr160118160139%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd160112160137%_))
                             (let ((_%e160115160141%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd160112160137%_))))
                               (let ((_%lp-hd160116160144%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e160115160141%_)))
                                     (_%lp-tl160117160146%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e160115160141%_))))
                                 (_%loop160114160134%_
                                  _%lp-tl160117160146%_
                                  (cons _%lp-hd160116160144%_
                                        _%expr160118160139%_))))
                             (let ((_%expr160119160149%_
                                    (reverse _%expr160118160139%_)))
                               ((lambda (_%g160110160151%_)
                                  (let ((__tmp161986
                                         (lambda ()
                                           (let* ((_%g160165160172%_
                                                   (lambda (_%g160166160169%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160166160169%_))))
                                                  (_%g160164160198%_
                                                   (lambda (_%g160166160175%_)
                                                     ((lambda (_%g160167160177%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159997160089%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g160110160151%_
                                  _%g159996160088%_))
                               (let ((__tmp161987
                                      (lambda (_%g160187160191%_
                                               _%g160188160193%_
                                               _%g160189160195%_)
                                        (cons (cons _%g160188160193%_
                                                    (cons _%g160187160191%_
                                                          '()))
                                              _%g160189160195%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161987
                                  '()
                                  _%g160110160151%_
                                  _%g159996160088%_)))
                             _%g160167160177%_))
                 _%stx159990%_))
              _%g160166160175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g160164160198%_
                                              (map (lambda (_%g160200160202%_)
                                                     (gxc#compile-e__1
                                                      _%self159989%_
                                                      _%g160200160202%_))
                                                   _%g159994160086%_)))))
                                        (__tmp161984
                                         (gxc#xform-let-locals
                                          (let ((__tmp161985
                                                 (lambda (_%g160204160207%_
                                                          _%g160205160209%_)
                                                   (cons _%g160204160207%_
                                                         _%g160205160209%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161985
                                             '()
                                             _%g159996160088%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161986
                                     gxc#current-compile-local-env
                                     __tmp161984)))
                                _%expr160119160149%_))))))
               (_%loop160114160134%_ _%target160111160129%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160108160124%_
                                                      _%g160109160127%_)))))
                                           (_%g160108160124%_
                                            _%g160109160127%_)))))
                               (_%g160107160212%_
                                (map (lambda (_%g160214160216%_)
                                       (gxc#compile-e__1
                                        _%self159989%_
                                        _%g160214160216%_))
                                     (let ((__tmp161988
                                            (lambda (_%g160218160221%_
                                                     _%g160219160223%_)
                                              (cons _%g160218160221%_
                                                    _%g160219160223%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161988
                                        '()
                                        _%g159995160087%_))))))
                           _%tl160003160043%_
                           _%expr160013160083%_
                           _%hd160014160084%_
                           _%hd159999160033%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160007160051%_
                                                   _%target160004160046%_
                                                   '()
                                                   '()))
                                                (_%g159992160025%_
                                                 _%g159993160028%_)))))
                                      (_%g159992160025%_ _%g159993160028%_))))
                              (_%g159992160025%_ _%g159993160028%_))))
                      (_%g159992160025%_ _%g159993160028%_)))))
          (_%g159991160226%_ _%stx159990%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159749%_ _%stx159750%_)
        (let* ((_%g159752159785%_
                (lambda (_%g159753159782%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159753159782%_))))
               (_%g159751159986%_
                (lambda (_%g159753159788%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159753159788%_))
                      (let ((_%e159758159790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159753159788%_))))
                        (let ((_%hd159759159793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159758159790%_)))
                              (_%tl159760159795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159758159790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159760159795%_))
                              (let ((_%e159761159798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159760159795%_))))
                                (let ((_%hd159762159801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159761159798%_)))
                                      (_%tl159763159803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159761159798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159762159801%_))
                                      (let ((_g161989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159762159801%_
                                                '0))))
                                        (begin
                                          (let ((_g161990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161989_)
                                                       (##values-length
                                                        _g161989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161990_)))
                                          (let ((_%target159764159806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161989_ 0)))
                                                (_%tl159766159808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161989_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159766159808%_))
                                                (letrec ((_%loop159767159811%_
                                                          (lambda (_%hd159765159814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159771159816%_
                           _%hd159772159817%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159765159814%_))
                        (let ((_%e159768159819%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159765159814%_))))
                          (let ((_%lp-hd159769159822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159768159819%_)))
                                (_%lp-tl159770159824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159768159819%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159769159822%_))
                                (let ((_%e159775159827%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159769159822%_))))
                                  (let ((_%hd159776159830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159775159827%_)))
                                        (_%tl159777159832%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159775159827%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159777159832%_))
                                        (let ((_%e159778159835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159777159832%_))))
                                          (let ((_%hd159779159838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159778159835%_)))
                                                (_%tl159780159840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159778159835%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159780159840%_))
                                                (_%loop159767159811%_
                                                 _%lp-tl159770159824%_
                                                 (cons _%hd159779159838%_
                                                       _%expr159771159816%_)
                                                 (cons _%hd159776159830%_
                                                       _%hd159772159817%_))
                                                (_%g159752159785%_
                                                 _%g159753159788%_))))
                                        (_%g159752159785%_
                                         _%g159753159788%_))))
                                (_%g159752159785%_ _%g159753159788%_))))
                        (let ((_%expr159773159843%_
                               (reverse _%expr159771159816%_))
                              (_%hd159774159844%_
                               (reverse _%hd159772159817%_)))
                          ((lambda (_%g159754159846%_
                                    _%g159755159847%_
                                    _%g159756159848%_
                                    _%g159757159849%_)
                             (let ((__tmp161993
                                    (lambda ()
                                      (let* ((_%g159869159885%_
                                              (lambda (_%g159870159882%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159870159882%_))))
                                             (_%g159868159965%_
                                              (lambda (_%g159870159888%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159870159888%_))
                                                    (let ((_g161994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159870159888%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161995_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161994_)
                             (##values-length _g161994_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161995_ 2)))
                      (error "Context expects 2 values" _g161995_)))
                (let ((_%target159872159890%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161994_ 0)))
                      (_%tl159874159892%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161994_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159874159892%_))
                      (letrec ((_%loop159875159895%_
                                (lambda (_%hd159873159898%_
                                         _%expr159879159900%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159873159898%_))
                                      (let ((_%e159876159902%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159873159898%_))))
                                        (let ((_%lp-hd159877159905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159876159902%_)))
                                              (_%lp-tl159878159907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159876159902%_))))
                                          (_%loop159875159895%_
                                           _%lp-tl159878159907%_
                                           (cons _%lp-hd159877159905%_
                                                 _%expr159879159900%_))))
                                      (let ((_%expr159880159910%_
                                             (reverse _%expr159879159900%_)))
                                        ((lambda (_%g159871159912%_)
                                           (let* ((_%g159926159933%_
                                                   (lambda (_%g159927159930%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159927159930%_))))
                                                  (_%g159925159958%_
                                                   (lambda (_%g159927159936%_)
                                                     ((lambda (_%g159928159938%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159757159849%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159871159912%_
                                  _%g159756159848%_))
                               (let ((__tmp161996
                                      (lambda (_%g159947159951%_
                                               _%g159948159953%_
                                               _%g159949159955%_)
                                        (cons (cons _%g159948159953%_
                                                    (cons _%g159947159951%_
                                                          '()))
                                              _%g159949159955%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161996
                                  '()
                                  _%g159871159912%_
                                  _%g159756159848%_)))
                             _%g159928159938%_))
                 _%stx159750%_))
              _%g159927159936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159925159958%_
                                              (map (lambda (_%g159960159962%_)
                                                     (gxc#compile-e__1
                                                      _%self159749%_
                                                      _%g159960159962%_))
                                                   _%g159754159846%_))))
                                         _%expr159880159910%_))))))
                        (_%loop159875159895%_ _%target159872159890%_ '()))
                      (_%g159869159885%_ _%g159870159888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159869159885%_
                                                     _%g159870159888%_)))))
                                        (_%g159868159965%_
                                         (map (lambda (_%g159967159969%_)
                                                (gxc#compile-e__1
                                                 _%self159749%_
                                                 _%g159967159969%_))
                                              (let ((__tmp161997
                                                     (lambda (_%g159971159974%_
                                                              _%g159972159976%_)
                                                       (cons _%g159971159974%_
                                                             _%g159972159976%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161997
                                                 '()
                                                 _%g159755159847%_)))))))
                                   (__tmp161991
                                    (gxc#xform-let-locals
                                     (let ((__tmp161992
                                            (lambda (_%g159978159981%_
                                                     _%g159979159983%_)
                                              (cons _%g159978159981%_
                                                    _%g159979159983%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161992
                                        '()
                                        _%g159756159848%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161993
                                gxc#current-compile-local-env
                                __tmp161991)))
                           _%tl159763159803%_
                           _%expr159773159843%_
                           _%hd159774159844%_
                           _%hd159759159793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159767159811%_
                                                   _%target159764159806%_
                                                   '()
                                                   '()))
                                                (_%g159752159785%_
                                                 _%g159753159788%_)))))
                                      (_%g159752159785%_ _%g159753159788%_))))
                              (_%g159752159785%_ _%g159753159788%_))))
                      (_%g159752159785%_ _%g159753159788%_)))))
          (_%g159751159986%_ _%stx159750%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159616%_)
        (letrec ((_%flatten159618%_
                  (lambda (_%maybe-lst159676%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159676%_))
                        (cons _%maybe-lst159676%_ '())
                        (let _%loop159678%_ ((_%rest159680%_
                                              _%maybe-lst159676%_)
                                             (_%result159681%_ '()))
                          (let* ((_%__stx161885161886%_ _%rest159680%_)
                                 (_%g159685159697%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161885161886%_)))))
                            (let ((_%__kont161887161888%_
                                   (lambda (_%g159687159735%_
                                            _%g159688159736%_)
                                     (_%loop159678%_
                                      _%g159687159735%_
                                      (let ((__tmp161998
                                             (_%flatten159618%_
                                              _%g159688159736%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159681%_
                                         __tmp161998)))))
                                  (_%__kont161889161890%_
                                   (lambda (_%g159692159709%_)
                                     (cons _%g159692159709%_
                                           _%result159681%_)))
                                  (_%__kont161891161892%_
                                   (lambda () _%result159681%_)))
                              (let ((_%g159683159722%_
                                     (lambda ()
                                       (let ((_%g159692159709%_
                                              _%__stx161885161886%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159692159709%_))
                                             (_%__kont161889161890%_
                                              _%g159692159709%_)
                                             (_%__kont161891161892%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161885161886%_))
                                    (let ((_%e159689159727%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161885161886%_))))
                                      (let ((_%tl159691159732%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159689159727%_)))
                                            (_%hd159690159730%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159689159727%_))))
                                        (_%__kont161887161888%_
                                         _%tl159691159732%_
                                         _%hd159690159730%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159683159722%_)))))))))))
          (let _%loop159620%_ ((_%rest159622%_
                                (_%flatten159618%_ _%bindings159616%_))
                               (_%locals159623%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159624159635%_ _%rest159622%_)
                   (_%E159628159639%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159624159635%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159631159664%_
                     (lambda (_%rest159661%_ _%id159662%_)
                       (_%loop159620%_
                        _%rest159661%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159662%_))
                              _%locals159623%_))))
                    (_%K159630159653%_
                     (lambda (_%id159651%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159651%_))
                             _%locals159623%_)))
                    (_%K159629159644%_ (lambda () _%locals159623%_)))
                (let ((_%try-match159626159658%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159624159635%_))
                             (let ((_%id159656%_ _%rest159624159635%_))
                               (_%K159630159653%_ _%id159656%_))
                             (_%K159629159644%_)))))
                  (if (pair? _%rest159624159635%_)
                      (let ((_%tl159633159669%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159624159635%_)))
                            (_%hd159632159667%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159624159635%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159632159667%_))
                            (let ((_%id159672%_ _%hd159632159667%_)
                                  (_%rest159674%_ _%tl159633159669%_))
                              (_%K159631159664%_ _%rest159674%_ _%id159672%_))
                            (_%K159629159644%_)))
                      (_%try-match159626159658%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159568%_ _%stx159569%_)
        (let* ((_%g159571159582%_
                (lambda (_%g159572159579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159572159579%_))))
               (_%g159570159613%_
                (lambda (_%g159572159585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159572159585%_))
                      (let ((_%e159575159587%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159572159585%_))))
                        (let ((_%hd159576159590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159575159587%_)))
                              (_%tl159577159592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159575159587%_))))
                          ((lambda (_%g159573159595%_ _%g159574159596%_)
                             (let ((_%rands159611%_
                                    (map (lambda (_%g159606159608%_)
                                           (gxc#compile-e__1
                                            _%self159568%_
                                            _%g159606159608%_))
                                         _%g159573159595%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159574159596%_ _%rands159611%_)
                                _%stx159569%_)))
                           _%tl159577159592%_
                           _%hd159576159590%_)))
                      (_%g159571159582%_ _%g159572159585%_)))))
          (_%g159570159613%_ _%stx159569%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159498%_ _%stx159499%_)
        (let* ((_%g159501159518%_
                (lambda (_%g159502159515%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159502159515%_))))
               (_%g159500159565%_
                (lambda (_%g159502159521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159502159521%_))
                      (let ((_%e159505159523%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159502159521%_))))
                        (let ((_%hd159506159526%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159505159523%_)))
                              (_%tl159507159528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159505159523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159507159528%_))
                              (let ((_%e159508159531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159507159528%_))))
                                (let ((_%hd159509159534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159508159531%_)))
                                      (_%tl159510159536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159508159531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159510159536%_))
                                      (let ((_%e159511159539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159510159536%_))))
                                        (let ((_%hd159512159542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159511159539%_)))
                                              (_%tl159513159544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159511159539%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159513159544%_))
                                              ((lambda (_%g159503159547%_
                                                        _%g159504159548%_)
                                                 (let ((_%expr159563%_
                                                        (gxc#compile-e__1
                                                         _%self159498%_
                                                         _%g159503159547%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159504159548%_
                                                                (cons _%expr159563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159499%_)))
                                               _%hd159512159542%_
                                               _%hd159509159534%_)
                                              (_%g159501159518%_
                                               _%g159502159521%_))))
                                      (_%g159501159518%_ _%g159502159521%_))))
                              (_%g159501159518%_ _%g159502159521%_))))
                      (_%g159501159518%_ _%g159502159521%_)))))
          (_%g159500159565%_ _%stx159499%_))))))
