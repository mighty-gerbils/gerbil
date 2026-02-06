(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770342549)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx184007%_)
        (let* ((_%self184009%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e184011%_
                (let ((__tmp184229 (gxc#stx-car-e _%stx184007%_)))
                  (declare (not safe))
                  (method-ref _%self184009%_ __tmp184229))))
          (if _%$e184011%_
              ((lambda (_%method184014%_)
                 (declare (not safe))
                 (let ((_%$e184017%_ (gx#stx-source _%stx184007%_)))
                   (if _%$e184017%_
                       ((lambda (_%source184020%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method184014%_ _%self184009%_ _%stx184007%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source184020%_ '()))
                                 (let ((_%$e184024%_
                                        (gxc#current-compile-context)))
                                   (if _%$e184024%_ _%$e184024%_ '())))))
                        _%$e184017%_)
                       (_%method184014%_ _%self184009%_ _%stx184007%_))))
               _%$e184011%_)
              (let ((__tmp184231 (gxc#stx-car-e _%stx184007%_))
                    (__tmp184230
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx184007%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self184009%_
                       __tmp184231
                       __tmp184230))))))
    (define gxc#compile-e__1
      (lambda (_%self184029%_ _%stx184030%_)
        (let ((_%$e184032%_
               (let ((__tmp184232 (gxc#stx-car-e _%stx184030%_)))
                 (declare (not safe))
                 (method-ref _%self184029%_ __tmp184232))))
          (if _%$e184032%_
              ((lambda (_%method184035%_)
                 (declare (not safe))
                 (let ((_%$e184038%_ (gx#stx-source _%stx184030%_)))
                   (if _%$e184038%_
                       ((lambda (_%source184041%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method184035%_ _%self184029%_ _%stx184030%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source184041%_ '()))
                                 (let ((_%$e184045%_
                                        (gxc#current-compile-context)))
                                   (if _%$e184045%_ _%$e184045%_ '())))))
                        _%$e184038%_)
                       (_%method184035%_ _%self184029%_ _%stx184030%_))))
               _%$e184032%_)
              (let ((__tmp184234 (gxc#stx-car-e _%stx184030%_))
                    (__tmp184233
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx184030%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self184029%_
                       __tmp184234
                       __tmp184233))))))
    (define gxc#compile-e
      (lambda _g184235_
        (let ((_g184236_ (let () (declare (not safe)) (##length _g184235_))))
          (cond ((let () (declare (not safe)) (##fx= _g184236_ 1))
                 (apply gxc#compile-e__0 _g184235_))
                ((let () (declare (not safe)) (##fx= _g184236_ 2))
                 (apply gxc#compile-e__1 _g184235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g184235_))))))
    (define gxc#stx-car-e
      (lambda (_%stx184005%_)
        (let ((__tmp184237
               (car (let () (declare (not safe)) (gx#stx-e _%stx184005%_)))))
          (declare (not safe))
          (gx#stx-e __tmp184237))))
    (define gxc#void-method (lambda (_%self184002%_ _%stx184003%_) '#!void))
    (define gxc#false-method (lambda (_%self183999%_ _%stx184000%_) '#f))
    (define gxc#true-method (lambda (_%self183996%_ _%stx183997%_) '#t))
    (define gxc#identity-method
      (lambda (_%self183993%_ _%stx183994%_) _%stx183994%_))
    (define gxc#::void-expression::t
      (let ((__tmp184238 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp184238
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args183990%_
        (apply make-instance gxc#::void-expression::t _%$args183990%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp184239
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
        (__make-atomic-promise __tmp184239)))
    (define gxc#::void-special-form::t
      (let ((__tmp184240 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp184240
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args183986%_
        (apply make-instance gxc#::void-special-form::t _%$args183986%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp184241
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
        (__make-atomic-promise __tmp184241)))
    (define gxc#::void::t
      (let ((__tmp184242
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp184242 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args183982%_
        (apply make-instance gxc#::void::t _%$args183982%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp184243
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp184243)))
    (define gxc#::false-expression::t
      (let ((__tmp184244 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp184244
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args183978%_
        (apply make-instance gxc#::false-expression::t _%$args183978%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp184245
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
        (__make-atomic-promise __tmp184245)))
    (define gxc#::false-special-form::t
      (let ((__tmp184246 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp184246
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args183974%_
        (apply make-instance gxc#::false-special-form::t _%$args183974%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp184247
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
        (__make-atomic-promise __tmp184247)))
    (define gxc#::false::t
      (let ((__tmp184248
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp184248 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args183970%_
        (apply make-instance gxc#::false::t _%$args183970%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp184249
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp184249)))
    (define gxc#::identity-expression::t
      (let ((__tmp184250 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp184250
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args183966%_
        (apply make-instance gxc#::identity-expression::t _%$args183966%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp184251
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
        (__make-atomic-promise __tmp184251)))
    (define gxc#::identity-special-form::t
      (let ((__tmp184252 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp184252
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args183962%_
        (apply make-instance gxc#::identity-special-form::t _%$args183962%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp184253
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
        (__make-atomic-promise __tmp184253)))
    (define gxc#::identity::t
      (let ((__tmp184254
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp184254
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args183958%_
        (apply make-instance gxc#::identity::t _%$args183958%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp184255
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp184255)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp184256 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp184256
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args183954%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args183954%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp184257
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
        (__make-atomic-promise __tmp184257)))
    (define gxc#::basic-xform::t
      (let ((__tmp184258
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp184258
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args183950%_
        (apply make-instance gxc#::basic-xform::t _%$args183950%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp184259
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
        (__make-atomic-promise __tmp184259)))
    (define gxc#apply-begin%
      (lambda (_%self183906%_ _%stx183907%_)
        (let* ((_%g183909183919%_
                (lambda (_%g183910183916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183910183916%_))))
               (_%g183908183946%_
                (lambda (_%g183910183922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183910183922%_))
                      (let ((_%e183912183924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183910183922%_))))
                        (let ((_%hd183913183927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183912183924%_)))
                              (_%tl183914183929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183912183924%_))))
                          ((lambda (_%g183911183932%_)
                             (for-each
                              (lambda (_%g183941183943%_)
                                (gxc#compile-e__1
                                 _%self183906%_
                                 _%g183941183943%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g183911183932%_))))
                           _%tl183914183929%_)))
                      (_%g183909183919%_ _%g183910183922%_)))))
          (_%g183908183946%_ _%stx183907%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self183867%_ _%stx183868%_)
        (let* ((_%g183870183880%_
                (lambda (_%g183871183877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183871183877%_))))
               (_%g183869183903%_
                (lambda (_%g183871183883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183871183883%_))
                      (let ((_%e183873183885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183871183883%_))))
                        (let ((_%hd183874183888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183873183885%_)))
                              (_%tl183875183890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183873183885%_))))
                          ((lambda (_%g183872183893%_)
                             (gxc#compile-e__1
                              _%self183867%_
                              (last _%g183872183893%_)))
                           _%tl183875183890%_)))
                      (_%g183870183880%_ _%g183871183883%_)))))
          (_%g183869183903%_ _%stx183868%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self183863%_ _%stx183864%_)
        (let ((__tmp184262
               (lambda () (gxc#apply-begin% _%self183863%_ _%stx183864%_)))
              (__tmp184260
               (let ((__tmp184261
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp184261 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp184262
           gx#current-expander-phi
           __tmp184260))))
    (define gxc#apply-module%
      (lambda (_%self183802%_ _%stx183803%_)
        (let* ((_%g183805183819%_
                (lambda (_%g183806183816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183806183816%_))))
               (_%g183804183860%_
                (lambda (_%g183806183822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183806183822%_))
                      (let ((_%e183809183824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183806183822%_))))
                        (let ((_%hd183810183827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183809183824%_)))
                              (_%tl183811183829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183809183824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183811183829%_))
                              (let ((_%e183812183832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183811183829%_))))
                                (let ((_%hd183813183835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183812183832%_)))
                                      (_%tl183814183837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183812183832%_))))
                                  ((lambda (_%g183807183840%_
                                            _%g183808183841%_)
                                     (let* ((_%ctx183854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g183808183841%_)))
                                            (_%ctx-stx183856%_
                                             (##structure-ref
                                              _%ctx183854%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp184263
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self183802%_
                                                _%ctx-stx183856%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp184263
                                        gx#current-expander-context
                                        _%ctx183854%_)))
                                   _%tl183814183837%_
                                   _%hd183813183835%_)))
                              (_%g183805183819%_ _%g183806183822%_))))
                      (_%g183805183819%_ _%g183806183822%_)))))
          (_%g183804183860%_ _%stx183803%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self183734%_ _%stx183735%_)
        (let* ((_%g183737183754%_
                (lambda (_%g183738183751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183738183751%_))))
               (_%g183736183799%_
                (lambda (_%g183738183757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183738183757%_))
                      (let ((_%e183741183759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183738183757%_))))
                        (let ((_%hd183742183762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183741183759%_)))
                              (_%tl183743183764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183741183759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183743183764%_))
                              (let ((_%e183744183767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183743183764%_))))
                                (let ((_%hd183745183770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183744183767%_)))
                                      (_%tl183746183772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183744183767%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183746183772%_))
                                      (let ((_%e183747183775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183746183772%_))))
                                        (let ((_%hd183748183778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183747183775%_)))
                                              (_%tl183749183780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183747183775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183749183780%_))
                                              ((lambda (_%g183739183783%_
                                                        _%g183740183784%_)
                                                 (gxc#compile-e__1
                                                  _%self183734%_
                                                  _%g183739183783%_))
                                               _%hd183748183778%_
                                               _%hd183745183770%_)
                                              (_%g183737183754%_
                                               _%g183738183757%_))))
                                      (_%g183737183754%_ _%g183738183757%_))))
                              (_%g183737183754%_ _%g183738183757%_))))
                      (_%g183737183754%_ _%g183738183757%_)))))
          (_%g183736183799%_ _%stx183735%_))))
    (define gxc#apply-define-values%
      (lambda (_%self183666%_ _%stx183667%_)
        (let* ((_%g183669183686%_
                (lambda (_%g183670183683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183670183683%_))))
               (_%g183668183731%_
                (lambda (_%g183670183689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183670183689%_))
                      (let ((_%e183673183691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183670183689%_))))
                        (let ((_%hd183674183694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183673183691%_)))
                              (_%tl183675183696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183673183691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183675183696%_))
                              (let ((_%e183676183699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183675183696%_))))
                                (let ((_%hd183677183702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183676183699%_)))
                                      (_%tl183678183704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183676183699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183678183704%_))
                                      (let ((_%e183679183707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183678183704%_))))
                                        (let ((_%hd183680183710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183679183707%_)))
                                              (_%tl183681183712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183679183707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183681183712%_))
                                              ((lambda (_%g183671183715%_
                                                        _%g183672183716%_)
                                                 (gxc#compile-e__1
                                                  _%self183666%_
                                                  _%g183671183715%_))
                                               _%hd183680183710%_
                                               _%hd183677183702%_)
                                              (_%g183669183686%_
                                               _%g183670183689%_))))
                                      (_%g183669183686%_ _%g183670183689%_))))
                              (_%g183669183686%_ _%g183670183689%_))))
                      (_%g183669183686%_ _%g183670183689%_)))))
          (_%g183668183731%_ _%stx183667%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self183597%_ _%stx183598%_)
        (let* ((_%g183600183617%_
                (lambda (_%g183601183614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183601183614%_))))
               (_%g183599183663%_
                (lambda (_%g183601183620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183601183620%_))
                      (let ((_%e183604183622%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183601183620%_))))
                        (let ((_%hd183605183625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183604183622%_)))
                              (_%tl183606183627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183604183622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183606183627%_))
                              (let ((_%e183607183630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183606183627%_))))
                                (let ((_%hd183608183633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183607183630%_)))
                                      (_%tl183609183635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183607183630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183609183635%_))
                                      (let ((_%e183610183638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183609183635%_))))
                                        (let ((_%hd183611183641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183610183638%_)))
                                              (_%tl183612183643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183610183638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183612183643%_))
                                              ((lambda (_%g183602183646%_
                                                        _%g183603183647%_)
                                                 (let ((__tmp184266
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self183597%_
                                                           _%g183602183646%_)))
                                                       (__tmp184264
                                                        (let ((__tmp184265
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp184265 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp184266
                                                    gx#current-expander-phi
                                                    __tmp184264)))
                                               _%hd183611183641%_
                                               _%hd183608183633%_)
                                              (_%g183600183617%_
                                               _%g183601183620%_))))
                                      (_%g183600183617%_ _%g183601183620%_))))
                              (_%g183600183617%_ _%g183601183620%_))))
                      (_%g183600183617%_ _%g183601183620%_)))))
          (_%g183599183663%_ _%stx183598%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self183529%_ _%stx183530%_)
        (let* ((_%g183532183549%_
                (lambda (_%g183533183546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183533183546%_))))
               (_%g183531183594%_
                (lambda (_%g183533183552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183533183552%_))
                      (let ((_%e183536183554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183533183552%_))))
                        (let ((_%hd183537183557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183536183554%_)))
                              (_%tl183538183559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183536183554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183538183559%_))
                              (let ((_%e183539183562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183538183559%_))))
                                (let ((_%hd183540183565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183539183562%_)))
                                      (_%tl183541183567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183539183562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183541183567%_))
                                      (let ((_%e183542183570%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183541183567%_))))
                                        (let ((_%hd183543183573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183542183570%_)))
                                              (_%tl183544183575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183542183570%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183544183575%_))
                                              ((lambda (_%g183534183578%_
                                                        _%g183535183579%_)
                                                 (gxc#compile-e__1
                                                  _%self183529%_
                                                  _%g183534183578%_))
                                               _%hd183543183573%_
                                               _%hd183540183565%_)
                                              (_%g183532183549%_
                                               _%g183533183552%_))))
                                      (_%g183532183549%_ _%g183533183552%_))))
                              (_%g183532183549%_ _%g183533183552%_))))
                      (_%g183532183549%_ _%g183533183552%_)))))
          (_%g183531183594%_ _%stx183530%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self183415%_ _%stx183416%_)
        (let* ((_%g183418183446%_
                (lambda (_%g183419183443%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183419183443%_))))
               (_%g183417183526%_
                (lambda (_%g183419183449%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183419183449%_))
                      (let ((_%e183422183451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183419183449%_))))
                        (let ((_%hd183423183454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183422183451%_)))
                              (_%tl183424183456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183422183451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl183424183456%_))
                              (let ((_g184267_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl183424183456%_
                                        '0))))
                                (begin
                                  (let ((_g184268_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g184267_)
                                               (##values-length _g184267_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g184268_ 2)))
                                        (error "Context expects 2 values"
                                               _g184268_)))
                                  (let ((_%target183425183459%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g184267_ 0)))
                                        (_%tl183427183461%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g184267_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183427183461%_))
                                        (letrec ((_%loop183428183464%_
                                                  (lambda (_%hd183426183467%_
                                                           _%body183432183469%_
                                                           _%hd183433183470%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd183426183467%_))
                                                        (let ((_%e183429183472%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd183426183467%_))))
                  (let ((_%lp-hd183430183475%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183429183472%_)))
                        (_%lp-tl183431183477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183429183472%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd183430183475%_))
                        (let ((_%e183436183480%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd183430183475%_))))
                          (let ((_%hd183437183483%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183436183480%_)))
                                (_%tl183438183485%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183436183480%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183438183485%_))
                                (let ((_%e183439183488%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183438183485%_))))
                                  (let ((_%hd183440183491%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183439183488%_)))
                                        (_%tl183441183493%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183439183488%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183441183493%_))
                                        (_%loop183428183464%_
                                         _%lp-tl183431183477%_
                                         (cons _%hd183440183491%_
                                               _%body183432183469%_)
                                         (cons _%hd183437183483%_
                                               _%hd183433183470%_))
                                        (_%g183418183446%_
                                         _%g183419183449%_))))
                                (_%g183418183446%_ _%g183419183449%_))))
                        (_%g183418183446%_ _%g183419183449%_))))
                (let ((_%body183434183496%_ (reverse _%body183432183469%_))
                      (_%hd183435183497%_ (reverse _%hd183433183470%_)))
                  ((lambda (_%g183420183499%_ _%g183421183500%_)
                     (for-each
                      (lambda (_%g183514183516%_)
                        (gxc#compile-e__1 _%self183415%_ _%g183514183516%_))
                      (let ((__tmp184269
                             (lambda (_%g183518183521%_ _%g183519183523%_)
                               (cons _%g183518183521%_ _%g183519183523%_))))
                        (declare (not safe))
                        (__foldr1 __tmp184269 '() _%g183420183499%_))))
                   _%body183434183496%_
                   _%hd183435183497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop183428183464%_
                                           _%target183425183459%_
                                           '()
                                           '()))
                                        (_%g183418183446%_
                                         _%g183419183449%_)))))
                              (_%g183418183446%_ _%g183419183449%_))))
                      (_%g183418183446%_ _%g183419183449%_)))))
          (_%g183417183526%_ _%stx183416%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self183272%_ _%stx183273%_)
        (let* ((_%g183275183310%_
                (lambda (_%g183276183307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183276183307%_))))
               (_%g183274183412%_
                (lambda (_%g183276183313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183276183313%_))
                      (let ((_%e183280183315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183276183313%_))))
                        (let ((_%hd183281183318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183280183315%_)))
                              (_%tl183282183320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183280183315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183282183320%_))
                              (let ((_%e183283183323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183282183320%_))))
                                (let ((_%hd183284183326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183283183323%_)))
                                      (_%tl183285183328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183283183323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd183284183326%_))
                                      (let ((_g184270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd183284183326%_
                                                '0))))
                                        (begin
                                          (let ((_g184271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g184270_)
                                                       (##values-length
                                                        _g184270_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g184271_ 2)))
                                                (error "Context expects 2 values"
                                                       _g184271_)))
                                          (let ((_%target183286183331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g184270_ 0)))
                                                (_%tl183288183333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g184270_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183288183333%_))
                                                (letrec ((_%loop183289183336%_
                                                          (lambda (_%hd183287183339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr183293183341%_
                           _%hd183294183342%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd183287183339%_))
                        (let ((_%e183290183344%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd183287183339%_))))
                          (let ((_%lp-hd183291183347%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183290183344%_)))
                                (_%lp-tl183292183349%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183290183344%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd183291183347%_))
                                (let ((_%e183297183352%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd183291183347%_))))
                                  (let ((_%hd183298183355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183297183352%_)))
                                        (_%tl183299183357%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183297183352%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl183299183357%_))
                                        (let ((_%e183300183360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl183299183357%_))))
                                          (let ((_%hd183301183363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183300183360%_)))
                                                (_%tl183302183365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183300183360%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183302183365%_))
                                                (_%loop183289183336%_
                                                 _%lp-tl183292183349%_
                                                 (cons _%hd183301183363%_
                                                       _%expr183293183341%_)
                                                 (cons _%hd183298183355%_
                                                       _%hd183294183342%_))
                                                (_%g183275183310%_
                                                 _%g183276183313%_))))
                                        (_%g183275183310%_
                                         _%g183276183313%_))))
                                (_%g183275183310%_ _%g183276183313%_))))
                        (let ((_%expr183295183368%_
                               (reverse _%expr183293183341%_))
                              (_%hd183296183369%_
                               (reverse _%hd183294183342%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183285183328%_))
                              (let ((_%e183303183371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183285183328%_))))
                                (let ((_%hd183304183374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183303183371%_)))
                                      (_%tl183305183376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183303183371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl183305183376%_))
                                      ((lambda (_%g183277183379%_
                                                _%g183278183380%_
                                                _%g183279183381%_)
                                         (for-each
                                          (lambda (_%g183400183402%_)
                                            (gxc#compile-e__1
                                             _%self183272%_
                                             _%g183400183402%_))
                                          (let ((__tmp184273
                                                 (lambda (_%g183404183407%_
                                                          _%g183405183409%_)
                                                   (cons _%g183404183407%_
                                                         _%g183405183409%_)))
                                                (__tmp184272
                                                 (cons _%g183277183379%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp184273
                                             __tmp184272
                                             _%g183278183380%_))))
                                       _%hd183304183374%_
                                       _%expr183295183368%_
                                       _%hd183296183369%_)
                                      (_%g183275183310%_ _%g183276183313%_))))
                              (_%g183275183310%_ _%g183276183313%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop183289183336%_
                                                   _%target183286183331%_
                                                   '()
                                                   '()))
                                                (_%g183275183310%_
                                                 _%g183276183313%_)))))
                                      (_%g183275183310%_ _%g183276183313%_))))
                              (_%g183275183310%_ _%g183276183313%_))))
                      (_%g183275183310%_ _%g183276183313%_)))))
          (_%g183274183412%_ _%stx183273%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self183217%_ _%stx183218%_)
        (let* ((_%g183220183234%_
                (lambda (_%g183221183231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183221183231%_))))
               (_%g183219183269%_
                (lambda (_%g183221183237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183221183237%_))
                      (let ((_%e183224183239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183221183237%_))))
                        (let ((_%hd183225183242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183224183239%_)))
                              (_%tl183226183244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183224183239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183226183244%_))
                              (let ((_%e183227183247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183226183244%_))))
                                (let ((_%hd183228183250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183227183247%_)))
                                      (_%tl183229183252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183227183247%_))))
                                  ((lambda (_%g183222183255%_
                                            _%g183223183256%_)
                                     (gxc#compile-e__1
                                      _%self183217%_
                                      (last _%g183222183255%_)))
                                   _%tl183229183252%_
                                   _%hd183228183250%_)))
                              (_%g183220183234%_ _%g183221183237%_))))
                      (_%g183220183234%_ _%g183221183237%_)))))
          (_%g183219183269%_ _%stx183218%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self183149%_ _%stx183150%_)
        (let* ((_%g183152183169%_
                (lambda (_%g183153183166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183153183166%_))))
               (_%g183151183214%_
                (lambda (_%g183153183172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183153183172%_))
                      (let ((_%e183156183174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183153183172%_))))
                        (let ((_%hd183157183177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183156183174%_)))
                              (_%tl183158183179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183156183174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl183158183179%_))
                              (let ((_%e183159183182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl183158183179%_))))
                                (let ((_%hd183160183185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e183159183182%_)))
                                      (_%tl183161183187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e183159183182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183161183187%_))
                                      (let ((_%e183162183190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183161183187%_))))
                                        (let ((_%hd183163183193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183162183190%_)))
                                              (_%tl183164183195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183162183190%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183164183195%_))
                                              ((lambda (_%g183154183198%_
                                                        _%g183155183199%_)
                                                 (gxc#compile-e__1
                                                  _%self183149%_
                                                  _%g183154183198%_))
                                               _%hd183163183193%_
                                               _%hd183160183185%_)
                                              (_%g183152183169%_
                                               _%g183153183172%_))))
                                      (_%g183152183169%_ _%g183153183172%_))))
                              (_%g183152183169%_ _%g183153183172%_))))
                      (_%g183152183169%_ _%g183153183172%_)))))
          (_%g183151183214%_ _%stx183150%_))))
    (define gxc#apply-operands
      (lambda (_%self183064%_ _%stx183065%_)
        (let* ((_%g183067183086%_
                (lambda (_%g183068183083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183068183083%_))))
               (_%g183066183146%_
                (lambda (_%g183068183089%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183068183089%_))
                      (let ((_%e183070183091%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183068183089%_))))
                        (let ((_%hd183071183094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183070183091%_)))
                              (_%tl183072183096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183070183091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl183072183096%_))
                              (let ((_g184274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl183072183096%_
                                        '0))))
                                (begin
                                  (let ((_g184275_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g184274_)
                                               (##values-length _g184274_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g184275_ 2)))
                                        (error "Context expects 2 values"
                                               _g184275_)))
                                  (let ((_%target183073183099%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g184274_ 0)))
                                        (_%tl183075183101%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g184274_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183075183101%_))
                                        (letrec ((_%loop183076183104%_
                                                  (lambda (_%hd183074183107%_
                                                           _%rands183080183109%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd183074183107%_))
                                                        (let ((_%e183077183111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd183074183107%_))))
                  (let ((_%lp-hd183078183114%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183077183111%_)))
                        (_%lp-tl183079183116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183077183111%_))))
                    (_%loop183076183104%_
                     _%lp-tl183079183116%_
                     (cons _%lp-hd183078183114%_ _%rands183080183109%_))))
                (let ((_%rands183081183119%_ (reverse _%rands183080183109%_)))
                  ((lambda (_%g183069183121%_)
                     (for-each
                      (lambda (_%g183134183136%_)
                        (gxc#compile-e__1 _%self183064%_ _%g183134183136%_))
                      (let ((__tmp184276
                             (lambda (_%g183138183141%_ _%g183139183143%_)
                               (cons _%g183138183141%_ _%g183139183143%_))))
                        (declare (not safe))
                        (__foldr1 __tmp184276 '() _%g183069183121%_))))
                   _%rands183081183119%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop183076183104%_
                                           _%target183073183099%_
                                           '()))
                                        (_%g183067183086%_
                                         _%g183068183089%_)))))
                              (_%g183067183086%_ _%g183068183089%_))))
                      (_%g183067183086%_ _%g183068183089%_)))))
          (_%g183066183146%_ _%stx183065%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx183061%_ _%src-stx183062%_)
        (let ((__tmp184277
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx183062%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx183061%_ __tmp184277))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx183057%_ _%src-stx183058%_ _%ctx183059%_)
        (gxc#compile-e__1
         _%ctx183059%_
         (gxc#xform-wrap-source _%stx183057%_ _%src-stx183058%_))))
    (define gxc#xform-begin%
      (lambda (_%self183012%_ _%stx183013%_)
        (let* ((_%g183015183025%_
                (lambda (_%g183016183022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g183016183022%_))))
               (_%g183014183054%_
                (lambda (_%g183016183028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g183016183028%_))
                      (let ((_%e183018183030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g183016183028%_))))
                        (let ((_%hd183019183033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183018183030%_)))
                              (_%tl183020183035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183018183030%_))))
                          ((lambda (_%g183017183038%_)
                             (let ((_%forms183052%_
                                    (map (lambda (_%g183047183049%_)
                                           (gxc#compile-e__1
                                            _%self183012%_
                                            _%g183047183049%_))
                                         _%g183017183038%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms183052%_)
                                _%stx183013%_)))
                           _%tl183020183035%_)))
                      (_%g183015183025%_ _%g183016183028%_)))))
          (_%g183014183054%_ _%stx183013%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self182966%_ _%stx182967%_)
        (let* ((_%g182969182979%_
                (lambda (_%g182970182976%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182970182976%_))))
               (_%g182968183009%_
                (lambda (_%g182970182982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182970182982%_))
                      (let ((_%e182972182984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182970182982%_))))
                        (let ((_%hd182973182987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182972182984%_)))
                              (_%tl182974182989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182972182984%_))))
                          ((lambda (_%g182971182992%_)
                             (let ((__tmp184280
                                    (lambda ()
                                      (let ((_%forms183007%_
                                             (map (lambda (_%g183002183004%_)
                                                    (gxc#compile-e__1
                                                     _%self182966%_
                                                     _%g183002183004%_))
                                                  _%g182971182992%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms183007%_)
                                         _%stx182967%_))))
                                   (__tmp184278
                                    (let ((__tmp184279
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp184279 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp184280
                                gx#current-expander-phi
                                __tmp184278)))
                           _%tl182974182989%_)))
                      (_%g182969182979%_ _%g182970182982%_)))))
          (_%g182968183009%_ _%stx182967%_))))
    (define gxc#xform-module%
      (lambda (_%self182903%_ _%stx182904%_)
        (let* ((_%g182906182920%_
                (lambda (_%g182907182917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182907182917%_))))
               (_%g182905182963%_
                (lambda (_%g182907182923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182907182923%_))
                      (let ((_%e182910182925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182907182923%_))))
                        (let ((_%hd182911182928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182910182925%_)))
                              (_%tl182912182930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182910182925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182912182930%_))
                              (let ((_%e182913182933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182912182930%_))))
                                (let ((_%hd182914182936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182913182933%_)))
                                      (_%tl182915182938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182913182933%_))))
                                  ((lambda (_%g182908182941%_
                                            _%g182909182942%_)
                                     (let* ((_%ctx182955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g182909182942%_)))
                                            (_%code182957%_
                                             (##structure-ref
                                              _%ctx182955%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code182960%_
                                             (let ((__tmp184281
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self182903%_
                                                       _%code182957%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp184281
                                                gx#current-expander-context
                                                _%ctx182955%_))))
                                       (##structure-set!
                                        _%ctx182955%_
                                        _%code182960%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g182909182942%_
                                                    (cons _%code182960%_ '())))
                                        _%stx182904%_)))
                                   _%tl182915182938%_
                                   _%hd182914182936%_)))
                              (_%g182906182920%_ _%g182907182923%_))))
                      (_%g182906182920%_ _%g182907182923%_)))))
          (_%g182905182963%_ _%stx182904%_))))
    (define gxc#xform-define-values%
      (lambda (_%self182833%_ _%stx182834%_)
        (let* ((_%g182836182853%_
                (lambda (_%g182837182850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182837182850%_))))
               (_%g182835182900%_
                (lambda (_%g182837182856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182837182856%_))
                      (let ((_%e182840182858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182837182856%_))))
                        (let ((_%hd182841182861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182840182858%_)))
                              (_%tl182842182863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182840182858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182842182863%_))
                              (let ((_%e182843182866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182842182863%_))))
                                (let ((_%hd182844182869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182843182866%_)))
                                      (_%tl182845182871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182843182866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182845182871%_))
                                      (let ((_%e182846182874%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182845182871%_))))
                                        (let ((_%hd182847182877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182846182874%_)))
                                              (_%tl182848182879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182846182874%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl182848182879%_))
                                              ((lambda (_%g182838182882%_
                                                        _%g182839182883%_)
                                                 (let ((_%expr182898%_
                                                        (gxc#compile-e__1
                                                         _%self182833%_
                                                         _%g182838182882%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g182839182883%_
                                                                (cons _%expr182898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx182834%_)))
                                               _%hd182847182877%_
                                               _%hd182844182869%_)
                                              (_%g182836182853%_
                                               _%g182837182856%_))))
                                      (_%g182836182853%_ _%g182837182856%_))))
                              (_%g182836182853%_ _%g182837182856%_))))
                      (_%g182836182853%_ _%g182837182856%_)))))
          (_%g182835182900%_ _%stx182834%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self182762%_ _%stx182763%_)
        (let* ((_%g182765182782%_
                (lambda (_%g182766182779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182766182779%_))))
               (_%g182764182830%_
                (lambda (_%g182766182785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182766182785%_))
                      (let ((_%e182769182787%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182766182785%_))))
                        (let ((_%hd182770182790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182769182787%_)))
                              (_%tl182771182792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182769182787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182771182792%_))
                              (let ((_%e182772182795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182771182792%_))))
                                (let ((_%hd182773182798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182772182795%_)))
                                      (_%tl182774182800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182772182795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182774182800%_))
                                      (let ((_%e182775182803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182774182800%_))))
                                        (let ((_%hd182776182806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182775182803%_)))
                                              (_%tl182777182808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182775182803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl182777182808%_))
                                              ((lambda (_%g182767182811%_
                                                        _%g182768182812%_)
                                                 (let ((__tmp184284
                                                        (lambda ()
                                                          (let ((_%expr182828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self182762%_ _%g182767182811%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g182768182812%_ (cons _%expr182828%_ '())))
                     _%stx182763%_))))
               (__tmp184282
                (let ((__tmp184283
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp184283 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp184284
                                                    gx#current-expander-phi
                                                    __tmp184282)))
                                               _%hd182776182806%_
                                               _%hd182773182798%_)
                                              (_%g182765182782%_
                                               _%g182766182785%_))))
                                      (_%g182765182782%_ _%g182766182785%_))))
                              (_%g182765182782%_ _%g182766182785%_))))
                      (_%g182765182782%_ _%g182766182785%_)))))
          (_%g182764182830%_ _%stx182763%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self182692%_ _%stx182693%_)
        (let* ((_%g182695182712%_
                (lambda (_%g182696182709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182696182709%_))))
               (_%g182694182759%_
                (lambda (_%g182696182715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182696182715%_))
                      (let ((_%e182699182717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182696182715%_))))
                        (let ((_%hd182700182720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182699182717%_)))
                              (_%tl182701182722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182699182717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182701182722%_))
                              (let ((_%e182702182725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182701182722%_))))
                                (let ((_%hd182703182728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182702182725%_)))
                                      (_%tl182704182730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182702182725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182704182730%_))
                                      (let ((_%e182705182733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182704182730%_))))
                                        (let ((_%hd182706182736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182705182733%_)))
                                              (_%tl182707182738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182705182733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl182707182738%_))
                                              ((lambda (_%g182697182741%_
                                                        _%g182698182742%_)
                                                 (let ((_%expr182757%_
                                                        (gxc#compile-e__1
                                                         _%self182692%_
                                                         _%g182697182741%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g182698182742%_
                                                                (cons _%expr182757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx182693%_)))
                                               _%hd182706182736%_
                                               _%hd182703182728%_)
                                              (_%g182695182712%_
                                               _%g182696182715%_))))
                                      (_%g182695182712%_ _%g182696182715%_))))
                              (_%g182695182712%_ _%g182696182715%_))))
                      (_%g182695182712%_ _%g182696182715%_)))))
          (_%g182694182759%_ _%stx182693%_))))
    (define gxc#xform-lambda%
      (lambda (_%self182630%_ _%stx182631%_)
        (let* ((_%g182633182647%_
                (lambda (_%g182634182644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182634182644%_))))
               (_%g182632182689%_
                (lambda (_%g182634182650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182634182650%_))
                      (let ((_%e182637182652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182634182650%_))))
                        (let ((_%hd182638182655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182637182652%_)))
                              (_%tl182639182657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182637182652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182639182657%_))
                              (let ((_%e182640182660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182639182657%_))))
                                (let ((_%hd182641182663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182640182660%_)))
                                      (_%tl182642182665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182640182660%_))))
                                  ((lambda (_%g182635182668%_
                                            _%g182636182669%_)
                                     (let ((__tmp184286
                                            (lambda ()
                                              (let ((_%body182687%_
                                                     (map (lambda (_%g182682182684%_)
                                                            (gxc#compile-e__1
                                                             _%self182630%_
                                                             _%g182682182684%_))
                                                          _%g182635182668%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g182636182669%_
                                                             _%body182687%_))
                                                 _%stx182631%_))))
                                           (__tmp184285
                                            (gxc#xform-let-locals
                                             _%g182636182669%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp184286
                                        gxc#current-compile-local-env
                                        __tmp184285)))
                                   _%tl182642182665%_
                                   _%hd182641182663%_)))
                              (_%g182633182647%_ _%g182634182650%_))))
                      (_%g182633182647%_ _%g182634182650%_)))))
          (_%g182632182689%_ _%stx182631%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self182538%_ _%stx182539%_)
        (letrec ((_%clause-e182541%_
                  (lambda (_%clause182582%_)
                    (let* ((_%g182584182595%_
                            (lambda (_%g182585182592%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g182585182592%_))))
                           (_%g182583182627%_
                            (lambda (_%g182585182598%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g182585182598%_))
                                  (let ((_%e182588182600%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g182585182598%_))))
                                    (let ((_%hd182589182603%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e182588182600%_)))
                                          (_%tl182590182605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e182588182600%_))))
                                      ((lambda (_%g182586182608%_
                                                _%g182587182609%_)
                                         (let ((__tmp184288
                                                (lambda ()
                                                  (let ((_%body182625%_
                                                         (map (lambda (_%g182620182622%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self182538%_
                         _%g182620182622%_))
                      _%g182586182608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g182587182609%_
                                                          _%body182625%_))))
                                               (__tmp184287
                                                (gxc#xform-let-locals
                                                 _%g182587182609%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp184288
                                            gxc#current-compile-local-env
                                            __tmp184287)))
                                       _%tl182590182605%_
                                       _%hd182589182603%_)))
                                  (_%g182584182595%_ _%g182585182598%_)))))
                      (_%g182583182627%_ _%clause182582%_)))))
          (let* ((_%g182543182553%_
                  (lambda (_%g182544182550%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g182544182550%_))))
                 (_%g182542182579%_
                  (lambda (_%g182544182556%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g182544182556%_))
                        (let ((_%e182546182558%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g182544182556%_))))
                          (let ((_%hd182547182561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182546182558%_)))
                                (_%tl182548182563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182546182558%_))))
                            ((lambda (_%g182545182566%_)
                               (let ((_%clauses182577%_
                                      (map _%clause-e182541%_
                                           _%g182545182566%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses182577%_)
                                  _%stx182539%_)))
                             _%tl182548182563%_)))
                        (_%g182543182553%_ _%g182544182556%_)))))
            (_%g182542182579%_ _%stx182539%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self182298%_ _%stx182299%_)
        (let* ((_%g182301182334%_
                (lambda (_%g182302182331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182302182331%_))))
               (_%g182300182535%_
                (lambda (_%g182302182337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182302182337%_))
                      (let ((_%e182307182339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182302182337%_))))
                        (let ((_%hd182308182342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182307182339%_)))
                              (_%tl182309182344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182307182339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182309182344%_))
                              (let ((_%e182310182347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182309182344%_))))
                                (let ((_%hd182311182350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182310182347%_)))
                                      (_%tl182312182352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182310182347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd182311182350%_))
                                      (let ((_g184289_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd182311182350%_
                                                '0))))
                                        (begin
                                          (let ((_g184290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g184289_)
                                                       (##values-length
                                                        _g184289_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g184290_ 2)))
                                                (error "Context expects 2 values"
                                                       _g184290_)))
                                          (let ((_%target182313182355%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g184289_ 0)))
                                                (_%tl182315182357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g184289_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl182315182357%_))
                                                (letrec ((_%loop182316182360%_
                                                          (lambda (_%hd182314182363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr182320182365%_
                           _%hd182321182366%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd182314182363%_))
                        (let ((_%e182317182368%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd182314182363%_))))
                          (let ((_%lp-hd182318182371%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182317182368%_)))
                                (_%lp-tl182319182373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182317182368%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd182318182371%_))
                                (let ((_%e182324182376%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd182318182371%_))))
                                  (let ((_%hd182325182379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182324182376%_)))
                                        (_%tl182326182381%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182324182376%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl182326182381%_))
                                        (let ((_%e182327182384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl182326182381%_))))
                                          (let ((_%hd182328182387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e182327182384%_)))
                                                (_%tl182329182389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e182327182384%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl182329182389%_))
                                                (_%loop182316182360%_
                                                 _%lp-tl182319182373%_
                                                 (cons _%hd182328182387%_
                                                       _%expr182320182365%_)
                                                 (cons _%hd182325182379%_
                                                       _%hd182321182366%_))
                                                (_%g182301182334%_
                                                 _%g182302182337%_))))
                                        (_%g182301182334%_
                                         _%g182302182337%_))))
                                (_%g182301182334%_ _%g182302182337%_))))
                        (let ((_%expr182322182392%_
                               (reverse _%expr182320182365%_))
                              (_%hd182323182393%_
                               (reverse _%hd182321182366%_)))
                          ((lambda (_%g182303182395%_
                                    _%g182304182396%_
                                    _%g182305182397%_
                                    _%g182306182398%_)
                             (let* ((_%g182417182433%_
                                     (lambda (_%g182418182430%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g182418182430%_))))
                                    (_%g182416182521%_
                                     (lambda (_%g182418182436%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g182418182436%_))
                                           (let ((_g184291_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g182418182436%_
                                                     '0))))
                                             (begin
                                               (let ((_g184292_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g184291_)
                                                            (##values-length
                                                             _g184291_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g184292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g184292_)))
                                               (let ((_%target182420182438%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g184291_
                                                         0)))
                                                     (_%tl182422182440%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g184291_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl182422182440%_))
                                                     (letrec ((_%loop182423182443%_
                                                               (lambda (_%hd182421182446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr182427182448%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd182421182446%_))
                             (let ((_%e182424182450%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd182421182446%_))))
                               (let ((_%lp-hd182425182453%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e182424182450%_)))
                                     (_%lp-tl182426182455%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e182424182450%_))))
                                 (_%loop182423182443%_
                                  _%lp-tl182426182455%_
                                  (cons _%lp-hd182425182453%_
                                        _%expr182427182448%_))))
                             (let ((_%expr182428182458%_
                                    (reverse _%expr182427182448%_)))
                               ((lambda (_%g182419182460%_)
                                  (let ((__tmp184295
                                         (lambda ()
                                           (let* ((_%g182474182481%_
                                                   (lambda (_%g182475182478%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g182475182478%_))))
                                                  (_%g182473182507%_
                                                   (lambda (_%g182475182484%_)
                                                     ((lambda (_%g182476182486%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g182306182398%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g182419182460%_
                                  _%g182305182397%_))
                               (let ((__tmp184296
                                      (lambda (_%g182496182500%_
                                               _%g182497182502%_
                                               _%g182498182504%_)
                                        (cons (cons _%g182497182502%_
                                                    (cons _%g182496182500%_
                                                          '()))
                                              _%g182498182504%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp184296
                                  '()
                                  _%g182419182460%_
                                  _%g182305182397%_)))
                             _%g182476182486%_))
                 _%stx182299%_))
              _%g182475182484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g182473182507%_
                                              (map (lambda (_%g182509182511%_)
                                                     (gxc#compile-e__1
                                                      _%self182298%_
                                                      _%g182509182511%_))
                                                   _%g182303182395%_)))))
                                        (__tmp184293
                                         (gxc#xform-let-locals
                                          (let ((__tmp184294
                                                 (lambda (_%g182513182516%_
                                                          _%g182514182518%_)
                                                   (cons _%g182513182516%_
                                                         _%g182514182518%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp184294
                                             '()
                                             _%g182305182397%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp184295
                                     gxc#current-compile-local-env
                                     __tmp184293)))
                                _%expr182428182458%_))))))
               (_%loop182423182443%_ _%target182420182438%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g182417182433%_
                                                      _%g182418182436%_)))))
                                           (_%g182417182433%_
                                            _%g182418182436%_)))))
                               (_%g182416182521%_
                                (map (lambda (_%g182523182525%_)
                                       (gxc#compile-e__1
                                        _%self182298%_
                                        _%g182523182525%_))
                                     (let ((__tmp184297
                                            (lambda (_%g182527182530%_
                                                     _%g182528182532%_)
                                              (cons _%g182527182530%_
                                                    _%g182528182532%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp184297
                                        '()
                                        _%g182304182396%_))))))
                           _%tl182312182352%_
                           _%expr182322182392%_
                           _%hd182323182393%_
                           _%hd182308182342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop182316182360%_
                                                   _%target182313182355%_
                                                   '()
                                                   '()))
                                                (_%g182301182334%_
                                                 _%g182302182337%_)))))
                                      (_%g182301182334%_ _%g182302182337%_))))
                              (_%g182301182334%_ _%g182302182337%_))))
                      (_%g182301182334%_ _%g182302182337%_)))))
          (_%g182300182535%_ _%stx182299%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self182058%_ _%stx182059%_)
        (let* ((_%g182061182094%_
                (lambda (_%g182062182091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182062182091%_))))
               (_%g182060182295%_
                (lambda (_%g182062182097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182062182097%_))
                      (let ((_%e182067182099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182062182097%_))))
                        (let ((_%hd182068182102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182067182099%_)))
                              (_%tl182069182104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182067182099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182069182104%_))
                              (let ((_%e182070182107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182069182104%_))))
                                (let ((_%hd182071182110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182070182107%_)))
                                      (_%tl182072182112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182070182107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd182071182110%_))
                                      (let ((_g184298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd182071182110%_
                                                '0))))
                                        (begin
                                          (let ((_g184299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g184298_)
                                                       (##values-length
                                                        _g184298_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g184299_ 2)))
                                                (error "Context expects 2 values"
                                                       _g184299_)))
                                          (let ((_%target182073182115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g184298_ 0)))
                                                (_%tl182075182117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g184298_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl182075182117%_))
                                                (letrec ((_%loop182076182120%_
                                                          (lambda (_%hd182074182123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr182080182125%_
                           _%hd182081182126%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd182074182123%_))
                        (let ((_%e182077182128%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd182074182123%_))))
                          (let ((_%lp-hd182078182131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182077182128%_)))
                                (_%lp-tl182079182133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182077182128%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd182078182131%_))
                                (let ((_%e182084182136%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd182078182131%_))))
                                  (let ((_%hd182085182139%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182084182136%_)))
                                        (_%tl182086182141%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182084182136%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl182086182141%_))
                                        (let ((_%e182087182144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl182086182141%_))))
                                          (let ((_%hd182088182147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e182087182144%_)))
                                                (_%tl182089182149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e182087182144%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl182089182149%_))
                                                (_%loop182076182120%_
                                                 _%lp-tl182079182133%_
                                                 (cons _%hd182088182147%_
                                                       _%expr182080182125%_)
                                                 (cons _%hd182085182139%_
                                                       _%hd182081182126%_))
                                                (_%g182061182094%_
                                                 _%g182062182097%_))))
                                        (_%g182061182094%_
                                         _%g182062182097%_))))
                                (_%g182061182094%_ _%g182062182097%_))))
                        (let ((_%expr182082182152%_
                               (reverse _%expr182080182125%_))
                              (_%hd182083182153%_
                               (reverse _%hd182081182126%_)))
                          ((lambda (_%g182063182155%_
                                    _%g182064182156%_
                                    _%g182065182157%_
                                    _%g182066182158%_)
                             (let ((__tmp184302
                                    (lambda ()
                                      (let* ((_%g182178182194%_
                                              (lambda (_%g182179182191%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g182179182191%_))))
                                             (_%g182177182274%_
                                              (lambda (_%g182179182197%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g182179182197%_))
                                                    (let ((_g184303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g182179182197%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g184304_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g184303_)
                             (##values-length _g184303_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184304_ 2)))
                      (error "Context expects 2 values" _g184304_)))
                (let ((_%target182181182199%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g184303_ 0)))
                      (_%tl182183182201%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g184303_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl182183182201%_))
                      (letrec ((_%loop182184182204%_
                                (lambda (_%hd182182182207%_
                                         _%expr182188182209%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd182182182207%_))
                                      (let ((_%e182185182211%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd182182182207%_))))
                                        (let ((_%lp-hd182186182214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182185182211%_)))
                                              (_%lp-tl182187182216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182185182211%_))))
                                          (_%loop182184182204%_
                                           _%lp-tl182187182216%_
                                           (cons _%lp-hd182186182214%_
                                                 _%expr182188182209%_))))
                                      (let ((_%expr182189182219%_
                                             (reverse _%expr182188182209%_)))
                                        ((lambda (_%g182180182221%_)
                                           (let* ((_%g182235182242%_
                                                   (lambda (_%g182236182239%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g182236182239%_))))
                                                  (_%g182234182267%_
                                                   (lambda (_%g182236182245%_)
                                                     ((lambda (_%g182237182247%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g182066182158%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g182180182221%_
                                  _%g182065182157%_))
                               (let ((__tmp184305
                                      (lambda (_%g182256182260%_
                                               _%g182257182262%_
                                               _%g182258182264%_)
                                        (cons (cons _%g182257182262%_
                                                    (cons _%g182256182260%_
                                                          '()))
                                              _%g182258182264%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp184305
                                  '()
                                  _%g182180182221%_
                                  _%g182065182157%_)))
                             _%g182237182247%_))
                 _%stx182059%_))
              _%g182236182245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g182234182267%_
                                              (map (lambda (_%g182269182271%_)
                                                     (gxc#compile-e__1
                                                      _%self182058%_
                                                      _%g182269182271%_))
                                                   _%g182063182155%_))))
                                         _%expr182189182219%_))))))
                        (_%loop182184182204%_ _%target182181182199%_ '()))
                      (_%g182178182194%_ _%g182179182197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g182178182194%_
                                                     _%g182179182197%_)))))
                                        (_%g182177182274%_
                                         (map (lambda (_%g182276182278%_)
                                                (gxc#compile-e__1
                                                 _%self182058%_
                                                 _%g182276182278%_))
                                              (let ((__tmp184306
                                                     (lambda (_%g182280182283%_
                                                              _%g182281182285%_)
                                                       (cons _%g182280182283%_
                                                             _%g182281182285%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp184306
                                                 '()
                                                 _%g182064182156%_)))))))
                                   (__tmp184300
                                    (gxc#xform-let-locals
                                     (let ((__tmp184301
                                            (lambda (_%g182287182290%_
                                                     _%g182288182292%_)
                                              (cons _%g182287182290%_
                                                    _%g182288182292%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp184301
                                        '()
                                        _%g182065182157%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp184302
                                gxc#current-compile-local-env
                                __tmp184300)))
                           _%tl182072182112%_
                           _%expr182082182152%_
                           _%hd182083182153%_
                           _%hd182068182102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop182076182120%_
                                                   _%target182073182115%_
                                                   '()
                                                   '()))
                                                (_%g182061182094%_
                                                 _%g182062182097%_)))))
                                      (_%g182061182094%_ _%g182062182097%_))))
                              (_%g182061182094%_ _%g182062182097%_))))
                      (_%g182061182094%_ _%g182062182097%_)))))
          (_%g182060182295%_ _%stx182059%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings181925%_)
        (letrec ((_%flatten181927%_
                  (lambda (_%maybe-lst181985%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst181985%_))
                        (cons _%maybe-lst181985%_ '())
                        (let _%loop181987%_ ((_%rest181989%_
                                              _%maybe-lst181985%_)
                                             (_%result181990%_ '()))
                          (let* ((_%__stx184194184195%_ _%rest181989%_)
                                 (_%g181994182006%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx184194184195%_)))))
                            (let ((_%__kont184196184197%_
                                   (lambda (_%g181996182044%_
                                            _%g181997182045%_)
                                     (_%loop181987%_
                                      _%g181996182044%_
                                      (let ((__tmp184307
                                             (_%flatten181927%_
                                              _%g181997182045%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result181990%_
                                         __tmp184307)))))
                                  (_%__kont184198184199%_
                                   (lambda (_%g182001182018%_)
                                     (cons _%g182001182018%_
                                           _%result181990%_)))
                                  (_%__kont184200184201%_
                                   (lambda () _%result181990%_)))
                              (let ((_%g181992182031%_
                                     (lambda ()
                                       (let ((_%g182001182018%_
                                              _%__stx184194184195%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g182001182018%_))
                                             (_%__kont184198184199%_
                                              _%g182001182018%_)
                                             (_%__kont184200184201%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx184194184195%_))
                                    (let ((_%e181998182036%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx184194184195%_))))
                                      (let ((_%tl182000182041%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e181998182036%_)))
                                            (_%hd181999182039%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e181998182036%_))))
                                        (_%__kont184196184197%_
                                         _%tl182000182041%_
                                         _%hd181999182039%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g181992182031%_)))))))))))
          (let _%loop181929%_ ((_%rest181931%_
                                (_%flatten181927%_ _%bindings181925%_))
                               (_%locals181932%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest181933181944%_ _%rest181931%_)
                   (_%E181937181948%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest181933181944%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K181940181973%_
                     (lambda (_%rest181970%_ _%id181971%_)
                       (_%loop181929%_
                        _%rest181970%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id181971%_))
                              _%locals181932%_))))
                    (_%K181939181962%_
                     (lambda (_%id181960%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id181960%_))
                             _%locals181932%_)))
                    (_%K181938181953%_ (lambda () _%locals181932%_)))
                (let ((_%try-match181935181967%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest181933181944%_))
                             (let ((_%id181965%_ _%rest181933181944%_))
                               (_%K181939181962%_ _%id181965%_))
                             (_%K181938181953%_)))))
                  (if (pair? _%rest181933181944%_)
                      (let ((_%tl181942181978%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest181933181944%_)))
                            (_%hd181941181976%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest181933181944%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd181941181976%_))
                            (let ((_%id181981%_ _%hd181941181976%_)
                                  (_%rest181983%_ _%tl181942181978%_))
                              (_%K181940181973%_ _%rest181983%_ _%id181981%_))
                            (_%K181938181953%_)))
                      (_%try-match181935181967%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self181877%_ _%stx181878%_)
        (let* ((_%g181880181891%_
                (lambda (_%g181881181888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g181881181888%_))))
               (_%g181879181922%_
                (lambda (_%g181881181894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g181881181894%_))
                      (let ((_%e181884181896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g181881181894%_))))
                        (let ((_%hd181885181899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181884181896%_)))
                              (_%tl181886181901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181884181896%_))))
                          ((lambda (_%g181882181904%_ _%g181883181905%_)
                             (let ((_%rands181920%_
                                    (map (lambda (_%g181915181917%_)
                                           (gxc#compile-e__1
                                            _%self181877%_
                                            _%g181915181917%_))
                                         _%g181882181904%_)))
                               (gxc#xform-wrap-source
                                (cons _%g181883181905%_ _%rands181920%_)
                                _%stx181878%_)))
                           _%tl181886181901%_
                           _%hd181885181899%_)))
                      (_%g181880181891%_ _%g181881181894%_)))))
          (_%g181879181922%_ _%stx181878%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self181807%_ _%stx181808%_)
        (let* ((_%g181810181827%_
                (lambda (_%g181811181824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g181811181824%_))))
               (_%g181809181874%_
                (lambda (_%g181811181830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g181811181830%_))
                      (let ((_%e181814181832%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g181811181830%_))))
                        (let ((_%hd181815181835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181814181832%_)))
                              (_%tl181816181837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181814181832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181816181837%_))
                              (let ((_%e181817181840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181816181837%_))))
                                (let ((_%hd181818181843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181817181840%_)))
                                      (_%tl181819181845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181817181840%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl181819181845%_))
                                      (let ((_%e181820181848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl181819181845%_))))
                                        (let ((_%hd181821181851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181820181848%_)))
                                              (_%tl181822181853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181820181848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl181822181853%_))
                                              ((lambda (_%g181812181856%_
                                                        _%g181813181857%_)
                                                 (let ((_%expr181872%_
                                                        (gxc#compile-e__1
                                                         _%self181807%_
                                                         _%g181812181856%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g181813181857%_
                                                                (cons _%expr181872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx181808%_)))
                                               _%hd181821181851%_
                                               _%hd181818181843%_)
                                              (_%g181810181827%_
                                               _%g181811181830%_))))
                                      (_%g181810181827%_ _%g181811181830%_))))
                              (_%g181810181827%_ _%g181811181830%_))))
                      (_%g181810181827%_ _%g181811181830%_)))))
          (_%g181809181874%_ _%stx181808%_))))))
