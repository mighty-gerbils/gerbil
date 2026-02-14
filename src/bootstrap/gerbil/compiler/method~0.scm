(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771101403)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx194914%_)
        (let* ((_%self194916%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e194918%_
                (let ((__tmp195136 (gxc#stx-car-e _%stx194914%_)))
                  (declare (not safe))
                  (method-ref _%self194916%_ __tmp195136))))
          (if _%$e194918%_
              ((lambda (_%method194921%_)
                 (declare (not safe))
                 (let ((_%$e194924%_ (gx#stx-source _%stx194914%_)))
                   (if _%$e194924%_
                       ((lambda (_%source194927%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194921%_ _%self194916%_ _%stx194914%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194927%_ '()))
                                 (let ((_%$e194931%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194931%_ _%$e194931%_ '())))))
                        _%$e194924%_)
                       (_%method194921%_ _%self194916%_ _%stx194914%_))))
               _%$e194918%_)
              (let ((__tmp195138 (gxc#stx-car-e _%stx194914%_))
                    (__tmp195137
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194914%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194916%_
                       __tmp195138
                       __tmp195137))))))
    (define gxc#compile-e__1
      (lambda (_%self194936%_ _%stx194937%_)
        (let ((_%$e194939%_
               (let ((__tmp195139 (gxc#stx-car-e _%stx194937%_)))
                 (declare (not safe))
                 (method-ref _%self194936%_ __tmp195139))))
          (if _%$e194939%_
              ((lambda (_%method194942%_)
                 (declare (not safe))
                 (let ((_%$e194945%_ (gx#stx-source _%stx194937%_)))
                   (if _%$e194945%_
                       ((lambda (_%source194948%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194942%_ _%self194936%_ _%stx194937%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194948%_ '()))
                                 (let ((_%$e194952%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194952%_ _%$e194952%_ '())))))
                        _%$e194945%_)
                       (_%method194942%_ _%self194936%_ _%stx194937%_))))
               _%$e194939%_)
              (let ((__tmp195141 (gxc#stx-car-e _%stx194937%_))
                    (__tmp195140
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194937%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194936%_
                       __tmp195141
                       __tmp195140))))))
    (define gxc#compile-e
      (lambda _g195142_
        (let ((_g195143_ (let () (declare (not safe)) (##length _g195142_))))
          (cond ((let () (declare (not safe)) (##fx= _g195143_ 1))
                 (apply gxc#compile-e__0 _g195142_))
                ((let () (declare (not safe)) (##fx= _g195143_ 2))
                 (apply gxc#compile-e__1 _g195142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g195142_))))))
    (define gxc#stx-car-e
      (lambda (_%stx194912%_)
        (let ((__tmp195144
               (car (let () (declare (not safe)) (gx#stx-e _%stx194912%_)))))
          (declare (not safe))
          (gx#stx-e __tmp195144))))
    (define gxc#void-method (lambda (_%self194909%_ _%stx194910%_) '#!void))
    (define gxc#false-method (lambda (_%self194906%_ _%stx194907%_) '#f))
    (define gxc#true-method (lambda (_%self194903%_ _%stx194904%_) '#t))
    (define gxc#identity-method
      (lambda (_%self194900%_ _%stx194901%_) _%stx194901%_))
    (define gxc#::void-expression::t
      (let ((__tmp195145 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp195145
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args194897%_
        (apply make-instance gxc#::void-expression::t _%$args194897%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp195146
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
        (__make-atomic-promise __tmp195146)))
    (define gxc#::void-special-form::t
      (let ((__tmp195147 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp195147
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args194893%_
        (apply make-instance gxc#::void-special-form::t _%$args194893%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp195148
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
        (__make-atomic-promise __tmp195148)))
    (define gxc#::void::t
      (let ((__tmp195149
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp195149 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args194889%_
        (apply make-instance gxc#::void::t _%$args194889%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp195150
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195150)))
    (define gxc#::false-expression::t
      (let ((__tmp195151 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp195151
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args194885%_
        (apply make-instance gxc#::false-expression::t _%$args194885%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp195152
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
        (__make-atomic-promise __tmp195152)))
    (define gxc#::false-special-form::t
      (let ((__tmp195153 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp195153
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args194881%_
        (apply make-instance gxc#::false-special-form::t _%$args194881%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp195154
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
        (__make-atomic-promise __tmp195154)))
    (define gxc#::false::t
      (let ((__tmp195155
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp195155 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args194877%_
        (apply make-instance gxc#::false::t _%$args194877%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp195156
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195156)))
    (define gxc#::identity-expression::t
      (let ((__tmp195157 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp195157
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args194873%_
        (apply make-instance gxc#::identity-expression::t _%$args194873%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp195158
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
        (__make-atomic-promise __tmp195158)))
    (define gxc#::identity-special-form::t
      (let ((__tmp195159 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp195159
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args194869%_
        (apply make-instance gxc#::identity-special-form::t _%$args194869%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp195160
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
        (__make-atomic-promise __tmp195160)))
    (define gxc#::identity::t
      (let ((__tmp195161
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp195161
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args194865%_
        (apply make-instance gxc#::identity::t _%$args194865%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp195162
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195162)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp195163 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp195163
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args194861%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args194861%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp195164
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
        (__make-atomic-promise __tmp195164)))
    (define gxc#::basic-xform::t
      (let ((__tmp195165
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp195165
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args194857%_
        (apply make-instance gxc#::basic-xform::t _%$args194857%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp195166
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
        (__make-atomic-promise __tmp195166)))
    (define gxc#apply-begin%
      (lambda (_%self194813%_ _%stx194814%_)
        (let* ((_%g194816194826%_
                (lambda (_%g194817194823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194817194823%_))))
               (_%g194815194853%_
                (lambda (_%g194817194829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194817194829%_))
                      (let ((_%e194819194831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194817194829%_))))
                        (let ((_%hd194820194834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194819194831%_)))
                              (_%tl194821194836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194819194831%_))))
                          ((lambda (_%g194818194839%_)
                             (for-each
                              (lambda (_%g194848194850%_)
                                (gxc#compile-e__1
                                 _%self194813%_
                                 _%g194848194850%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g194818194839%_))))
                           _%tl194821194836%_)))
                      (_%g194816194826%_ _%g194817194829%_)))))
          (_%g194815194853%_ _%stx194814%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self194774%_ _%stx194775%_)
        (let* ((_%g194777194787%_
                (lambda (_%g194778194784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194778194784%_))))
               (_%g194776194810%_
                (lambda (_%g194778194790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194778194790%_))
                      (let ((_%e194780194792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194778194790%_))))
                        (let ((_%hd194781194795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194780194792%_)))
                              (_%tl194782194797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194780194792%_))))
                          ((lambda (_%g194779194800%_)
                             (gxc#compile-e__1
                              _%self194774%_
                              (last _%g194779194800%_)))
                           _%tl194782194797%_)))
                      (_%g194777194787%_ _%g194778194790%_)))))
          (_%g194776194810%_ _%stx194775%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self194770%_ _%stx194771%_)
        (let ((__tmp195169
               (lambda () (gxc#apply-begin% _%self194770%_ _%stx194771%_)))
              (__tmp195167
               (let ((__tmp195168
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp195168 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195169
           gx#current-expander-phi
           __tmp195167))))
    (define gxc#apply-module%
      (lambda (_%self194709%_ _%stx194710%_)
        (let* ((_%g194712194726%_
                (lambda (_%g194713194723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194713194723%_))))
               (_%g194711194767%_
                (lambda (_%g194713194729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194713194729%_))
                      (let ((_%e194716194731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194713194729%_))))
                        (let ((_%hd194717194734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194716194731%_)))
                              (_%tl194718194736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194716194731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194718194736%_))
                              (let ((_%e194719194739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194718194736%_))))
                                (let ((_%hd194720194742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194719194739%_)))
                                      (_%tl194721194744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194719194739%_))))
                                  ((lambda (_%g194714194747%_
                                            _%g194715194748%_)
                                     (let* ((_%ctx194761%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194715194748%_)))
                                            (_%ctx-stx194763%_
                                             (##structure-ref
                                              _%ctx194761%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195170
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self194709%_
                                                _%ctx-stx194763%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195170
                                        gx#current-expander-context
                                        _%ctx194761%_)))
                                   _%tl194721194744%_
                                   _%hd194720194742%_)))
                              (_%g194712194726%_ _%g194713194729%_))))
                      (_%g194712194726%_ _%g194713194729%_)))))
          (_%g194711194767%_ _%stx194710%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self194641%_ _%stx194642%_)
        (let* ((_%g194644194661%_
                (lambda (_%g194645194658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194645194658%_))))
               (_%g194643194706%_
                (lambda (_%g194645194664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194645194664%_))
                      (let ((_%e194648194666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194645194664%_))))
                        (let ((_%hd194649194669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194648194666%_)))
                              (_%tl194650194671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194648194666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194650194671%_))
                              (let ((_%e194651194674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194650194671%_))))
                                (let ((_%hd194652194677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194651194674%_)))
                                      (_%tl194653194679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194651194674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194653194679%_))
                                      (let ((_%e194654194682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194653194679%_))))
                                        (let ((_%hd194655194685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194654194682%_)))
                                              (_%tl194656194687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194654194682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194656194687%_))
                                              ((lambda (_%g194646194690%_
                                                        _%g194647194691%_)
                                                 (gxc#compile-e__1
                                                  _%self194641%_
                                                  _%g194646194690%_))
                                               _%hd194655194685%_
                                               _%hd194652194677%_)
                                              (_%g194644194661%_
                                               _%g194645194664%_))))
                                      (_%g194644194661%_ _%g194645194664%_))))
                              (_%g194644194661%_ _%g194645194664%_))))
                      (_%g194644194661%_ _%g194645194664%_)))))
          (_%g194643194706%_ _%stx194642%_))))
    (define gxc#apply-define-values%
      (lambda (_%self194573%_ _%stx194574%_)
        (let* ((_%g194576194593%_
                (lambda (_%g194577194590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194577194590%_))))
               (_%g194575194638%_
                (lambda (_%g194577194596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194577194596%_))
                      (let ((_%e194580194598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194577194596%_))))
                        (let ((_%hd194581194601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194580194598%_)))
                              (_%tl194582194603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194580194598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194582194603%_))
                              (let ((_%e194583194606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194582194603%_))))
                                (let ((_%hd194584194609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194583194606%_)))
                                      (_%tl194585194611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194583194606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194585194611%_))
                                      (let ((_%e194586194614%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194585194611%_))))
                                        (let ((_%hd194587194617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194586194614%_)))
                                              (_%tl194588194619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194586194614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194588194619%_))
                                              ((lambda (_%g194578194622%_
                                                        _%g194579194623%_)
                                                 (gxc#compile-e__1
                                                  _%self194573%_
                                                  _%g194578194622%_))
                                               _%hd194587194617%_
                                               _%hd194584194609%_)
                                              (_%g194576194593%_
                                               _%g194577194596%_))))
                                      (_%g194576194593%_ _%g194577194596%_))))
                              (_%g194576194593%_ _%g194577194596%_))))
                      (_%g194576194593%_ _%g194577194596%_)))))
          (_%g194575194638%_ _%stx194574%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self194504%_ _%stx194505%_)
        (let* ((_%g194507194524%_
                (lambda (_%g194508194521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194508194521%_))))
               (_%g194506194570%_
                (lambda (_%g194508194527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194508194527%_))
                      (let ((_%e194511194529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194508194527%_))))
                        (let ((_%hd194512194532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194511194529%_)))
                              (_%tl194513194534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194511194529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194513194534%_))
                              (let ((_%e194514194537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194513194534%_))))
                                (let ((_%hd194515194540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194514194537%_)))
                                      (_%tl194516194542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194514194537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194516194542%_))
                                      (let ((_%e194517194545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194516194542%_))))
                                        (let ((_%hd194518194548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194517194545%_)))
                                              (_%tl194519194550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194517194545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194519194550%_))
                                              ((lambda (_%g194509194553%_
                                                        _%g194510194554%_)
                                                 (let ((__tmp195173
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self194504%_
                                                           _%g194509194553%_)))
                                                       (__tmp195171
                                                        (let ((__tmp195172
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195172 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195173
                                                    gx#current-expander-phi
                                                    __tmp195171)))
                                               _%hd194518194548%_
                                               _%hd194515194540%_)
                                              (_%g194507194524%_
                                               _%g194508194527%_))))
                                      (_%g194507194524%_ _%g194508194527%_))))
                              (_%g194507194524%_ _%g194508194527%_))))
                      (_%g194507194524%_ _%g194508194527%_)))))
          (_%g194506194570%_ _%stx194505%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self194436%_ _%stx194437%_)
        (let* ((_%g194439194456%_
                (lambda (_%g194440194453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194440194453%_))))
               (_%g194438194501%_
                (lambda (_%g194440194459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194440194459%_))
                      (let ((_%e194443194461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194440194459%_))))
                        (let ((_%hd194444194464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194443194461%_)))
                              (_%tl194445194466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194443194461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194445194466%_))
                              (let ((_%e194446194469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194445194466%_))))
                                (let ((_%hd194447194472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194446194469%_)))
                                      (_%tl194448194474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194446194469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194448194474%_))
                                      (let ((_%e194449194477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194448194474%_))))
                                        (let ((_%hd194450194480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194449194477%_)))
                                              (_%tl194451194482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194449194477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194451194482%_))
                                              ((lambda (_%g194441194485%_
                                                        _%g194442194486%_)
                                                 (gxc#compile-e__1
                                                  _%self194436%_
                                                  _%g194441194485%_))
                                               _%hd194450194480%_
                                               _%hd194447194472%_)
                                              (_%g194439194456%_
                                               _%g194440194459%_))))
                                      (_%g194439194456%_ _%g194440194459%_))))
                              (_%g194439194456%_ _%g194440194459%_))))
                      (_%g194439194456%_ _%g194440194459%_)))))
          (_%g194438194501%_ _%stx194437%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self194322%_ _%stx194323%_)
        (let* ((_%g194325194353%_
                (lambda (_%g194326194350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194326194350%_))))
               (_%g194324194433%_
                (lambda (_%g194326194356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194326194356%_))
                      (let ((_%e194329194358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194326194356%_))))
                        (let ((_%hd194330194361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194329194358%_)))
                              (_%tl194331194363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194329194358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194331194363%_))
                              (let ((_g195174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194331194363%_
                                        '0))))
                                (begin
                                  (let ((_g195175_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195174_)
                                               (##values-length _g195174_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195175_ 2)))
                                        (error "Context expects 2 values"
                                               _g195175_)))
                                  (let ((_%target194332194366%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195174_ 0)))
                                        (_%tl194334194368%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195174_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194334194368%_))
                                        (letrec ((_%loop194335194371%_
                                                  (lambda (_%hd194333194374%_
                                                           _%body194339194376%_
                                                           _%hd194340194377%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194333194374%_))
                                                        (let ((_%e194336194379%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194333194374%_))))
                  (let ((_%lp-hd194337194382%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194336194379%_)))
                        (_%lp-tl194338194384%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194336194379%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194337194382%_))
                        (let ((_%e194343194387%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd194337194382%_))))
                          (let ((_%hd194344194390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194343194387%_)))
                                (_%tl194345194392%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194343194387%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194345194392%_))
                                (let ((_%e194346194395%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194345194392%_))))
                                  (let ((_%hd194347194398%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194346194395%_)))
                                        (_%tl194348194400%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194346194395%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194348194400%_))
                                        (_%loop194335194371%_
                                         _%lp-tl194338194384%_
                                         (cons _%hd194347194398%_
                                               _%body194339194376%_)
                                         (cons _%hd194344194390%_
                                               _%hd194340194377%_))
                                        (_%g194325194353%_
                                         _%g194326194356%_))))
                                (_%g194325194353%_ _%g194326194356%_))))
                        (_%g194325194353%_ _%g194326194356%_))))
                (let ((_%body194341194403%_ (reverse _%body194339194376%_))
                      (_%hd194342194404%_ (reverse _%hd194340194377%_)))
                  ((lambda (_%g194327194406%_ _%g194328194407%_)
                     (for-each
                      (lambda (_%g194421194423%_)
                        (gxc#compile-e__1 _%self194322%_ _%g194421194423%_))
                      (let ((__tmp195176
                             (lambda (_%g194425194428%_ _%g194426194430%_)
                               (cons _%g194425194428%_ _%g194426194430%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195176 '() _%g194327194406%_))))
                   _%body194341194403%_
                   _%hd194342194404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194335194371%_
                                           _%target194332194366%_
                                           '()
                                           '()))
                                        (_%g194325194353%_
                                         _%g194326194356%_)))))
                              (_%g194325194353%_ _%g194326194356%_))))
                      (_%g194325194353%_ _%g194326194356%_)))))
          (_%g194324194433%_ _%stx194323%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self194179%_ _%stx194180%_)
        (let* ((_%g194182194217%_
                (lambda (_%g194183194214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194183194214%_))))
               (_%g194181194319%_
                (lambda (_%g194183194220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194183194220%_))
                      (let ((_%e194187194222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194183194220%_))))
                        (let ((_%hd194188194225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194187194222%_)))
                              (_%tl194189194227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194187194222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194189194227%_))
                              (let ((_%e194190194230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194189194227%_))))
                                (let ((_%hd194191194233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194190194230%_)))
                                      (_%tl194192194235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194190194230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194191194233%_))
                                      (let ((_g195177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194191194233%_
                                                '0))))
                                        (begin
                                          (let ((_g195178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195177_)
                                                       (##values-length
                                                        _g195177_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195178_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195178_)))
                                          (let ((_%target194193194238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195177_ 0)))
                                                (_%tl194195194240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195177_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194195194240%_))
                                                (letrec ((_%loop194196194243%_
                                                          (lambda (_%hd194194194246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194200194248%_
                           _%hd194201194249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194194194246%_))
                        (let ((_%e194197194251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194194194246%_))))
                          (let ((_%lp-hd194198194254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194197194251%_)))
                                (_%lp-tl194199194256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194197194251%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194198194254%_))
                                (let ((_%e194204194259%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194198194254%_))))
                                  (let ((_%hd194205194262%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194204194259%_)))
                                        (_%tl194206194264%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194204194259%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194206194264%_))
                                        (let ((_%e194207194267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194206194264%_))))
                                          (let ((_%hd194208194270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194207194267%_)))
                                                (_%tl194209194272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194207194267%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194209194272%_))
                                                (_%loop194196194243%_
                                                 _%lp-tl194199194256%_
                                                 (cons _%hd194208194270%_
                                                       _%expr194200194248%_)
                                                 (cons _%hd194205194262%_
                                                       _%hd194201194249%_))
                                                (_%g194182194217%_
                                                 _%g194183194220%_))))
                                        (_%g194182194217%_
                                         _%g194183194220%_))))
                                (_%g194182194217%_ _%g194183194220%_))))
                        (let ((_%expr194202194275%_
                               (reverse _%expr194200194248%_))
                              (_%hd194203194276%_
                               (reverse _%hd194201194249%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194192194235%_))
                              (let ((_%e194210194278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194192194235%_))))
                                (let ((_%hd194211194281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194210194278%_)))
                                      (_%tl194212194283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194210194278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194212194283%_))
                                      ((lambda (_%g194184194286%_
                                                _%g194185194287%_
                                                _%g194186194288%_)
                                         (for-each
                                          (lambda (_%g194307194309%_)
                                            (gxc#compile-e__1
                                             _%self194179%_
                                             _%g194307194309%_))
                                          (let ((__tmp195180
                                                 (lambda (_%g194311194314%_
                                                          _%g194312194316%_)
                                                   (cons _%g194311194314%_
                                                         _%g194312194316%_)))
                                                (__tmp195179
                                                 (cons _%g194184194286%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195180
                                             __tmp195179
                                             _%g194185194287%_))))
                                       _%hd194211194281%_
                                       _%expr194202194275%_
                                       _%hd194203194276%_)
                                      (_%g194182194217%_ _%g194183194220%_))))
                              (_%g194182194217%_ _%g194183194220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194196194243%_
                                                   _%target194193194238%_
                                                   '()
                                                   '()))
                                                (_%g194182194217%_
                                                 _%g194183194220%_)))))
                                      (_%g194182194217%_ _%g194183194220%_))))
                              (_%g194182194217%_ _%g194183194220%_))))
                      (_%g194182194217%_ _%g194183194220%_)))))
          (_%g194181194319%_ _%stx194180%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self194124%_ _%stx194125%_)
        (let* ((_%g194127194141%_
                (lambda (_%g194128194138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194128194138%_))))
               (_%g194126194176%_
                (lambda (_%g194128194144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194128194144%_))
                      (let ((_%e194131194146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194128194144%_))))
                        (let ((_%hd194132194149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194131194146%_)))
                              (_%tl194133194151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194131194146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194133194151%_))
                              (let ((_%e194134194154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194133194151%_))))
                                (let ((_%hd194135194157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194134194154%_)))
                                      (_%tl194136194159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194134194154%_))))
                                  ((lambda (_%g194129194162%_
                                            _%g194130194163%_)
                                     (gxc#compile-e__1
                                      _%self194124%_
                                      (last _%g194129194162%_)))
                                   _%tl194136194159%_
                                   _%hd194135194157%_)))
                              (_%g194127194141%_ _%g194128194144%_))))
                      (_%g194127194141%_ _%g194128194144%_)))))
          (_%g194126194176%_ _%stx194125%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194056%_ _%stx194057%_)
        (let* ((_%g194059194076%_
                (lambda (_%g194060194073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194060194073%_))))
               (_%g194058194121%_
                (lambda (_%g194060194079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194060194079%_))
                      (let ((_%e194063194081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194060194079%_))))
                        (let ((_%hd194064194084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194063194081%_)))
                              (_%tl194065194086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194063194081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194065194086%_))
                              (let ((_%e194066194089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194065194086%_))))
                                (let ((_%hd194067194092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194066194089%_)))
                                      (_%tl194068194094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194066194089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194068194094%_))
                                      (let ((_%e194069194097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194068194094%_))))
                                        (let ((_%hd194070194100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194069194097%_)))
                                              (_%tl194071194102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194069194097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194071194102%_))
                                              ((lambda (_%g194061194105%_
                                                        _%g194062194106%_)
                                                 (gxc#compile-e__1
                                                  _%self194056%_
                                                  _%g194061194105%_))
                                               _%hd194070194100%_
                                               _%hd194067194092%_)
                                              (_%g194059194076%_
                                               _%g194060194079%_))))
                                      (_%g194059194076%_ _%g194060194079%_))))
                              (_%g194059194076%_ _%g194060194079%_))))
                      (_%g194059194076%_ _%g194060194079%_)))))
          (_%g194058194121%_ _%stx194057%_))))
    (define gxc#apply-operands
      (lambda (_%self193971%_ _%stx193972%_)
        (let* ((_%g193974193993%_
                (lambda (_%g193975193990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193975193990%_))))
               (_%g193973194053%_
                (lambda (_%g193975193996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193975193996%_))
                      (let ((_%e193977193998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193975193996%_))))
                        (let ((_%hd193978194001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193977193998%_)))
                              (_%tl193979194003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193977193998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193979194003%_))
                              (let ((_g195181_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193979194003%_
                                        '0))))
                                (begin
                                  (let ((_g195182_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195181_)
                                               (##values-length _g195181_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195182_ 2)))
                                        (error "Context expects 2 values"
                                               _g195182_)))
                                  (let ((_%target193980194006%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195181_ 0)))
                                        (_%tl193982194008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195181_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193982194008%_))
                                        (letrec ((_%loop193983194011%_
                                                  (lambda (_%hd193981194014%_
                                                           _%rands193987194016%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193981194014%_))
                                                        (let ((_%e193984194018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193981194014%_))))
                  (let ((_%lp-hd193985194021%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193984194018%_)))
                        (_%lp-tl193986194023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193984194018%_))))
                    (_%loop193983194011%_
                     _%lp-tl193986194023%_
                     (cons _%lp-hd193985194021%_ _%rands193987194016%_))))
                (let ((_%rands193988194026%_ (reverse _%rands193987194016%_)))
                  ((lambda (_%g193976194028%_)
                     (for-each
                      (lambda (_%g194041194043%_)
                        (gxc#compile-e__1 _%self193971%_ _%g194041194043%_))
                      (let ((__tmp195183
                             (lambda (_%g194045194048%_ _%g194046194050%_)
                               (cons _%g194045194048%_ _%g194046194050%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195183 '() _%g193976194028%_))))
                   _%rands193988194026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193983194011%_
                                           _%target193980194006%_
                                           '()))
                                        (_%g193974193993%_
                                         _%g193975193996%_)))))
                              (_%g193974193993%_ _%g193975193996%_))))
                      (_%g193974193993%_ _%g193975193996%_)))))
          (_%g193973194053%_ _%stx193972%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx193968%_ _%src-stx193969%_)
        (let ((__tmp195184
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx193969%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx193968%_ __tmp195184))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx193964%_ _%src-stx193965%_ _%ctx193966%_)
        (gxc#compile-e__1
         _%ctx193966%_
         (gxc#xform-wrap-source _%stx193964%_ _%src-stx193965%_))))
    (define gxc#xform-begin%
      (lambda (_%self193919%_ _%stx193920%_)
        (let* ((_%g193922193932%_
                (lambda (_%g193923193929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193923193929%_))))
               (_%g193921193961%_
                (lambda (_%g193923193935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193923193935%_))
                      (let ((_%e193925193937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193923193935%_))))
                        (let ((_%hd193926193940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193925193937%_)))
                              (_%tl193927193942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193925193937%_))))
                          ((lambda (_%g193924193945%_)
                             (let ((_%forms193959%_
                                    (map (lambda (_%g193954193956%_)
                                           (gxc#compile-e__1
                                            _%self193919%_
                                            _%g193954193956%_))
                                         _%g193924193945%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms193959%_)
                                _%stx193920%_)))
                           _%tl193927193942%_)))
                      (_%g193922193932%_ _%g193923193935%_)))))
          (_%g193921193961%_ _%stx193920%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self193873%_ _%stx193874%_)
        (let* ((_%g193876193886%_
                (lambda (_%g193877193883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193877193883%_))))
               (_%g193875193916%_
                (lambda (_%g193877193889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193877193889%_))
                      (let ((_%e193879193891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193877193889%_))))
                        (let ((_%hd193880193894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193879193891%_)))
                              (_%tl193881193896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193879193891%_))))
                          ((lambda (_%g193878193899%_)
                             (let ((__tmp195187
                                    (lambda ()
                                      (let ((_%forms193914%_
                                             (map (lambda (_%g193909193911%_)
                                                    (gxc#compile-e__1
                                                     _%self193873%_
                                                     _%g193909193911%_))
                                                  _%g193878193899%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms193914%_)
                                         _%stx193874%_))))
                                   (__tmp195185
                                    (let ((__tmp195186
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195186 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195187
                                gx#current-expander-phi
                                __tmp195185)))
                           _%tl193881193896%_)))
                      (_%g193876193886%_ _%g193877193889%_)))))
          (_%g193875193916%_ _%stx193874%_))))
    (define gxc#xform-module%
      (lambda (_%self193810%_ _%stx193811%_)
        (let* ((_%g193813193827%_
                (lambda (_%g193814193824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193814193824%_))))
               (_%g193812193870%_
                (lambda (_%g193814193830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193814193830%_))
                      (let ((_%e193817193832%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193814193830%_))))
                        (let ((_%hd193818193835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193817193832%_)))
                              (_%tl193819193837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193817193832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193819193837%_))
                              (let ((_%e193820193840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193819193837%_))))
                                (let ((_%hd193821193843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193820193840%_)))
                                      (_%tl193822193845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193820193840%_))))
                                  ((lambda (_%g193815193848%_
                                            _%g193816193849%_)
                                     (let* ((_%ctx193862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193816193849%_)))
                                            (_%code193864%_
                                             (##structure-ref
                                              _%ctx193862%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code193867%_
                                             (let ((__tmp195188
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self193810%_
                                                       _%code193864%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp195188
                                                gx#current-expander-context
                                                _%ctx193862%_))))
                                       (##structure-set!
                                        _%ctx193862%_
                                        _%code193867%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g193816193849%_
                                                    (cons _%code193867%_ '())))
                                        _%stx193811%_)))
                                   _%tl193822193845%_
                                   _%hd193821193843%_)))
                              (_%g193813193827%_ _%g193814193830%_))))
                      (_%g193813193827%_ _%g193814193830%_)))))
          (_%g193812193870%_ _%stx193811%_))))
    (define gxc#xform-define-values%
      (lambda (_%self193740%_ _%stx193741%_)
        (let* ((_%g193743193760%_
                (lambda (_%g193744193757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193744193757%_))))
               (_%g193742193807%_
                (lambda (_%g193744193763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193744193763%_))
                      (let ((_%e193747193765%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193744193763%_))))
                        (let ((_%hd193748193768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193747193765%_)))
                              (_%tl193749193770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193747193765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193749193770%_))
                              (let ((_%e193750193773%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193749193770%_))))
                                (let ((_%hd193751193776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193750193773%_)))
                                      (_%tl193752193778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193750193773%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193752193778%_))
                                      (let ((_%e193753193781%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193752193778%_))))
                                        (let ((_%hd193754193784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193753193781%_)))
                                              (_%tl193755193786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193753193781%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193755193786%_))
                                              ((lambda (_%g193745193789%_
                                                        _%g193746193790%_)
                                                 (let ((_%expr193805%_
                                                        (gxc#compile-e__1
                                                         _%self193740%_
                                                         _%g193745193789%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g193746193790%_
                                                                (cons _%expr193805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193741%_)))
                                               _%hd193754193784%_
                                               _%hd193751193776%_)
                                              (_%g193743193760%_
                                               _%g193744193763%_))))
                                      (_%g193743193760%_ _%g193744193763%_))))
                              (_%g193743193760%_ _%g193744193763%_))))
                      (_%g193743193760%_ _%g193744193763%_)))))
          (_%g193742193807%_ _%stx193741%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self193669%_ _%stx193670%_)
        (let* ((_%g193672193689%_
                (lambda (_%g193673193686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193673193686%_))))
               (_%g193671193737%_
                (lambda (_%g193673193692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193673193692%_))
                      (let ((_%e193676193694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193673193692%_))))
                        (let ((_%hd193677193697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193676193694%_)))
                              (_%tl193678193699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193676193694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193678193699%_))
                              (let ((_%e193679193702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193678193699%_))))
                                (let ((_%hd193680193705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193679193702%_)))
                                      (_%tl193681193707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193679193702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193681193707%_))
                                      (let ((_%e193682193710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193681193707%_))))
                                        (let ((_%hd193683193713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193682193710%_)))
                                              (_%tl193684193715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193682193710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193684193715%_))
                                              ((lambda (_%g193674193718%_
                                                        _%g193675193719%_)
                                                 (let ((__tmp195191
                                                        (lambda ()
                                                          (let ((_%expr193735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self193669%_ _%g193674193718%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g193675193719%_ (cons _%expr193735%_ '())))
                     _%stx193670%_))))
               (__tmp195189
                (let ((__tmp195190
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195190 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195191
                                                    gx#current-expander-phi
                                                    __tmp195189)))
                                               _%hd193683193713%_
                                               _%hd193680193705%_)
                                              (_%g193672193689%_
                                               _%g193673193692%_))))
                                      (_%g193672193689%_ _%g193673193692%_))))
                              (_%g193672193689%_ _%g193673193692%_))))
                      (_%g193672193689%_ _%g193673193692%_)))))
          (_%g193671193737%_ _%stx193670%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self193599%_ _%stx193600%_)
        (let* ((_%g193602193619%_
                (lambda (_%g193603193616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193603193616%_))))
               (_%g193601193666%_
                (lambda (_%g193603193622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193603193622%_))
                      (let ((_%e193606193624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193603193622%_))))
                        (let ((_%hd193607193627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193606193624%_)))
                              (_%tl193608193629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193606193624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193608193629%_))
                              (let ((_%e193609193632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193608193629%_))))
                                (let ((_%hd193610193635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193609193632%_)))
                                      (_%tl193611193637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193609193632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193611193637%_))
                                      (let ((_%e193612193640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193611193637%_))))
                                        (let ((_%hd193613193643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193612193640%_)))
                                              (_%tl193614193645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193612193640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193614193645%_))
                                              ((lambda (_%g193604193648%_
                                                        _%g193605193649%_)
                                                 (let ((_%expr193664%_
                                                        (gxc#compile-e__1
                                                         _%self193599%_
                                                         _%g193604193648%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g193605193649%_
                                                                (cons _%expr193664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193600%_)))
                                               _%hd193613193643%_
                                               _%hd193610193635%_)
                                              (_%g193602193619%_
                                               _%g193603193622%_))))
                                      (_%g193602193619%_ _%g193603193622%_))))
                              (_%g193602193619%_ _%g193603193622%_))))
                      (_%g193602193619%_ _%g193603193622%_)))))
          (_%g193601193666%_ _%stx193600%_))))
    (define gxc#xform-lambda%
      (lambda (_%self193537%_ _%stx193538%_)
        (let* ((_%g193540193554%_
                (lambda (_%g193541193551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193541193551%_))))
               (_%g193539193596%_
                (lambda (_%g193541193557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193541193557%_))
                      (let ((_%e193544193559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193541193557%_))))
                        (let ((_%hd193545193562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193544193559%_)))
                              (_%tl193546193564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193544193559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193546193564%_))
                              (let ((_%e193547193567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193546193564%_))))
                                (let ((_%hd193548193570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193547193567%_)))
                                      (_%tl193549193572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193547193567%_))))
                                  ((lambda (_%g193542193575%_
                                            _%g193543193576%_)
                                     (let ((__tmp195193
                                            (lambda ()
                                              (let ((_%body193594%_
                                                     (map (lambda (_%g193589193591%_)
                                                            (gxc#compile-e__1
                                                             _%self193537%_
                                                             _%g193589193591%_))
                                                          _%g193542193575%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g193543193576%_
                                                             _%body193594%_))
                                                 _%stx193538%_))))
                                           (__tmp195192
                                            (gxc#xform-let-locals
                                             _%g193543193576%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195193
                                        gxc#current-compile-local-env
                                        __tmp195192)))
                                   _%tl193549193572%_
                                   _%hd193548193570%_)))
                              (_%g193540193554%_ _%g193541193557%_))))
                      (_%g193540193554%_ _%g193541193557%_)))))
          (_%g193539193596%_ _%stx193538%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self193445%_ _%stx193446%_)
        (letrec ((_%clause-e193448%_
                  (lambda (_%clause193489%_)
                    (let* ((_%g193491193502%_
                            (lambda (_%g193492193499%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g193492193499%_))))
                           (_%g193490193534%_
                            (lambda (_%g193492193505%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g193492193505%_))
                                  (let ((_%e193495193507%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g193492193505%_))))
                                    (let ((_%hd193496193510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193495193507%_)))
                                          (_%tl193497193512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193495193507%_))))
                                      ((lambda (_%g193493193515%_
                                                _%g193494193516%_)
                                         (let ((__tmp195195
                                                (lambda ()
                                                  (let ((_%body193532%_
                                                         (map (lambda (_%g193527193529%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self193445%_
                         _%g193527193529%_))
                      _%g193493193515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g193494193516%_
                                                          _%body193532%_))))
                                               (__tmp195194
                                                (gxc#xform-let-locals
                                                 _%g193494193516%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp195195
                                            gxc#current-compile-local-env
                                            __tmp195194)))
                                       _%tl193497193512%_
                                       _%hd193496193510%_)))
                                  (_%g193491193502%_ _%g193492193505%_)))))
                      (_%g193490193534%_ _%clause193489%_)))))
          (let* ((_%g193450193460%_
                  (lambda (_%g193451193457%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193451193457%_))))
                 (_%g193449193486%_
                  (lambda (_%g193451193463%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193451193463%_))
                        (let ((_%e193453193465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193451193463%_))))
                          (let ((_%hd193454193468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193453193465%_)))
                                (_%tl193455193470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193453193465%_))))
                            ((lambda (_%g193452193473%_)
                               (let ((_%clauses193484%_
                                      (map _%clause-e193448%_
                                           _%g193452193473%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses193484%_)
                                  _%stx193446%_)))
                             _%tl193455193470%_)))
                        (_%g193450193460%_ _%g193451193463%_)))))
            (_%g193449193486%_ _%stx193446%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self193205%_ _%stx193206%_)
        (let* ((_%g193208193241%_
                (lambda (_%g193209193238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193209193238%_))))
               (_%g193207193442%_
                (lambda (_%g193209193244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193209193244%_))
                      (let ((_%e193214193246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193209193244%_))))
                        (let ((_%hd193215193249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193214193246%_)))
                              (_%tl193216193251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193214193246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193216193251%_))
                              (let ((_%e193217193254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193216193251%_))))
                                (let ((_%hd193218193257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193217193254%_)))
                                      (_%tl193219193259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193217193254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193218193257%_))
                                      (let ((_g195196_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193218193257%_
                                                '0))))
                                        (begin
                                          (let ((_g195197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195196_)
                                                       (##values-length
                                                        _g195196_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195197_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195197_)))
                                          (let ((_%target193220193262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195196_ 0)))
                                                (_%tl193222193264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195196_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193222193264%_))
                                                (letrec ((_%loop193223193267%_
                                                          (lambda (_%hd193221193270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193227193272%_
                           _%hd193228193273%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193221193270%_))
                        (let ((_%e193224193275%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193221193270%_))))
                          (let ((_%lp-hd193225193278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193224193275%_)))
                                (_%lp-tl193226193280%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193224193275%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193225193278%_))
                                (let ((_%e193231193283%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193225193278%_))))
                                  (let ((_%hd193232193286%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193231193283%_)))
                                        (_%tl193233193288%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193231193283%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193233193288%_))
                                        (let ((_%e193234193291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193233193288%_))))
                                          (let ((_%hd193235193294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193234193291%_)))
                                                (_%tl193236193296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193234193291%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193236193296%_))
                                                (_%loop193223193267%_
                                                 _%lp-tl193226193280%_
                                                 (cons _%hd193235193294%_
                                                       _%expr193227193272%_)
                                                 (cons _%hd193232193286%_
                                                       _%hd193228193273%_))
                                                (_%g193208193241%_
                                                 _%g193209193244%_))))
                                        (_%g193208193241%_
                                         _%g193209193244%_))))
                                (_%g193208193241%_ _%g193209193244%_))))
                        (let ((_%expr193229193299%_
                               (reverse _%expr193227193272%_))
                              (_%hd193230193300%_
                               (reverse _%hd193228193273%_)))
                          ((lambda (_%g193210193302%_
                                    _%g193211193303%_
                                    _%g193212193304%_
                                    _%g193213193305%_)
                             (let* ((_%g193324193340%_
                                     (lambda (_%g193325193337%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193325193337%_))))
                                    (_%g193323193428%_
                                     (lambda (_%g193325193343%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g193325193343%_))
                                           (let ((_g195198_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g193325193343%_
                                                     '0))))
                                             (begin
                                               (let ((_g195199_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g195198_)
                                                            (##values-length
                                                             _g195198_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g195199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g195199_)))
                                               (let ((_%target193327193345%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195198_
                                                         0)))
                                                     (_%tl193329193347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195198_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193329193347%_))
                                                     (letrec ((_%loop193330193350%_
                                                               (lambda (_%hd193328193353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr193334193355%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd193328193353%_))
                             (let ((_%e193331193357%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd193328193353%_))))
                               (let ((_%lp-hd193332193360%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e193331193357%_)))
                                     (_%lp-tl193333193362%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e193331193357%_))))
                                 (_%loop193330193350%_
                                  _%lp-tl193333193362%_
                                  (cons _%lp-hd193332193360%_
                                        _%expr193334193355%_))))
                             (let ((_%expr193335193365%_
                                    (reverse _%expr193334193355%_)))
                               ((lambda (_%g193326193367%_)
                                  (let ((__tmp195202
                                         (lambda ()
                                           (let* ((_%g193381193388%_
                                                   (lambda (_%g193382193385%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193382193385%_))))
                                                  (_%g193380193414%_
                                                   (lambda (_%g193382193391%_)
                                                     ((lambda (_%g193383193393%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193213193305%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193326193367%_
                                  _%g193212193304%_))
                               (let ((__tmp195203
                                      (lambda (_%g193403193407%_
                                               _%g193404193409%_
                                               _%g193405193411%_)
                                        (cons (cons _%g193404193409%_
                                                    (cons _%g193403193407%_
                                                          '()))
                                              _%g193405193411%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195203
                                  '()
                                  _%g193326193367%_
                                  _%g193212193304%_)))
                             _%g193383193393%_))
                 _%stx193206%_))
              _%g193382193391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193380193414%_
                                              (map (lambda (_%g193416193418%_)
                                                     (gxc#compile-e__1
                                                      _%self193205%_
                                                      _%g193416193418%_))
                                                   _%g193210193302%_)))))
                                        (__tmp195200
                                         (gxc#xform-let-locals
                                          (let ((__tmp195201
                                                 (lambda (_%g193420193423%_
                                                          _%g193421193425%_)
                                                   (cons _%g193420193423%_
                                                         _%g193421193425%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195201
                                             '()
                                             _%g193212193304%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp195202
                                     gxc#current-compile-local-env
                                     __tmp195200)))
                                _%expr193335193365%_))))))
               (_%loop193330193350%_ _%target193327193345%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g193324193340%_
                                                      _%g193325193343%_)))))
                                           (_%g193324193340%_
                                            _%g193325193343%_)))))
                               (_%g193323193428%_
                                (map (lambda (_%g193430193432%_)
                                       (gxc#compile-e__1
                                        _%self193205%_
                                        _%g193430193432%_))
                                     (let ((__tmp195204
                                            (lambda (_%g193434193437%_
                                                     _%g193435193439%_)
                                              (cons _%g193434193437%_
                                                    _%g193435193439%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195204
                                        '()
                                        _%g193211193303%_))))))
                           _%tl193219193259%_
                           _%expr193229193299%_
                           _%hd193230193300%_
                           _%hd193215193249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193223193267%_
                                                   _%target193220193262%_
                                                   '()
                                                   '()))
                                                (_%g193208193241%_
                                                 _%g193209193244%_)))))
                                      (_%g193208193241%_ _%g193209193244%_))))
                              (_%g193208193241%_ _%g193209193244%_))))
                      (_%g193208193241%_ _%g193209193244%_)))))
          (_%g193207193442%_ _%stx193206%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self192965%_ _%stx192966%_)
        (let* ((_%g192968193001%_
                (lambda (_%g192969192998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192969192998%_))))
               (_%g192967193202%_
                (lambda (_%g192969193004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192969193004%_))
                      (let ((_%e192974193006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192969193004%_))))
                        (let ((_%hd192975193009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192974193006%_)))
                              (_%tl192976193011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192974193006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192976193011%_))
                              (let ((_%e192977193014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192976193011%_))))
                                (let ((_%hd192978193017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192977193014%_)))
                                      (_%tl192979193019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192977193014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192978193017%_))
                                      (let ((_g195205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192978193017%_
                                                '0))))
                                        (begin
                                          (let ((_g195206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195205_)
                                                       (##values-length
                                                        _g195205_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195206_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195206_)))
                                          (let ((_%target192980193022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195205_ 0)))
                                                (_%tl192982193024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195205_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192982193024%_))
                                                (letrec ((_%loop192983193027%_
                                                          (lambda (_%hd192981193030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192987193032%_
                           _%hd192988193033%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192981193030%_))
                        (let ((_%e192984193035%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192981193030%_))))
                          (let ((_%lp-hd192985193038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192984193035%_)))
                                (_%lp-tl192986193040%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192984193035%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192985193038%_))
                                (let ((_%e192991193043%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192985193038%_))))
                                  (let ((_%hd192992193046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192991193043%_)))
                                        (_%tl192993193048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192991193043%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192993193048%_))
                                        (let ((_%e192994193051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192993193048%_))))
                                          (let ((_%hd192995193054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192994193051%_)))
                                                (_%tl192996193056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192994193051%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192996193056%_))
                                                (_%loop192983193027%_
                                                 _%lp-tl192986193040%_
                                                 (cons _%hd192995193054%_
                                                       _%expr192987193032%_)
                                                 (cons _%hd192992193046%_
                                                       _%hd192988193033%_))
                                                (_%g192968193001%_
                                                 _%g192969193004%_))))
                                        (_%g192968193001%_
                                         _%g192969193004%_))))
                                (_%g192968193001%_ _%g192969193004%_))))
                        (let ((_%expr192989193059%_
                               (reverse _%expr192987193032%_))
                              (_%hd192990193060%_
                               (reverse _%hd192988193033%_)))
                          ((lambda (_%g192970193062%_
                                    _%g192971193063%_
                                    _%g192972193064%_
                                    _%g192973193065%_)
                             (let ((__tmp195209
                                    (lambda ()
                                      (let* ((_%g193085193101%_
                                              (lambda (_%g193086193098%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g193086193098%_))))
                                             (_%g193084193181%_
                                              (lambda (_%g193086193104%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g193086193104%_))
                                                    (let ((_g195210_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g193086193104%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g195211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g195210_)
                             (##values-length _g195210_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195211_ 2)))
                      (error "Context expects 2 values" _g195211_)))
                (let ((_%target193088193106%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195210_ 0)))
                      (_%tl193090193108%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195210_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193090193108%_))
                      (letrec ((_%loop193091193111%_
                                (lambda (_%hd193089193114%_
                                         _%expr193095193116%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193089193114%_))
                                      (let ((_%e193092193118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd193089193114%_))))
                                        (let ((_%lp-hd193093193121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193092193118%_)))
                                              (_%lp-tl193094193123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193092193118%_))))
                                          (_%loop193091193111%_
                                           _%lp-tl193094193123%_
                                           (cons _%lp-hd193093193121%_
                                                 _%expr193095193116%_))))
                                      (let ((_%expr193096193126%_
                                             (reverse _%expr193095193116%_)))
                                        ((lambda (_%g193087193128%_)
                                           (let* ((_%g193142193149%_
                                                   (lambda (_%g193143193146%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193143193146%_))))
                                                  (_%g193141193174%_
                                                   (lambda (_%g193143193152%_)
                                                     ((lambda (_%g193144193154%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192973193065%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193087193128%_
                                  _%g192972193064%_))
                               (let ((__tmp195212
                                      (lambda (_%g193163193167%_
                                               _%g193164193169%_
                                               _%g193165193171%_)
                                        (cons (cons _%g193164193169%_
                                                    (cons _%g193163193167%_
                                                          '()))
                                              _%g193165193171%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195212
                                  '()
                                  _%g193087193128%_
                                  _%g192972193064%_)))
                             _%g193144193154%_))
                 _%stx192966%_))
              _%g193143193152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193141193174%_
                                              (map (lambda (_%g193176193178%_)
                                                     (gxc#compile-e__1
                                                      _%self192965%_
                                                      _%g193176193178%_))
                                                   _%g192970193062%_))))
                                         _%expr193096193126%_))))))
                        (_%loop193091193111%_ _%target193088193106%_ '()))
                      (_%g193085193101%_ _%g193086193104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g193085193101%_
                                                     _%g193086193104%_)))))
                                        (_%g193084193181%_
                                         (map (lambda (_%g193183193185%_)
                                                (gxc#compile-e__1
                                                 _%self192965%_
                                                 _%g193183193185%_))
                                              (let ((__tmp195213
                                                     (lambda (_%g193187193190%_
                                                              _%g193188193192%_)
                                                       (cons _%g193187193190%_
                                                             _%g193188193192%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp195213
                                                 '()
                                                 _%g192971193063%_)))))))
                                   (__tmp195207
                                    (gxc#xform-let-locals
                                     (let ((__tmp195208
                                            (lambda (_%g193194193197%_
                                                     _%g193195193199%_)
                                              (cons _%g193194193197%_
                                                    _%g193195193199%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195208
                                        '()
                                        _%g192972193064%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195209
                                gxc#current-compile-local-env
                                __tmp195207)))
                           _%tl192979193019%_
                           _%expr192989193059%_
                           _%hd192990193060%_
                           _%hd192975193009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192983193027%_
                                                   _%target192980193022%_
                                                   '()
                                                   '()))
                                                (_%g192968193001%_
                                                 _%g192969193004%_)))))
                                      (_%g192968193001%_ _%g192969193004%_))))
                              (_%g192968193001%_ _%g192969193004%_))))
                      (_%g192968193001%_ _%g192969193004%_)))))
          (_%g192967193202%_ _%stx192966%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings192832%_)
        (letrec ((_%flatten192834%_
                  (lambda (_%maybe-lst192892%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst192892%_))
                        (cons _%maybe-lst192892%_ '())
                        (let _%loop192894%_ ((_%rest192896%_
                                              _%maybe-lst192892%_)
                                             (_%result192897%_ '()))
                          (let* ((_%__stx195101195102%_ _%rest192896%_)
                                 (_%g192901192913%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx195101195102%_)))))
                            (let ((_%__kont195103195104%_
                                   (lambda (_%g192903192951%_
                                            _%g192904192952%_)
                                     (_%loop192894%_
                                      _%g192903192951%_
                                      (let ((__tmp195214
                                             (_%flatten192834%_
                                              _%g192904192952%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result192897%_
                                         __tmp195214)))))
                                  (_%__kont195105195106%_
                                   (lambda (_%g192908192925%_)
                                     (cons _%g192908192925%_
                                           _%result192897%_)))
                                  (_%__kont195107195108%_
                                   (lambda () _%result192897%_)))
                              (let ((_%g192899192938%_
                                     (lambda ()
                                       (let ((_%g192908192925%_
                                              _%__stx195101195102%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g192908192925%_))
                                             (_%__kont195105195106%_
                                              _%g192908192925%_)
                                             (_%__kont195107195108%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx195101195102%_))
                                    (let ((_%e192905192943%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx195101195102%_))))
                                      (let ((_%tl192907192948%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192905192943%_)))
                                            (_%hd192906192946%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192905192943%_))))
                                        (_%__kont195103195104%_
                                         _%tl192907192948%_
                                         _%hd192906192946%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192899192938%_)))))))))))
          (let _%loop192836%_ ((_%rest192838%_
                                (_%flatten192834%_ _%bindings192832%_))
                               (_%locals192839%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest192840192851%_ _%rest192838%_)
                   (_%E192844192855%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest192840192851%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K192847192880%_
                     (lambda (_%rest192877%_ _%id192878%_)
                       (_%loop192836%_
                        _%rest192877%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id192878%_))
                              _%locals192839%_))))
                    (_%K192846192869%_
                     (lambda (_%id192867%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id192867%_))
                             _%locals192839%_)))
                    (_%K192845192860%_ (lambda () _%locals192839%_)))
                (let ((_%try-match192842192874%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest192840192851%_))
                             (let ((_%id192872%_ _%rest192840192851%_))
                               (_%K192846192869%_ _%id192872%_))
                             (_%K192845192860%_)))))
                  (if (pair? _%rest192840192851%_)
                      (let ((_%tl192849192885%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest192840192851%_)))
                            (_%hd192848192883%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest192840192851%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd192848192883%_))
                            (let ((_%id192888%_ _%hd192848192883%_)
                                  (_%rest192890%_ _%tl192849192885%_))
                              (_%K192847192880%_ _%rest192890%_ _%id192888%_))
                            (_%K192845192860%_)))
                      (_%try-match192842192874%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self192784%_ _%stx192785%_)
        (let* ((_%g192787192798%_
                (lambda (_%g192788192795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192788192795%_))))
               (_%g192786192829%_
                (lambda (_%g192788192801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192788192801%_))
                      (let ((_%e192791192803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192788192801%_))))
                        (let ((_%hd192792192806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192791192803%_)))
                              (_%tl192793192808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192791192803%_))))
                          ((lambda (_%g192789192811%_ _%g192790192812%_)
                             (let ((_%rands192827%_
                                    (map (lambda (_%g192822192824%_)
                                           (gxc#compile-e__1
                                            _%self192784%_
                                            _%g192822192824%_))
                                         _%g192789192811%_)))
                               (gxc#xform-wrap-source
                                (cons _%g192790192812%_ _%rands192827%_)
                                _%stx192785%_)))
                           _%tl192793192808%_
                           _%hd192792192806%_)))
                      (_%g192787192798%_ _%g192788192801%_)))))
          (_%g192786192829%_ _%stx192785%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self192714%_ _%stx192715%_)
        (let* ((_%g192717192734%_
                (lambda (_%g192718192731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192718192731%_))))
               (_%g192716192781%_
                (lambda (_%g192718192737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192718192737%_))
                      (let ((_%e192721192739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192718192737%_))))
                        (let ((_%hd192722192742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192721192739%_)))
                              (_%tl192723192744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192721192739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192723192744%_))
                              (let ((_%e192724192747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192723192744%_))))
                                (let ((_%hd192725192750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192724192747%_)))
                                      (_%tl192726192752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192724192747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192726192752%_))
                                      (let ((_%e192727192755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192726192752%_))))
                                        (let ((_%hd192728192758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192727192755%_)))
                                              (_%tl192729192760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192727192755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192729192760%_))
                                              ((lambda (_%g192719192763%_
                                                        _%g192720192764%_)
                                                 (let ((_%expr192779%_
                                                        (gxc#compile-e__1
                                                         _%self192714%_
                                                         _%g192719192763%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g192720192764%_
                                                                (cons _%expr192779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192715%_)))
                                               _%hd192728192758%_
                                               _%hd192725192750%_)
                                              (_%g192717192734%_
                                               _%g192718192737%_))))
                                      (_%g192717192734%_ _%g192718192737%_))))
                              (_%g192717192734%_ _%g192718192737%_))))
                      (_%g192717192734%_ _%g192718192737%_)))))
          (_%g192716192781%_ _%stx192715%_))))))
