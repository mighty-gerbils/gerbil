(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1742222168)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138912%_)
        (let* ((_%self138914%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138916%_
                (let ((__tmp139112 (gxc#stx-car-e _%stx138912%_)))
                  (declare (not safe))
                  (method-ref _%self138914%_ __tmp139112))))
          (if _%$e138916%_
              ((lambda (_%method138919%_)
                 (declare (not safe))
                 (_%method138919%_ _%self138914%_ _%stx138912%_))
               _%$e138916%_)
              (let ((__tmp139114 (gxc#stx-car-e _%stx138912%_))
                    (__tmp139113
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138912%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138914%_
                       __tmp139114
                       __tmp139113))))))
    (define gxc#compile-e__1
      (lambda (_%self138923%_ _%stx138924%_)
        (let ((_%$e138926%_
               (let ((__tmp139115 (gxc#stx-car-e _%stx138924%_)))
                 (declare (not safe))
                 (method-ref _%self138923%_ __tmp139115))))
          (if _%$e138926%_
              ((lambda (_%method138929%_)
                 (declare (not safe))
                 (_%method138929%_ _%self138923%_ _%stx138924%_))
               _%$e138926%_)
              (let ((__tmp139117 (gxc#stx-car-e _%stx138924%_))
                    (__tmp139116
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138924%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138923%_
                       __tmp139117
                       __tmp139116))))))
    (define gxc#compile-e
      (lambda _g139119_
        (let ((_g139118_ (let () (declare (not safe)) (##length _g139119_))))
          (cond ((let () (declare (not safe)) (##fx= _g139118_ 1))
                 (apply gxc#compile-e__0 _g139119_))
                ((let () (declare (not safe)) (##fx= _g139118_ 2))
                 (apply gxc#compile-e__1 _g139119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g139119_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138910%_)
        (let ((__tmp139120
               (car (let () (declare (not safe)) (gx#stx-e _%stx138910%_)))))
          (declare (not safe))
          (gx#stx-e __tmp139120))))
    (define gxc#void-method (lambda (_%self138907%_ _%stx138908%_) '#!void))
    (define gxc#false-method (lambda (_%self138904%_ _%stx138905%_) '#f))
    (define gxc#true-method (lambda (_%self138901%_ _%stx138902%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138898%_ _%stx138899%_) _%stx138899%_))
    (define gxc#::void-expression::t
      (let ((__tmp139121 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp139121
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138895%_
        (apply make-instance gxc#::void-expression::t _%$args138895%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp139122
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
        (__make-promise __tmp139122)))
    (define gxc#::void-special-form::t
      (let ((__tmp139123 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp139123
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138891%_
        (apply make-instance gxc#::void-special-form::t _%$args138891%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp139124
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
        (__make-promise __tmp139124)))
    (define gxc#::void::t
      (let ((__tmp139125
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp139125 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138887%_
        (apply make-instance gxc#::void::t _%$args138887%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp139126
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139126)))
    (define gxc#::false-expression::t
      (let ((__tmp139127 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp139127
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138883%_
        (apply make-instance gxc#::false-expression::t _%$args138883%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp139128
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
        (__make-promise __tmp139128)))
    (define gxc#::false-special-form::t
      (let ((__tmp139129 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp139129
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138879%_
        (apply make-instance gxc#::false-special-form::t _%$args138879%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp139130
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
        (__make-promise __tmp139130)))
    (define gxc#::false::t
      (let ((__tmp139131
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp139131 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138875%_
        (apply make-instance gxc#::false::t _%$args138875%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp139132
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139132)))
    (define gxc#::identity-expression::t
      (let ((__tmp139133 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp139133
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138871%_
        (apply make-instance gxc#::identity-expression::t _%$args138871%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp139134
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
        (__make-promise __tmp139134)))
    (define gxc#::identity-special-form::t
      (let ((__tmp139135 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp139135
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138867%_
        (apply make-instance gxc#::identity-special-form::t _%$args138867%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp139136
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
        (__make-promise __tmp139136)))
    (define gxc#::identity::t
      (let ((__tmp139137
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp139137
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138863%_
        (apply make-instance gxc#::identity::t _%$args138863%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp139138
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139138)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp139139 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp139139
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138859%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138859%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp139140
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
        (__make-promise __tmp139140)))
    (define gxc#::basic-xform::t
      (let ((__tmp139141
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp139141
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138855%_
        (apply make-instance gxc#::basic-xform::t _%$args138855%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp139142
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
        (__make-promise __tmp139142)))
    (define gxc#apply-begin%
      (lambda (_%self138811%_ _%stx138812%_)
        (let* ((_%g138814138824%_
                (lambda (_%g138815138821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138815138821%_))))
               (_%g138813138851%_
                (lambda (_%g138815138827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138815138827%_))
                      (let ((_%e138817138829%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138815138827%_))))
                        (let ((_%hd138818138832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138817138829%_)))
                              (_%tl138819138834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138817138829%_))))
                          ((lambda (_%L138837%_)
                             (for-each
                              (lambda (_%g138846138848%_)
                                (gxc#compile-e__1
                                 _%self138811%_
                                 _%g138846138848%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138837%_))))
                           _%tl138819138834%_)))
                      (_%g138814138824%_ _%g138815138827%_)))))
          (_%g138813138851%_ _%stx138812%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138772%_ _%stx138773%_)
        (let* ((_%g138775138785%_
                (lambda (_%g138776138782%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138776138782%_))))
               (_%g138774138808%_
                (lambda (_%g138776138788%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138776138788%_))
                      (let ((_%e138778138790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138776138788%_))))
                        (let ((_%hd138779138793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138778138790%_)))
                              (_%tl138780138795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138778138790%_))))
                          ((lambda (_%L138798%_)
                             (gxc#compile-e__1
                              _%self138772%_
                              (last _%L138798%_)))
                           _%tl138780138795%_)))
                      (_%g138775138785%_ _%g138776138788%_)))))
          (_%g138774138808%_ _%stx138773%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138768%_ _%stx138769%_)
        (let ((__tmp139145
               (lambda () (gxc#apply-begin% _%self138768%_ _%stx138769%_)))
              (__tmp139143
               (let ((__tmp139144
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp139144 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp139145
           gx#current-expander-phi
           __tmp139143))))
    (define gxc#apply-module%
      (lambda (_%self138707%_ _%stx138708%_)
        (let* ((_%g138710138724%_
                (lambda (_%g138711138721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138711138721%_))))
               (_%g138709138765%_
                (lambda (_%g138711138727%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138711138727%_))
                      (let ((_%e138714138729%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138711138727%_))))
                        (let ((_%hd138715138732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138714138729%_)))
                              (_%tl138716138734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138714138729%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138716138734%_))
                              (let ((_%e138717138737%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138716138734%_))))
                                (let ((_%hd138718138740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138717138737%_)))
                                      (_%tl138719138742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138717138737%_))))
                                  ((lambda (_%L138745%_ _%L138746%_)
                                     (let* ((_%ctx138759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138746%_)))
                                            (_%ctx-stx138761%_
                                             (##structure-ref
                                              _%ctx138759%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp139146
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138707%_
                                                _%ctx-stx138761%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139146
                                        gx#current-expander-context
                                        _%ctx138759%_)))
                                   _%tl138719138742%_
                                   _%hd138718138740%_)))
                              (_%g138710138724%_ _%g138711138727%_))))
                      (_%g138710138724%_ _%g138711138727%_)))))
          (_%g138709138765%_ _%stx138708%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138639%_ _%stx138640%_)
        (let* ((_%g138642138659%_
                (lambda (_%g138643138656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138643138656%_))))
               (_%g138641138704%_
                (lambda (_%g138643138662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138643138662%_))
                      (let ((_%e138646138664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138643138662%_))))
                        (let ((_%hd138647138667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138646138664%_)))
                              (_%tl138648138669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138646138664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138648138669%_))
                              (let ((_%e138649138672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138648138669%_))))
                                (let ((_%hd138650138675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138649138672%_)))
                                      (_%tl138651138677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138649138672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138651138677%_))
                                      (let ((_%e138652138680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138651138677%_))))
                                        (let ((_%hd138653138683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138652138680%_)))
                                              (_%tl138654138685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138652138680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138654138685%_))
                                              ((lambda (_%L138688%_
                                                        _%L138689%_)
                                                 (gxc#compile-e__1
                                                  _%self138639%_
                                                  _%L138688%_))
                                               _%hd138653138683%_
                                               _%hd138650138675%_)
                                              (_%g138642138659%_
                                               _%g138643138662%_))))
                                      (_%g138642138659%_ _%g138643138662%_))))
                              (_%g138642138659%_ _%g138643138662%_))))
                      (_%g138642138659%_ _%g138643138662%_)))))
          (_%g138641138704%_ _%stx138640%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138571%_ _%stx138572%_)
        (let* ((_%g138574138591%_
                (lambda (_%g138575138588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138575138588%_))))
               (_%g138573138636%_
                (lambda (_%g138575138594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138575138594%_))
                      (let ((_%e138578138596%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138575138594%_))))
                        (let ((_%hd138579138599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138578138596%_)))
                              (_%tl138580138601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138578138596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138580138601%_))
                              (let ((_%e138581138604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138580138601%_))))
                                (let ((_%hd138582138607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138581138604%_)))
                                      (_%tl138583138609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138581138604%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138583138609%_))
                                      (let ((_%e138584138612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138583138609%_))))
                                        (let ((_%hd138585138615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138584138612%_)))
                                              (_%tl138586138617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138584138612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138586138617%_))
                                              ((lambda (_%L138620%_
                                                        _%L138621%_)
                                                 (gxc#compile-e__1
                                                  _%self138571%_
                                                  _%L138620%_))
                                               _%hd138585138615%_
                                               _%hd138582138607%_)
                                              (_%g138574138591%_
                                               _%g138575138594%_))))
                                      (_%g138574138591%_ _%g138575138594%_))))
                              (_%g138574138591%_ _%g138575138594%_))))
                      (_%g138574138591%_ _%g138575138594%_)))))
          (_%g138573138636%_ _%stx138572%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138502%_ _%stx138503%_)
        (let* ((_%g138505138522%_
                (lambda (_%g138506138519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138506138519%_))))
               (_%g138504138568%_
                (lambda (_%g138506138525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138506138525%_))
                      (let ((_%e138509138527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138506138525%_))))
                        (let ((_%hd138510138530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138509138527%_)))
                              (_%tl138511138532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138509138527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138511138532%_))
                              (let ((_%e138512138535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138511138532%_))))
                                (let ((_%hd138513138538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138512138535%_)))
                                      (_%tl138514138540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138512138535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138514138540%_))
                                      (let ((_%e138515138543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138514138540%_))))
                                        (let ((_%hd138516138546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138515138543%_)))
                                              (_%tl138517138548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138515138543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138517138548%_))
                                              ((lambda (_%L138551%_
                                                        _%L138552%_)
                                                 (let ((__tmp139149
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138502%_
                                                           _%L138551%_)))
                                                       (__tmp139147
                                                        (let ((__tmp139148
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139148 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139149
                                                    gx#current-expander-phi
                                                    __tmp139147)))
                                               _%hd138516138546%_
                                               _%hd138513138538%_)
                                              (_%g138505138522%_
                                               _%g138506138525%_))))
                                      (_%g138505138522%_ _%g138506138525%_))))
                              (_%g138505138522%_ _%g138506138525%_))))
                      (_%g138505138522%_ _%g138506138525%_)))))
          (_%g138504138568%_ _%stx138503%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138434%_ _%stx138435%_)
        (let* ((_%g138437138454%_
                (lambda (_%g138438138451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138438138451%_))))
               (_%g138436138499%_
                (lambda (_%g138438138457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138438138457%_))
                      (let ((_%e138441138459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138438138457%_))))
                        (let ((_%hd138442138462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138441138459%_)))
                              (_%tl138443138464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138441138459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138443138464%_))
                              (let ((_%e138444138467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138443138464%_))))
                                (let ((_%hd138445138470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138444138467%_)))
                                      (_%tl138446138472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138444138467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138446138472%_))
                                      (let ((_%e138447138475%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138446138472%_))))
                                        (let ((_%hd138448138478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138447138475%_)))
                                              (_%tl138449138480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138447138475%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138449138480%_))
                                              ((lambda (_%L138483%_
                                                        _%L138484%_)
                                                 (gxc#compile-e__1
                                                  _%self138434%_
                                                  _%L138483%_))
                                               _%hd138448138478%_
                                               _%hd138445138470%_)
                                              (_%g138437138454%_
                                               _%g138438138457%_))))
                                      (_%g138437138454%_ _%g138438138457%_))))
                              (_%g138437138454%_ _%g138438138457%_))))
                      (_%g138437138454%_ _%g138438138457%_)))))
          (_%g138436138499%_ _%stx138435%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138316%_ _%stx138317%_)
        (let* ((_%g138319138347%_
                (lambda (_%g138320138344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138320138344%_))))
               (_%g138318138431%_
                (lambda (_%g138320138350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138320138350%_))
                      (let ((_%e138323138352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138320138350%_))))
                        (let ((_%hd138324138355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138323138352%_)))
                              (_%tl138325138357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138323138352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138325138357%_))
                              (let ((_g139150_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138325138357%_
                                        '0))))
                                (begin
                                  (let ((_g139151_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139150_)
                                               (##values-length _g139150_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139151_ 2)))
                                        (error "Context expects 2 values"
                                               _g139151_)))
                                  (let ((_%target138326138360%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139150_ 0)))
                                        (_%tl138328138362%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139150_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138328138362%_))
                                        (letrec ((_%loop138329138365%_
                                                  (lambda (_%hd138327138368%_
                                                           _%body138333138370%_
                                                           _%hd138334138372%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138327138368%_))
                                                        (let ((_%e138330138375%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138327138368%_))))
                  (let ((_%lp-hd138331138378%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138330138375%_)))
                        (_%lp-tl138332138380%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138330138375%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138331138378%_))
                        (let ((_%e138337138383%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138331138378%_))))
                          (let ((_%hd138338138386%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138337138383%_)))
                                (_%tl138339138388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138337138383%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138339138388%_))
                                (let ((_%e138340138391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138339138388%_))))
                                  (let ((_%hd138341138394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138340138391%_)))
                                        (_%tl138342138396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138340138391%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138342138396%_))
                                        (_%loop138329138365%_
                                         _%lp-tl138332138380%_
                                         (cons _%hd138341138394%_
                                               _%body138333138370%_)
                                         (cons _%hd138338138386%_
                                               _%hd138334138372%_))
                                        (_%g138319138347%_
                                         _%g138320138350%_))))
                                (_%g138319138347%_ _%g138320138350%_))))
                        (_%g138319138347%_ _%g138320138350%_))))
                (let ((_%body138335138399%_ (reverse _%body138333138370%_))
                      (_%hd138336138401%_ (reverse _%hd138334138372%_)))
                  ((lambda (_%L138404%_ _%L138405%_)
                     (for-each
                      (lambda (_%g138419138421%_)
                        (gxc#compile-e__1 _%self138316%_ _%g138419138421%_))
                      (let ((__tmp139152
                             (lambda (_%g138423138426%_ _%g138424138428%_)
                               (cons _%g138423138426%_ _%g138424138428%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139152 '() _%L138404%_))))
                   _%body138335138399%_
                   _%hd138336138401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138329138365%_
                                           _%target138326138360%_
                                           '()
                                           '()))
                                        (_%g138319138347%_
                                         _%g138320138350%_)))))
                              (_%g138319138347%_ _%g138320138350%_))))
                      (_%g138319138347%_ _%g138320138350%_)))))
          (_%g138318138431%_ _%stx138317%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self138169%_ _%stx138170%_)
        (let* ((_%g138172138207%_
                (lambda (_%g138173138204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138173138204%_))))
               (_%g138171138313%_
                (lambda (_%g138173138210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138173138210%_))
                      (let ((_%e138177138212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138173138210%_))))
                        (let ((_%hd138178138215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138177138212%_)))
                              (_%tl138179138217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138177138212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138179138217%_))
                              (let ((_%e138180138220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138179138217%_))))
                                (let ((_%hd138181138223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138180138220%_)))
                                      (_%tl138182138225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138180138220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd138181138223%_))
                                      (let ((_g139153_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd138181138223%_
                                                '0))))
                                        (begin
                                          (let ((_g139154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139153_)
                                                       (##values-length
                                                        _g139153_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139154_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139154_)))
                                          (let ((_%target138183138228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139153_ 0)))
                                                (_%tl138185138230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139153_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138185138230%_))
                                                (letrec ((_%loop138186138233%_
                                                          (lambda (_%hd138184138236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138190138238%_
                           _%hd138191138240%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138184138236%_))
                        (let ((_%e138187138243%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138184138236%_))))
                          (let ((_%lp-hd138188138246%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138187138243%_)))
                                (_%lp-tl138189138248%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138187138243%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd138188138246%_))
                                (let ((_%e138194138251%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd138188138246%_))))
                                  (let ((_%hd138195138254%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138194138251%_)))
                                        (_%tl138196138256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138194138251%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138196138256%_))
                                        (let ((_%e138197138259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138196138256%_))))
                                          (let ((_%hd138198138262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138197138259%_)))
                                                (_%tl138199138264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138197138259%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138199138264%_))
                                                (_%loop138186138233%_
                                                 _%lp-tl138189138248%_
                                                 (cons _%hd138198138262%_
                                                       _%expr138190138238%_)
                                                 (cons _%hd138195138254%_
                                                       _%hd138191138240%_))
                                                (_%g138172138207%_
                                                 _%g138173138210%_))))
                                        (_%g138172138207%_
                                         _%g138173138210%_))))
                                (_%g138172138207%_ _%g138173138210%_))))
                        (let ((_%expr138192138267%_
                               (reverse _%expr138190138238%_))
                              (_%hd138193138269%_
                               (reverse _%hd138191138240%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138182138225%_))
                              (let ((_%e138200138272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138182138225%_))))
                                (let ((_%hd138201138275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138200138272%_)))
                                      (_%tl138202138277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138200138272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138202138277%_))
                                      ((lambda (_%L138280%_
                                                _%L138281%_
                                                _%L138282%_)
                                         (for-each
                                          (lambda (_%g138301138303%_)
                                            (gxc#compile-e__1
                                             _%self138169%_
                                             _%g138301138303%_))
                                          (let ((__tmp139156
                                                 (lambda (_%g138305138308%_
                                                          _%g138306138310%_)
                                                   (cons _%g138305138308%_
                                                         _%g138306138310%_)))
                                                (__tmp139155
                                                 (cons _%L138280%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139156
                                             __tmp139155
                                             _%L138281%_))))
                                       _%hd138201138275%_
                                       _%expr138192138267%_
                                       _%hd138193138269%_)
                                      (_%g138172138207%_ _%g138173138210%_))))
                              (_%g138172138207%_ _%g138173138210%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop138186138233%_
                                                   _%target138183138228%_
                                                   '()
                                                   '()))
                                                (_%g138172138207%_
                                                 _%g138173138210%_)))))
                                      (_%g138172138207%_ _%g138173138210%_))))
                              (_%g138172138207%_ _%g138173138210%_))))
                      (_%g138172138207%_ _%g138173138210%_)))))
          (_%g138171138313%_ _%stx138170%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self138114%_ _%stx138115%_)
        (let* ((_%g138117138131%_
                (lambda (_%g138118138128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138118138128%_))))
               (_%g138116138166%_
                (lambda (_%g138118138134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138118138134%_))
                      (let ((_%e138121138136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138118138134%_))))
                        (let ((_%hd138122138139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138121138136%_)))
                              (_%tl138123138141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138121138136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138123138141%_))
                              (let ((_%e138124138144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138123138141%_))))
                                (let ((_%hd138125138147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138124138144%_)))
                                      (_%tl138126138149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138124138144%_))))
                                  ((lambda (_%L138152%_ _%L138153%_)
                                     (gxc#compile-e__1
                                      _%self138114%_
                                      (last _%L138152%_)))
                                   _%tl138126138149%_
                                   _%hd138125138147%_)))
                              (_%g138117138131%_ _%g138118138134%_))))
                      (_%g138117138131%_ _%g138118138134%_)))))
          (_%g138116138166%_ _%stx138115%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self138046%_ _%stx138047%_)
        (let* ((_%g138049138066%_
                (lambda (_%g138050138063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138050138063%_))))
               (_%g138048138111%_
                (lambda (_%g138050138069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138050138069%_))
                      (let ((_%e138053138071%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138050138069%_))))
                        (let ((_%hd138054138074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138053138071%_)))
                              (_%tl138055138076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138053138071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138055138076%_))
                              (let ((_%e138056138079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138055138076%_))))
                                (let ((_%hd138057138082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138056138079%_)))
                                      (_%tl138058138084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138056138079%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138058138084%_))
                                      (let ((_%e138059138087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138058138084%_))))
                                        (let ((_%hd138060138090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138059138087%_)))
                                              (_%tl138061138092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138059138087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138061138092%_))
                                              ((lambda (_%L138095%_
                                                        _%L138096%_)
                                                 (gxc#compile-e__1
                                                  _%self138046%_
                                                  _%L138095%_))
                                               _%hd138060138090%_
                                               _%hd138057138082%_)
                                              (_%g138049138066%_
                                               _%g138050138069%_))))
                                      (_%g138049138066%_ _%g138050138069%_))))
                              (_%g138049138066%_ _%g138050138069%_))))
                      (_%g138049138066%_ _%g138050138069%_)))))
          (_%g138048138111%_ _%stx138047%_))))
    (define gxc#apply-operands
      (lambda (_%self137959%_ _%stx137960%_)
        (let* ((_%g137962137981%_
                (lambda (_%g137963137978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137963137978%_))))
               (_%g137961138043%_
                (lambda (_%g137963137984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137963137984%_))
                      (let ((_%e137965137986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137963137984%_))))
                        (let ((_%hd137966137989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137965137986%_)))
                              (_%tl137967137991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137965137986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137967137991%_))
                              (let ((_g139157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137967137991%_
                                        '0))))
                                (begin
                                  (let ((_g139158_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139157_)
                                               (##values-length _g139157_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139158_ 2)))
                                        (error "Context expects 2 values"
                                               _g139158_)))
                                  (let ((_%target137968137994%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139157_ 0)))
                                        (_%tl137970137996%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139157_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137970137996%_))
                                        (letrec ((_%loop137971137999%_
                                                  (lambda (_%hd137969138002%_
                                                           _%rands137975138004%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137969138002%_))
                                                        (let ((_%e137972138007%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137969138002%_))))
                  (let ((_%lp-hd137973138010%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137972138007%_)))
                        (_%lp-tl137974138012%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137972138007%_))))
                    (_%loop137971137999%_
                     _%lp-tl137974138012%_
                     (cons _%lp-hd137973138010%_ _%rands137975138004%_))))
                (let ((_%rands137976138015%_ (reverse _%rands137975138004%_)))
                  ((lambda (_%L138018%_)
                     (for-each
                      (lambda (_%g138031138033%_)
                        (gxc#compile-e__1 _%self137959%_ _%g138031138033%_))
                      (let ((__tmp139159
                             (lambda (_%g138035138038%_ _%g138036138040%_)
                               (cons _%g138035138038%_ _%g138036138040%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139159 '() _%L138018%_))))
                   _%rands137976138015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137971137999%_
                                           _%target137968137994%_
                                           '()))
                                        (_%g137962137981%_
                                         _%g137963137984%_)))))
                              (_%g137962137981%_ _%g137963137984%_))))
                      (_%g137962137981%_ _%g137963137984%_)))))
          (_%g137961138043%_ _%stx137960%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137956%_ _%src-stx137957%_)
        (let ((__tmp139160
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137957%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137956%_ __tmp139160))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137952%_ _%src-stx137953%_ _%ctx137954%_)
        (gxc#compile-e__1
         _%ctx137954%_
         (gxc#xform-wrap-source _%stx137952%_ _%src-stx137953%_))))
    (define gxc#xform-begin%
      (lambda (_%self137907%_ _%stx137908%_)
        (let* ((_%g137910137920%_
                (lambda (_%g137911137917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137911137917%_))))
               (_%g137909137949%_
                (lambda (_%g137911137923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137911137923%_))
                      (let ((_%e137913137925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137911137923%_))))
                        (let ((_%hd137914137928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137913137925%_)))
                              (_%tl137915137930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137913137925%_))))
                          ((lambda (_%L137933%_)
                             (let ((_%forms137947%_
                                    (map (lambda (_%g137942137944%_)
                                           (gxc#compile-e__1
                                            _%self137907%_
                                            _%g137942137944%_))
                                         _%L137933%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137947%_)
                                _%stx137908%_)))
                           _%tl137915137930%_)))
                      (_%g137910137920%_ _%g137911137923%_)))))
          (_%g137909137949%_ _%stx137908%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137861%_ _%stx137862%_)
        (let* ((_%g137864137874%_
                (lambda (_%g137865137871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137865137871%_))))
               (_%g137863137904%_
                (lambda (_%g137865137877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137865137877%_))
                      (let ((_%e137867137879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137865137877%_))))
                        (let ((_%hd137868137882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137867137879%_)))
                              (_%tl137869137884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137867137879%_))))
                          ((lambda (_%L137887%_)
                             (let ((__tmp139163
                                    (lambda ()
                                      (let ((_%forms137902%_
                                             (map (lambda (_%g137897137899%_)
                                                    (gxc#compile-e__1
                                                     _%self137861%_
                                                     _%g137897137899%_))
                                                  _%L137887%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137902%_)
                                         _%stx137862%_))))
                                   (__tmp139161
                                    (let ((__tmp139162
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp139162 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139163
                                gx#current-expander-phi
                                __tmp139161)))
                           _%tl137869137884%_)))
                      (_%g137864137874%_ _%g137865137877%_)))))
          (_%g137863137904%_ _%stx137862%_))))
    (define gxc#xform-module%
      (lambda (_%self137798%_ _%stx137799%_)
        (let* ((_%g137801137815%_
                (lambda (_%g137802137812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137802137812%_))))
               (_%g137800137858%_
                (lambda (_%g137802137818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137802137818%_))
                      (let ((_%e137805137820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137802137818%_))))
                        (let ((_%hd137806137823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137805137820%_)))
                              (_%tl137807137825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137805137820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137807137825%_))
                              (let ((_%e137808137828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137807137825%_))))
                                (let ((_%hd137809137831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137808137828%_)))
                                      (_%tl137810137833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137808137828%_))))
                                  ((lambda (_%L137836%_ _%L137837%_)
                                     (let* ((_%ctx137850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137837%_)))
                                            (_%code137852%_
                                             (##structure-ref
                                              _%ctx137850%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137855%_
                                             (let ((__tmp139164
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137798%_
                                                       _%code137852%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp139164
                                                gx#current-expander-context
                                                _%ctx137850%_))))
                                       (##structure-set!
                                        _%ctx137850%_
                                        _%code137855%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137837%_
                                                    (cons _%code137855%_ '())))
                                        _%stx137799%_)))
                                   _%tl137810137833%_
                                   _%hd137809137831%_)))
                              (_%g137801137815%_ _%g137802137818%_))))
                      (_%g137801137815%_ _%g137802137818%_)))))
          (_%g137800137858%_ _%stx137799%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137728%_ _%stx137729%_)
        (let* ((_%g137731137748%_
                (lambda (_%g137732137745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137732137745%_))))
               (_%g137730137795%_
                (lambda (_%g137732137751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137732137751%_))
                      (let ((_%e137735137753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137732137751%_))))
                        (let ((_%hd137736137756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137735137753%_)))
                              (_%tl137737137758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137735137753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137737137758%_))
                              (let ((_%e137738137761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137737137758%_))))
                                (let ((_%hd137739137764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137738137761%_)))
                                      (_%tl137740137766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137738137761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137740137766%_))
                                      (let ((_%e137741137769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137740137766%_))))
                                        (let ((_%hd137742137772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137741137769%_)))
                                              (_%tl137743137774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137741137769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137743137774%_))
                                              ((lambda (_%L137777%_
                                                        _%L137778%_)
                                                 (let ((_%expr137793%_
                                                        (gxc#compile-e__1
                                                         _%self137728%_
                                                         _%L137777%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137778%_
                                                                (cons _%expr137793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137729%_)))
                                               _%hd137742137772%_
                                               _%hd137739137764%_)
                                              (_%g137731137748%_
                                               _%g137732137751%_))))
                                      (_%g137731137748%_ _%g137732137751%_))))
                              (_%g137731137748%_ _%g137732137751%_))))
                      (_%g137731137748%_ _%g137732137751%_)))))
          (_%g137730137795%_ _%stx137729%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137657%_ _%stx137658%_)
        (let* ((_%g137660137677%_
                (lambda (_%g137661137674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137661137674%_))))
               (_%g137659137725%_
                (lambda (_%g137661137680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137661137680%_))
                      (let ((_%e137664137682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137661137680%_))))
                        (let ((_%hd137665137685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137664137682%_)))
                              (_%tl137666137687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137664137682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137666137687%_))
                              (let ((_%e137667137690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137666137687%_))))
                                (let ((_%hd137668137693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137667137690%_)))
                                      (_%tl137669137695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137667137690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137669137695%_))
                                      (let ((_%e137670137698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137669137695%_))))
                                        (let ((_%hd137671137701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137670137698%_)))
                                              (_%tl137672137703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137670137698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137672137703%_))
                                              ((lambda (_%L137706%_
                                                        _%L137707%_)
                                                 (let ((__tmp139167
                                                        (lambda ()
                                                          (let ((_%expr137723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137657%_ _%L137706%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137707%_ (cons _%expr137723%_ '())))
                     _%stx137658%_))))
               (__tmp139165
                (let ((__tmp139166
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139166 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139167
                                                    gx#current-expander-phi
                                                    __tmp139165)))
                                               _%hd137671137701%_
                                               _%hd137668137693%_)
                                              (_%g137660137677%_
                                               _%g137661137680%_))))
                                      (_%g137660137677%_ _%g137661137680%_))))
                              (_%g137660137677%_ _%g137661137680%_))))
                      (_%g137660137677%_ _%g137661137680%_)))))
          (_%g137659137725%_ _%stx137658%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137587%_ _%stx137588%_)
        (let* ((_%g137590137607%_
                (lambda (_%g137591137604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137591137604%_))))
               (_%g137589137654%_
                (lambda (_%g137591137610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137591137610%_))
                      (let ((_%e137594137612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137591137610%_))))
                        (let ((_%hd137595137615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137594137612%_)))
                              (_%tl137596137617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137594137612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137596137617%_))
                              (let ((_%e137597137620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137596137617%_))))
                                (let ((_%hd137598137623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137597137620%_)))
                                      (_%tl137599137625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137597137620%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137599137625%_))
                                      (let ((_%e137600137628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137599137625%_))))
                                        (let ((_%hd137601137631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137600137628%_)))
                                              (_%tl137602137633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137600137628%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137602137633%_))
                                              ((lambda (_%L137636%_
                                                        _%L137637%_)
                                                 (let ((_%expr137652%_
                                                        (gxc#compile-e__1
                                                         _%self137587%_
                                                         _%L137636%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137637%_
                                                                (cons _%expr137652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137588%_)))
                                               _%hd137601137631%_
                                               _%hd137598137623%_)
                                              (_%g137590137607%_
                                               _%g137591137610%_))))
                                      (_%g137590137607%_ _%g137591137610%_))))
                              (_%g137590137607%_ _%g137591137610%_))))
                      (_%g137590137607%_ _%g137591137610%_)))))
          (_%g137589137654%_ _%stx137588%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137525%_ _%stx137526%_)
        (let* ((_%g137528137542%_
                (lambda (_%g137529137539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137529137539%_))))
               (_%g137527137584%_
                (lambda (_%g137529137545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137529137545%_))
                      (let ((_%e137532137547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137529137545%_))))
                        (let ((_%hd137533137550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137532137547%_)))
                              (_%tl137534137552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137532137547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137534137552%_))
                              (let ((_%e137535137555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137534137552%_))))
                                (let ((_%hd137536137558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137535137555%_)))
                                      (_%tl137537137560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137535137555%_))))
                                  ((lambda (_%L137563%_ _%L137564%_)
                                     (let ((__tmp139169
                                            (lambda ()
                                              (let ((_%body137582%_
                                                     (map (lambda (_%g137577137579%_)
                                                            (gxc#compile-e__1
                                                             _%self137525%_
                                                             _%g137577137579%_))
                                                          _%L137563%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137564%_
                                                             _%body137582%_))
                                                 _%stx137526%_))))
                                           (__tmp139168
                                            (gxc#xform-let-locals
                                             _%L137564%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139169
                                        gxc#current-compile-local-env
                                        __tmp139168)))
                                   _%tl137537137560%_
                                   _%hd137536137558%_)))
                              (_%g137528137542%_ _%g137529137545%_))))
                      (_%g137528137542%_ _%g137529137545%_)))))
          (_%g137527137584%_ _%stx137526%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137433%_ _%stx137434%_)
        (letrec ((_%clause-e137436%_
                  (lambda (_%clause137477%_)
                    (let* ((_%g137479137490%_
                            (lambda (_%g137480137487%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137480137487%_))))
                           (_%g137478137522%_
                            (lambda (_%g137480137493%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137480137493%_))
                                  (let ((_%e137483137495%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137480137493%_))))
                                    (let ((_%hd137484137498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137483137495%_)))
                                          (_%tl137485137500%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137483137495%_))))
                                      ((lambda (_%L137503%_ _%L137504%_)
                                         (let ((__tmp139171
                                                (lambda ()
                                                  (let ((_%body137520%_
                                                         (map (lambda (_%g137515137517%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137433%_
                         _%g137515137517%_))
                      _%L137503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137504%_
                                                          _%body137520%_))))
                                               (__tmp139170
                                                (gxc#xform-let-locals
                                                 _%L137504%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp139171
                                            gxc#current-compile-local-env
                                            __tmp139170)))
                                       _%tl137485137500%_
                                       _%hd137484137498%_)))
                                  (_%g137479137490%_ _%g137480137493%_)))))
                      (_%g137478137522%_ _%clause137477%_)))))
          (let* ((_%g137438137448%_
                  (lambda (_%g137439137445%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137439137445%_))))
                 (_%g137437137474%_
                  (lambda (_%g137439137451%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137439137451%_))
                        (let ((_%e137441137453%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137439137451%_))))
                          (let ((_%hd137442137456%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137441137453%_)))
                                (_%tl137443137458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137441137453%_))))
                            ((lambda (_%L137461%_)
                               (let ((_%clauses137472%_
                                      (map _%clause-e137436%_ _%L137461%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137472%_)
                                  _%stx137434%_)))
                             _%tl137443137458%_)))
                        (_%g137438137448%_ _%g137439137451%_)))))
            (_%g137437137474%_ _%stx137434%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self137187%_ _%stx137188%_)
        (let* ((_%g137190137223%_
                (lambda (_%g137191137220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137191137220%_))))
               (_%g137189137430%_
                (lambda (_%g137191137226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137191137226%_))
                      (let ((_%e137196137228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137191137226%_))))
                        (let ((_%hd137197137231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137196137228%_)))
                              (_%tl137198137233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137196137228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137198137233%_))
                              (let ((_%e137199137236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137198137233%_))))
                                (let ((_%hd137200137239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137199137236%_)))
                                      (_%tl137201137241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137199137236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137200137239%_))
                                      (let ((_g139172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137200137239%_
                                                '0))))
                                        (begin
                                          (let ((_g139173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139172_)
                                                       (##values-length
                                                        _g139172_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139173_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139173_)))
                                          (let ((_%target137202137244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139172_ 0)))
                                                (_%tl137204137246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139172_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137204137246%_))
                                                (letrec ((_%loop137205137249%_
                                                          (lambda (_%hd137203137252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137209137254%_
                           _%hd137210137256%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137203137252%_))
                        (let ((_%e137206137259%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137203137252%_))))
                          (let ((_%lp-hd137207137262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137206137259%_)))
                                (_%lp-tl137208137264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137206137259%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137207137262%_))
                                (let ((_%e137213137267%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137207137262%_))))
                                  (let ((_%hd137214137270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137213137267%_)))
                                        (_%tl137215137272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137213137267%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137215137272%_))
                                        (let ((_%e137216137275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137215137272%_))))
                                          (let ((_%hd137217137278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137216137275%_)))
                                                (_%tl137218137280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137216137275%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137218137280%_))
                                                (_%loop137205137249%_
                                                 _%lp-tl137208137264%_
                                                 (cons _%hd137217137278%_
                                                       _%expr137209137254%_)
                                                 (cons _%hd137214137270%_
                                                       _%hd137210137256%_))
                                                (_%g137190137223%_
                                                 _%g137191137226%_))))
                                        (_%g137190137223%_
                                         _%g137191137226%_))))
                                (_%g137190137223%_ _%g137191137226%_))))
                        (let ((_%expr137211137283%_
                               (reverse _%expr137209137254%_))
                              (_%hd137212137285%_
                               (reverse _%hd137210137256%_)))
                          ((lambda (_%L137288%_
                                    _%L137289%_
                                    _%L137290%_
                                    _%L137291%_)
                             (let* ((_%g137310137326%_
                                     (lambda (_%g137311137323%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137311137323%_))))
                                    (_%g137309137416%_
                                     (lambda (_%g137311137329%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137311137329%_))
                                           (let ((_g139174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137311137329%_
                                                     '0))))
                                             (begin
                                               (let ((_g139175_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g139174_)
                                                            (##values-length
                                                             _g139174_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g139175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g139175_)))
                                               (let ((_%target137313137331%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139174_
                                                         0)))
                                                     (_%tl137315137333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139174_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137315137333%_))
                                                     (letrec ((_%loop137316137336%_
                                                               (lambda (_%hd137314137339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137320137341%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137314137339%_))
                             (let ((_%e137317137344%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137314137339%_))))
                               (let ((_%lp-hd137318137347%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137317137344%_)))
                                     (_%lp-tl137319137349%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137317137344%_))))
                                 (_%loop137316137336%_
                                  _%lp-tl137319137349%_
                                  (cons _%lp-hd137318137347%_
                                        _%expr137320137341%_))))
                             (let ((_%expr137321137352%_
                                    (reverse _%expr137320137341%_)))
                               ((lambda (_%L137355%_)
                                  (let ((__tmp139178
                                         (lambda ()
                                           (let* ((_%g137369137376%_
                                                   (lambda (_%g137370137373%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137370137373%_))))
                                                  (_%g137368137402%_
                                                   (lambda (_%g137370137379%_)
                                                     ((lambda (_%L137381%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137291%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137355%_
                                  _%L137290%_))
                               (let ((__tmp139179
                                      (lambda (_%g137391137395%_
                                               _%g137392137397%_
                                               _%g137393137399%_)
                                        (cons (cons _%g137392137397%_
                                                    (cons _%g137391137395%_
                                                          '()))
                                              _%g137393137399%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139179
                                  '()
                                  _%L137355%_
                                  _%L137290%_)))
                             _%L137381%_))
                 _%stx137188%_))
              _%g137370137379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137368137402%_
                                              (map (lambda (_%g137404137406%_)
                                                     (gxc#compile-e__1
                                                      _%self137187%_
                                                      _%g137404137406%_))
                                                   _%L137288%_)))))
                                        (__tmp139176
                                         (gxc#xform-let-locals
                                          (let ((__tmp139177
                                                 (lambda (_%g137408137411%_
                                                          _%g137409137413%_)
                                                   (cons _%g137408137411%_
                                                         _%g137409137413%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139177
                                             '()
                                             _%L137290%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp139178
                                     gxc#current-compile-local-env
                                     __tmp139176)))
                                _%expr137321137352%_))))))
               (_%loop137316137336%_ _%target137313137331%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137310137326%_
                                                      _%g137311137329%_)))))
                                           (_%g137310137326%_
                                            _%g137311137329%_)))))
                               (_%g137309137416%_
                                (map (lambda (_%g137418137420%_)
                                       (gxc#compile-e__1
                                        _%self137187%_
                                        _%g137418137420%_))
                                     (let ((__tmp139180
                                            (lambda (_%g137422137425%_
                                                     _%g137423137427%_)
                                              (cons _%g137422137425%_
                                                    _%g137423137427%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139180
                                        '()
                                        _%L137289%_))))))
                           _%tl137201137241%_
                           _%expr137211137283%_
                           _%hd137212137285%_
                           _%hd137197137231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137205137249%_
                                                   _%target137202137244%_
                                                   '()
                                                   '()))
                                                (_%g137190137223%_
                                                 _%g137191137226%_)))))
                                      (_%g137190137223%_ _%g137191137226%_))))
                              (_%g137190137223%_ _%g137191137226%_))))
                      (_%g137190137223%_ _%g137191137226%_)))))
          (_%g137189137430%_ _%stx137188%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136941%_ _%stx136942%_)
        (let* ((_%g136944136977%_
                (lambda (_%g136945136974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136945136974%_))))
               (_%g136943137184%_
                (lambda (_%g136945136980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136945136980%_))
                      (let ((_%e136950136982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136945136980%_))))
                        (let ((_%hd136951136985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136950136982%_)))
                              (_%tl136952136987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136950136982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136952136987%_))
                              (let ((_%e136953136990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136952136987%_))))
                                (let ((_%hd136954136993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136953136990%_)))
                                      (_%tl136955136995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136953136990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136954136993%_))
                                      (let ((_g139181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136954136993%_
                                                '0))))
                                        (begin
                                          (let ((_g139182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139181_)
                                                       (##values-length
                                                        _g139181_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139182_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139182_)))
                                          (let ((_%target136956136998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139181_ 0)))
                                                (_%tl136958137000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139181_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136958137000%_))
                                                (letrec ((_%loop136959137003%_
                                                          (lambda (_%hd136957137006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136963137008%_
                           _%hd136964137010%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136957137006%_))
                        (let ((_%e136960137013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136957137006%_))))
                          (let ((_%lp-hd136961137016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136960137013%_)))
                                (_%lp-tl136962137018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136960137013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136961137016%_))
                                (let ((_%e136967137021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136961137016%_))))
                                  (let ((_%hd136968137024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136967137021%_)))
                                        (_%tl136969137026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136967137021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136969137026%_))
                                        (let ((_%e136970137029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136969137026%_))))
                                          (let ((_%hd136971137032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136970137029%_)))
                                                (_%tl136972137034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136970137029%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136972137034%_))
                                                (_%loop136959137003%_
                                                 _%lp-tl136962137018%_
                                                 (cons _%hd136971137032%_
                                                       _%expr136963137008%_)
                                                 (cons _%hd136968137024%_
                                                       _%hd136964137010%_))
                                                (_%g136944136977%_
                                                 _%g136945136980%_))))
                                        (_%g136944136977%_
                                         _%g136945136980%_))))
                                (_%g136944136977%_ _%g136945136980%_))))
                        (let ((_%expr136965137037%_
                               (reverse _%expr136963137008%_))
                              (_%hd136966137039%_
                               (reverse _%hd136964137010%_)))
                          ((lambda (_%L137042%_
                                    _%L137043%_
                                    _%L137044%_
                                    _%L137045%_)
                             (let ((__tmp139185
                                    (lambda ()
                                      (let* ((_%g137065137081%_
                                              (lambda (_%g137066137078%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g137066137078%_))))
                                             (_%g137064137163%_
                                              (lambda (_%g137066137084%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g137066137084%_))
                                                    (let ((_g139186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g137066137084%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g139187_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g139186_)
                             (##values-length _g139186_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g139187_ 2)))
                      (error "Context expects 2 values" _g139187_)))
                (let ((_%target137068137086%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139186_ 0)))
                      (_%tl137070137088%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139186_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137070137088%_))
                      (letrec ((_%loop137071137091%_
                                (lambda (_%hd137069137094%_
                                         _%expr137075137096%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd137069137094%_))
                                      (let ((_%e137072137099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd137069137094%_))))
                                        (let ((_%lp-hd137073137102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137072137099%_)))
                                              (_%lp-tl137074137104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137072137099%_))))
                                          (_%loop137071137091%_
                                           _%lp-tl137074137104%_
                                           (cons _%lp-hd137073137102%_
                                                 _%expr137075137096%_))))
                                      (let ((_%expr137076137107%_
                                             (reverse _%expr137075137096%_)))
                                        ((lambda (_%L137110%_)
                                           (let* ((_%g137124137131%_
                                                   (lambda (_%g137125137128%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137125137128%_))))
                                                  (_%g137123137156%_
                                                   (lambda (_%g137125137134%_)
                                                     ((lambda (_%L137136%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137045%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137110%_
                                  _%L137044%_))
                               (let ((__tmp139188
                                      (lambda (_%g137145137149%_
                                               _%g137146137151%_
                                               _%g137147137153%_)
                                        (cons (cons _%g137146137151%_
                                                    (cons _%g137145137149%_
                                                          '()))
                                              _%g137147137153%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139188
                                  '()
                                  _%L137110%_
                                  _%L137044%_)))
                             _%L137136%_))
                 _%stx136942%_))
              _%g137125137134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137123137156%_
                                              (map (lambda (_%g137158137160%_)
                                                     (gxc#compile-e__1
                                                      _%self136941%_
                                                      _%g137158137160%_))
                                                   _%L137042%_))))
                                         _%expr137076137107%_))))))
                        (_%loop137071137091%_ _%target137068137086%_ '()))
                      (_%g137065137081%_ _%g137066137084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g137065137081%_
                                                     _%g137066137084%_)))))
                                        (_%g137064137163%_
                                         (map (lambda (_%g137165137167%_)
                                                (gxc#compile-e__1
                                                 _%self136941%_
                                                 _%g137165137167%_))
                                              (let ((__tmp139189
                                                     (lambda (_%g137169137172%_
                                                              _%g137170137174%_)
                                                       (cons _%g137169137172%_
                                                             _%g137170137174%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139189
                                                 '()
                                                 _%L137043%_)))))))
                                   (__tmp139183
                                    (gxc#xform-let-locals
                                     (let ((__tmp139184
                                            (lambda (_%g137176137179%_
                                                     _%g137177137181%_)
                                              (cons _%g137176137179%_
                                                    _%g137177137181%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139184
                                        '()
                                        _%L137044%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139185
                                gxc#current-compile-local-env
                                __tmp139183)))
                           _%tl136955136995%_
                           _%expr136965137037%_
                           _%hd136966137039%_
                           _%hd136951136985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136959137003%_
                                                   _%target136956136998%_
                                                   '()
                                                   '()))
                                                (_%g136944136977%_
                                                 _%g136945136980%_)))))
                                      (_%g136944136977%_ _%g136945136980%_))))
                              (_%g136944136977%_ _%g136945136980%_))))
                      (_%g136944136977%_ _%g136945136980%_)))))
          (_%g136943137184%_ _%stx136942%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136808%_)
        (letrec ((_%flatten136810%_
                  (lambda (_%maybe-lst136868%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136868%_))
                        (cons _%maybe-lst136868%_ '())
                        (let _%loop136870%_ ((_%rest136872%_
                                              _%maybe-lst136868%_)
                                             (_%result136873%_ '()))
                          (let* ((_%__stx139077139078%_ _%rest136872%_)
                                 (_%g136877136889%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx139077139078%_)))))
                            (let ((_%__kont139079139080%_
                                   (lambda (_%L136927%_ _%L136928%_)
                                     (_%loop136870%_
                                      _%L136927%_
                                      (let ((__tmp139190
                                             (_%flatten136810%_ _%L136928%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136873%_
                                         __tmp139190)))))
                                  (_%__kont139081139082%_
                                   (lambda (_%L136901%_)
                                     (cons _%L136901%_ _%result136873%_)))
                                  (_%__kont139083139084%_
                                   (lambda () _%result136873%_)))
                              (let ((_%g136875136914%_
                                     (lambda ()
                                       (let ((_%L136901%_
                                              _%__stx139077139078%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136901%_))
                                             (_%__kont139081139082%_
                                              _%L136901%_)
                                             (_%__kont139083139084%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx139077139078%_))
                                    (let ((_%e136881136919%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx139077139078%_))))
                                      (let ((_%tl136883136924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136881136919%_)))
                                            (_%hd136882136922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136881136919%_))))
                                        (_%__kont139079139080%_
                                         _%tl136883136924%_
                                         _%hd136882136922%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136875136914%_)))))))))))
          (let _%loop136812%_ ((_%rest136814%_
                                (_%flatten136810%_ _%bindings136808%_))
                               (_%locals136815%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136816136827%_ _%rest136814%_)
                   (_%E136820136831%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136816136827%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136823136856%_
                     (lambda (_%rest136853%_ _%id136854%_)
                       (_%loop136812%_
                        _%rest136853%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136854%_))
                              _%locals136815%_))))
                    (_%K136822136845%_
                     (lambda (_%id136843%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136843%_))
                             _%locals136815%_)))
                    (_%K136821136836%_ (lambda () _%locals136815%_)))
                (let ((_%try-match136818136850%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136816136827%_))
                             (let ((_%id136848%_ _%rest136816136827%_))
                               (_%K136822136845%_ _%id136848%_))
                             (_%K136821136836%_)))))
                  (if (pair? _%rest136816136827%_)
                      (let ((_%tl136825136861%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136816136827%_)))
                            (_%hd136824136859%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136816136827%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136824136859%_))
                            (let ((_%id136864%_ _%hd136824136859%_)
                                  (_%rest136866%_ _%tl136825136861%_))
                              (_%K136823136856%_ _%rest136866%_ _%id136864%_))
                            (_%K136821136836%_)))
                      (_%try-match136818136850%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136760%_ _%stx136761%_)
        (let* ((_%g136763136774%_
                (lambda (_%g136764136771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136764136771%_))))
               (_%g136762136805%_
                (lambda (_%g136764136777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136764136777%_))
                      (let ((_%e136767136779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136764136777%_))))
                        (let ((_%hd136768136782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136767136779%_)))
                              (_%tl136769136784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136767136779%_))))
                          ((lambda (_%L136787%_ _%L136788%_)
                             (let ((_%rands136803%_
                                    (map (lambda (_%g136798136800%_)
                                           (gxc#compile-e__1
                                            _%self136760%_
                                            _%g136798136800%_))
                                         _%L136787%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136788%_ _%rands136803%_)
                                _%stx136761%_)))
                           _%tl136769136784%_
                           _%hd136768136782%_)))
                      (_%g136763136774%_ _%g136764136777%_)))))
          (_%g136762136805%_ _%stx136761%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136690%_ _%stx136691%_)
        (let* ((_%g136693136710%_
                (lambda (_%g136694136707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136694136707%_))))
               (_%g136692136757%_
                (lambda (_%g136694136713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136694136713%_))
                      (let ((_%e136697136715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136694136713%_))))
                        (let ((_%hd136698136718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136697136715%_)))
                              (_%tl136699136720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136697136715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136699136720%_))
                              (let ((_%e136700136723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136699136720%_))))
                                (let ((_%hd136701136726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136700136723%_)))
                                      (_%tl136702136728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136700136723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136702136728%_))
                                      (let ((_%e136703136731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136702136728%_))))
                                        (let ((_%hd136704136734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136703136731%_)))
                                              (_%tl136705136736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136703136731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136705136736%_))
                                              ((lambda (_%L136739%_
                                                        _%L136740%_)
                                                 (let ((_%expr136755%_
                                                        (gxc#compile-e__1
                                                         _%self136690%_
                                                         _%L136739%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136740%_
                                                                (cons _%expr136755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136691%_)))
                                               _%hd136704136734%_
                                               _%hd136701136726%_)
                                              (_%g136693136710%_
                                               _%g136694136713%_))))
                                      (_%g136693136710%_ _%g136694136713%_))))
                              (_%g136693136710%_ _%g136694136713%_))))
                      (_%g136693136710%_ _%g136694136713%_)))))
          (_%g136692136757%_ _%stx136691%_))))))
