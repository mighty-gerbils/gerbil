(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1742237313)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138931%_)
        (let* ((_%self138933%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138935%_
                (let ((__tmp139131 (gxc#stx-car-e _%stx138931%_)))
                  (declare (not safe))
                  (method-ref _%self138933%_ __tmp139131))))
          (if _%$e138935%_
              ((lambda (_%method138938%_)
                 (declare (not safe))
                 (_%method138938%_ _%self138933%_ _%stx138931%_))
               _%$e138935%_)
              (let ((__tmp139133 (gxc#stx-car-e _%stx138931%_))
                    (__tmp139132
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138931%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138933%_
                       __tmp139133
                       __tmp139132))))))
    (define gxc#compile-e__1
      (lambda (_%self138942%_ _%stx138943%_)
        (let ((_%$e138945%_
               (let ((__tmp139134 (gxc#stx-car-e _%stx138943%_)))
                 (declare (not safe))
                 (method-ref _%self138942%_ __tmp139134))))
          (if _%$e138945%_
              ((lambda (_%method138948%_)
                 (declare (not safe))
                 (_%method138948%_ _%self138942%_ _%stx138943%_))
               _%$e138945%_)
              (let ((__tmp139136 (gxc#stx-car-e _%stx138943%_))
                    (__tmp139135
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138943%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138942%_
                       __tmp139136
                       __tmp139135))))))
    (define gxc#compile-e
      (lambda _g139138_
        (let ((_g139137_ (let () (declare (not safe)) (##length _g139138_))))
          (cond ((let () (declare (not safe)) (##fx= _g139137_ 1))
                 (apply gxc#compile-e__0 _g139138_))
                ((let () (declare (not safe)) (##fx= _g139137_ 2))
                 (apply gxc#compile-e__1 _g139138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g139138_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138929%_)
        (let ((__tmp139139
               (car (let () (declare (not safe)) (gx#stx-e _%stx138929%_)))))
          (declare (not safe))
          (gx#stx-e __tmp139139))))
    (define gxc#void-method (lambda (_%self138926%_ _%stx138927%_) '#!void))
    (define gxc#false-method (lambda (_%self138923%_ _%stx138924%_) '#f))
    (define gxc#true-method (lambda (_%self138920%_ _%stx138921%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138917%_ _%stx138918%_) _%stx138918%_))
    (define gxc#::void-expression::t
      (let ((__tmp139140 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp139140
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138914%_
        (apply make-instance gxc#::void-expression::t _%$args138914%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp139141
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
        (__make-promise __tmp139141)))
    (define gxc#::void-special-form::t
      (let ((__tmp139142 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp139142
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138910%_
        (apply make-instance gxc#::void-special-form::t _%$args138910%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp139143
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
        (__make-promise __tmp139143)))
    (define gxc#::void::t
      (let ((__tmp139144
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp139144 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138906%_
        (apply make-instance gxc#::void::t _%$args138906%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp139145
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139145)))
    (define gxc#::false-expression::t
      (let ((__tmp139146 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp139146
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138902%_
        (apply make-instance gxc#::false-expression::t _%$args138902%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp139147
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
        (__make-promise __tmp139147)))
    (define gxc#::false-special-form::t
      (let ((__tmp139148 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp139148
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138898%_
        (apply make-instance gxc#::false-special-form::t _%$args138898%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp139149
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
        (__make-promise __tmp139149)))
    (define gxc#::false::t
      (let ((__tmp139150
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp139150 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138894%_
        (apply make-instance gxc#::false::t _%$args138894%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp139151
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139151)))
    (define gxc#::identity-expression::t
      (let ((__tmp139152 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp139152
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138890%_
        (apply make-instance gxc#::identity-expression::t _%$args138890%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp139153
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
        (__make-promise __tmp139153)))
    (define gxc#::identity-special-form::t
      (let ((__tmp139154 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp139154
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138886%_
        (apply make-instance gxc#::identity-special-form::t _%$args138886%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp139155
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
        (__make-promise __tmp139155)))
    (define gxc#::identity::t
      (let ((__tmp139156
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp139156
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138882%_
        (apply make-instance gxc#::identity::t _%$args138882%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp139157
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp139157)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp139158 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp139158
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138878%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138878%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp139159
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
        (__make-promise __tmp139159)))
    (define gxc#::basic-xform::t
      (let ((__tmp139160
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp139160
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138874%_
        (apply make-instance gxc#::basic-xform::t _%$args138874%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp139161
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
        (__make-promise __tmp139161)))
    (define gxc#apply-begin%
      (lambda (_%self138830%_ _%stx138831%_)
        (let* ((_%g138833138843%_
                (lambda (_%g138834138840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138834138840%_))))
               (_%g138832138870%_
                (lambda (_%g138834138846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138834138846%_))
                      (let ((_%e138836138848%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138834138846%_))))
                        (let ((_%hd138837138851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138836138848%_)))
                              (_%tl138838138853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138836138848%_))))
                          ((lambda (_%L138856%_)
                             (for-each
                              (lambda (_%g138865138867%_)
                                (gxc#compile-e__1
                                 _%self138830%_
                                 _%g138865138867%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138856%_))))
                           _%tl138838138853%_)))
                      (_%g138833138843%_ _%g138834138846%_)))))
          (_%g138832138870%_ _%stx138831%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138791%_ _%stx138792%_)
        (let* ((_%g138794138804%_
                (lambda (_%g138795138801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138795138801%_))))
               (_%g138793138827%_
                (lambda (_%g138795138807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138795138807%_))
                      (let ((_%e138797138809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138795138807%_))))
                        (let ((_%hd138798138812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138797138809%_)))
                              (_%tl138799138814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138797138809%_))))
                          ((lambda (_%L138817%_)
                             (gxc#compile-e__1
                              _%self138791%_
                              (last _%L138817%_)))
                           _%tl138799138814%_)))
                      (_%g138794138804%_ _%g138795138807%_)))))
          (_%g138793138827%_ _%stx138792%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138787%_ _%stx138788%_)
        (let ((__tmp139164
               (lambda () (gxc#apply-begin% _%self138787%_ _%stx138788%_)))
              (__tmp139162
               (let ((__tmp139163
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp139163 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp139164
           gx#current-expander-phi
           __tmp139162))))
    (define gxc#apply-module%
      (lambda (_%self138726%_ _%stx138727%_)
        (let* ((_%g138729138743%_
                (lambda (_%g138730138740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138730138740%_))))
               (_%g138728138784%_
                (lambda (_%g138730138746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138730138746%_))
                      (let ((_%e138733138748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138730138746%_))))
                        (let ((_%hd138734138751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138733138748%_)))
                              (_%tl138735138753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138733138748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138735138753%_))
                              (let ((_%e138736138756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138735138753%_))))
                                (let ((_%hd138737138759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138736138756%_)))
                                      (_%tl138738138761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138736138756%_))))
                                  ((lambda (_%L138764%_ _%L138765%_)
                                     (let* ((_%ctx138778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138765%_)))
                                            (_%ctx-stx138780%_
                                             (##structure-ref
                                              _%ctx138778%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp139165
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138726%_
                                                _%ctx-stx138780%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139165
                                        gx#current-expander-context
                                        _%ctx138778%_)))
                                   _%tl138738138761%_
                                   _%hd138737138759%_)))
                              (_%g138729138743%_ _%g138730138746%_))))
                      (_%g138729138743%_ _%g138730138746%_)))))
          (_%g138728138784%_ _%stx138727%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138658%_ _%stx138659%_)
        (let* ((_%g138661138678%_
                (lambda (_%g138662138675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138662138675%_))))
               (_%g138660138723%_
                (lambda (_%g138662138681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138662138681%_))
                      (let ((_%e138665138683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138662138681%_))))
                        (let ((_%hd138666138686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138665138683%_)))
                              (_%tl138667138688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138665138683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138667138688%_))
                              (let ((_%e138668138691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138667138688%_))))
                                (let ((_%hd138669138694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138668138691%_)))
                                      (_%tl138670138696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138668138691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138670138696%_))
                                      (let ((_%e138671138699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138670138696%_))))
                                        (let ((_%hd138672138702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138671138699%_)))
                                              (_%tl138673138704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138671138699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138673138704%_))
                                              ((lambda (_%L138707%_
                                                        _%L138708%_)
                                                 (gxc#compile-e__1
                                                  _%self138658%_
                                                  _%L138707%_))
                                               _%hd138672138702%_
                                               _%hd138669138694%_)
                                              (_%g138661138678%_
                                               _%g138662138681%_))))
                                      (_%g138661138678%_ _%g138662138681%_))))
                              (_%g138661138678%_ _%g138662138681%_))))
                      (_%g138661138678%_ _%g138662138681%_)))))
          (_%g138660138723%_ _%stx138659%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138590%_ _%stx138591%_)
        (let* ((_%g138593138610%_
                (lambda (_%g138594138607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138594138607%_))))
               (_%g138592138655%_
                (lambda (_%g138594138613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138594138613%_))
                      (let ((_%e138597138615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138594138613%_))))
                        (let ((_%hd138598138618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138597138615%_)))
                              (_%tl138599138620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138597138615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138599138620%_))
                              (let ((_%e138600138623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138599138620%_))))
                                (let ((_%hd138601138626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138600138623%_)))
                                      (_%tl138602138628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138600138623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138602138628%_))
                                      (let ((_%e138603138631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138602138628%_))))
                                        (let ((_%hd138604138634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138603138631%_)))
                                              (_%tl138605138636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138603138631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138605138636%_))
                                              ((lambda (_%L138639%_
                                                        _%L138640%_)
                                                 (gxc#compile-e__1
                                                  _%self138590%_
                                                  _%L138639%_))
                                               _%hd138604138634%_
                                               _%hd138601138626%_)
                                              (_%g138593138610%_
                                               _%g138594138613%_))))
                                      (_%g138593138610%_ _%g138594138613%_))))
                              (_%g138593138610%_ _%g138594138613%_))))
                      (_%g138593138610%_ _%g138594138613%_)))))
          (_%g138592138655%_ _%stx138591%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138521%_ _%stx138522%_)
        (let* ((_%g138524138541%_
                (lambda (_%g138525138538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138525138538%_))))
               (_%g138523138587%_
                (lambda (_%g138525138544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138525138544%_))
                      (let ((_%e138528138546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138525138544%_))))
                        (let ((_%hd138529138549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138528138546%_)))
                              (_%tl138530138551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138528138546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138530138551%_))
                              (let ((_%e138531138554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138530138551%_))))
                                (let ((_%hd138532138557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138531138554%_)))
                                      (_%tl138533138559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138531138554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138533138559%_))
                                      (let ((_%e138534138562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138533138559%_))))
                                        (let ((_%hd138535138565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138534138562%_)))
                                              (_%tl138536138567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138534138562%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138536138567%_))
                                              ((lambda (_%L138570%_
                                                        _%L138571%_)
                                                 (let ((__tmp139168
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138521%_
                                                           _%L138570%_)))
                                                       (__tmp139166
                                                        (let ((__tmp139167
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139167 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139168
                                                    gx#current-expander-phi
                                                    __tmp139166)))
                                               _%hd138535138565%_
                                               _%hd138532138557%_)
                                              (_%g138524138541%_
                                               _%g138525138544%_))))
                                      (_%g138524138541%_ _%g138525138544%_))))
                              (_%g138524138541%_ _%g138525138544%_))))
                      (_%g138524138541%_ _%g138525138544%_)))))
          (_%g138523138587%_ _%stx138522%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138453%_ _%stx138454%_)
        (let* ((_%g138456138473%_
                (lambda (_%g138457138470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138457138470%_))))
               (_%g138455138518%_
                (lambda (_%g138457138476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138457138476%_))
                      (let ((_%e138460138478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138457138476%_))))
                        (let ((_%hd138461138481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138460138478%_)))
                              (_%tl138462138483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138460138478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138462138483%_))
                              (let ((_%e138463138486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138462138483%_))))
                                (let ((_%hd138464138489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138463138486%_)))
                                      (_%tl138465138491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138463138486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138465138491%_))
                                      (let ((_%e138466138494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138465138491%_))))
                                        (let ((_%hd138467138497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138466138494%_)))
                                              (_%tl138468138499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138466138494%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138468138499%_))
                                              ((lambda (_%L138502%_
                                                        _%L138503%_)
                                                 (gxc#compile-e__1
                                                  _%self138453%_
                                                  _%L138502%_))
                                               _%hd138467138497%_
                                               _%hd138464138489%_)
                                              (_%g138456138473%_
                                               _%g138457138476%_))))
                                      (_%g138456138473%_ _%g138457138476%_))))
                              (_%g138456138473%_ _%g138457138476%_))))
                      (_%g138456138473%_ _%g138457138476%_)))))
          (_%g138455138518%_ _%stx138454%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138335%_ _%stx138336%_)
        (let* ((_%g138338138366%_
                (lambda (_%g138339138363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138339138363%_))))
               (_%g138337138450%_
                (lambda (_%g138339138369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138339138369%_))
                      (let ((_%e138342138371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138339138369%_))))
                        (let ((_%hd138343138374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138342138371%_)))
                              (_%tl138344138376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138342138371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138344138376%_))
                              (let ((_g139169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138344138376%_
                                        '0))))
                                (begin
                                  (let ((_g139170_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139169_)
                                               (##values-length _g139169_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139170_ 2)))
                                        (error "Context expects 2 values"
                                               _g139170_)))
                                  (let ((_%target138345138379%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139169_ 0)))
                                        (_%tl138347138381%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139169_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138347138381%_))
                                        (letrec ((_%loop138348138384%_
                                                  (lambda (_%hd138346138387%_
                                                           _%body138352138389%_
                                                           _%hd138353138391%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138346138387%_))
                                                        (let ((_%e138349138394%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138346138387%_))))
                  (let ((_%lp-hd138350138397%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138349138394%_)))
                        (_%lp-tl138351138399%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138349138394%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138350138397%_))
                        (let ((_%e138356138402%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138350138397%_))))
                          (let ((_%hd138357138405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138356138402%_)))
                                (_%tl138358138407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138356138402%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138358138407%_))
                                (let ((_%e138359138410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138358138407%_))))
                                  (let ((_%hd138360138413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138359138410%_)))
                                        (_%tl138361138415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138359138410%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138361138415%_))
                                        (_%loop138348138384%_
                                         _%lp-tl138351138399%_
                                         (cons _%hd138360138413%_
                                               _%body138352138389%_)
                                         (cons _%hd138357138405%_
                                               _%hd138353138391%_))
                                        (_%g138338138366%_
                                         _%g138339138369%_))))
                                (_%g138338138366%_ _%g138339138369%_))))
                        (_%g138338138366%_ _%g138339138369%_))))
                (let ((_%body138354138418%_ (reverse _%body138352138389%_))
                      (_%hd138355138420%_ (reverse _%hd138353138391%_)))
                  ((lambda (_%L138423%_ _%L138424%_)
                     (for-each
                      (lambda (_%g138438138440%_)
                        (gxc#compile-e__1 _%self138335%_ _%g138438138440%_))
                      (let ((__tmp139171
                             (lambda (_%g138442138445%_ _%g138443138447%_)
                               (cons _%g138442138445%_ _%g138443138447%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139171 '() _%L138423%_))))
                   _%body138354138418%_
                   _%hd138355138420%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138348138384%_
                                           _%target138345138379%_
                                           '()
                                           '()))
                                        (_%g138338138366%_
                                         _%g138339138369%_)))))
                              (_%g138338138366%_ _%g138339138369%_))))
                      (_%g138338138366%_ _%g138339138369%_)))))
          (_%g138337138450%_ _%stx138336%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self138188%_ _%stx138189%_)
        (let* ((_%g138191138226%_
                (lambda (_%g138192138223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138192138223%_))))
               (_%g138190138332%_
                (lambda (_%g138192138229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138192138229%_))
                      (let ((_%e138196138231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138192138229%_))))
                        (let ((_%hd138197138234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138196138231%_)))
                              (_%tl138198138236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138196138231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138198138236%_))
                              (let ((_%e138199138239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138198138236%_))))
                                (let ((_%hd138200138242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138199138239%_)))
                                      (_%tl138201138244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138199138239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd138200138242%_))
                                      (let ((_g139172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd138200138242%_
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
                                          (let ((_%target138202138247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139172_ 0)))
                                                (_%tl138204138249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139172_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138204138249%_))
                                                (letrec ((_%loop138205138252%_
                                                          (lambda (_%hd138203138255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138209138257%_
                           _%hd138210138259%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138203138255%_))
                        (let ((_%e138206138262%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138203138255%_))))
                          (let ((_%lp-hd138207138265%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138206138262%_)))
                                (_%lp-tl138208138267%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138206138262%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd138207138265%_))
                                (let ((_%e138216138270%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd138207138265%_))))
                                  (let ((_%hd138217138273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138216138270%_)))
                                        (_%tl138218138275%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138216138270%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138218138275%_))
                                        (let ((_%e138219138278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138218138275%_))))
                                          (let ((_%hd138220138281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138219138278%_)))
                                                (_%tl138221138283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138219138278%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138221138283%_))
                                                (_%loop138205138252%_
                                                 _%lp-tl138208138267%_
                                                 (cons _%hd138220138281%_
                                                       _%expr138209138257%_)
                                                 (cons _%hd138217138273%_
                                                       _%hd138210138259%_))
                                                (_%g138191138226%_
                                                 _%g138192138229%_))))
                                        (_%g138191138226%_
                                         _%g138192138229%_))))
                                (_%g138191138226%_ _%g138192138229%_))))
                        (let ((_%expr138211138286%_
                               (reverse _%expr138209138257%_))
                              (_%hd138212138288%_
                               (reverse _%hd138210138259%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138201138244%_))
                              (let ((_%e138213138291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138201138244%_))))
                                (let ((_%hd138214138294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138213138291%_)))
                                      (_%tl138215138296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138213138291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138215138296%_))
                                      ((lambda (_%L138299%_
                                                _%L138300%_
                                                _%L138301%_)
                                         (for-each
                                          (lambda (_%g138320138322%_)
                                            (gxc#compile-e__1
                                             _%self138188%_
                                             _%g138320138322%_))
                                          (let ((__tmp139175
                                                 (lambda (_%g138324138327%_
                                                          _%g138325138329%_)
                                                   (cons _%g138324138327%_
                                                         _%g138325138329%_)))
                                                (__tmp139174
                                                 (cons _%L138299%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139175
                                             __tmp139174
                                             _%L138300%_))))
                                       _%hd138214138294%_
                                       _%expr138211138286%_
                                       _%hd138212138288%_)
                                      (_%g138191138226%_ _%g138192138229%_))))
                              (_%g138191138226%_ _%g138192138229%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop138205138252%_
                                                   _%target138202138247%_
                                                   '()
                                                   '()))
                                                (_%g138191138226%_
                                                 _%g138192138229%_)))))
                                      (_%g138191138226%_ _%g138192138229%_))))
                              (_%g138191138226%_ _%g138192138229%_))))
                      (_%g138191138226%_ _%g138192138229%_)))))
          (_%g138190138332%_ _%stx138189%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self138133%_ _%stx138134%_)
        (let* ((_%g138136138150%_
                (lambda (_%g138137138147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138137138147%_))))
               (_%g138135138185%_
                (lambda (_%g138137138153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138137138153%_))
                      (let ((_%e138140138155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138137138153%_))))
                        (let ((_%hd138141138158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138140138155%_)))
                              (_%tl138142138160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138140138155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138142138160%_))
                              (let ((_%e138143138163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138142138160%_))))
                                (let ((_%hd138144138166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138143138163%_)))
                                      (_%tl138145138168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138143138163%_))))
                                  ((lambda (_%L138171%_ _%L138172%_)
                                     (gxc#compile-e__1
                                      _%self138133%_
                                      (last _%L138171%_)))
                                   _%tl138145138168%_
                                   _%hd138144138166%_)))
                              (_%g138136138150%_ _%g138137138153%_))))
                      (_%g138136138150%_ _%g138137138153%_)))))
          (_%g138135138185%_ _%stx138134%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self138065%_ _%stx138066%_)
        (let* ((_%g138068138085%_
                (lambda (_%g138069138082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138069138082%_))))
               (_%g138067138130%_
                (lambda (_%g138069138088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138069138088%_))
                      (let ((_%e138072138090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138069138088%_))))
                        (let ((_%hd138073138093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138072138090%_)))
                              (_%tl138074138095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138072138090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138074138095%_))
                              (let ((_%e138075138098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138074138095%_))))
                                (let ((_%hd138076138101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138075138098%_)))
                                      (_%tl138077138103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138075138098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138077138103%_))
                                      (let ((_%e138078138106%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138077138103%_))))
                                        (let ((_%hd138079138109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138078138106%_)))
                                              (_%tl138080138111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138078138106%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138080138111%_))
                                              ((lambda (_%L138114%_
                                                        _%L138115%_)
                                                 (gxc#compile-e__1
                                                  _%self138065%_
                                                  _%L138114%_))
                                               _%hd138079138109%_
                                               _%hd138076138101%_)
                                              (_%g138068138085%_
                                               _%g138069138088%_))))
                                      (_%g138068138085%_ _%g138069138088%_))))
                              (_%g138068138085%_ _%g138069138088%_))))
                      (_%g138068138085%_ _%g138069138088%_)))))
          (_%g138067138130%_ _%stx138066%_))))
    (define gxc#apply-operands
      (lambda (_%self137978%_ _%stx137979%_)
        (let* ((_%g137981138000%_
                (lambda (_%g137982137997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137982137997%_))))
               (_%g137980138062%_
                (lambda (_%g137982138003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137982138003%_))
                      (let ((_%e137984138005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137982138003%_))))
                        (let ((_%hd137985138008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137984138005%_)))
                              (_%tl137986138010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137984138005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137986138010%_))
                              (let ((_g139176_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137986138010%_
                                        '0))))
                                (begin
                                  (let ((_g139177_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139176_)
                                               (##values-length _g139176_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139177_ 2)))
                                        (error "Context expects 2 values"
                                               _g139177_)))
                                  (let ((_%target137987138013%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139176_ 0)))
                                        (_%tl137989138015%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139176_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137989138015%_))
                                        (letrec ((_%loop137990138018%_
                                                  (lambda (_%hd137988138021%_
                                                           _%rands137994138023%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137988138021%_))
                                                        (let ((_%e137991138026%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137988138021%_))))
                  (let ((_%lp-hd137992138029%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137991138026%_)))
                        (_%lp-tl137993138031%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137991138026%_))))
                    (_%loop137990138018%_
                     _%lp-tl137993138031%_
                     (cons _%lp-hd137992138029%_ _%rands137994138023%_))))
                (let ((_%rands137995138034%_ (reverse _%rands137994138023%_)))
                  ((lambda (_%L138037%_)
                     (for-each
                      (lambda (_%g138050138052%_)
                        (gxc#compile-e__1 _%self137978%_ _%g138050138052%_))
                      (let ((__tmp139178
                             (lambda (_%g138054138057%_ _%g138055138059%_)
                               (cons _%g138054138057%_ _%g138055138059%_))))
                        (declare (not safe))
                        (__foldr1 __tmp139178 '() _%L138037%_))))
                   _%rands137995138034%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137990138018%_
                                           _%target137987138013%_
                                           '()))
                                        (_%g137981138000%_
                                         _%g137982138003%_)))))
                              (_%g137981138000%_ _%g137982138003%_))))
                      (_%g137981138000%_ _%g137982138003%_)))))
          (_%g137980138062%_ _%stx137979%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137975%_ _%src-stx137976%_)
        (let ((__tmp139179
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137976%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137975%_ __tmp139179))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137971%_ _%src-stx137972%_ _%ctx137973%_)
        (gxc#compile-e__1
         _%ctx137973%_
         (gxc#xform-wrap-source _%stx137971%_ _%src-stx137972%_))))
    (define gxc#xform-begin%
      (lambda (_%self137926%_ _%stx137927%_)
        (let* ((_%g137929137939%_
                (lambda (_%g137930137936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137930137936%_))))
               (_%g137928137968%_
                (lambda (_%g137930137942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137930137942%_))
                      (let ((_%e137932137944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137930137942%_))))
                        (let ((_%hd137933137947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137932137944%_)))
                              (_%tl137934137949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137932137944%_))))
                          ((lambda (_%L137952%_)
                             (let ((_%forms137966%_
                                    (map (lambda (_%g137961137963%_)
                                           (gxc#compile-e__1
                                            _%self137926%_
                                            _%g137961137963%_))
                                         _%L137952%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137966%_)
                                _%stx137927%_)))
                           _%tl137934137949%_)))
                      (_%g137929137939%_ _%g137930137942%_)))))
          (_%g137928137968%_ _%stx137927%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137880%_ _%stx137881%_)
        (let* ((_%g137883137893%_
                (lambda (_%g137884137890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137884137890%_))))
               (_%g137882137923%_
                (lambda (_%g137884137896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137884137896%_))
                      (let ((_%e137886137898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137884137896%_))))
                        (let ((_%hd137887137901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137886137898%_)))
                              (_%tl137888137903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137886137898%_))))
                          ((lambda (_%L137906%_)
                             (let ((__tmp139182
                                    (lambda ()
                                      (let ((_%forms137921%_
                                             (map (lambda (_%g137916137918%_)
                                                    (gxc#compile-e__1
                                                     _%self137880%_
                                                     _%g137916137918%_))
                                                  _%L137906%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137921%_)
                                         _%stx137881%_))))
                                   (__tmp139180
                                    (let ((__tmp139181
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp139181 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139182
                                gx#current-expander-phi
                                __tmp139180)))
                           _%tl137888137903%_)))
                      (_%g137883137893%_ _%g137884137896%_)))))
          (_%g137882137923%_ _%stx137881%_))))
    (define gxc#xform-module%
      (lambda (_%self137817%_ _%stx137818%_)
        (let* ((_%g137820137834%_
                (lambda (_%g137821137831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137821137831%_))))
               (_%g137819137877%_
                (lambda (_%g137821137837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137821137837%_))
                      (let ((_%e137824137839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137821137837%_))))
                        (let ((_%hd137825137842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137824137839%_)))
                              (_%tl137826137844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137824137839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137826137844%_))
                              (let ((_%e137827137847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137826137844%_))))
                                (let ((_%hd137828137850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137827137847%_)))
                                      (_%tl137829137852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137827137847%_))))
                                  ((lambda (_%L137855%_ _%L137856%_)
                                     (let* ((_%ctx137869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137856%_)))
                                            (_%code137871%_
                                             (##structure-ref
                                              _%ctx137869%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137874%_
                                             (let ((__tmp139183
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137817%_
                                                       _%code137871%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp139183
                                                gx#current-expander-context
                                                _%ctx137869%_))))
                                       (##structure-set!
                                        _%ctx137869%_
                                        _%code137874%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137856%_
                                                    (cons _%code137874%_ '())))
                                        _%stx137818%_)))
                                   _%tl137829137852%_
                                   _%hd137828137850%_)))
                              (_%g137820137834%_ _%g137821137837%_))))
                      (_%g137820137834%_ _%g137821137837%_)))))
          (_%g137819137877%_ _%stx137818%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137747%_ _%stx137748%_)
        (let* ((_%g137750137767%_
                (lambda (_%g137751137764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137751137764%_))))
               (_%g137749137814%_
                (lambda (_%g137751137770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137751137770%_))
                      (let ((_%e137754137772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137751137770%_))))
                        (let ((_%hd137755137775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137754137772%_)))
                              (_%tl137756137777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137754137772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137756137777%_))
                              (let ((_%e137757137780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137756137777%_))))
                                (let ((_%hd137758137783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137757137780%_)))
                                      (_%tl137759137785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137757137780%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137759137785%_))
                                      (let ((_%e137760137788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137759137785%_))))
                                        (let ((_%hd137761137791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137760137788%_)))
                                              (_%tl137762137793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137760137788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137762137793%_))
                                              ((lambda (_%L137796%_
                                                        _%L137797%_)
                                                 (let ((_%expr137812%_
                                                        (gxc#compile-e__1
                                                         _%self137747%_
                                                         _%L137796%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137797%_
                                                                (cons _%expr137812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137748%_)))
                                               _%hd137761137791%_
                                               _%hd137758137783%_)
                                              (_%g137750137767%_
                                               _%g137751137770%_))))
                                      (_%g137750137767%_ _%g137751137770%_))))
                              (_%g137750137767%_ _%g137751137770%_))))
                      (_%g137750137767%_ _%g137751137770%_)))))
          (_%g137749137814%_ _%stx137748%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137676%_ _%stx137677%_)
        (let* ((_%g137679137696%_
                (lambda (_%g137680137693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137680137693%_))))
               (_%g137678137744%_
                (lambda (_%g137680137699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137680137699%_))
                      (let ((_%e137683137701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137680137699%_))))
                        (let ((_%hd137684137704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137683137701%_)))
                              (_%tl137685137706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137683137701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137685137706%_))
                              (let ((_%e137686137709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137685137706%_))))
                                (let ((_%hd137687137712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137686137709%_)))
                                      (_%tl137688137714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137686137709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137688137714%_))
                                      (let ((_%e137689137717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137688137714%_))))
                                        (let ((_%hd137690137720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137689137717%_)))
                                              (_%tl137691137722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137689137717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137691137722%_))
                                              ((lambda (_%L137725%_
                                                        _%L137726%_)
                                                 (let ((__tmp139186
                                                        (lambda ()
                                                          (let ((_%expr137742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137676%_ _%L137725%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137726%_ (cons _%expr137742%_ '())))
                     _%stx137677%_))))
               (__tmp139184
                (let ((__tmp139185
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp139185 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp139186
                                                    gx#current-expander-phi
                                                    __tmp139184)))
                                               _%hd137690137720%_
                                               _%hd137687137712%_)
                                              (_%g137679137696%_
                                               _%g137680137699%_))))
                                      (_%g137679137696%_ _%g137680137699%_))))
                              (_%g137679137696%_ _%g137680137699%_))))
                      (_%g137679137696%_ _%g137680137699%_)))))
          (_%g137678137744%_ _%stx137677%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137606%_ _%stx137607%_)
        (let* ((_%g137609137626%_
                (lambda (_%g137610137623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137610137623%_))))
               (_%g137608137673%_
                (lambda (_%g137610137629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137610137629%_))
                      (let ((_%e137613137631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137610137629%_))))
                        (let ((_%hd137614137634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137613137631%_)))
                              (_%tl137615137636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137613137631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137615137636%_))
                              (let ((_%e137616137639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137615137636%_))))
                                (let ((_%hd137617137642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137616137639%_)))
                                      (_%tl137618137644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137616137639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137618137644%_))
                                      (let ((_%e137619137647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137618137644%_))))
                                        (let ((_%hd137620137650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137619137647%_)))
                                              (_%tl137621137652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137619137647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137621137652%_))
                                              ((lambda (_%L137655%_
                                                        _%L137656%_)
                                                 (let ((_%expr137671%_
                                                        (gxc#compile-e__1
                                                         _%self137606%_
                                                         _%L137655%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137656%_
                                                                (cons _%expr137671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137607%_)))
                                               _%hd137620137650%_
                                               _%hd137617137642%_)
                                              (_%g137609137626%_
                                               _%g137610137629%_))))
                                      (_%g137609137626%_ _%g137610137629%_))))
                              (_%g137609137626%_ _%g137610137629%_))))
                      (_%g137609137626%_ _%g137610137629%_)))))
          (_%g137608137673%_ _%stx137607%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137544%_ _%stx137545%_)
        (let* ((_%g137547137561%_
                (lambda (_%g137548137558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137548137558%_))))
               (_%g137546137603%_
                (lambda (_%g137548137564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137548137564%_))
                      (let ((_%e137551137566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137548137564%_))))
                        (let ((_%hd137552137569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137551137566%_)))
                              (_%tl137553137571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137551137566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137553137571%_))
                              (let ((_%e137554137574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137553137571%_))))
                                (let ((_%hd137555137577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137554137574%_)))
                                      (_%tl137556137579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137554137574%_))))
                                  ((lambda (_%L137582%_ _%L137583%_)
                                     (let ((__tmp139188
                                            (lambda ()
                                              (let ((_%body137601%_
                                                     (map (lambda (_%g137596137598%_)
                                                            (gxc#compile-e__1
                                                             _%self137544%_
                                                             _%g137596137598%_))
                                                          _%L137582%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137583%_
                                                             _%body137601%_))
                                                 _%stx137545%_))))
                                           (__tmp139187
                                            (gxc#xform-let-locals
                                             _%L137583%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp139188
                                        gxc#current-compile-local-env
                                        __tmp139187)))
                                   _%tl137556137579%_
                                   _%hd137555137577%_)))
                              (_%g137547137561%_ _%g137548137564%_))))
                      (_%g137547137561%_ _%g137548137564%_)))))
          (_%g137546137603%_ _%stx137545%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137452%_ _%stx137453%_)
        (letrec ((_%clause-e137455%_
                  (lambda (_%clause137496%_)
                    (let* ((_%g137498137509%_
                            (lambda (_%g137499137506%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137499137506%_))))
                           (_%g137497137541%_
                            (lambda (_%g137499137512%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137499137512%_))
                                  (let ((_%e137502137514%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137499137512%_))))
                                    (let ((_%hd137503137517%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137502137514%_)))
                                          (_%tl137504137519%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137502137514%_))))
                                      ((lambda (_%L137522%_ _%L137523%_)
                                         (let ((__tmp139190
                                                (lambda ()
                                                  (let ((_%body137539%_
                                                         (map (lambda (_%g137534137536%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137452%_
                         _%g137534137536%_))
                      _%L137522%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137523%_
                                                          _%body137539%_))))
                                               (__tmp139189
                                                (gxc#xform-let-locals
                                                 _%L137523%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp139190
                                            gxc#current-compile-local-env
                                            __tmp139189)))
                                       _%tl137504137519%_
                                       _%hd137503137517%_)))
                                  (_%g137498137509%_ _%g137499137512%_)))))
                      (_%g137497137541%_ _%clause137496%_)))))
          (let* ((_%g137457137467%_
                  (lambda (_%g137458137464%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137458137464%_))))
                 (_%g137456137493%_
                  (lambda (_%g137458137470%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137458137470%_))
                        (let ((_%e137460137472%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137458137470%_))))
                          (let ((_%hd137461137475%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137460137472%_)))
                                (_%tl137462137477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137460137472%_))))
                            ((lambda (_%L137480%_)
                               (let ((_%clauses137491%_
                                      (map _%clause-e137455%_ _%L137480%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137491%_)
                                  _%stx137453%_)))
                             _%tl137462137477%_)))
                        (_%g137457137467%_ _%g137458137470%_)))))
            (_%g137456137493%_ _%stx137453%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self137206%_ _%stx137207%_)
        (let* ((_%g137209137242%_
                (lambda (_%g137210137239%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137210137239%_))))
               (_%g137208137449%_
                (lambda (_%g137210137245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137210137245%_))
                      (let ((_%e137215137247%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137210137245%_))))
                        (let ((_%hd137216137250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137215137247%_)))
                              (_%tl137217137252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137215137247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137217137252%_))
                              (let ((_%e137218137255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137217137252%_))))
                                (let ((_%hd137219137258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137218137255%_)))
                                      (_%tl137220137260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137218137255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137219137258%_))
                                      (let ((_g139191_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137219137258%_
                                                '0))))
                                        (begin
                                          (let ((_g139192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139191_)
                                                       (##values-length
                                                        _g139191_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139192_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139192_)))
                                          (let ((_%target137221137263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139191_ 0)))
                                                (_%tl137223137265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139191_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137223137265%_))
                                                (letrec ((_%loop137224137268%_
                                                          (lambda (_%hd137222137271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137228137273%_
                           _%hd137229137275%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137222137271%_))
                        (let ((_%e137225137278%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137222137271%_))))
                          (let ((_%lp-hd137226137281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137225137278%_)))
                                (_%lp-tl137227137283%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137225137278%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137226137281%_))
                                (let ((_%e137232137286%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137226137281%_))))
                                  (let ((_%hd137233137289%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137232137286%_)))
                                        (_%tl137234137291%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137232137286%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137234137291%_))
                                        (let ((_%e137235137294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137234137291%_))))
                                          (let ((_%hd137236137297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137235137294%_)))
                                                (_%tl137237137299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137235137294%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137237137299%_))
                                                (_%loop137224137268%_
                                                 _%lp-tl137227137283%_
                                                 (cons _%hd137236137297%_
                                                       _%expr137228137273%_)
                                                 (cons _%hd137233137289%_
                                                       _%hd137229137275%_))
                                                (_%g137209137242%_
                                                 _%g137210137245%_))))
                                        (_%g137209137242%_
                                         _%g137210137245%_))))
                                (_%g137209137242%_ _%g137210137245%_))))
                        (let ((_%expr137230137302%_
                               (reverse _%expr137228137273%_))
                              (_%hd137231137304%_
                               (reverse _%hd137229137275%_)))
                          ((lambda (_%L137307%_
                                    _%L137308%_
                                    _%L137309%_
                                    _%L137310%_)
                             (let* ((_%g137329137345%_
                                     (lambda (_%g137330137342%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137330137342%_))))
                                    (_%g137328137435%_
                                     (lambda (_%g137330137348%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137330137348%_))
                                           (let ((_g139193_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137330137348%_
                                                     '0))))
                                             (begin
                                               (let ((_g139194_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g139193_)
                                                            (##values-length
                                                             _g139193_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g139194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g139194_)))
                                               (let ((_%target137332137350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139193_
                                                         0)))
                                                     (_%tl137334137352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g139193_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137334137352%_))
                                                     (letrec ((_%loop137335137355%_
                                                               (lambda (_%hd137333137358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137339137360%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137333137358%_))
                             (let ((_%e137336137363%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137333137358%_))))
                               (let ((_%lp-hd137337137366%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137336137363%_)))
                                     (_%lp-tl137338137368%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137336137363%_))))
                                 (_%loop137335137355%_
                                  _%lp-tl137338137368%_
                                  (cons _%lp-hd137337137366%_
                                        _%expr137339137360%_))))
                             (let ((_%expr137340137371%_
                                    (reverse _%expr137339137360%_)))
                               ((lambda (_%L137374%_)
                                  (let ((__tmp139197
                                         (lambda ()
                                           (let* ((_%g137388137395%_
                                                   (lambda (_%g137389137392%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137389137392%_))))
                                                  (_%g137387137421%_
                                                   (lambda (_%g137389137398%_)
                                                     ((lambda (_%L137400%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137310%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137374%_
                                  _%L137309%_))
                               (let ((__tmp139198
                                      (lambda (_%g137410137414%_
                                               _%g137411137416%_
                                               _%g137412137418%_)
                                        (cons (cons _%g137411137416%_
                                                    (cons _%g137410137414%_
                                                          '()))
                                              _%g137412137418%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139198
                                  '()
                                  _%L137374%_
                                  _%L137309%_)))
                             _%L137400%_))
                 _%stx137207%_))
              _%g137389137398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137387137421%_
                                              (map (lambda (_%g137423137425%_)
                                                     (gxc#compile-e__1
                                                      _%self137206%_
                                                      _%g137423137425%_))
                                                   _%L137307%_)))))
                                        (__tmp139195
                                         (gxc#xform-let-locals
                                          (let ((__tmp139196
                                                 (lambda (_%g137427137430%_
                                                          _%g137428137432%_)
                                                   (cons _%g137427137430%_
                                                         _%g137428137432%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp139196
                                             '()
                                             _%L137309%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp139197
                                     gxc#current-compile-local-env
                                     __tmp139195)))
                                _%expr137340137371%_))))))
               (_%loop137335137355%_ _%target137332137350%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137329137345%_
                                                      _%g137330137348%_)))))
                                           (_%g137329137345%_
                                            _%g137330137348%_)))))
                               (_%g137328137435%_
                                (map (lambda (_%g137437137439%_)
                                       (gxc#compile-e__1
                                        _%self137206%_
                                        _%g137437137439%_))
                                     (let ((__tmp139199
                                            (lambda (_%g137441137444%_
                                                     _%g137442137446%_)
                                              (cons _%g137441137444%_
                                                    _%g137442137446%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139199
                                        '()
                                        _%L137308%_))))))
                           _%tl137220137260%_
                           _%expr137230137302%_
                           _%hd137231137304%_
                           _%hd137216137250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137224137268%_
                                                   _%target137221137263%_
                                                   '()
                                                   '()))
                                                (_%g137209137242%_
                                                 _%g137210137245%_)))))
                                      (_%g137209137242%_ _%g137210137245%_))))
                              (_%g137209137242%_ _%g137210137245%_))))
                      (_%g137209137242%_ _%g137210137245%_)))))
          (_%g137208137449%_ _%stx137207%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136960%_ _%stx136961%_)
        (let* ((_%g136963136996%_
                (lambda (_%g136964136993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136964136993%_))))
               (_%g136962137203%_
                (lambda (_%g136964136999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136964136999%_))
                      (let ((_%e136969137001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136964136999%_))))
                        (let ((_%hd136970137004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136969137001%_)))
                              (_%tl136971137006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136969137001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136971137006%_))
                              (let ((_%e136972137009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136971137006%_))))
                                (let ((_%hd136973137012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136972137009%_)))
                                      (_%tl136974137014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136972137009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136973137012%_))
                                      (let ((_g139200_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136973137012%_
                                                '0))))
                                        (begin
                                          (let ((_g139201_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g139200_)
                                                       (##values-length
                                                        _g139200_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g139201_ 2)))
                                                (error "Context expects 2 values"
                                                       _g139201_)))
                                          (let ((_%target136975137017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g139200_ 0)))
                                                (_%tl136977137019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g139200_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136977137019%_))
                                                (letrec ((_%loop136978137022%_
                                                          (lambda (_%hd136976137025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136982137027%_
                           _%hd136983137029%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136976137025%_))
                        (let ((_%e136979137032%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136976137025%_))))
                          (let ((_%lp-hd136980137035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136979137032%_)))
                                (_%lp-tl136981137037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136979137032%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136980137035%_))
                                (let ((_%e136986137040%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136980137035%_))))
                                  (let ((_%hd136987137043%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136986137040%_)))
                                        (_%tl136988137045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136986137040%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136988137045%_))
                                        (let ((_%e136989137048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136988137045%_))))
                                          (let ((_%hd136990137051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136989137048%_)))
                                                (_%tl136991137053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136989137048%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136991137053%_))
                                                (_%loop136978137022%_
                                                 _%lp-tl136981137037%_
                                                 (cons _%hd136990137051%_
                                                       _%expr136982137027%_)
                                                 (cons _%hd136987137043%_
                                                       _%hd136983137029%_))
                                                (_%g136963136996%_
                                                 _%g136964136999%_))))
                                        (_%g136963136996%_
                                         _%g136964136999%_))))
                                (_%g136963136996%_ _%g136964136999%_))))
                        (let ((_%expr136984137056%_
                               (reverse _%expr136982137027%_))
                              (_%hd136985137058%_
                               (reverse _%hd136983137029%_)))
                          ((lambda (_%L137061%_
                                    _%L137062%_
                                    _%L137063%_
                                    _%L137064%_)
                             (let ((__tmp139204
                                    (lambda ()
                                      (let* ((_%g137084137100%_
                                              (lambda (_%g137085137097%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g137085137097%_))))
                                             (_%g137083137182%_
                                              (lambda (_%g137085137103%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g137085137103%_))
                                                    (let ((_g139205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g137085137103%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g139206_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g139205_)
                             (##values-length _g139205_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g139206_ 2)))
                      (error "Context expects 2 values" _g139206_)))
                (let ((_%target137087137105%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139205_ 0)))
                      (_%tl137089137107%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g139205_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137089137107%_))
                      (letrec ((_%loop137090137110%_
                                (lambda (_%hd137088137113%_
                                         _%expr137094137115%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd137088137113%_))
                                      (let ((_%e137091137118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd137088137113%_))))
                                        (let ((_%lp-hd137092137121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137091137118%_)))
                                              (_%lp-tl137093137123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137091137118%_))))
                                          (_%loop137090137110%_
                                           _%lp-tl137093137123%_
                                           (cons _%lp-hd137092137121%_
                                                 _%expr137094137115%_))))
                                      (let ((_%expr137095137126%_
                                             (reverse _%expr137094137115%_)))
                                        ((lambda (_%L137129%_)
                                           (let* ((_%g137143137150%_
                                                   (lambda (_%g137144137147%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137144137147%_))))
                                                  (_%g137142137175%_
                                                   (lambda (_%g137144137153%_)
                                                     ((lambda (_%L137155%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137064%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137129%_
                                  _%L137063%_))
                               (let ((__tmp139207
                                      (lambda (_%g137164137168%_
                                               _%g137165137170%_
                                               _%g137166137172%_)
                                        (cons (cons _%g137165137170%_
                                                    (cons _%g137164137168%_
                                                          '()))
                                              _%g137166137172%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp139207
                                  '()
                                  _%L137129%_
                                  _%L137063%_)))
                             _%L137155%_))
                 _%stx136961%_))
              _%g137144137153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137142137175%_
                                              (map (lambda (_%g137177137179%_)
                                                     (gxc#compile-e__1
                                                      _%self136960%_
                                                      _%g137177137179%_))
                                                   _%L137061%_))))
                                         _%expr137095137126%_))))))
                        (_%loop137090137110%_ _%target137087137105%_ '()))
                      (_%g137084137100%_ _%g137085137103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g137084137100%_
                                                     _%g137085137103%_)))))
                                        (_%g137083137182%_
                                         (map (lambda (_%g137184137186%_)
                                                (gxc#compile-e__1
                                                 _%self136960%_
                                                 _%g137184137186%_))
                                              (let ((__tmp139208
                                                     (lambda (_%g137188137191%_
                                                              _%g137189137193%_)
                                                       (cons _%g137188137191%_
                                                             _%g137189137193%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139208
                                                 '()
                                                 _%L137062%_)))))))
                                   (__tmp139202
                                    (gxc#xform-let-locals
                                     (let ((__tmp139203
                                            (lambda (_%g137195137198%_
                                                     _%g137196137200%_)
                                              (cons _%g137195137198%_
                                                    _%g137196137200%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp139203
                                        '()
                                        _%L137063%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp139204
                                gxc#current-compile-local-env
                                __tmp139202)))
                           _%tl136974137014%_
                           _%expr136984137056%_
                           _%hd136985137058%_
                           _%hd136970137004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136978137022%_
                                                   _%target136975137017%_
                                                   '()
                                                   '()))
                                                (_%g136963136996%_
                                                 _%g136964136999%_)))))
                                      (_%g136963136996%_ _%g136964136999%_))))
                              (_%g136963136996%_ _%g136964136999%_))))
                      (_%g136963136996%_ _%g136964136999%_)))))
          (_%g136962137203%_ _%stx136961%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136827%_)
        (letrec ((_%flatten136829%_
                  (lambda (_%maybe-lst136887%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136887%_))
                        (cons _%maybe-lst136887%_ '())
                        (let _%loop136889%_ ((_%rest136891%_
                                              _%maybe-lst136887%_)
                                             (_%result136892%_ '()))
                          (let* ((_%__stx139096139097%_ _%rest136891%_)
                                 (_%g136896136908%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx139096139097%_)))))
                            (let ((_%__kont139098139099%_
                                   (lambda (_%L136946%_ _%L136947%_)
                                     (_%loop136889%_
                                      _%L136946%_
                                      (let ((__tmp139209
                                             (_%flatten136829%_ _%L136947%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136892%_
                                         __tmp139209)))))
                                  (_%__kont139100139101%_
                                   (lambda (_%L136920%_)
                                     (cons _%L136920%_ _%result136892%_)))
                                  (_%__kont139102139103%_
                                   (lambda () _%result136892%_)))
                              (let ((_%g136894136933%_
                                     (lambda ()
                                       (let ((_%L136920%_
                                              _%__stx139096139097%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136920%_))
                                             (_%__kont139100139101%_
                                              _%L136920%_)
                                             (_%__kont139102139103%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx139096139097%_))
                                    (let ((_%e136900136938%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx139096139097%_))))
                                      (let ((_%tl136902136943%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136900136938%_)))
                                            (_%hd136901136941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136900136938%_))))
                                        (_%__kont139098139099%_
                                         _%tl136902136943%_
                                         _%hd136901136941%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136894136933%_)))))))))))
          (let _%loop136831%_ ((_%rest136833%_
                                (_%flatten136829%_ _%bindings136827%_))
                               (_%locals136834%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136835136846%_ _%rest136833%_)
                   (_%E136839136850%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136835136846%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136842136875%_
                     (lambda (_%rest136872%_ _%id136873%_)
                       (_%loop136831%_
                        _%rest136872%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136873%_))
                              _%locals136834%_))))
                    (_%K136841136864%_
                     (lambda (_%id136862%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136862%_))
                             _%locals136834%_)))
                    (_%K136840136855%_ (lambda () _%locals136834%_)))
                (let ((_%try-match136837136869%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136835136846%_))
                             (let ((_%id136867%_ _%rest136835136846%_))
                               (_%K136841136864%_ _%id136867%_))
                             (_%K136840136855%_)))))
                  (if (pair? _%rest136835136846%_)
                      (let ((_%tl136844136880%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136835136846%_)))
                            (_%hd136843136878%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136835136846%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136843136878%_))
                            (let ((_%id136883%_ _%hd136843136878%_)
                                  (_%rest136885%_ _%tl136844136880%_))
                              (_%K136842136875%_ _%rest136885%_ _%id136883%_))
                            (_%K136840136855%_)))
                      (_%try-match136837136869%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136779%_ _%stx136780%_)
        (let* ((_%g136782136793%_
                (lambda (_%g136783136790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136783136790%_))))
               (_%g136781136824%_
                (lambda (_%g136783136796%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136783136796%_))
                      (let ((_%e136786136798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136783136796%_))))
                        (let ((_%hd136787136801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136786136798%_)))
                              (_%tl136788136803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136786136798%_))))
                          ((lambda (_%L136806%_ _%L136807%_)
                             (let ((_%rands136822%_
                                    (map (lambda (_%g136817136819%_)
                                           (gxc#compile-e__1
                                            _%self136779%_
                                            _%g136817136819%_))
                                         _%L136806%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136807%_ _%rands136822%_)
                                _%stx136780%_)))
                           _%tl136788136803%_
                           _%hd136787136801%_)))
                      (_%g136782136793%_ _%g136783136796%_)))))
          (_%g136781136824%_ _%stx136780%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136709%_ _%stx136710%_)
        (let* ((_%g136712136729%_
                (lambda (_%g136713136726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136713136726%_))))
               (_%g136711136776%_
                (lambda (_%g136713136732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136713136732%_))
                      (let ((_%e136716136734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136713136732%_))))
                        (let ((_%hd136717136737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136716136734%_)))
                              (_%tl136718136739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136716136734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136718136739%_))
                              (let ((_%e136719136742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136718136739%_))))
                                (let ((_%hd136720136745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136719136742%_)))
                                      (_%tl136721136747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136719136742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136721136747%_))
                                      (let ((_%e136722136750%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136721136747%_))))
                                        (let ((_%hd136723136753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136722136750%_)))
                                              (_%tl136724136755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136722136750%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136724136755%_))
                                              ((lambda (_%L136758%_
                                                        _%L136759%_)
                                                 (let ((_%expr136774%_
                                                        (gxc#compile-e__1
                                                         _%self136709%_
                                                         _%L136758%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136759%_
                                                                (cons _%expr136774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136710%_)))
                                               _%hd136723136753%_
                                               _%hd136720136745%_)
                                              (_%g136712136729%_
                                               _%g136713136732%_))))
                                      (_%g136712136729%_ _%g136713136732%_))))
                              (_%g136712136729%_ _%g136713136732%_))))
                      (_%g136712136729%_ _%g136713136732%_)))))
          (_%g136711136776%_ _%stx136710%_))))))
