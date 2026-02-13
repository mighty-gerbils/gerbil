(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771022576)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx193897%_)
        (let* ((_%self193899%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e193901%_
                (let ((__tmp194119 (gxc#stx-car-e _%stx193897%_)))
                  (declare (not safe))
                  (method-ref _%self193899%_ __tmp194119))))
          (if _%$e193901%_
              ((lambda (_%method193904%_)
                 (declare (not safe))
                 (let ((_%$e193907%_ (gx#stx-source _%stx193897%_)))
                   (if _%$e193907%_
                       ((lambda (_%source193910%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method193904%_ _%self193899%_ _%stx193897%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source193910%_ '()))
                                 (let ((_%$e193914%_
                                        (gxc#current-compile-context)))
                                   (if _%$e193914%_ _%$e193914%_ '())))))
                        _%$e193907%_)
                       (_%method193904%_ _%self193899%_ _%stx193897%_))))
               _%$e193901%_)
              (let ((__tmp194121 (gxc#stx-car-e _%stx193897%_))
                    (__tmp194120
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx193897%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self193899%_
                       __tmp194121
                       __tmp194120))))))
    (define gxc#compile-e__1
      (lambda (_%self193919%_ _%stx193920%_)
        (let ((_%$e193922%_
               (let ((__tmp194122 (gxc#stx-car-e _%stx193920%_)))
                 (declare (not safe))
                 (method-ref _%self193919%_ __tmp194122))))
          (if _%$e193922%_
              ((lambda (_%method193925%_)
                 (declare (not safe))
                 (let ((_%$e193928%_ (gx#stx-source _%stx193920%_)))
                   (if _%$e193928%_
                       ((lambda (_%source193931%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method193925%_ _%self193919%_ _%stx193920%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source193931%_ '()))
                                 (let ((_%$e193935%_
                                        (gxc#current-compile-context)))
                                   (if _%$e193935%_ _%$e193935%_ '())))))
                        _%$e193928%_)
                       (_%method193925%_ _%self193919%_ _%stx193920%_))))
               _%$e193922%_)
              (let ((__tmp194124 (gxc#stx-car-e _%stx193920%_))
                    (__tmp194123
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx193920%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self193919%_
                       __tmp194124
                       __tmp194123))))))
    (define gxc#compile-e
      (lambda _g194125_
        (let ((_g194126_ (let () (declare (not safe)) (##length _g194125_))))
          (cond ((let () (declare (not safe)) (##fx= _g194126_ 1))
                 (apply gxc#compile-e__0 _g194125_))
                ((let () (declare (not safe)) (##fx= _g194126_ 2))
                 (apply gxc#compile-e__1 _g194125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g194125_))))))
    (define gxc#stx-car-e
      (lambda (_%stx193895%_)
        (let ((__tmp194127
               (car (let () (declare (not safe)) (gx#stx-e _%stx193895%_)))))
          (declare (not safe))
          (gx#stx-e __tmp194127))))
    (define gxc#void-method (lambda (_%self193892%_ _%stx193893%_) '#!void))
    (define gxc#false-method (lambda (_%self193889%_ _%stx193890%_) '#f))
    (define gxc#true-method (lambda (_%self193886%_ _%stx193887%_) '#t))
    (define gxc#identity-method
      (lambda (_%self193883%_ _%stx193884%_) _%stx193884%_))
    (define gxc#::void-expression::t
      (let ((__tmp194128 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp194128
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args193880%_
        (apply make-instance gxc#::void-expression::t _%$args193880%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp194129
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
        (__make-atomic-promise __tmp194129)))
    (define gxc#::void-special-form::t
      (let ((__tmp194130 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp194130
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args193876%_
        (apply make-instance gxc#::void-special-form::t _%$args193876%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp194131
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
        (__make-atomic-promise __tmp194131)))
    (define gxc#::void::t
      (let ((__tmp194132
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp194132 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args193872%_
        (apply make-instance gxc#::void::t _%$args193872%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp194133
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194133)))
    (define gxc#::false-expression::t
      (let ((__tmp194134 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp194134
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args193868%_
        (apply make-instance gxc#::false-expression::t _%$args193868%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp194135
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
        (__make-atomic-promise __tmp194135)))
    (define gxc#::false-special-form::t
      (let ((__tmp194136 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp194136
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args193864%_
        (apply make-instance gxc#::false-special-form::t _%$args193864%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp194137
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
        (__make-atomic-promise __tmp194137)))
    (define gxc#::false::t
      (let ((__tmp194138
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp194138 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args193860%_
        (apply make-instance gxc#::false::t _%$args193860%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp194139
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194139)))
    (define gxc#::identity-expression::t
      (let ((__tmp194140 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp194140
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args193856%_
        (apply make-instance gxc#::identity-expression::t _%$args193856%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp194141
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
        (__make-atomic-promise __tmp194141)))
    (define gxc#::identity-special-form::t
      (let ((__tmp194142 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp194142
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args193852%_
        (apply make-instance gxc#::identity-special-form::t _%$args193852%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp194143
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
        (__make-atomic-promise __tmp194143)))
    (define gxc#::identity::t
      (let ((__tmp194144
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp194144
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args193848%_
        (apply make-instance gxc#::identity::t _%$args193848%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp194145
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194145)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp194146 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp194146
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args193844%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args193844%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp194147
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
        (__make-atomic-promise __tmp194147)))
    (define gxc#::basic-xform::t
      (let ((__tmp194148
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp194148
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args193840%_
        (apply make-instance gxc#::basic-xform::t _%$args193840%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp194149
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
        (__make-atomic-promise __tmp194149)))
    (define gxc#apply-begin%
      (lambda (_%self193796%_ _%stx193797%_)
        (let* ((_%g193799193809%_
                (lambda (_%g193800193806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193800193806%_))))
               (_%g193798193836%_
                (lambda (_%g193800193812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193800193812%_))
                      (let ((_%e193802193814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193800193812%_))))
                        (let ((_%hd193803193817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193802193814%_)))
                              (_%tl193804193819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193802193814%_))))
                          ((lambda (_%g193801193822%_)
                             (for-each
                              (lambda (_%g193831193833%_)
                                (gxc#compile-e__1
                                 _%self193796%_
                                 _%g193831193833%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g193801193822%_))))
                           _%tl193804193819%_)))
                      (_%g193799193809%_ _%g193800193812%_)))))
          (_%g193798193836%_ _%stx193797%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self193757%_ _%stx193758%_)
        (let* ((_%g193760193770%_
                (lambda (_%g193761193767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193761193767%_))))
               (_%g193759193793%_
                (lambda (_%g193761193773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193761193773%_))
                      (let ((_%e193763193775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193761193773%_))))
                        (let ((_%hd193764193778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193763193775%_)))
                              (_%tl193765193780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193763193775%_))))
                          ((lambda (_%g193762193783%_)
                             (gxc#compile-e__1
                              _%self193757%_
                              (last _%g193762193783%_)))
                           _%tl193765193780%_)))
                      (_%g193760193770%_ _%g193761193773%_)))))
          (_%g193759193793%_ _%stx193758%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self193753%_ _%stx193754%_)
        (let ((__tmp194152
               (lambda () (gxc#apply-begin% _%self193753%_ _%stx193754%_)))
              (__tmp194150
               (let ((__tmp194151
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp194151 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp194152
           gx#current-expander-phi
           __tmp194150))))
    (define gxc#apply-module%
      (lambda (_%self193692%_ _%stx193693%_)
        (let* ((_%g193695193709%_
                (lambda (_%g193696193706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193696193706%_))))
               (_%g193694193750%_
                (lambda (_%g193696193712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193696193712%_))
                      (let ((_%e193699193714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193696193712%_))))
                        (let ((_%hd193700193717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193699193714%_)))
                              (_%tl193701193719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193699193714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193701193719%_))
                              (let ((_%e193702193722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193701193719%_))))
                                (let ((_%hd193703193725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193702193722%_)))
                                      (_%tl193704193727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193702193722%_))))
                                  ((lambda (_%g193697193730%_
                                            _%g193698193731%_)
                                     (let* ((_%ctx193744%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193698193731%_)))
                                            (_%ctx-stx193746%_
                                             (##structure-ref
                                              _%ctx193744%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194153
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self193692%_
                                                _%ctx-stx193746%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194153
                                        gx#current-expander-context
                                        _%ctx193744%_)))
                                   _%tl193704193727%_
                                   _%hd193703193725%_)))
                              (_%g193695193709%_ _%g193696193712%_))))
                      (_%g193695193709%_ _%g193696193712%_)))))
          (_%g193694193750%_ _%stx193693%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self193624%_ _%stx193625%_)
        (let* ((_%g193627193644%_
                (lambda (_%g193628193641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193628193641%_))))
               (_%g193626193689%_
                (lambda (_%g193628193647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193628193647%_))
                      (let ((_%e193631193649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193628193647%_))))
                        (let ((_%hd193632193652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193631193649%_)))
                              (_%tl193633193654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193631193649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193633193654%_))
                              (let ((_%e193634193657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193633193654%_))))
                                (let ((_%hd193635193660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193634193657%_)))
                                      (_%tl193636193662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193634193657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193636193662%_))
                                      (let ((_%e193637193665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193636193662%_))))
                                        (let ((_%hd193638193668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193637193665%_)))
                                              (_%tl193639193670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193637193665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193639193670%_))
                                              ((lambda (_%g193629193673%_
                                                        _%g193630193674%_)
                                                 (gxc#compile-e__1
                                                  _%self193624%_
                                                  _%g193629193673%_))
                                               _%hd193638193668%_
                                               _%hd193635193660%_)
                                              (_%g193627193644%_
                                               _%g193628193647%_))))
                                      (_%g193627193644%_ _%g193628193647%_))))
                              (_%g193627193644%_ _%g193628193647%_))))
                      (_%g193627193644%_ _%g193628193647%_)))))
          (_%g193626193689%_ _%stx193625%_))))
    (define gxc#apply-define-values%
      (lambda (_%self193556%_ _%stx193557%_)
        (let* ((_%g193559193576%_
                (lambda (_%g193560193573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193560193573%_))))
               (_%g193558193621%_
                (lambda (_%g193560193579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193560193579%_))
                      (let ((_%e193563193581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193560193579%_))))
                        (let ((_%hd193564193584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193563193581%_)))
                              (_%tl193565193586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193563193581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193565193586%_))
                              (let ((_%e193566193589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193565193586%_))))
                                (let ((_%hd193567193592%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193566193589%_)))
                                      (_%tl193568193594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193566193589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193568193594%_))
                                      (let ((_%e193569193597%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193568193594%_))))
                                        (let ((_%hd193570193600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193569193597%_)))
                                              (_%tl193571193602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193569193597%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193571193602%_))
                                              ((lambda (_%g193561193605%_
                                                        _%g193562193606%_)
                                                 (gxc#compile-e__1
                                                  _%self193556%_
                                                  _%g193561193605%_))
                                               _%hd193570193600%_
                                               _%hd193567193592%_)
                                              (_%g193559193576%_
                                               _%g193560193579%_))))
                                      (_%g193559193576%_ _%g193560193579%_))))
                              (_%g193559193576%_ _%g193560193579%_))))
                      (_%g193559193576%_ _%g193560193579%_)))))
          (_%g193558193621%_ _%stx193557%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self193487%_ _%stx193488%_)
        (let* ((_%g193490193507%_
                (lambda (_%g193491193504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193491193504%_))))
               (_%g193489193553%_
                (lambda (_%g193491193510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193491193510%_))
                      (let ((_%e193494193512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193491193510%_))))
                        (let ((_%hd193495193515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193494193512%_)))
                              (_%tl193496193517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193494193512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193496193517%_))
                              (let ((_%e193497193520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193496193517%_))))
                                (let ((_%hd193498193523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193497193520%_)))
                                      (_%tl193499193525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193497193520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193499193525%_))
                                      (let ((_%e193500193528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193499193525%_))))
                                        (let ((_%hd193501193531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193500193528%_)))
                                              (_%tl193502193533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193500193528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193502193533%_))
                                              ((lambda (_%g193492193536%_
                                                        _%g193493193537%_)
                                                 (let ((__tmp194156
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self193487%_
                                                           _%g193492193536%_)))
                                                       (__tmp194154
                                                        (let ((__tmp194155
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194155 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194156
                                                    gx#current-expander-phi
                                                    __tmp194154)))
                                               _%hd193501193531%_
                                               _%hd193498193523%_)
                                              (_%g193490193507%_
                                               _%g193491193510%_))))
                                      (_%g193490193507%_ _%g193491193510%_))))
                              (_%g193490193507%_ _%g193491193510%_))))
                      (_%g193490193507%_ _%g193491193510%_)))))
          (_%g193489193553%_ _%stx193488%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self193419%_ _%stx193420%_)
        (let* ((_%g193422193439%_
                (lambda (_%g193423193436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193423193436%_))))
               (_%g193421193484%_
                (lambda (_%g193423193442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193423193442%_))
                      (let ((_%e193426193444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193423193442%_))))
                        (let ((_%hd193427193447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193426193444%_)))
                              (_%tl193428193449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193426193444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193428193449%_))
                              (let ((_%e193429193452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193428193449%_))))
                                (let ((_%hd193430193455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193429193452%_)))
                                      (_%tl193431193457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193429193452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193431193457%_))
                                      (let ((_%e193432193460%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193431193457%_))))
                                        (let ((_%hd193433193463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193432193460%_)))
                                              (_%tl193434193465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193432193460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193434193465%_))
                                              ((lambda (_%g193424193468%_
                                                        _%g193425193469%_)
                                                 (gxc#compile-e__1
                                                  _%self193419%_
                                                  _%g193424193468%_))
                                               _%hd193433193463%_
                                               _%hd193430193455%_)
                                              (_%g193422193439%_
                                               _%g193423193442%_))))
                                      (_%g193422193439%_ _%g193423193442%_))))
                              (_%g193422193439%_ _%g193423193442%_))))
                      (_%g193422193439%_ _%g193423193442%_)))))
          (_%g193421193484%_ _%stx193420%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self193305%_ _%stx193306%_)
        (let* ((_%g193308193336%_
                (lambda (_%g193309193333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193309193333%_))))
               (_%g193307193416%_
                (lambda (_%g193309193339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193309193339%_))
                      (let ((_%e193312193341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193309193339%_))))
                        (let ((_%hd193313193344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193312193341%_)))
                              (_%tl193314193346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193312193341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193314193346%_))
                              (let ((_g194157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193314193346%_
                                        '0))))
                                (begin
                                  (let ((_g194158_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194157_)
                                               (##values-length _g194157_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194158_ 2)))
                                        (error "Context expects 2 values"
                                               _g194158_)))
                                  (let ((_%target193315193349%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194157_ 0)))
                                        (_%tl193317193351%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194157_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193317193351%_))
                                        (letrec ((_%loop193318193354%_
                                                  (lambda (_%hd193316193357%_
                                                           _%body193322193359%_
                                                           _%hd193323193360%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193316193357%_))
                                                        (let ((_%e193319193362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193316193357%_))))
                  (let ((_%lp-hd193320193365%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193319193362%_)))
                        (_%lp-tl193321193367%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193319193362%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd193320193365%_))
                        (let ((_%e193326193370%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd193320193365%_))))
                          (let ((_%hd193327193373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193326193370%_)))
                                (_%tl193328193375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193326193370%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193328193375%_))
                                (let ((_%e193329193378%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193328193375%_))))
                                  (let ((_%hd193330193381%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193329193378%_)))
                                        (_%tl193331193383%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193329193378%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193331193383%_))
                                        (_%loop193318193354%_
                                         _%lp-tl193321193367%_
                                         (cons _%hd193330193381%_
                                               _%body193322193359%_)
                                         (cons _%hd193327193373%_
                                               _%hd193323193360%_))
                                        (_%g193308193336%_
                                         _%g193309193339%_))))
                                (_%g193308193336%_ _%g193309193339%_))))
                        (_%g193308193336%_ _%g193309193339%_))))
                (let ((_%body193324193386%_ (reverse _%body193322193359%_))
                      (_%hd193325193387%_ (reverse _%hd193323193360%_)))
                  ((lambda (_%g193310193389%_ _%g193311193390%_)
                     (for-each
                      (lambda (_%g193404193406%_)
                        (gxc#compile-e__1 _%self193305%_ _%g193404193406%_))
                      (let ((__tmp194159
                             (lambda (_%g193408193411%_ _%g193409193413%_)
                               (cons _%g193408193411%_ _%g193409193413%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194159 '() _%g193310193389%_))))
                   _%body193324193386%_
                   _%hd193325193387%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193318193354%_
                                           _%target193315193349%_
                                           '()
                                           '()))
                                        (_%g193308193336%_
                                         _%g193309193339%_)))))
                              (_%g193308193336%_ _%g193309193339%_))))
                      (_%g193308193336%_ _%g193309193339%_)))))
          (_%g193307193416%_ _%stx193306%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self193162%_ _%stx193163%_)
        (let* ((_%g193165193200%_
                (lambda (_%g193166193197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193166193197%_))))
               (_%g193164193302%_
                (lambda (_%g193166193203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193166193203%_))
                      (let ((_%e193170193205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193166193203%_))))
                        (let ((_%hd193171193208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193170193205%_)))
                              (_%tl193172193210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193170193205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193172193210%_))
                              (let ((_%e193173193213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193172193210%_))))
                                (let ((_%hd193174193216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193173193213%_)))
                                      (_%tl193175193218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193173193213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193174193216%_))
                                      (let ((_g194160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193174193216%_
                                                '0))))
                                        (begin
                                          (let ((_g194161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194160_)
                                                       (##values-length
                                                        _g194160_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194161_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194161_)))
                                          (let ((_%target193176193221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194160_ 0)))
                                                (_%tl193178193223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194160_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193178193223%_))
                                                (letrec ((_%loop193179193226%_
                                                          (lambda (_%hd193177193229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193183193231%_
                           _%hd193184193232%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193177193229%_))
                        (let ((_%e193180193234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193177193229%_))))
                          (let ((_%lp-hd193181193237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193180193234%_)))
                                (_%lp-tl193182193239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193180193234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193181193237%_))
                                (let ((_%e193187193242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193181193237%_))))
                                  (let ((_%hd193188193245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193187193242%_)))
                                        (_%tl193189193247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193187193242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193189193247%_))
                                        (let ((_%e193190193250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193189193247%_))))
                                          (let ((_%hd193191193253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193190193250%_)))
                                                (_%tl193192193255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193190193250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193192193255%_))
                                                (_%loop193179193226%_
                                                 _%lp-tl193182193239%_
                                                 (cons _%hd193191193253%_
                                                       _%expr193183193231%_)
                                                 (cons _%hd193188193245%_
                                                       _%hd193184193232%_))
                                                (_%g193165193200%_
                                                 _%g193166193203%_))))
                                        (_%g193165193200%_
                                         _%g193166193203%_))))
                                (_%g193165193200%_ _%g193166193203%_))))
                        (let ((_%expr193185193258%_
                               (reverse _%expr193183193231%_))
                              (_%hd193186193259%_
                               (reverse _%hd193184193232%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193175193218%_))
                              (let ((_%e193193193261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193175193218%_))))
                                (let ((_%hd193194193264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193193193261%_)))
                                      (_%tl193195193266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193193193261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193195193266%_))
                                      ((lambda (_%g193167193269%_
                                                _%g193168193270%_
                                                _%g193169193271%_)
                                         (for-each
                                          (lambda (_%g193290193292%_)
                                            (gxc#compile-e__1
                                             _%self193162%_
                                             _%g193290193292%_))
                                          (let ((__tmp194163
                                                 (lambda (_%g193294193297%_
                                                          _%g193295193299%_)
                                                   (cons _%g193294193297%_
                                                         _%g193295193299%_)))
                                                (__tmp194162
                                                 (cons _%g193167193269%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194163
                                             __tmp194162
                                             _%g193168193270%_))))
                                       _%hd193194193264%_
                                       _%expr193185193258%_
                                       _%hd193186193259%_)
                                      (_%g193165193200%_ _%g193166193203%_))))
                              (_%g193165193200%_ _%g193166193203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193179193226%_
                                                   _%target193176193221%_
                                                   '()
                                                   '()))
                                                (_%g193165193200%_
                                                 _%g193166193203%_)))))
                                      (_%g193165193200%_ _%g193166193203%_))))
                              (_%g193165193200%_ _%g193166193203%_))))
                      (_%g193165193200%_ _%g193166193203%_)))))
          (_%g193164193302%_ _%stx193163%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self193107%_ _%stx193108%_)
        (let* ((_%g193110193124%_
                (lambda (_%g193111193121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193111193121%_))))
               (_%g193109193159%_
                (lambda (_%g193111193127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193111193127%_))
                      (let ((_%e193114193129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193111193127%_))))
                        (let ((_%hd193115193132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193114193129%_)))
                              (_%tl193116193134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193114193129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193116193134%_))
                              (let ((_%e193117193137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193116193134%_))))
                                (let ((_%hd193118193140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193117193137%_)))
                                      (_%tl193119193142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193117193137%_))))
                                  ((lambda (_%g193112193145%_
                                            _%g193113193146%_)
                                     (gxc#compile-e__1
                                      _%self193107%_
                                      (last _%g193112193145%_)))
                                   _%tl193119193142%_
                                   _%hd193118193140%_)))
                              (_%g193110193124%_ _%g193111193127%_))))
                      (_%g193110193124%_ _%g193111193127%_)))))
          (_%g193109193159%_ _%stx193108%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self193039%_ _%stx193040%_)
        (let* ((_%g193042193059%_
                (lambda (_%g193043193056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193043193056%_))))
               (_%g193041193104%_
                (lambda (_%g193043193062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193043193062%_))
                      (let ((_%e193046193064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193043193062%_))))
                        (let ((_%hd193047193067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193046193064%_)))
                              (_%tl193048193069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193046193064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193048193069%_))
                              (let ((_%e193049193072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193048193069%_))))
                                (let ((_%hd193050193075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193049193072%_)))
                                      (_%tl193051193077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193049193072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193051193077%_))
                                      (let ((_%e193052193080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193051193077%_))))
                                        (let ((_%hd193053193083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193052193080%_)))
                                              (_%tl193054193085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193052193080%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193054193085%_))
                                              ((lambda (_%g193044193088%_
                                                        _%g193045193089%_)
                                                 (gxc#compile-e__1
                                                  _%self193039%_
                                                  _%g193044193088%_))
                                               _%hd193053193083%_
                                               _%hd193050193075%_)
                                              (_%g193042193059%_
                                               _%g193043193062%_))))
                                      (_%g193042193059%_ _%g193043193062%_))))
                              (_%g193042193059%_ _%g193043193062%_))))
                      (_%g193042193059%_ _%g193043193062%_)))))
          (_%g193041193104%_ _%stx193040%_))))
    (define gxc#apply-operands
      (lambda (_%self192954%_ _%stx192955%_)
        (let* ((_%g192957192976%_
                (lambda (_%g192958192973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192958192973%_))))
               (_%g192956193036%_
                (lambda (_%g192958192979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192958192979%_))
                      (let ((_%e192960192981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192958192979%_))))
                        (let ((_%hd192961192984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192960192981%_)))
                              (_%tl192962192986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192960192981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl192962192986%_))
                              (let ((_g194164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl192962192986%_
                                        '0))))
                                (begin
                                  (let ((_g194165_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194164_)
                                               (##values-length _g194164_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194165_ 2)))
                                        (error "Context expects 2 values"
                                               _g194165_)))
                                  (let ((_%target192963192989%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194164_ 0)))
                                        (_%tl192965192991%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194164_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192965192991%_))
                                        (letrec ((_%loop192966192994%_
                                                  (lambda (_%hd192964192997%_
                                                           _%rands192970192999%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd192964192997%_))
                                                        (let ((_%e192967193001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd192964192997%_))))
                  (let ((_%lp-hd192968193004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192967193001%_)))
                        (_%lp-tl192969193006%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192967193001%_))))
                    (_%loop192966192994%_
                     _%lp-tl192969193006%_
                     (cons _%lp-hd192968193004%_ _%rands192970192999%_))))
                (let ((_%rands192971193009%_ (reverse _%rands192970192999%_)))
                  ((lambda (_%g192959193011%_)
                     (for-each
                      (lambda (_%g193024193026%_)
                        (gxc#compile-e__1 _%self192954%_ _%g193024193026%_))
                      (let ((__tmp194166
                             (lambda (_%g193028193031%_ _%g193029193033%_)
                               (cons _%g193028193031%_ _%g193029193033%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194166 '() _%g192959193011%_))))
                   _%rands192971193009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop192966192994%_
                                           _%target192963192989%_
                                           '()))
                                        (_%g192957192976%_
                                         _%g192958192979%_)))))
                              (_%g192957192976%_ _%g192958192979%_))))
                      (_%g192957192976%_ _%g192958192979%_)))))
          (_%g192956193036%_ _%stx192955%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx192951%_ _%src-stx192952%_)
        (let ((__tmp194167
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx192952%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx192951%_ __tmp194167))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx192947%_ _%src-stx192948%_ _%ctx192949%_)
        (gxc#compile-e__1
         _%ctx192949%_
         (gxc#xform-wrap-source _%stx192947%_ _%src-stx192948%_))))
    (define gxc#xform-begin%
      (lambda (_%self192902%_ _%stx192903%_)
        (let* ((_%g192905192915%_
                (lambda (_%g192906192912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192906192912%_))))
               (_%g192904192944%_
                (lambda (_%g192906192918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192906192918%_))
                      (let ((_%e192908192920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192906192918%_))))
                        (let ((_%hd192909192923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192908192920%_)))
                              (_%tl192910192925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192908192920%_))))
                          ((lambda (_%g192907192928%_)
                             (let ((_%forms192942%_
                                    (map (lambda (_%g192937192939%_)
                                           (gxc#compile-e__1
                                            _%self192902%_
                                            _%g192937192939%_))
                                         _%g192907192928%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms192942%_)
                                _%stx192903%_)))
                           _%tl192910192925%_)))
                      (_%g192905192915%_ _%g192906192918%_)))))
          (_%g192904192944%_ _%stx192903%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self192856%_ _%stx192857%_)
        (let* ((_%g192859192869%_
                (lambda (_%g192860192866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192860192866%_))))
               (_%g192858192899%_
                (lambda (_%g192860192872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192860192872%_))
                      (let ((_%e192862192874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192860192872%_))))
                        (let ((_%hd192863192877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192862192874%_)))
                              (_%tl192864192879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192862192874%_))))
                          ((lambda (_%g192861192882%_)
                             (let ((__tmp194170
                                    (lambda ()
                                      (let ((_%forms192897%_
                                             (map (lambda (_%g192892192894%_)
                                                    (gxc#compile-e__1
                                                     _%self192856%_
                                                     _%g192892192894%_))
                                                  _%g192861192882%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms192897%_)
                                         _%stx192857%_))))
                                   (__tmp194168
                                    (let ((__tmp194169
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194169 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194170
                                gx#current-expander-phi
                                __tmp194168)))
                           _%tl192864192879%_)))
                      (_%g192859192869%_ _%g192860192872%_)))))
          (_%g192858192899%_ _%stx192857%_))))
    (define gxc#xform-module%
      (lambda (_%self192793%_ _%stx192794%_)
        (let* ((_%g192796192810%_
                (lambda (_%g192797192807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192797192807%_))))
               (_%g192795192853%_
                (lambda (_%g192797192813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192797192813%_))
                      (let ((_%e192800192815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192797192813%_))))
                        (let ((_%hd192801192818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192800192815%_)))
                              (_%tl192802192820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192800192815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192802192820%_))
                              (let ((_%e192803192823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192802192820%_))))
                                (let ((_%hd192804192826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192803192823%_)))
                                      (_%tl192805192828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192803192823%_))))
                                  ((lambda (_%g192798192831%_
                                            _%g192799192832%_)
                                     (let* ((_%ctx192845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g192799192832%_)))
                                            (_%code192847%_
                                             (##structure-ref
                                              _%ctx192845%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code192850%_
                                             (let ((__tmp194171
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self192793%_
                                                       _%code192847%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp194171
                                                gx#current-expander-context
                                                _%ctx192845%_))))
                                       (##structure-set!
                                        _%ctx192845%_
                                        _%code192850%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g192799192832%_
                                                    (cons _%code192850%_ '())))
                                        _%stx192794%_)))
                                   _%tl192805192828%_
                                   _%hd192804192826%_)))
                              (_%g192796192810%_ _%g192797192813%_))))
                      (_%g192796192810%_ _%g192797192813%_)))))
          (_%g192795192853%_ _%stx192794%_))))
    (define gxc#xform-define-values%
      (lambda (_%self192723%_ _%stx192724%_)
        (let* ((_%g192726192743%_
                (lambda (_%g192727192740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192727192740%_))))
               (_%g192725192790%_
                (lambda (_%g192727192746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192727192746%_))
                      (let ((_%e192730192748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192727192746%_))))
                        (let ((_%hd192731192751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192730192748%_)))
                              (_%tl192732192753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192730192748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192732192753%_))
                              (let ((_%e192733192756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192732192753%_))))
                                (let ((_%hd192734192759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192733192756%_)))
                                      (_%tl192735192761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192733192756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192735192761%_))
                                      (let ((_%e192736192764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192735192761%_))))
                                        (let ((_%hd192737192767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192736192764%_)))
                                              (_%tl192738192769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192736192764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192738192769%_))
                                              ((lambda (_%g192728192772%_
                                                        _%g192729192773%_)
                                                 (let ((_%expr192788%_
                                                        (gxc#compile-e__1
                                                         _%self192723%_
                                                         _%g192728192772%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g192729192773%_
                                                                (cons _%expr192788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192724%_)))
                                               _%hd192737192767%_
                                               _%hd192734192759%_)
                                              (_%g192726192743%_
                                               _%g192727192746%_))))
                                      (_%g192726192743%_ _%g192727192746%_))))
                              (_%g192726192743%_ _%g192727192746%_))))
                      (_%g192726192743%_ _%g192727192746%_)))))
          (_%g192725192790%_ _%stx192724%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self192652%_ _%stx192653%_)
        (let* ((_%g192655192672%_
                (lambda (_%g192656192669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192656192669%_))))
               (_%g192654192720%_
                (lambda (_%g192656192675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192656192675%_))
                      (let ((_%e192659192677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192656192675%_))))
                        (let ((_%hd192660192680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192659192677%_)))
                              (_%tl192661192682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192659192677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192661192682%_))
                              (let ((_%e192662192685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192661192682%_))))
                                (let ((_%hd192663192688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192662192685%_)))
                                      (_%tl192664192690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192662192685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192664192690%_))
                                      (let ((_%e192665192693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192664192690%_))))
                                        (let ((_%hd192666192696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192665192693%_)))
                                              (_%tl192667192698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192665192693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192667192698%_))
                                              ((lambda (_%g192657192701%_
                                                        _%g192658192702%_)
                                                 (let ((__tmp194174
                                                        (lambda ()
                                                          (let ((_%expr192718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self192652%_ _%g192657192701%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g192658192702%_ (cons _%expr192718%_ '())))
                     _%stx192653%_))))
               (__tmp194172
                (let ((__tmp194173
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194173 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194174
                                                    gx#current-expander-phi
                                                    __tmp194172)))
                                               _%hd192666192696%_
                                               _%hd192663192688%_)
                                              (_%g192655192672%_
                                               _%g192656192675%_))))
                                      (_%g192655192672%_ _%g192656192675%_))))
                              (_%g192655192672%_ _%g192656192675%_))))
                      (_%g192655192672%_ _%g192656192675%_)))))
          (_%g192654192720%_ _%stx192653%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self192582%_ _%stx192583%_)
        (let* ((_%g192585192602%_
                (lambda (_%g192586192599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192586192599%_))))
               (_%g192584192649%_
                (lambda (_%g192586192605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192586192605%_))
                      (let ((_%e192589192607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192586192605%_))))
                        (let ((_%hd192590192610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192589192607%_)))
                              (_%tl192591192612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192589192607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192591192612%_))
                              (let ((_%e192592192615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192591192612%_))))
                                (let ((_%hd192593192618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192592192615%_)))
                                      (_%tl192594192620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192592192615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192594192620%_))
                                      (let ((_%e192595192623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192594192620%_))))
                                        (let ((_%hd192596192626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192595192623%_)))
                                              (_%tl192597192628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192595192623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192597192628%_))
                                              ((lambda (_%g192587192631%_
                                                        _%g192588192632%_)
                                                 (let ((_%expr192647%_
                                                        (gxc#compile-e__1
                                                         _%self192582%_
                                                         _%g192587192631%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g192588192632%_
                                                                (cons _%expr192647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192583%_)))
                                               _%hd192596192626%_
                                               _%hd192593192618%_)
                                              (_%g192585192602%_
                                               _%g192586192605%_))))
                                      (_%g192585192602%_ _%g192586192605%_))))
                              (_%g192585192602%_ _%g192586192605%_))))
                      (_%g192585192602%_ _%g192586192605%_)))))
          (_%g192584192649%_ _%stx192583%_))))
    (define gxc#xform-lambda%
      (lambda (_%self192520%_ _%stx192521%_)
        (let* ((_%g192523192537%_
                (lambda (_%g192524192534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192524192534%_))))
               (_%g192522192579%_
                (lambda (_%g192524192540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192524192540%_))
                      (let ((_%e192527192542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192524192540%_))))
                        (let ((_%hd192528192545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192527192542%_)))
                              (_%tl192529192547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192527192542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192529192547%_))
                              (let ((_%e192530192550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192529192547%_))))
                                (let ((_%hd192531192553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192530192550%_)))
                                      (_%tl192532192555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192530192550%_))))
                                  ((lambda (_%g192525192558%_
                                            _%g192526192559%_)
                                     (let ((__tmp194176
                                            (lambda ()
                                              (let ((_%body192577%_
                                                     (map (lambda (_%g192572192574%_)
                                                            (gxc#compile-e__1
                                                             _%self192520%_
                                                             _%g192572192574%_))
                                                          _%g192525192558%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g192526192559%_
                                                             _%body192577%_))
                                                 _%stx192521%_))))
                                           (__tmp194175
                                            (gxc#xform-let-locals
                                             _%g192526192559%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194176
                                        gxc#current-compile-local-env
                                        __tmp194175)))
                                   _%tl192532192555%_
                                   _%hd192531192553%_)))
                              (_%g192523192537%_ _%g192524192540%_))))
                      (_%g192523192537%_ _%g192524192540%_)))))
          (_%g192522192579%_ _%stx192521%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self192428%_ _%stx192429%_)
        (letrec ((_%clause-e192431%_
                  (lambda (_%clause192472%_)
                    (let* ((_%g192474192485%_
                            (lambda (_%g192475192482%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g192475192482%_))))
                           (_%g192473192517%_
                            (lambda (_%g192475192488%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g192475192488%_))
                                  (let ((_%e192478192490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g192475192488%_))))
                                    (let ((_%hd192479192493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192478192490%_)))
                                          (_%tl192480192495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192478192490%_))))
                                      ((lambda (_%g192476192498%_
                                                _%g192477192499%_)
                                         (let ((__tmp194178
                                                (lambda ()
                                                  (let ((_%body192515%_
                                                         (map (lambda (_%g192510192512%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self192428%_
                         _%g192510192512%_))
                      _%g192476192498%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g192477192499%_
                                                          _%body192515%_))))
                                               (__tmp194177
                                                (gxc#xform-let-locals
                                                 _%g192477192499%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp194178
                                            gxc#current-compile-local-env
                                            __tmp194177)))
                                       _%tl192480192495%_
                                       _%hd192479192493%_)))
                                  (_%g192474192485%_ _%g192475192488%_)))))
                      (_%g192473192517%_ _%clause192472%_)))))
          (let* ((_%g192433192443%_
                  (lambda (_%g192434192440%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g192434192440%_))))
                 (_%g192432192469%_
                  (lambda (_%g192434192446%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g192434192446%_))
                        (let ((_%e192436192448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g192434192446%_))))
                          (let ((_%hd192437192451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192436192448%_)))
                                (_%tl192438192453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192436192448%_))))
                            ((lambda (_%g192435192456%_)
                               (let ((_%clauses192467%_
                                      (map _%clause-e192431%_
                                           _%g192435192456%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses192467%_)
                                  _%stx192429%_)))
                             _%tl192438192453%_)))
                        (_%g192433192443%_ _%g192434192446%_)))))
            (_%g192432192469%_ _%stx192429%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self192188%_ _%stx192189%_)
        (let* ((_%g192191192224%_
                (lambda (_%g192192192221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192192192221%_))))
               (_%g192190192425%_
                (lambda (_%g192192192227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192192192227%_))
                      (let ((_%e192197192229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192192192227%_))))
                        (let ((_%hd192198192232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192197192229%_)))
                              (_%tl192199192234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192197192229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192199192234%_))
                              (let ((_%e192200192237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192199192234%_))))
                                (let ((_%hd192201192240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192200192237%_)))
                                      (_%tl192202192242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192200192237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192201192240%_))
                                      (let ((_g194179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192201192240%_
                                                '0))))
                                        (begin
                                          (let ((_g194180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194179_)
                                                       (##values-length
                                                        _g194179_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194180_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194180_)))
                                          (let ((_%target192203192245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194179_ 0)))
                                                (_%tl192205192247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194179_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192205192247%_))
                                                (letrec ((_%loop192206192250%_
                                                          (lambda (_%hd192204192253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192210192255%_
                           _%hd192211192256%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192204192253%_))
                        (let ((_%e192207192258%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192204192253%_))))
                          (let ((_%lp-hd192208192261%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192207192258%_)))
                                (_%lp-tl192209192263%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192207192258%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192208192261%_))
                                (let ((_%e192214192266%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192208192261%_))))
                                  (let ((_%hd192215192269%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192214192266%_)))
                                        (_%tl192216192271%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192214192266%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192216192271%_))
                                        (let ((_%e192217192274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192216192271%_))))
                                          (let ((_%hd192218192277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192217192274%_)))
                                                (_%tl192219192279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192217192274%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192219192279%_))
                                                (_%loop192206192250%_
                                                 _%lp-tl192209192263%_
                                                 (cons _%hd192218192277%_
                                                       _%expr192210192255%_)
                                                 (cons _%hd192215192269%_
                                                       _%hd192211192256%_))
                                                (_%g192191192224%_
                                                 _%g192192192227%_))))
                                        (_%g192191192224%_
                                         _%g192192192227%_))))
                                (_%g192191192224%_ _%g192192192227%_))))
                        (let ((_%expr192212192282%_
                               (reverse _%expr192210192255%_))
                              (_%hd192213192283%_
                               (reverse _%hd192211192256%_)))
                          ((lambda (_%g192193192285%_
                                    _%g192194192286%_
                                    _%g192195192287%_
                                    _%g192196192288%_)
                             (let* ((_%g192307192323%_
                                     (lambda (_%g192308192320%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g192308192320%_))))
                                    (_%g192306192411%_
                                     (lambda (_%g192308192326%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g192308192326%_))
                                           (let ((_g194181_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g192308192326%_
                                                     '0))))
                                             (begin
                                               (let ((_g194182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g194181_)
                                                            (##values-length
                                                             _g194181_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g194182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g194182_)))
                                               (let ((_%target192310192328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194181_
                                                         0)))
                                                     (_%tl192312192330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194181_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192312192330%_))
                                                     (letrec ((_%loop192313192333%_
                                                               (lambda (_%hd192311192336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr192317192338%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd192311192336%_))
                             (let ((_%e192314192340%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd192311192336%_))))
                               (let ((_%lp-hd192315192343%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e192314192340%_)))
                                     (_%lp-tl192316192345%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e192314192340%_))))
                                 (_%loop192313192333%_
                                  _%lp-tl192316192345%_
                                  (cons _%lp-hd192315192343%_
                                        _%expr192317192338%_))))
                             (let ((_%expr192318192348%_
                                    (reverse _%expr192317192338%_)))
                               ((lambda (_%g192309192350%_)
                                  (let ((__tmp194185
                                         (lambda ()
                                           (let* ((_%g192364192371%_
                                                   (lambda (_%g192365192368%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192365192368%_))))
                                                  (_%g192363192397%_
                                                   (lambda (_%g192365192374%_)
                                                     ((lambda (_%g192366192376%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192196192288%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192309192350%_
                                  _%g192195192287%_))
                               (let ((__tmp194186
                                      (lambda (_%g192386192390%_
                                               _%g192387192392%_
                                               _%g192388192394%_)
                                        (cons (cons _%g192387192392%_
                                                    (cons _%g192386192390%_
                                                          '()))
                                              _%g192388192394%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194186
                                  '()
                                  _%g192309192350%_
                                  _%g192195192287%_)))
                             _%g192366192376%_))
                 _%stx192189%_))
              _%g192365192374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192363192397%_
                                              (map (lambda (_%g192399192401%_)
                                                     (gxc#compile-e__1
                                                      _%self192188%_
                                                      _%g192399192401%_))
                                                   _%g192193192285%_)))))
                                        (__tmp194183
                                         (gxc#xform-let-locals
                                          (let ((__tmp194184
                                                 (lambda (_%g192403192406%_
                                                          _%g192404192408%_)
                                                   (cons _%g192403192406%_
                                                         _%g192404192408%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194184
                                             '()
                                             _%g192195192287%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp194185
                                     gxc#current-compile-local-env
                                     __tmp194183)))
                                _%expr192318192348%_))))))
               (_%loop192313192333%_ _%target192310192328%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192307192323%_
                                                      _%g192308192326%_)))))
                                           (_%g192307192323%_
                                            _%g192308192326%_)))))
                               (_%g192306192411%_
                                (map (lambda (_%g192413192415%_)
                                       (gxc#compile-e__1
                                        _%self192188%_
                                        _%g192413192415%_))
                                     (let ((__tmp194187
                                            (lambda (_%g192417192420%_
                                                     _%g192418192422%_)
                                              (cons _%g192417192420%_
                                                    _%g192418192422%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194187
                                        '()
                                        _%g192194192286%_))))))
                           _%tl192202192242%_
                           _%expr192212192282%_
                           _%hd192213192283%_
                           _%hd192198192232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192206192250%_
                                                   _%target192203192245%_
                                                   '()
                                                   '()))
                                                (_%g192191192224%_
                                                 _%g192192192227%_)))))
                                      (_%g192191192224%_ _%g192192192227%_))))
                              (_%g192191192224%_ _%g192192192227%_))))
                      (_%g192191192224%_ _%g192192192227%_)))))
          (_%g192190192425%_ _%stx192189%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self191948%_ _%stx191949%_)
        (let* ((_%g191951191984%_
                (lambda (_%g191952191981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191952191981%_))))
               (_%g191950192185%_
                (lambda (_%g191952191987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191952191987%_))
                      (let ((_%e191957191989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191952191987%_))))
                        (let ((_%hd191958191992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191957191989%_)))
                              (_%tl191959191994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191957191989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191959191994%_))
                              (let ((_%e191960191997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191959191994%_))))
                                (let ((_%hd191961192000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191960191997%_)))
                                      (_%tl191962192002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191960191997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd191961192000%_))
                                      (let ((_g194188_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd191961192000%_
                                                '0))))
                                        (begin
                                          (let ((_g194189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194188_)
                                                       (##values-length
                                                        _g194188_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194189_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194189_)))
                                          (let ((_%target191963192005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194188_ 0)))
                                                (_%tl191965192007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194188_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191965192007%_))
                                                (letrec ((_%loop191966192010%_
                                                          (lambda (_%hd191964192013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr191970192015%_
                           _%hd191971192016%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191964192013%_))
                        (let ((_%e191967192018%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd191964192013%_))))
                          (let ((_%lp-hd191968192021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191967192018%_)))
                                (_%lp-tl191969192023%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191967192018%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd191968192021%_))
                                (let ((_%e191974192026%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd191968192021%_))))
                                  (let ((_%hd191975192029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191974192026%_)))
                                        (_%tl191976192031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191974192026%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl191976192031%_))
                                        (let ((_%e191977192034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl191976192031%_))))
                                          (let ((_%hd191978192037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191977192034%_)))
                                                (_%tl191979192039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191977192034%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191979192039%_))
                                                (_%loop191966192010%_
                                                 _%lp-tl191969192023%_
                                                 (cons _%hd191978192037%_
                                                       _%expr191970192015%_)
                                                 (cons _%hd191975192029%_
                                                       _%hd191971192016%_))
                                                (_%g191951191984%_
                                                 _%g191952191987%_))))
                                        (_%g191951191984%_
                                         _%g191952191987%_))))
                                (_%g191951191984%_ _%g191952191987%_))))
                        (let ((_%expr191972192042%_
                               (reverse _%expr191970192015%_))
                              (_%hd191973192043%_
                               (reverse _%hd191971192016%_)))
                          ((lambda (_%g191953192045%_
                                    _%g191954192046%_
                                    _%g191955192047%_
                                    _%g191956192048%_)
                             (let ((__tmp194192
                                    (lambda ()
                                      (let* ((_%g192068192084%_
                                              (lambda (_%g192069192081%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g192069192081%_))))
                                             (_%g192067192164%_
                                              (lambda (_%g192069192087%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g192069192087%_))
                                                    (let ((_g194193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g192069192087%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g194194_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g194193_)
                             (##values-length _g194193_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g194194_ 2)))
                      (error "Context expects 2 values" _g194194_)))
                (let ((_%target192071192089%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194193_ 0)))
                      (_%tl192073192091%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194193_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192073192091%_))
                      (letrec ((_%loop192074192094%_
                                (lambda (_%hd192072192097%_
                                         _%expr192078192099%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd192072192097%_))
                                      (let ((_%e192075192101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd192072192097%_))))
                                        (let ((_%lp-hd192076192104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192075192101%_)))
                                              (_%lp-tl192077192106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192075192101%_))))
                                          (_%loop192074192094%_
                                           _%lp-tl192077192106%_
                                           (cons _%lp-hd192076192104%_
                                                 _%expr192078192099%_))))
                                      (let ((_%expr192079192109%_
                                             (reverse _%expr192078192099%_)))
                                        ((lambda (_%g192070192111%_)
                                           (let* ((_%g192125192132%_
                                                   (lambda (_%g192126192129%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192126192129%_))))
                                                  (_%g192124192157%_
                                                   (lambda (_%g192126192135%_)
                                                     ((lambda (_%g192127192137%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g191956192048%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192070192111%_
                                  _%g191955192047%_))
                               (let ((__tmp194195
                                      (lambda (_%g192146192150%_
                                               _%g192147192152%_
                                               _%g192148192154%_)
                                        (cons (cons _%g192147192152%_
                                                    (cons _%g192146192150%_
                                                          '()))
                                              _%g192148192154%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194195
                                  '()
                                  _%g192070192111%_
                                  _%g191955192047%_)))
                             _%g192127192137%_))
                 _%stx191949%_))
              _%g192126192135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192124192157%_
                                              (map (lambda (_%g192159192161%_)
                                                     (gxc#compile-e__1
                                                      _%self191948%_
                                                      _%g192159192161%_))
                                                   _%g191953192045%_))))
                                         _%expr192079192109%_))))))
                        (_%loop192074192094%_ _%target192071192089%_ '()))
                      (_%g192068192084%_ _%g192069192087%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g192068192084%_
                                                     _%g192069192087%_)))))
                                        (_%g192067192164%_
                                         (map (lambda (_%g192166192168%_)
                                                (gxc#compile-e__1
                                                 _%self191948%_
                                                 _%g192166192168%_))
                                              (let ((__tmp194196
                                                     (lambda (_%g192170192173%_
                                                              _%g192171192175%_)
                                                       (cons _%g192170192173%_
                                                             _%g192171192175%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp194196
                                                 '()
                                                 _%g191954192046%_)))))))
                                   (__tmp194190
                                    (gxc#xform-let-locals
                                     (let ((__tmp194191
                                            (lambda (_%g192177192180%_
                                                     _%g192178192182%_)
                                              (cons _%g192177192180%_
                                                    _%g192178192182%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194191
                                        '()
                                        _%g191955192047%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194192
                                gxc#current-compile-local-env
                                __tmp194190)))
                           _%tl191962192002%_
                           _%expr191972192042%_
                           _%hd191973192043%_
                           _%hd191958191992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop191966192010%_
                                                   _%target191963192005%_
                                                   '()
                                                   '()))
                                                (_%g191951191984%_
                                                 _%g191952191987%_)))))
                                      (_%g191951191984%_ _%g191952191987%_))))
                              (_%g191951191984%_ _%g191952191987%_))))
                      (_%g191951191984%_ _%g191952191987%_)))))
          (_%g191950192185%_ _%stx191949%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings191815%_)
        (letrec ((_%flatten191817%_
                  (lambda (_%maybe-lst191875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst191875%_))
                        (cons _%maybe-lst191875%_ '())
                        (let _%loop191877%_ ((_%rest191879%_
                                              _%maybe-lst191875%_)
                                             (_%result191880%_ '()))
                          (let* ((_%__stx194084194085%_ _%rest191879%_)
                                 (_%g191884191896%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx194084194085%_)))))
                            (let ((_%__kont194086194087%_
                                   (lambda (_%g191886191934%_
                                            _%g191887191935%_)
                                     (_%loop191877%_
                                      _%g191886191934%_
                                      (let ((__tmp194197
                                             (_%flatten191817%_
                                              _%g191887191935%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result191880%_
                                         __tmp194197)))))
                                  (_%__kont194088194089%_
                                   (lambda (_%g191891191908%_)
                                     (cons _%g191891191908%_
                                           _%result191880%_)))
                                  (_%__kont194090194091%_
                                   (lambda () _%result191880%_)))
                              (let ((_%g191882191921%_
                                     (lambda ()
                                       (let ((_%g191891191908%_
                                              _%__stx194084194085%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g191891191908%_))
                                             (_%__kont194088194089%_
                                              _%g191891191908%_)
                                             (_%__kont194090194091%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx194084194085%_))
                                    (let ((_%e191888191926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx194084194085%_))))
                                      (let ((_%tl191890191931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191888191926%_)))
                                            (_%hd191889191929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191888191926%_))))
                                        (_%__kont194086194087%_
                                         _%tl191890191931%_
                                         _%hd191889191929%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191882191921%_)))))))))))
          (let _%loop191819%_ ((_%rest191821%_
                                (_%flatten191817%_ _%bindings191815%_))
                               (_%locals191822%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest191823191834%_ _%rest191821%_)
                   (_%E191827191838%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest191823191834%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K191830191863%_
                     (lambda (_%rest191860%_ _%id191861%_)
                       (_%loop191819%_
                        _%rest191860%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id191861%_))
                              _%locals191822%_))))
                    (_%K191829191852%_
                     (lambda (_%id191850%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id191850%_))
                             _%locals191822%_)))
                    (_%K191828191843%_ (lambda () _%locals191822%_)))
                (let ((_%try-match191825191857%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest191823191834%_))
                             (let ((_%id191855%_ _%rest191823191834%_))
                               (_%K191829191852%_ _%id191855%_))
                             (_%K191828191843%_)))))
                  (if (pair? _%rest191823191834%_)
                      (let ((_%tl191832191868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest191823191834%_)))
                            (_%hd191831191866%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest191823191834%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd191831191866%_))
                            (let ((_%id191871%_ _%hd191831191866%_)
                                  (_%rest191873%_ _%tl191832191868%_))
                              (_%K191830191863%_ _%rest191873%_ _%id191871%_))
                            (_%K191828191843%_)))
                      (_%try-match191825191857%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self191767%_ _%stx191768%_)
        (let* ((_%g191770191781%_
                (lambda (_%g191771191778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191771191778%_))))
               (_%g191769191812%_
                (lambda (_%g191771191784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191771191784%_))
                      (let ((_%e191774191786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191771191784%_))))
                        (let ((_%hd191775191789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191774191786%_)))
                              (_%tl191776191791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191774191786%_))))
                          ((lambda (_%g191772191794%_ _%g191773191795%_)
                             (let ((_%rands191810%_
                                    (map (lambda (_%g191805191807%_)
                                           (gxc#compile-e__1
                                            _%self191767%_
                                            _%g191805191807%_))
                                         _%g191772191794%_)))
                               (gxc#xform-wrap-source
                                (cons _%g191773191795%_ _%rands191810%_)
                                _%stx191768%_)))
                           _%tl191776191791%_
                           _%hd191775191789%_)))
                      (_%g191770191781%_ _%g191771191784%_)))))
          (_%g191769191812%_ _%stx191768%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self191697%_ _%stx191698%_)
        (let* ((_%g191700191717%_
                (lambda (_%g191701191714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191701191714%_))))
               (_%g191699191764%_
                (lambda (_%g191701191720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191701191720%_))
                      (let ((_%e191704191722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191701191720%_))))
                        (let ((_%hd191705191725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191704191722%_)))
                              (_%tl191706191727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191704191722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191706191727%_))
                              (let ((_%e191707191730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191706191727%_))))
                                (let ((_%hd191708191733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191707191730%_)))
                                      (_%tl191709191735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191707191730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191709191735%_))
                                      (let ((_%e191710191738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191709191735%_))))
                                        (let ((_%hd191711191741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191710191738%_)))
                                              (_%tl191712191743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191710191738%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191712191743%_))
                                              ((lambda (_%g191702191746%_
                                                        _%g191703191747%_)
                                                 (let ((_%expr191762%_
                                                        (gxc#compile-e__1
                                                         _%self191697%_
                                                         _%g191702191746%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g191703191747%_
                                                                (cons _%expr191762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx191698%_)))
                                               _%hd191711191741%_
                                               _%hd191708191733%_)
                                              (_%g191700191717%_
                                               _%g191701191720%_))))
                                      (_%g191700191717%_ _%g191701191720%_))))
                              (_%g191700191717%_ _%g191701191720%_))))
                      (_%g191700191717%_ _%g191701191720%_)))))
          (_%g191699191764%_ _%stx191698%_))))))
