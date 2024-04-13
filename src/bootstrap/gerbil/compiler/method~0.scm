(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713000278)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137097%_)
        (let* ((_%self137099%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137101%_
                (let ((__tmp137297 (gxc#stx-car-e _%stx137097%_)))
                  (declare (not safe))
                  (method-ref _%self137099%_ __tmp137297))))
          (if _%$e137101%_
              ((lambda (_%method137104%_)
                 (declare (not safe))
                 (_%method137104%_ _%self137099%_ _%stx137097%_))
               _%$e137101%_)
              (let ((__tmp137299 (gxc#stx-car-e _%stx137097%_))
                    (__tmp137298
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137097%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137099%_
                       __tmp137299
                       __tmp137298))))))
    (define gxc#compile-e__1
      (lambda (_%self137108%_ _%stx137109%_)
        (let ((_%$e137111%_
               (let ((__tmp137300 (gxc#stx-car-e _%stx137109%_)))
                 (declare (not safe))
                 (method-ref _%self137108%_ __tmp137300))))
          (if _%$e137111%_
              ((lambda (_%method137114%_)
                 (declare (not safe))
                 (_%method137114%_ _%self137108%_ _%stx137109%_))
               _%$e137111%_)
              (let ((__tmp137302 (gxc#stx-car-e _%stx137109%_))
                    (__tmp137301
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137109%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137108%_
                       __tmp137302
                       __tmp137301))))))
    (define gxc#compile-e
      (lambda _g137304_
        (let ((_g137303_ (let () (declare (not safe)) (##length _g137304_))))
          (cond ((let () (declare (not safe)) (##fx= _g137303_ 1))
                 (apply gxc#compile-e__0 _g137304_))
                ((let () (declare (not safe)) (##fx= _g137303_ 2))
                 (apply gxc#compile-e__1 _g137304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g137304_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137095%_)
        (let ((__tmp137305
               (car (let () (declare (not safe)) (gx#stx-e _%stx137095%_)))))
          (declare (not safe))
          (gx#stx-e __tmp137305))))
    (define gxc#void-method (lambda (_%self137092%_ _%stx137093%_) '#!void))
    (define gxc#false-method (lambda (_%self137089%_ _%stx137090%_) '#f))
    (define gxc#true-method (lambda (_%self137086%_ _%stx137087%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137083%_ _%stx137084%_) _%stx137084%_))
    (define gxc#::void-expression::t
      (let ((__tmp137306 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp137306
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137080%_
        (apply make-instance gxc#::void-expression::t _%$args137080%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp137307
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
        (__make-promise __tmp137307)))
    (define gxc#::void-special-form::t
      (let ((__tmp137308 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp137308
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137076%_
        (apply make-instance gxc#::void-special-form::t _%$args137076%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp137309
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
        (__make-promise __tmp137309)))
    (define gxc#::void::t
      (let ((__tmp137310
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp137310 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137072%_
        (apply make-instance gxc#::void::t _%$args137072%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp137311
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137311)))
    (define gxc#::false-expression::t
      (let ((__tmp137312 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp137312
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137068%_
        (apply make-instance gxc#::false-expression::t _%$args137068%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp137313
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
        (__make-promise __tmp137313)))
    (define gxc#::false-special-form::t
      (let ((__tmp137314 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp137314
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137064%_
        (apply make-instance gxc#::false-special-form::t _%$args137064%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp137315
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
        (__make-promise __tmp137315)))
    (define gxc#::false::t
      (let ((__tmp137316
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp137316 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137060%_
        (apply make-instance gxc#::false::t _%$args137060%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp137317
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137317)))
    (define gxc#::identity-expression::t
      (let ((__tmp137318 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp137318
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137056%_
        (apply make-instance gxc#::identity-expression::t _%$args137056%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp137319
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
        (__make-promise __tmp137319)))
    (define gxc#::identity-special-form::t
      (let ((__tmp137320 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp137320
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137052%_
        (apply make-instance gxc#::identity-special-form::t _%$args137052%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp137321
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
        (__make-promise __tmp137321)))
    (define gxc#::identity::t
      (let ((__tmp137322
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp137322
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137048%_
        (apply make-instance gxc#::identity::t _%$args137048%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp137323
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137323)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp137324 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp137324
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137044%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137044%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp137325
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
        (__make-promise __tmp137325)))
    (define gxc#::basic-xform::t
      (let ((__tmp137326
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp137326
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137040%_
        (apply make-instance gxc#::basic-xform::t _%$args137040%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp137327
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
        (__make-promise __tmp137327)))
    (define gxc#apply-begin%
      (lambda (_%self136996%_ _%stx136997%_)
        (let* ((_%g136999137009%_
                (lambda (_%g137000137006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137000137006%_))))
               (_%g136998137036%_
                (lambda (_%g137000137012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137000137012%_))
                      (let ((_%e137002137014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137000137012%_))))
                        (let ((_%hd137003137017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137002137014%_)))
                              (_%tl137004137019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137002137014%_))))
                          ((lambda (_%L137022%_)
                             (for-each
                              (lambda (_%g137031137033%_)
                                (gxc#compile-e__1
                                 _%self136996%_
                                 _%g137031137033%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137022%_))))
                           _%tl137004137019%_)))
                      (_%g136999137009%_ _%g137000137012%_)))))
          (_%g136998137036%_ _%stx136997%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self136957%_ _%stx136958%_)
        (let* ((_%g136960136970%_
                (lambda (_%g136961136967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136961136967%_))))
               (_%g136959136993%_
                (lambda (_%g136961136973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136961136973%_))
                      (let ((_%e136963136975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136961136973%_))))
                        (let ((_%hd136964136978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136963136975%_)))
                              (_%tl136965136980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136963136975%_))))
                          ((lambda (_%L136983%_)
                             (gxc#compile-e__1
                              _%self136957%_
                              (last _%L136983%_)))
                           _%tl136965136980%_)))
                      (_%g136960136970%_ _%g136961136973%_)))))
          (_%g136959136993%_ _%stx136958%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self136953%_ _%stx136954%_)
        (let ((__tmp137330
               (lambda () (gxc#apply-begin% _%self136953%_ _%stx136954%_)))
              (__tmp137328
               (let ((__tmp137329
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp137329 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp137330
           gx#current-expander-phi
           __tmp137328))))
    (define gxc#apply-module%
      (lambda (_%self136892%_ _%stx136893%_)
        (let* ((_%g136895136909%_
                (lambda (_%g136896136906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136896136906%_))))
               (_%g136894136950%_
                (lambda (_%g136896136912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136896136912%_))
                      (let ((_%e136899136914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136896136912%_))))
                        (let ((_%hd136900136917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136899136914%_)))
                              (_%tl136901136919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136899136914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136901136919%_))
                              (let ((_%e136902136922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136901136919%_))))
                                (let ((_%hd136903136925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136902136922%_)))
                                      (_%tl136904136927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136902136922%_))))
                                  ((lambda (_%L136930%_ _%L136931%_)
                                     (let* ((_%ctx136944%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136931%_)))
                                            (_%ctx-stx136946%_
                                             (##structure-ref
                                              _%ctx136944%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp137331
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self136892%_
                                                _%ctx-stx136946%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137331
                                        gx#current-expander-context
                                        _%ctx136944%_)))
                                   _%tl136904136927%_
                                   _%hd136903136925%_)))
                              (_%g136895136909%_ _%g136896136912%_))))
                      (_%g136895136909%_ _%g136896136912%_)))))
          (_%g136894136950%_ _%stx136893%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self136824%_ _%stx136825%_)
        (let* ((_%g136827136844%_
                (lambda (_%g136828136841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136828136841%_))))
               (_%g136826136889%_
                (lambda (_%g136828136847%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136828136847%_))
                      (let ((_%e136831136849%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136828136847%_))))
                        (let ((_%hd136832136852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136831136849%_)))
                              (_%tl136833136854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136831136849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136833136854%_))
                              (let ((_%e136834136857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136833136854%_))))
                                (let ((_%hd136835136860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136834136857%_)))
                                      (_%tl136836136862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136834136857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136836136862%_))
                                      (let ((_%e136837136865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136836136862%_))))
                                        (let ((_%hd136838136868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136837136865%_)))
                                              (_%tl136839136870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136837136865%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136839136870%_))
                                              ((lambda (_%L136873%_
                                                        _%L136874%_)
                                                 (gxc#compile-e__1
                                                  _%self136824%_
                                                  _%L136873%_))
                                               _%hd136838136868%_
                                               _%hd136835136860%_)
                                              (_%g136827136844%_
                                               _%g136828136847%_))))
                                      (_%g136827136844%_ _%g136828136847%_))))
                              (_%g136827136844%_ _%g136828136847%_))))
                      (_%g136827136844%_ _%g136828136847%_)))))
          (_%g136826136889%_ _%stx136825%_))))
    (define gxc#apply-define-values%
      (lambda (_%self136756%_ _%stx136757%_)
        (let* ((_%g136759136776%_
                (lambda (_%g136760136773%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136760136773%_))))
               (_%g136758136821%_
                (lambda (_%g136760136779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136760136779%_))
                      (let ((_%e136763136781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136760136779%_))))
                        (let ((_%hd136764136784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136763136781%_)))
                              (_%tl136765136786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136763136781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136765136786%_))
                              (let ((_%e136766136789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136765136786%_))))
                                (let ((_%hd136767136792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136766136789%_)))
                                      (_%tl136768136794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136766136789%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136768136794%_))
                                      (let ((_%e136769136797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136768136794%_))))
                                        (let ((_%hd136770136800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136769136797%_)))
                                              (_%tl136771136802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136769136797%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136771136802%_))
                                              ((lambda (_%L136805%_
                                                        _%L136806%_)
                                                 (gxc#compile-e__1
                                                  _%self136756%_
                                                  _%L136805%_))
                                               _%hd136770136800%_
                                               _%hd136767136792%_)
                                              (_%g136759136776%_
                                               _%g136760136779%_))))
                                      (_%g136759136776%_ _%g136760136779%_))))
                              (_%g136759136776%_ _%g136760136779%_))))
                      (_%g136759136776%_ _%g136760136779%_)))))
          (_%g136758136821%_ _%stx136757%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self136687%_ _%stx136688%_)
        (let* ((_%g136690136707%_
                (lambda (_%g136691136704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136691136704%_))))
               (_%g136689136753%_
                (lambda (_%g136691136710%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136691136710%_))
                      (let ((_%e136694136712%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136691136710%_))))
                        (let ((_%hd136695136715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136694136712%_)))
                              (_%tl136696136717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136694136712%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136696136717%_))
                              (let ((_%e136697136720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136696136717%_))))
                                (let ((_%hd136698136723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136697136720%_)))
                                      (_%tl136699136725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136697136720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136699136725%_))
                                      (let ((_%e136700136728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136699136725%_))))
                                        (let ((_%hd136701136731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136700136728%_)))
                                              (_%tl136702136733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136700136728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136702136733%_))
                                              ((lambda (_%L136736%_
                                                        _%L136737%_)
                                                 (let ((__tmp137334
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self136687%_
                                                           _%L136736%_)))
                                                       (__tmp137332
                                                        (let ((__tmp137333
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137333 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137334
                                                    gx#current-expander-phi
                                                    __tmp137332)))
                                               _%hd136701136731%_
                                               _%hd136698136723%_)
                                              (_%g136690136707%_
                                               _%g136691136710%_))))
                                      (_%g136690136707%_ _%g136691136710%_))))
                              (_%g136690136707%_ _%g136691136710%_))))
                      (_%g136690136707%_ _%g136691136710%_)))))
          (_%g136689136753%_ _%stx136688%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self136619%_ _%stx136620%_)
        (let* ((_%g136622136639%_
                (lambda (_%g136623136636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136623136636%_))))
               (_%g136621136684%_
                (lambda (_%g136623136642%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136623136642%_))
                      (let ((_%e136626136644%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136623136642%_))))
                        (let ((_%hd136627136647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136626136644%_)))
                              (_%tl136628136649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136626136644%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136628136649%_))
                              (let ((_%e136629136652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136628136649%_))))
                                (let ((_%hd136630136655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136629136652%_)))
                                      (_%tl136631136657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136629136652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136631136657%_))
                                      (let ((_%e136632136660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136631136657%_))))
                                        (let ((_%hd136633136663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136632136660%_)))
                                              (_%tl136634136665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136632136660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136634136665%_))
                                              ((lambda (_%L136668%_
                                                        _%L136669%_)
                                                 (gxc#compile-e__1
                                                  _%self136619%_
                                                  _%L136668%_))
                                               _%hd136633136663%_
                                               _%hd136630136655%_)
                                              (_%g136622136639%_
                                               _%g136623136642%_))))
                                      (_%g136622136639%_ _%g136623136642%_))))
                              (_%g136622136639%_ _%g136623136642%_))))
                      (_%g136622136639%_ _%g136623136642%_)))))
          (_%g136621136684%_ _%stx136620%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self136501%_ _%stx136502%_)
        (let* ((_%g136504136532%_
                (lambda (_%g136505136529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136505136529%_))))
               (_%g136503136616%_
                (lambda (_%g136505136535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136505136535%_))
                      (let ((_%e136508136537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136505136535%_))))
                        (let ((_%hd136509136540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136508136537%_)))
                              (_%tl136510136542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136508136537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136510136542%_))
                              (let ((_g137335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136510136542%_
                                        '0))))
                                (begin
                                  (let ((_g137336_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137335_)
                                               (##vector-length _g137335_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137336_ 2)))
                                        (error "Context expects 2 values"
                                               _g137336_)))
                                  (let ((_%target136511136545%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137335_ 0)))
                                        (_%tl136513136547%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137335_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136513136547%_))
                                        (letrec ((_%loop136514136550%_
                                                  (lambda (_%hd136512136553%_
                                                           _%body136518136555%_
                                                           _%hd136519136557%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136512136553%_))
                                                        (let ((_%e136515136560%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136512136553%_))))
                  (let ((_%lp-hd136516136563%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136515136560%_)))
                        (_%lp-tl136517136565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136515136560%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd136516136563%_))
                        (let ((_%e136522136568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd136516136563%_))))
                          (let ((_%hd136523136571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136522136568%_)))
                                (_%tl136524136573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136522136568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136524136573%_))
                                (let ((_%e136525136576%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136524136573%_))))
                                  (let ((_%hd136526136579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136525136576%_)))
                                        (_%tl136527136581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136525136576%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136527136581%_))
                                        (_%loop136514136550%_
                                         _%lp-tl136517136565%_
                                         (cons _%hd136526136579%_
                                               _%body136518136555%_)
                                         (cons _%hd136523136571%_
                                               _%hd136519136557%_))
                                        (_%g136504136532%_
                                         _%g136505136535%_))))
                                (_%g136504136532%_ _%g136505136535%_))))
                        (_%g136504136532%_ _%g136505136535%_))))
                (let ((_%body136520136584%_ (reverse _%body136518136555%_))
                      (_%hd136521136586%_ (reverse _%hd136519136557%_)))
                  ((lambda (_%L136589%_ _%L136590%_)
                     (for-each
                      (lambda (_%g136604136606%_)
                        (gxc#compile-e__1 _%self136501%_ _%g136604136606%_))
                      (let ((__tmp137337
                             (lambda (_%g136608136611%_ _%g136609136613%_)
                               (cons _%g136608136611%_ _%g136609136613%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137337 '() _%L136589%_))))
                   _%body136520136584%_
                   _%hd136521136586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136514136550%_
                                           _%target136511136545%_
                                           '()
                                           '()))
                                        (_%g136504136532%_
                                         _%g136505136535%_)))))
                              (_%g136504136532%_ _%g136505136535%_))))
                      (_%g136504136532%_ _%g136505136535%_)))))
          (_%g136503136616%_ _%stx136502%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self136354%_ _%stx136355%_)
        (let* ((_%g136357136392%_
                (lambda (_%g136358136389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136358136389%_))))
               (_%g136356136498%_
                (lambda (_%g136358136395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136358136395%_))
                      (let ((_%e136362136397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136358136395%_))))
                        (let ((_%hd136363136400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136362136397%_)))
                              (_%tl136364136402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136362136397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136364136402%_))
                              (let ((_%e136365136405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136364136402%_))))
                                (let ((_%hd136366136408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136365136405%_)))
                                      (_%tl136367136410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136365136405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136366136408%_))
                                      (let ((_g137338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136366136408%_
                                                '0))))
                                        (begin
                                          (let ((_g137339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137338_)
                                                       (##vector-length
                                                        _g137338_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137339_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137339_)))
                                          (let ((_%target136368136413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137338_ 0)))
                                                (_%tl136370136415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137338_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136370136415%_))
                                                (letrec ((_%loop136371136418%_
                                                          (lambda (_%hd136369136421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136375136423%_
                           _%hd136376136425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136369136421%_))
                        (let ((_%e136372136428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136369136421%_))))
                          (let ((_%lp-hd136373136431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136372136428%_)))
                                (_%lp-tl136374136433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136372136428%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136373136431%_))
                                (let ((_%e136382136436%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136373136431%_))))
                                  (let ((_%hd136383136439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136382136436%_)))
                                        (_%tl136384136441%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136382136436%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136384136441%_))
                                        (let ((_%e136385136444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136384136441%_))))
                                          (let ((_%hd136386136447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136385136444%_)))
                                                (_%tl136387136449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136385136444%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136387136449%_))
                                                (_%loop136371136418%_
                                                 _%lp-tl136374136433%_
                                                 (cons _%hd136386136447%_
                                                       _%expr136375136423%_)
                                                 (cons _%hd136383136439%_
                                                       _%hd136376136425%_))
                                                (_%g136357136392%_
                                                 _%g136358136395%_))))
                                        (_%g136357136392%_
                                         _%g136358136395%_))))
                                (_%g136357136392%_ _%g136358136395%_))))
                        (let ((_%expr136377136452%_
                               (reverse _%expr136375136423%_))
                              (_%hd136378136454%_
                               (reverse _%hd136376136425%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136367136410%_))
                              (let ((_%e136379136457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136367136410%_))))
                                (let ((_%hd136380136460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136379136457%_)))
                                      (_%tl136381136462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136379136457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136381136462%_))
                                      ((lambda (_%L136465%_
                                                _%L136466%_
                                                _%L136467%_)
                                         (for-each
                                          (lambda (_%g136486136488%_)
                                            (gxc#compile-e__1
                                             _%self136354%_
                                             _%g136486136488%_))
                                          (let ((__tmp137341
                                                 (lambda (_%g136490136493%_
                                                          _%g136491136495%_)
                                                   (cons _%g136490136493%_
                                                         _%g136491136495%_)))
                                                (__tmp137340
                                                 (cons _%L136465%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137341
                                             __tmp137340
                                             _%L136466%_))))
                                       _%hd136380136460%_
                                       _%expr136377136452%_
                                       _%hd136378136454%_)
                                      (_%g136357136392%_ _%g136358136395%_))))
                              (_%g136357136392%_ _%g136358136395%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136371136418%_
                                                   _%target136368136413%_
                                                   '()
                                                   '()))
                                                (_%g136357136392%_
                                                 _%g136358136395%_)))))
                                      (_%g136357136392%_ _%g136358136395%_))))
                              (_%g136357136392%_ _%g136358136395%_))))
                      (_%g136357136392%_ _%g136358136395%_)))))
          (_%g136356136498%_ _%stx136355%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self136299%_ _%stx136300%_)
        (let* ((_%g136302136316%_
                (lambda (_%g136303136313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136303136313%_))))
               (_%g136301136351%_
                (lambda (_%g136303136319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136303136319%_))
                      (let ((_%e136306136321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136303136319%_))))
                        (let ((_%hd136307136324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136306136321%_)))
                              (_%tl136308136326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136306136321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136308136326%_))
                              (let ((_%e136309136329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136308136326%_))))
                                (let ((_%hd136310136332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136309136329%_)))
                                      (_%tl136311136334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136309136329%_))))
                                  ((lambda (_%L136337%_ _%L136338%_)
                                     (gxc#compile-e__1
                                      _%self136299%_
                                      (last _%L136337%_)))
                                   _%tl136311136334%_
                                   _%hd136310136332%_)))
                              (_%g136302136316%_ _%g136303136319%_))))
                      (_%g136302136316%_ _%g136303136319%_)))))
          (_%g136301136351%_ _%stx136300%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self136231%_ _%stx136232%_)
        (let* ((_%g136234136251%_
                (lambda (_%g136235136248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136235136248%_))))
               (_%g136233136296%_
                (lambda (_%g136235136254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136235136254%_))
                      (let ((_%e136238136256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136235136254%_))))
                        (let ((_%hd136239136259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136238136256%_)))
                              (_%tl136240136261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136238136256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136240136261%_))
                              (let ((_%e136241136264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136240136261%_))))
                                (let ((_%hd136242136267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136241136264%_)))
                                      (_%tl136243136269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136241136264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136243136269%_))
                                      (let ((_%e136244136272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136243136269%_))))
                                        (let ((_%hd136245136275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136244136272%_)))
                                              (_%tl136246136277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136244136272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136246136277%_))
                                              ((lambda (_%L136280%_
                                                        _%L136281%_)
                                                 (gxc#compile-e__1
                                                  _%self136231%_
                                                  _%L136280%_))
                                               _%hd136245136275%_
                                               _%hd136242136267%_)
                                              (_%g136234136251%_
                                               _%g136235136254%_))))
                                      (_%g136234136251%_ _%g136235136254%_))))
                              (_%g136234136251%_ _%g136235136254%_))))
                      (_%g136234136251%_ _%g136235136254%_)))))
          (_%g136233136296%_ _%stx136232%_))))
    (define gxc#apply-operands
      (lambda (_%self136144%_ _%stx136145%_)
        (let* ((_%g136147136166%_
                (lambda (_%g136148136163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136148136163%_))))
               (_%g136146136228%_
                (lambda (_%g136148136169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136148136169%_))
                      (let ((_%e136150136171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136148136169%_))))
                        (let ((_%hd136151136174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136150136171%_)))
                              (_%tl136152136176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136150136171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136152136176%_))
                              (let ((_g137342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136152136176%_
                                        '0))))
                                (begin
                                  (let ((_g137343_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137342_)
                                               (##vector-length _g137342_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137343_ 2)))
                                        (error "Context expects 2 values"
                                               _g137343_)))
                                  (let ((_%target136153136179%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137342_ 0)))
                                        (_%tl136155136181%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137342_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136155136181%_))
                                        (letrec ((_%loop136156136184%_
                                                  (lambda (_%hd136154136187%_
                                                           _%rands136160136189%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136154136187%_))
                                                        (let ((_%e136157136192%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136154136187%_))))
                  (let ((_%lp-hd136158136195%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136157136192%_)))
                        (_%lp-tl136159136197%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136157136192%_))))
                    (_%loop136156136184%_
                     _%lp-tl136159136197%_
                     (cons _%lp-hd136158136195%_ _%rands136160136189%_))))
                (let ((_%rands136161136200%_ (reverse _%rands136160136189%_)))
                  ((lambda (_%L136203%_)
                     (for-each
                      (lambda (_%g136216136218%_)
                        (gxc#compile-e__1 _%self136144%_ _%g136216136218%_))
                      (let ((__tmp137344
                             (lambda (_%g136220136223%_ _%g136221136225%_)
                               (cons _%g136220136223%_ _%g136221136225%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137344 '() _%L136203%_))))
                   _%rands136161136200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136156136184%_
                                           _%target136153136179%_
                                           '()))
                                        (_%g136147136166%_
                                         _%g136148136169%_)))))
                              (_%g136147136166%_ _%g136148136169%_))))
                      (_%g136147136166%_ _%g136148136169%_)))))
          (_%g136146136228%_ _%stx136145%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136141%_ _%src-stx136142%_)
        (let ((__tmp137345
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136142%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136141%_ __tmp137345))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136137%_ _%src-stx136138%_ _%ctx136139%_)
        (gxc#compile-e__1
         _%ctx136139%_
         (gxc#xform-wrap-source _%stx136137%_ _%src-stx136138%_))))
    (define gxc#xform-begin%
      (lambda (_%self136092%_ _%stx136093%_)
        (let* ((_%g136095136105%_
                (lambda (_%g136096136102%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136096136102%_))))
               (_%g136094136134%_
                (lambda (_%g136096136108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136096136108%_))
                      (let ((_%e136098136110%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136096136108%_))))
                        (let ((_%hd136099136113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136098136110%_)))
                              (_%tl136100136115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136098136110%_))))
                          ((lambda (_%L136118%_)
                             (let ((_%forms136132%_
                                    (map (lambda (_%g136127136129%_)
                                           (gxc#compile-e__1
                                            _%self136092%_
                                            _%g136127136129%_))
                                         _%L136118%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136132%_)
                                _%stx136093%_)))
                           _%tl136100136115%_)))
                      (_%g136095136105%_ _%g136096136108%_)))))
          (_%g136094136134%_ _%stx136093%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136046%_ _%stx136047%_)
        (let* ((_%g136049136059%_
                (lambda (_%g136050136056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136050136056%_))))
               (_%g136048136089%_
                (lambda (_%g136050136062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136050136062%_))
                      (let ((_%e136052136064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136050136062%_))))
                        (let ((_%hd136053136067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136052136064%_)))
                              (_%tl136054136069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136052136064%_))))
                          ((lambda (_%L136072%_)
                             (let ((__tmp137348
                                    (lambda ()
                                      (let ((_%forms136087%_
                                             (map (lambda (_%g136082136084%_)
                                                    (gxc#compile-e__1
                                                     _%self136046%_
                                                     _%g136082136084%_))
                                                  _%L136072%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136087%_)
                                         _%stx136047%_))))
                                   (__tmp137346
                                    (let ((__tmp137347
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp137347 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137348
                                gx#current-expander-phi
                                __tmp137346)))
                           _%tl136054136069%_)))
                      (_%g136049136059%_ _%g136050136062%_)))))
          (_%g136048136089%_ _%stx136047%_))))
    (define gxc#xform-module%
      (lambda (_%self135983%_ _%stx135984%_)
        (let* ((_%g135986136000%_
                (lambda (_%g135987135997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135987135997%_))))
               (_%g135985136043%_
                (lambda (_%g135987136003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135987136003%_))
                      (let ((_%e135990136005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135987136003%_))))
                        (let ((_%hd135991136008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135990136005%_)))
                              (_%tl135992136010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135990136005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135992136010%_))
                              (let ((_%e135993136013%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135992136010%_))))
                                (let ((_%hd135994136016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135993136013%_)))
                                      (_%tl135995136018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135993136013%_))))
                                  ((lambda (_%L136021%_ _%L136022%_)
                                     (let* ((_%ctx136035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136022%_)))
                                            (_%code136037%_
                                             (##structure-ref
                                              _%ctx136035%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136040%_
                                             (let ((__tmp137349
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self135983%_
                                                       _%code136037%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp137349
                                                gx#current-expander-context
                                                _%ctx136035%_))))
                                       (##structure-set!
                                        _%ctx136035%_
                                        _%code136040%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136022%_
                                                    (cons _%code136040%_ '())))
                                        _%stx135984%_)))
                                   _%tl135995136018%_
                                   _%hd135994136016%_)))
                              (_%g135986136000%_ _%g135987136003%_))))
                      (_%g135986136000%_ _%g135987136003%_)))))
          (_%g135985136043%_ _%stx135984%_))))
    (define gxc#xform-define-values%
      (lambda (_%self135913%_ _%stx135914%_)
        (let* ((_%g135916135933%_
                (lambda (_%g135917135930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135917135930%_))))
               (_%g135915135980%_
                (lambda (_%g135917135936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135917135936%_))
                      (let ((_%e135920135938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135917135936%_))))
                        (let ((_%hd135921135941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135920135938%_)))
                              (_%tl135922135943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135920135938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135922135943%_))
                              (let ((_%e135923135946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135922135943%_))))
                                (let ((_%hd135924135949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135923135946%_)))
                                      (_%tl135925135951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135923135946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135925135951%_))
                                      (let ((_%e135926135954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135925135951%_))))
                                        (let ((_%hd135927135957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135926135954%_)))
                                              (_%tl135928135959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135926135954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135928135959%_))
                                              ((lambda (_%L135962%_
                                                        _%L135963%_)
                                                 (let ((_%expr135978%_
                                                        (gxc#compile-e__1
                                                         _%self135913%_
                                                         _%L135962%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L135963%_
                                                                (cons _%expr135978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135914%_)))
                                               _%hd135927135957%_
                                               _%hd135924135949%_)
                                              (_%g135916135933%_
                                               _%g135917135936%_))))
                                      (_%g135916135933%_ _%g135917135936%_))))
                              (_%g135916135933%_ _%g135917135936%_))))
                      (_%g135916135933%_ _%g135917135936%_)))))
          (_%g135915135980%_ _%stx135914%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self135842%_ _%stx135843%_)
        (let* ((_%g135845135862%_
                (lambda (_%g135846135859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135846135859%_))))
               (_%g135844135910%_
                (lambda (_%g135846135865%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135846135865%_))
                      (let ((_%e135849135867%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135846135865%_))))
                        (let ((_%hd135850135870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135849135867%_)))
                              (_%tl135851135872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135849135867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135851135872%_))
                              (let ((_%e135852135875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135851135872%_))))
                                (let ((_%hd135853135878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135852135875%_)))
                                      (_%tl135854135880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135852135875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135854135880%_))
                                      (let ((_%e135855135883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135854135880%_))))
                                        (let ((_%hd135856135886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135855135883%_)))
                                              (_%tl135857135888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135855135883%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135857135888%_))
                                              ((lambda (_%L135891%_
                                                        _%L135892%_)
                                                 (let ((__tmp137352
                                                        (lambda ()
                                                          (let ((_%expr135908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self135842%_ _%L135891%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L135892%_ (cons _%expr135908%_ '())))
                     _%stx135843%_))))
               (__tmp137350
                (let ((__tmp137351
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137351 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137352
                                                    gx#current-expander-phi
                                                    __tmp137350)))
                                               _%hd135856135886%_
                                               _%hd135853135878%_)
                                              (_%g135845135862%_
                                               _%g135846135865%_))))
                                      (_%g135845135862%_ _%g135846135865%_))))
                              (_%g135845135862%_ _%g135846135865%_))))
                      (_%g135845135862%_ _%g135846135865%_)))))
          (_%g135844135910%_ _%stx135843%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self135772%_ _%stx135773%_)
        (let* ((_%g135775135792%_
                (lambda (_%g135776135789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135776135789%_))))
               (_%g135774135839%_
                (lambda (_%g135776135795%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135776135795%_))
                      (let ((_%e135779135797%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135776135795%_))))
                        (let ((_%hd135780135800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135779135797%_)))
                              (_%tl135781135802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135779135797%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135781135802%_))
                              (let ((_%e135782135805%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135781135802%_))))
                                (let ((_%hd135783135808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135782135805%_)))
                                      (_%tl135784135810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135782135805%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135784135810%_))
                                      (let ((_%e135785135813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135784135810%_))))
                                        (let ((_%hd135786135816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135785135813%_)))
                                              (_%tl135787135818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135785135813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135787135818%_))
                                              ((lambda (_%L135821%_
                                                        _%L135822%_)
                                                 (let ((_%expr135837%_
                                                        (gxc#compile-e__1
                                                         _%self135772%_
                                                         _%L135821%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L135822%_
                                                                (cons _%expr135837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135773%_)))
                                               _%hd135786135816%_
                                               _%hd135783135808%_)
                                              (_%g135775135792%_
                                               _%g135776135795%_))))
                                      (_%g135775135792%_ _%g135776135795%_))))
                              (_%g135775135792%_ _%g135776135795%_))))
                      (_%g135775135792%_ _%g135776135795%_)))))
          (_%g135774135839%_ _%stx135773%_))))
    (define gxc#xform-lambda%
      (lambda (_%self135710%_ _%stx135711%_)
        (let* ((_%g135713135727%_
                (lambda (_%g135714135724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135714135724%_))))
               (_%g135712135769%_
                (lambda (_%g135714135730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135714135730%_))
                      (let ((_%e135717135732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135714135730%_))))
                        (let ((_%hd135718135735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135717135732%_)))
                              (_%tl135719135737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135717135732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135719135737%_))
                              (let ((_%e135720135740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135719135737%_))))
                                (let ((_%hd135721135743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135720135740%_)))
                                      (_%tl135722135745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135720135740%_))))
                                  ((lambda (_%L135748%_ _%L135749%_)
                                     (let ((__tmp137354
                                            (lambda ()
                                              (let ((_%body135767%_
                                                     (map (lambda (_%g135762135764%_)
                                                            (gxc#compile-e__1
                                                             _%self135710%_
                                                             _%g135762135764%_))
                                                          _%L135748%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L135749%_
                                                             _%body135767%_))
                                                 _%stx135711%_))))
                                           (__tmp137353
                                            (gxc#xform-let-locals
                                             _%L135749%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137354
                                        gxc#current-compile-local-env
                                        __tmp137353)))
                                   _%tl135722135745%_
                                   _%hd135721135743%_)))
                              (_%g135713135727%_ _%g135714135730%_))))
                      (_%g135713135727%_ _%g135714135730%_)))))
          (_%g135712135769%_ _%stx135711%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self135618%_ _%stx135619%_)
        (letrec ((_%clause-e135621%_
                  (lambda (_%clause135662%_)
                    (let* ((_%g135664135675%_
                            (lambda (_%g135665135672%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g135665135672%_))))
                           (_%g135663135707%_
                            (lambda (_%g135665135678%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g135665135678%_))
                                  (let ((_%e135668135680%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g135665135678%_))))
                                    (let ((_%hd135669135683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135668135680%_)))
                                          (_%tl135670135685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135668135680%_))))
                                      ((lambda (_%L135688%_ _%L135689%_)
                                         (let ((__tmp137356
                                                (lambda ()
                                                  (let ((_%body135705%_
                                                         (map (lambda (_%g135700135702%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self135618%_
                         _%g135700135702%_))
                      _%L135688%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L135689%_
                                                          _%body135705%_))))
                                               (__tmp137355
                                                (gxc#xform-let-locals
                                                 _%L135689%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp137356
                                            gxc#current-compile-local-env
                                            __tmp137355)))
                                       _%tl135670135685%_
                                       _%hd135669135683%_)))
                                  (_%g135664135675%_ _%g135665135678%_)))))
                      (_%g135663135707%_ _%clause135662%_)))))
          (let* ((_%g135623135633%_
                  (lambda (_%g135624135630%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135624135630%_))))
                 (_%g135622135659%_
                  (lambda (_%g135624135636%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135624135636%_))
                        (let ((_%e135626135638%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135624135636%_))))
                          (let ((_%hd135627135641%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135626135638%_)))
                                (_%tl135628135643%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135626135638%_))))
                            ((lambda (_%L135646%_)
                               (let ((_%clauses135657%_
                                      (map _%clause-e135621%_ _%L135646%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses135657%_)
                                  _%stx135619%_)))
                             _%tl135628135643%_)))
                        (_%g135623135633%_ _%g135624135636%_)))))
            (_%g135622135659%_ _%stx135619%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self135372%_ _%stx135373%_)
        (let* ((_%g135375135408%_
                (lambda (_%g135376135405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135376135405%_))))
               (_%g135374135615%_
                (lambda (_%g135376135411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135376135411%_))
                      (let ((_%e135381135413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135376135411%_))))
                        (let ((_%hd135382135416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135381135413%_)))
                              (_%tl135383135418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135381135413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135383135418%_))
                              (let ((_%e135384135421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135383135418%_))))
                                (let ((_%hd135385135424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135384135421%_)))
                                      (_%tl135386135426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135384135421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135385135424%_))
                                      (let ((_g137357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135385135424%_
                                                '0))))
                                        (begin
                                          (let ((_g137358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137357_)
                                                       (##vector-length
                                                        _g137357_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137358_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137358_)))
                                          (let ((_%target135387135429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137357_ 0)))
                                                (_%tl135389135431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137357_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135389135431%_))
                                                (letrec ((_%loop135390135434%_
                                                          (lambda (_%hd135388135437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135394135439%_
                           _%hd135395135441%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135388135437%_))
                        (let ((_%e135391135444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135388135437%_))))
                          (let ((_%lp-hd135392135447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135391135444%_)))
                                (_%lp-tl135393135449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135391135444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135392135447%_))
                                (let ((_%e135398135452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135392135447%_))))
                                  (let ((_%hd135399135455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135398135452%_)))
                                        (_%tl135400135457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135398135452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135400135457%_))
                                        (let ((_%e135401135460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135400135457%_))))
                                          (let ((_%hd135402135463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135401135460%_)))
                                                (_%tl135403135465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135401135460%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135403135465%_))
                                                (_%loop135390135434%_
                                                 _%lp-tl135393135449%_
                                                 (cons _%hd135402135463%_
                                                       _%expr135394135439%_)
                                                 (cons _%hd135399135455%_
                                                       _%hd135395135441%_))
                                                (_%g135375135408%_
                                                 _%g135376135411%_))))
                                        (_%g135375135408%_
                                         _%g135376135411%_))))
                                (_%g135375135408%_ _%g135376135411%_))))
                        (let ((_%expr135396135468%_
                               (reverse _%expr135394135439%_))
                              (_%hd135397135470%_
                               (reverse _%hd135395135441%_)))
                          ((lambda (_%L135473%_
                                    _%L135474%_
                                    _%L135475%_
                                    _%L135476%_)
                             (let* ((_%g135495135511%_
                                     (lambda (_%g135496135508%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135496135508%_))))
                                    (_%g135494135601%_
                                     (lambda (_%g135496135514%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g135496135514%_))
                                           (let ((_g137359_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g135496135514%_
                                                     '0))))
                                             (begin
                                               (let ((_g137360_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g137359_)
                                                            (##vector-length
                                                             _g137359_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g137360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g137360_)))
                                               (let ((_%target135498135516%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137359_
                                                         0)))
                                                     (_%tl135500135518%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137359_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl135500135518%_))
                                                     (letrec ((_%loop135501135521%_
                                                               (lambda (_%hd135499135524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr135505135526%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd135499135524%_))
                             (let ((_%e135502135529%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd135499135524%_))))
                               (let ((_%lp-hd135503135532%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e135502135529%_)))
                                     (_%lp-tl135504135534%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e135502135529%_))))
                                 (_%loop135501135521%_
                                  _%lp-tl135504135534%_
                                  (cons _%lp-hd135503135532%_
                                        _%expr135505135526%_))))
                             (let ((_%expr135506135537%_
                                    (reverse _%expr135505135526%_)))
                               ((lambda (_%L135540%_)
                                  (let ((__tmp137363
                                         (lambda ()
                                           (let* ((_%g135554135561%_
                                                   (lambda (_%g135555135558%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135555135558%_))))
                                                  (_%g135553135587%_
                                                   (lambda (_%g135555135564%_)
                                                     ((lambda (_%L135566%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135476%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135540%_
                                  _%L135475%_))
                               (let ((__tmp137364
                                      (lambda (_%g135576135580%_
                                               _%g135577135582%_
                                               _%g135578135584%_)
                                        (cons (cons _%g135577135582%_
                                                    (cons _%g135576135580%_
                                                          '()))
                                              _%g135578135584%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137364
                                  '()
                                  _%L135540%_
                                  _%L135475%_)))
                             _%L135566%_))
                 _%stx135373%_))
              _%g135555135564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135553135587%_
                                              (map (lambda (_%g135589135591%_)
                                                     (gxc#compile-e__1
                                                      _%self135372%_
                                                      _%g135589135591%_))
                                                   _%L135473%_)))))
                                        (__tmp137361
                                         (gxc#xform-let-locals
                                          (let ((__tmp137362
                                                 (lambda (_%g135593135596%_
                                                          _%g135594135598%_)
                                                   (cons _%g135593135596%_
                                                         _%g135594135598%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137362
                                             '()
                                             _%L135475%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp137363
                                     gxc#current-compile-local-env
                                     __tmp137361)))
                                _%expr135506135537%_))))))
               (_%loop135501135521%_ _%target135498135516%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135495135511%_
                                                      _%g135496135514%_)))))
                                           (_%g135495135511%_
                                            _%g135496135514%_)))))
                               (_%g135494135601%_
                                (map (lambda (_%g135603135605%_)
                                       (gxc#compile-e__1
                                        _%self135372%_
                                        _%g135603135605%_))
                                     (let ((__tmp137365
                                            (lambda (_%g135607135610%_
                                                     _%g135608135612%_)
                                              (cons _%g135607135610%_
                                                    _%g135608135612%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137365
                                        '()
                                        _%L135474%_))))))
                           _%tl135386135426%_
                           _%expr135396135468%_
                           _%hd135397135470%_
                           _%hd135382135416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135390135434%_
                                                   _%target135387135429%_
                                                   '()
                                                   '()))
                                                (_%g135375135408%_
                                                 _%g135376135411%_)))))
                                      (_%g135375135408%_ _%g135376135411%_))))
                              (_%g135375135408%_ _%g135376135411%_))))
                      (_%g135375135408%_ _%g135376135411%_)))))
          (_%g135374135615%_ _%stx135373%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135126%_ _%stx135127%_)
        (let* ((_%g135129135162%_
                (lambda (_%g135130135159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135130135159%_))))
               (_%g135128135369%_
                (lambda (_%g135130135165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135130135165%_))
                      (let ((_%e135135135167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135130135165%_))))
                        (let ((_%hd135136135170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135135135167%_)))
                              (_%tl135137135172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135135135167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135137135172%_))
                              (let ((_%e135138135175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135137135172%_))))
                                (let ((_%hd135139135178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135138135175%_)))
                                      (_%tl135140135180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135138135175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135139135178%_))
                                      (let ((_g137366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135139135178%_
                                                '0))))
                                        (begin
                                          (let ((_g137367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137366_)
                                                       (##vector-length
                                                        _g137366_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137367_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137367_)))
                                          (let ((_%target135141135183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137366_ 0)))
                                                (_%tl135143135185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137366_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135143135185%_))
                                                (letrec ((_%loop135144135188%_
                                                          (lambda (_%hd135142135191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135148135193%_
                           _%hd135149135195%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135142135191%_))
                        (let ((_%e135145135198%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135142135191%_))))
                          (let ((_%lp-hd135146135201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135145135198%_)))
                                (_%lp-tl135147135203%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135145135198%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135146135201%_))
                                (let ((_%e135152135206%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135146135201%_))))
                                  (let ((_%hd135153135209%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135152135206%_)))
                                        (_%tl135154135211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135152135206%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135154135211%_))
                                        (let ((_%e135155135214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135154135211%_))))
                                          (let ((_%hd135156135217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135155135214%_)))
                                                (_%tl135157135219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135155135214%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135157135219%_))
                                                (_%loop135144135188%_
                                                 _%lp-tl135147135203%_
                                                 (cons _%hd135156135217%_
                                                       _%expr135148135193%_)
                                                 (cons _%hd135153135209%_
                                                       _%hd135149135195%_))
                                                (_%g135129135162%_
                                                 _%g135130135165%_))))
                                        (_%g135129135162%_
                                         _%g135130135165%_))))
                                (_%g135129135162%_ _%g135130135165%_))))
                        (let ((_%expr135150135222%_
                               (reverse _%expr135148135193%_))
                              (_%hd135151135224%_
                               (reverse _%hd135149135195%_)))
                          ((lambda (_%L135227%_
                                    _%L135228%_
                                    _%L135229%_
                                    _%L135230%_)
                             (let ((__tmp137370
                                    (lambda ()
                                      (let* ((_%g135250135266%_
                                              (lambda (_%g135251135263%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g135251135263%_))))
                                             (_%g135249135348%_
                                              (lambda (_%g135251135269%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g135251135269%_))
                                                    (let ((_g137371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g135251135269%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g137372_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g137371_)
                             (##vector-length _g137371_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g137372_ 2)))
                      (error "Context expects 2 values" _g137372_)))
                (let ((_%target135253135271%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137371_ 0)))
                      (_%tl135255135273%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137371_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl135255135273%_))
                      (letrec ((_%loop135256135276%_
                                (lambda (_%hd135254135279%_
                                         _%expr135260135281%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd135254135279%_))
                                      (let ((_%e135257135284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd135254135279%_))))
                                        (let ((_%lp-hd135258135287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135257135284%_)))
                                              (_%lp-tl135259135289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135257135284%_))))
                                          (_%loop135256135276%_
                                           _%lp-tl135259135289%_
                                           (cons _%lp-hd135258135287%_
                                                 _%expr135260135281%_))))
                                      (let ((_%expr135261135292%_
                                             (reverse _%expr135260135281%_)))
                                        ((lambda (_%L135295%_)
                                           (let* ((_%g135309135316%_
                                                   (lambda (_%g135310135313%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135310135313%_))))
                                                  (_%g135308135341%_
                                                   (lambda (_%g135310135319%_)
                                                     ((lambda (_%L135321%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135230%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135295%_
                                  _%L135229%_))
                               (let ((__tmp137373
                                      (lambda (_%g135330135334%_
                                               _%g135331135336%_
                                               _%g135332135338%_)
                                        (cons (cons _%g135331135336%_
                                                    (cons _%g135330135334%_
                                                          '()))
                                              _%g135332135338%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137373
                                  '()
                                  _%L135295%_
                                  _%L135229%_)))
                             _%L135321%_))
                 _%stx135127%_))
              _%g135310135319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135308135341%_
                                              (map (lambda (_%g135343135345%_)
                                                     (gxc#compile-e__1
                                                      _%self135126%_
                                                      _%g135343135345%_))
                                                   _%L135227%_))))
                                         _%expr135261135292%_))))))
                        (_%loop135256135276%_ _%target135253135271%_ '()))
                      (_%g135250135266%_ _%g135251135269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g135250135266%_
                                                     _%g135251135269%_)))))
                                        (_%g135249135348%_
                                         (map (lambda (_%g135350135352%_)
                                                (gxc#compile-e__1
                                                 _%self135126%_
                                                 _%g135350135352%_))
                                              (let ((__tmp137374
                                                     (lambda (_%g135354135357%_
                                                              _%g135355135359%_)
                                                       (cons _%g135354135357%_
                                                             _%g135355135359%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp137374
                                                 '()
                                                 _%L135228%_)))))))
                                   (__tmp137368
                                    (gxc#xform-let-locals
                                     (let ((__tmp137369
                                            (lambda (_%g135361135364%_
                                                     _%g135362135366%_)
                                              (cons _%g135361135364%_
                                                    _%g135362135366%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137369
                                        '()
                                        _%L135229%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137370
                                gxc#current-compile-local-env
                                __tmp137368)))
                           _%tl135140135180%_
                           _%expr135150135222%_
                           _%hd135151135224%_
                           _%hd135136135170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135144135188%_
                                                   _%target135141135183%_
                                                   '()
                                                   '()))
                                                (_%g135129135162%_
                                                 _%g135130135165%_)))))
                                      (_%g135129135162%_ _%g135130135165%_))))
                              (_%g135129135162%_ _%g135130135165%_))))
                      (_%g135129135162%_ _%g135130135165%_)))))
          (_%g135128135369%_ _%stx135127%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings134993%_)
        (letrec ((_%flatten134995%_
                  (lambda (_%maybe-lst135053%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135053%_))
                        (cons _%maybe-lst135053%_ '())
                        (let _%loop135055%_ ((_%rest135057%_
                                              _%maybe-lst135053%_)
                                             (_%result135058%_ '()))
                          (let* ((_%__stx137262137263%_ _%rest135057%_)
                                 (_%g135062135074%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx137262137263%_)))))
                            (let ((_%__kont137264137265%_
                                   (lambda (_%L135112%_ _%L135113%_)
                                     (_%loop135055%_
                                      _%L135112%_
                                      (let ((__tmp137375
                                             (_%flatten134995%_ _%L135113%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135058%_
                                         __tmp137375)))))
                                  (_%__kont137266137267%_
                                   (lambda (_%L135086%_)
                                     (cons _%L135086%_ _%result135058%_)))
                                  (_%__kont137268137269%_
                                   (lambda () _%result135058%_)))
                              (let ((_%g135060135099%_
                                     (lambda ()
                                       (let ((_%L135086%_
                                              _%__stx137262137263%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135086%_))
                                             (_%__kont137266137267%_
                                              _%L135086%_)
                                             (_%__kont137268137269%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx137262137263%_))
                                    (let ((_%e135066135104%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx137262137263%_))))
                                      (let ((_%tl135068135109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135066135104%_)))
                                            (_%hd135067135107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135066135104%_))))
                                        (_%__kont137264137265%_
                                         _%tl135068135109%_
                                         _%hd135067135107%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135060135099%_)))))))))))
          (let _%loop134997%_ ((_%rest134999%_
                                (_%flatten134995%_ _%bindings134993%_))
                               (_%locals135000%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135001135012%_ _%rest134999%_)
                   (_%E135005135016%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135001135012%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135008135041%_
                     (lambda (_%rest135038%_ _%id135039%_)
                       (_%loop134997%_
                        _%rest135038%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135039%_))
                              _%locals135000%_))))
                    (_%K135007135030%_
                     (lambda (_%id135028%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135028%_))
                             _%locals135000%_)))
                    (_%K135006135021%_ (lambda () _%locals135000%_)))
                (let ((_%try-match135003135035%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135001135012%_))
                             (let ((_%id135033%_ _%rest135001135012%_))
                               (_%K135007135030%_ _%id135033%_))
                             (_%K135006135021%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest135001135012%_))
                      (let ((_%tl135010135046%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135001135012%_)))
                            (_%hd135009135044%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135001135012%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135009135044%_))
                            (let ((_%id135049%_ _%hd135009135044%_)
                                  (_%rest135051%_ _%tl135010135046%_))
                              (_%K135008135041%_ _%rest135051%_ _%id135049%_))
                            (_%K135006135021%_)))
                      (_%try-match135003135035%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self134945%_ _%stx134946%_)
        (let* ((_%g134948134959%_
                (lambda (_%g134949134956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134949134956%_))))
               (_%g134947134990%_
                (lambda (_%g134949134962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134949134962%_))
                      (let ((_%e134952134964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134949134962%_))))
                        (let ((_%hd134953134967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134952134964%_)))
                              (_%tl134954134969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134952134964%_))))
                          ((lambda (_%L134972%_ _%L134973%_)
                             (let ((_%rands134988%_
                                    (map (lambda (_%g134983134985%_)
                                           (gxc#compile-e__1
                                            _%self134945%_
                                            _%g134983134985%_))
                                         _%L134972%_)))
                               (gxc#xform-wrap-source
                                (cons _%L134973%_ _%rands134988%_)
                                _%stx134946%_)))
                           _%tl134954134969%_
                           _%hd134953134967%_)))
                      (_%g134948134959%_ _%g134949134962%_)))))
          (_%g134947134990%_ _%stx134946%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self134875%_ _%stx134876%_)
        (let* ((_%g134878134895%_
                (lambda (_%g134879134892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134879134892%_))))
               (_%g134877134942%_
                (lambda (_%g134879134898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134879134898%_))
                      (let ((_%e134882134900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134879134898%_))))
                        (let ((_%hd134883134903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134882134900%_)))
                              (_%tl134884134905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134882134900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134884134905%_))
                              (let ((_%e134885134908%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134884134905%_))))
                                (let ((_%hd134886134911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134885134908%_)))
                                      (_%tl134887134913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134885134908%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134887134913%_))
                                      (let ((_%e134888134916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134887134913%_))))
                                        (let ((_%hd134889134919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134888134916%_)))
                                              (_%tl134890134921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134888134916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134890134921%_))
                                              ((lambda (_%L134924%_
                                                        _%L134925%_)
                                                 (let ((_%expr134940%_
                                                        (gxc#compile-e__1
                                                         _%self134875%_
                                                         _%L134924%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L134925%_
                                                                (cons _%expr134940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134876%_)))
                                               _%hd134889134919%_
                                               _%hd134886134911%_)
                                              (_%g134878134895%_
                                               _%g134879134898%_))))
                                      (_%g134878134895%_ _%g134879134898%_))))
                              (_%g134878134895%_ _%g134879134898%_))))
                      (_%g134878134895%_ _%g134879134898%_)))))
          (_%g134877134942%_ _%stx134876%_))))))
