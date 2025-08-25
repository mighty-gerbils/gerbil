(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1756156301)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx146016%_)
        (let* ((_%self146018%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e146020%_
                (let ((__tmp146238 (gxc#stx-car-e _%stx146016%_)))
                  (declare (not safe))
                  (method-ref _%self146018%_ __tmp146238))))
          (if _%$e146020%_
              ((lambda (_%method146023%_)
                 (declare (not safe))
                 (let ((_%$e146026%_ (gx#stx-source _%stx146016%_)))
                   (if _%$e146026%_
                       ((lambda (_%source146029%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146023%_ _%self146018%_ _%stx146016%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146029%_ '()))
                                 (let ((_%$e146033%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146033%_ _%$e146033%_ '())))))
                        _%$e146026%_)
                       (_%method146023%_ _%self146018%_ _%stx146016%_))))
               _%$e146020%_)
              (let ((__tmp146240 (gxc#stx-car-e _%stx146016%_))
                    (__tmp146239
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146016%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146018%_
                       __tmp146240
                       __tmp146239))))))
    (define gxc#compile-e__1
      (lambda (_%self146038%_ _%stx146039%_)
        (let ((_%$e146041%_
               (let ((__tmp146241 (gxc#stx-car-e _%stx146039%_)))
                 (declare (not safe))
                 (method-ref _%self146038%_ __tmp146241))))
          (if _%$e146041%_
              ((lambda (_%method146044%_)
                 (declare (not safe))
                 (let ((_%$e146047%_ (gx#stx-source _%stx146039%_)))
                   (if _%$e146047%_
                       ((lambda (_%source146050%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146044%_ _%self146038%_ _%stx146039%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146050%_ '()))
                                 (let ((_%$e146054%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146054%_ _%$e146054%_ '())))))
                        _%$e146047%_)
                       (_%method146044%_ _%self146038%_ _%stx146039%_))))
               _%$e146041%_)
              (let ((__tmp146243 (gxc#stx-car-e _%stx146039%_))
                    (__tmp146242
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146039%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146038%_
                       __tmp146243
                       __tmp146242))))))
    (define gxc#compile-e
      (lambda _g146244_
        (let ((_g146245_ (let () (declare (not safe)) (##length _g146244_))))
          (cond ((let () (declare (not safe)) (##fx= _g146245_ 1))
                 (apply gxc#compile-e__0 _g146244_))
                ((let () (declare (not safe)) (##fx= _g146245_ 2))
                 (apply gxc#compile-e__1 _g146244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g146244_))))))
    (define gxc#stx-car-e
      (lambda (_%stx146014%_)
        (let ((__tmp146246
               (car (let () (declare (not safe)) (gx#stx-e _%stx146014%_)))))
          (declare (not safe))
          (gx#stx-e __tmp146246))))
    (define gxc#void-method (lambda (_%self146011%_ _%stx146012%_) '#!void))
    (define gxc#false-method (lambda (_%self146008%_ _%stx146009%_) '#f))
    (define gxc#true-method (lambda (_%self146005%_ _%stx146006%_) '#t))
    (define gxc#identity-method
      (lambda (_%self146002%_ _%stx146003%_) _%stx146003%_))
    (define gxc#::void-expression::t
      (let ((__tmp146247 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp146247
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args145999%_
        (apply make-instance gxc#::void-expression::t _%$args145999%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp146248
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
        (__make-promise __tmp146248)))
    (define gxc#::void-special-form::t
      (let ((__tmp146249 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp146249
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args145995%_
        (apply make-instance gxc#::void-special-form::t _%$args145995%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp146250
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
        (__make-promise __tmp146250)))
    (define gxc#::void::t
      (let ((__tmp146251
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp146251 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args145991%_
        (apply make-instance gxc#::void::t _%$args145991%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp146252
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146252)))
    (define gxc#::false-expression::t
      (let ((__tmp146253 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp146253
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args145987%_
        (apply make-instance gxc#::false-expression::t _%$args145987%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp146254
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
        (__make-promise __tmp146254)))
    (define gxc#::false-special-form::t
      (let ((__tmp146255 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp146255
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args145983%_
        (apply make-instance gxc#::false-special-form::t _%$args145983%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp146256
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
        (__make-promise __tmp146256)))
    (define gxc#::false::t
      (let ((__tmp146257
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp146257 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args145979%_
        (apply make-instance gxc#::false::t _%$args145979%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp146258
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146258)))
    (define gxc#::identity-expression::t
      (let ((__tmp146259 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp146259
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args145975%_
        (apply make-instance gxc#::identity-expression::t _%$args145975%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp146260
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
        (__make-promise __tmp146260)))
    (define gxc#::identity-special-form::t
      (let ((__tmp146261 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp146261
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args145971%_
        (apply make-instance gxc#::identity-special-form::t _%$args145971%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp146262
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
        (__make-promise __tmp146262)))
    (define gxc#::identity::t
      (let ((__tmp146263
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp146263
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args145967%_
        (apply make-instance gxc#::identity::t _%$args145967%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp146264
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146264)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp146265 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp146265
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args145963%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args145963%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp146266
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
        (__make-promise __tmp146266)))
    (define gxc#::basic-xform::t
      (let ((__tmp146267
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp146267
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args145959%_
        (apply make-instance gxc#::basic-xform::t _%$args145959%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp146268
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
        (__make-promise __tmp146268)))
    (define gxc#apply-begin%
      (lambda (_%self145915%_ _%stx145916%_)
        (let* ((_%g145918145928%_
                (lambda (_%g145919145925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145919145925%_))))
               (_%g145917145955%_
                (lambda (_%g145919145931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145919145931%_))
                      (let ((_%e145921145933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145919145931%_))))
                        (let ((_%hd145922145936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145921145933%_)))
                              (_%tl145923145938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145921145933%_))))
                          ((lambda (_%L145941%_)
                             (for-each
                              (lambda (_%g145950145952%_)
                                (gxc#compile-e__1
                                 _%self145915%_
                                 _%g145950145952%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145941%_))))
                           _%tl145923145938%_)))
                      (_%g145918145928%_ _%g145919145931%_)))))
          (_%g145917145955%_ _%stx145916%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self145876%_ _%stx145877%_)
        (let* ((_%g145879145889%_
                (lambda (_%g145880145886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145880145886%_))))
               (_%g145878145912%_
                (lambda (_%g145880145892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145880145892%_))
                      (let ((_%e145882145894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145880145892%_))))
                        (let ((_%hd145883145897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145882145894%_)))
                              (_%tl145884145899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145882145894%_))))
                          ((lambda (_%L145902%_)
                             (gxc#compile-e__1
                              _%self145876%_
                              (last _%L145902%_)))
                           _%tl145884145899%_)))
                      (_%g145879145889%_ _%g145880145892%_)))))
          (_%g145878145912%_ _%stx145877%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self145872%_ _%stx145873%_)
        (let ((__tmp146271
               (lambda () (gxc#apply-begin% _%self145872%_ _%stx145873%_)))
              (__tmp146269
               (let ((__tmp146270
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp146270 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp146271
           gx#current-expander-phi
           __tmp146269))))
    (define gxc#apply-module%
      (lambda (_%self145811%_ _%stx145812%_)
        (let* ((_%g145814145828%_
                (lambda (_%g145815145825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145815145825%_))))
               (_%g145813145869%_
                (lambda (_%g145815145831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145815145831%_))
                      (let ((_%e145818145833%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145815145831%_))))
                        (let ((_%hd145819145836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145818145833%_)))
                              (_%tl145820145838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145818145833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145820145838%_))
                              (let ((_%e145821145841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145820145838%_))))
                                (let ((_%hd145822145844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145821145841%_)))
                                      (_%tl145823145846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145821145841%_))))
                                  ((lambda (_%L145849%_ _%L145850%_)
                                     (let* ((_%ctx145863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L145850%_)))
                                            (_%ctx-stx145865%_
                                             (##structure-ref
                                              _%ctx145863%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp146272
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self145811%_
                                                _%ctx-stx145865%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146272
                                        gx#current-expander-context
                                        _%ctx145863%_)))
                                   _%tl145823145846%_
                                   _%hd145822145844%_)))
                              (_%g145814145828%_ _%g145815145831%_))))
                      (_%g145814145828%_ _%g145815145831%_)))))
          (_%g145813145869%_ _%stx145812%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self145743%_ _%stx145744%_)
        (let* ((_%g145746145763%_
                (lambda (_%g145747145760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145747145760%_))))
               (_%g145745145808%_
                (lambda (_%g145747145766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145747145766%_))
                      (let ((_%e145750145768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145747145766%_))))
                        (let ((_%hd145751145771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145750145768%_)))
                              (_%tl145752145773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145750145768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145752145773%_))
                              (let ((_%e145753145776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145752145773%_))))
                                (let ((_%hd145754145779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145753145776%_)))
                                      (_%tl145755145781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145753145776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145755145781%_))
                                      (let ((_%e145756145784%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145755145781%_))))
                                        (let ((_%hd145757145787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145756145784%_)))
                                              (_%tl145758145789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145756145784%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145758145789%_))
                                              ((lambda (_%L145792%_
                                                        _%L145793%_)
                                                 (gxc#compile-e__1
                                                  _%self145743%_
                                                  _%L145792%_))
                                               _%hd145757145787%_
                                               _%hd145754145779%_)
                                              (_%g145746145763%_
                                               _%g145747145766%_))))
                                      (_%g145746145763%_ _%g145747145766%_))))
                              (_%g145746145763%_ _%g145747145766%_))))
                      (_%g145746145763%_ _%g145747145766%_)))))
          (_%g145745145808%_ _%stx145744%_))))
    (define gxc#apply-define-values%
      (lambda (_%self145675%_ _%stx145676%_)
        (let* ((_%g145678145695%_
                (lambda (_%g145679145692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145679145692%_))))
               (_%g145677145740%_
                (lambda (_%g145679145698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145679145698%_))
                      (let ((_%e145682145700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145679145698%_))))
                        (let ((_%hd145683145703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145682145700%_)))
                              (_%tl145684145705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145682145700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145684145705%_))
                              (let ((_%e145685145708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145684145705%_))))
                                (let ((_%hd145686145711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145685145708%_)))
                                      (_%tl145687145713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145685145708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145687145713%_))
                                      (let ((_%e145688145716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145687145713%_))))
                                        (let ((_%hd145689145719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145688145716%_)))
                                              (_%tl145690145721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145688145716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145690145721%_))
                                              ((lambda (_%L145724%_
                                                        _%L145725%_)
                                                 (gxc#compile-e__1
                                                  _%self145675%_
                                                  _%L145724%_))
                                               _%hd145689145719%_
                                               _%hd145686145711%_)
                                              (_%g145678145695%_
                                               _%g145679145698%_))))
                                      (_%g145678145695%_ _%g145679145698%_))))
                              (_%g145678145695%_ _%g145679145698%_))))
                      (_%g145678145695%_ _%g145679145698%_)))))
          (_%g145677145740%_ _%stx145676%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self145606%_ _%stx145607%_)
        (let* ((_%g145609145626%_
                (lambda (_%g145610145623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145610145623%_))))
               (_%g145608145672%_
                (lambda (_%g145610145629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145610145629%_))
                      (let ((_%e145613145631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145610145629%_))))
                        (let ((_%hd145614145634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145613145631%_)))
                              (_%tl145615145636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145613145631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145615145636%_))
                              (let ((_%e145616145639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145615145636%_))))
                                (let ((_%hd145617145642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145616145639%_)))
                                      (_%tl145618145644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145616145639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145618145644%_))
                                      (let ((_%e145619145647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145618145644%_))))
                                        (let ((_%hd145620145650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145619145647%_)))
                                              (_%tl145621145652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145619145647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145621145652%_))
                                              ((lambda (_%L145655%_
                                                        _%L145656%_)
                                                 (let ((__tmp146275
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self145606%_
                                                           _%L145655%_)))
                                                       (__tmp146273
                                                        (let ((__tmp146274
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146274 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146275
                                                    gx#current-expander-phi
                                                    __tmp146273)))
                                               _%hd145620145650%_
                                               _%hd145617145642%_)
                                              (_%g145609145626%_
                                               _%g145610145629%_))))
                                      (_%g145609145626%_ _%g145610145629%_))))
                              (_%g145609145626%_ _%g145610145629%_))))
                      (_%g145609145626%_ _%g145610145629%_)))))
          (_%g145608145672%_ _%stx145607%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self145538%_ _%stx145539%_)
        (let* ((_%g145541145558%_
                (lambda (_%g145542145555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145542145555%_))))
               (_%g145540145603%_
                (lambda (_%g145542145561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145542145561%_))
                      (let ((_%e145545145563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145542145561%_))))
                        (let ((_%hd145546145566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145545145563%_)))
                              (_%tl145547145568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145545145563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145547145568%_))
                              (let ((_%e145548145571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145547145568%_))))
                                (let ((_%hd145549145574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145548145571%_)))
                                      (_%tl145550145576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145548145571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145550145576%_))
                                      (let ((_%e145551145579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145550145576%_))))
                                        (let ((_%hd145552145582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145551145579%_)))
                                              (_%tl145553145584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145551145579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145553145584%_))
                                              ((lambda (_%L145587%_
                                                        _%L145588%_)
                                                 (gxc#compile-e__1
                                                  _%self145538%_
                                                  _%L145587%_))
                                               _%hd145552145582%_
                                               _%hd145549145574%_)
                                              (_%g145541145558%_
                                               _%g145542145561%_))))
                                      (_%g145541145558%_ _%g145542145561%_))))
                              (_%g145541145558%_ _%g145542145561%_))))
                      (_%g145541145558%_ _%g145542145561%_)))))
          (_%g145540145603%_ _%stx145539%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self145420%_ _%stx145421%_)
        (let* ((_%g145423145451%_
                (lambda (_%g145424145448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145424145448%_))))
               (_%g145422145535%_
                (lambda (_%g145424145454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145424145454%_))
                      (let ((_%e145427145456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145424145454%_))))
                        (let ((_%hd145428145459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145427145456%_)))
                              (_%tl145429145461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145427145456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145429145461%_))
                              (let ((_g146276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145429145461%_
                                        '0))))
                                (begin
                                  (let ((_g146277_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146276_)
                                               (##values-length _g146276_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146277_ 2)))
                                        (error "Context expects 2 values"
                                               _g146277_)))
                                  (let ((_%target145430145464%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146276_ 0)))
                                        (_%tl145432145466%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146276_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145432145466%_))
                                        (letrec ((_%loop145433145469%_
                                                  (lambda (_%hd145431145472%_
                                                           _%body145437145474%_
                                                           _%hd145438145476%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145431145472%_))
                                                        (let ((_%e145434145479%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145431145472%_))))
                  (let ((_%lp-hd145435145482%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145434145479%_)))
                        (_%lp-tl145436145484%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145434145479%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145435145482%_))
                        (let ((_%e145441145487%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145435145482%_))))
                          (let ((_%hd145442145490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145441145487%_)))
                                (_%tl145443145492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145441145487%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145443145492%_))
                                (let ((_%e145444145495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145443145492%_))))
                                  (let ((_%hd145445145498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145444145495%_)))
                                        (_%tl145446145500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145444145495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145446145500%_))
                                        (_%loop145433145469%_
                                         _%lp-tl145436145484%_
                                         (cons _%hd145445145498%_
                                               _%body145437145474%_)
                                         (cons _%hd145442145490%_
                                               _%hd145438145476%_))
                                        (_%g145423145451%_
                                         _%g145424145454%_))))
                                (_%g145423145451%_ _%g145424145454%_))))
                        (_%g145423145451%_ _%g145424145454%_))))
                (let ((_%body145439145503%_ (reverse _%body145437145474%_))
                      (_%hd145440145505%_ (reverse _%hd145438145476%_)))
                  ((lambda (_%L145508%_ _%L145509%_)
                     (for-each
                      (lambda (_%g145523145525%_)
                        (gxc#compile-e__1 _%self145420%_ _%g145523145525%_))
                      (let ((__tmp146278
                             (lambda (_%g145527145530%_ _%g145528145532%_)
                               (cons _%g145527145530%_ _%g145528145532%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146278 '() _%L145508%_))))
                   _%body145439145503%_
                   _%hd145440145505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145433145469%_
                                           _%target145430145464%_
                                           '()
                                           '()))
                                        (_%g145423145451%_
                                         _%g145424145454%_)))))
                              (_%g145423145451%_ _%g145424145454%_))))
                      (_%g145423145451%_ _%g145424145454%_)))))
          (_%g145422145535%_ _%stx145421%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self145273%_ _%stx145274%_)
        (let* ((_%g145276145311%_
                (lambda (_%g145277145308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145277145308%_))))
               (_%g145275145417%_
                (lambda (_%g145277145314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145277145314%_))
                      (let ((_%e145281145316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145277145314%_))))
                        (let ((_%hd145282145319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145281145316%_)))
                              (_%tl145283145321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145281145316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145283145321%_))
                              (let ((_%e145284145324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145283145321%_))))
                                (let ((_%hd145285145327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145284145324%_)))
                                      (_%tl145286145329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145284145324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145285145327%_))
                                      (let ((_g146279_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145285145327%_
                                                '0))))
                                        (begin
                                          (let ((_g146280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146279_)
                                                       (##values-length
                                                        _g146279_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146280_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146280_)))
                                          (let ((_%target145287145332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146279_ 0)))
                                                (_%tl145289145334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146279_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145289145334%_))
                                                (letrec ((_%loop145290145337%_
                                                          (lambda (_%hd145288145340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr145294145342%_
                           _%hd145295145344%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145288145340%_))
                        (let ((_%e145291145347%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145288145340%_))))
                          (let ((_%lp-hd145292145350%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145291145347%_)))
                                (_%lp-tl145293145352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145291145347%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd145292145350%_))
                                (let ((_%e145298145355%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd145292145350%_))))
                                  (let ((_%hd145299145358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145298145355%_)))
                                        (_%tl145300145360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145298145355%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145300145360%_))
                                        (let ((_%e145301145363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145300145360%_))))
                                          (let ((_%hd145302145366%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145301145363%_)))
                                                (_%tl145303145368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145301145363%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145303145368%_))
                                                (_%loop145290145337%_
                                                 _%lp-tl145293145352%_
                                                 (cons _%hd145302145366%_
                                                       _%expr145294145342%_)
                                                 (cons _%hd145299145358%_
                                                       _%hd145295145344%_))
                                                (_%g145276145311%_
                                                 _%g145277145314%_))))
                                        (_%g145276145311%_
                                         _%g145277145314%_))))
                                (_%g145276145311%_ _%g145277145314%_))))
                        (let ((_%expr145296145371%_
                               (reverse _%expr145294145342%_))
                              (_%hd145297145373%_
                               (reverse _%hd145295145344%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145286145329%_))
                              (let ((_%e145304145376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145286145329%_))))
                                (let ((_%hd145305145379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145304145376%_)))
                                      (_%tl145306145381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145304145376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145306145381%_))
                                      ((lambda (_%L145384%_
                                                _%L145385%_
                                                _%L145386%_)
                                         (for-each
                                          (lambda (_%g145405145407%_)
                                            (gxc#compile-e__1
                                             _%self145273%_
                                             _%g145405145407%_))
                                          (let ((__tmp146282
                                                 (lambda (_%g145409145412%_
                                                          _%g145410145414%_)
                                                   (cons _%g145409145412%_
                                                         _%g145410145414%_)))
                                                (__tmp146281
                                                 (cons _%L145384%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146282
                                             __tmp146281
                                             _%L145385%_))))
                                       _%hd145305145379%_
                                       _%expr145296145371%_
                                       _%hd145297145373%_)
                                      (_%g145276145311%_ _%g145277145314%_))))
                              (_%g145276145311%_ _%g145277145314%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145290145337%_
                                                   _%target145287145332%_
                                                   '()
                                                   '()))
                                                (_%g145276145311%_
                                                 _%g145277145314%_)))))
                                      (_%g145276145311%_ _%g145277145314%_))))
                              (_%g145276145311%_ _%g145277145314%_))))
                      (_%g145276145311%_ _%g145277145314%_)))))
          (_%g145275145417%_ _%stx145274%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self145218%_ _%stx145219%_)
        (let* ((_%g145221145235%_
                (lambda (_%g145222145232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145222145232%_))))
               (_%g145220145270%_
                (lambda (_%g145222145238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145222145238%_))
                      (let ((_%e145225145240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145222145238%_))))
                        (let ((_%hd145226145243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145225145240%_)))
                              (_%tl145227145245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145225145240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145227145245%_))
                              (let ((_%e145228145248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145227145245%_))))
                                (let ((_%hd145229145251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145228145248%_)))
                                      (_%tl145230145253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145228145248%_))))
                                  ((lambda (_%L145256%_ _%L145257%_)
                                     (gxc#compile-e__1
                                      _%self145218%_
                                      (last _%L145256%_)))
                                   _%tl145230145253%_
                                   _%hd145229145251%_)))
                              (_%g145221145235%_ _%g145222145238%_))))
                      (_%g145221145235%_ _%g145222145238%_)))))
          (_%g145220145270%_ _%stx145219%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self145150%_ _%stx145151%_)
        (let* ((_%g145153145170%_
                (lambda (_%g145154145167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145154145167%_))))
               (_%g145152145215%_
                (lambda (_%g145154145173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145154145173%_))
                      (let ((_%e145157145175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145154145173%_))))
                        (let ((_%hd145158145178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145157145175%_)))
                              (_%tl145159145180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145157145175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145159145180%_))
                              (let ((_%e145160145183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145159145180%_))))
                                (let ((_%hd145161145186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145160145183%_)))
                                      (_%tl145162145188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145160145183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145162145188%_))
                                      (let ((_%e145163145191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145162145188%_))))
                                        (let ((_%hd145164145194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145163145191%_)))
                                              (_%tl145165145196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145163145191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145165145196%_))
                                              ((lambda (_%L145199%_
                                                        _%L145200%_)
                                                 (gxc#compile-e__1
                                                  _%self145150%_
                                                  _%L145199%_))
                                               _%hd145164145194%_
                                               _%hd145161145186%_)
                                              (_%g145153145170%_
                                               _%g145154145173%_))))
                                      (_%g145153145170%_ _%g145154145173%_))))
                              (_%g145153145170%_ _%g145154145173%_))))
                      (_%g145153145170%_ _%g145154145173%_)))))
          (_%g145152145215%_ _%stx145151%_))))
    (define gxc#apply-operands
      (lambda (_%self145063%_ _%stx145064%_)
        (let* ((_%g145066145085%_
                (lambda (_%g145067145082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145067145082%_))))
               (_%g145065145147%_
                (lambda (_%g145067145088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145067145088%_))
                      (let ((_%e145069145090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145067145088%_))))
                        (let ((_%hd145070145093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145069145090%_)))
                              (_%tl145071145095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145069145090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145071145095%_))
                              (let ((_g146283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145071145095%_
                                        '0))))
                                (begin
                                  (let ((_g146284_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146283_)
                                               (##values-length _g146283_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146284_ 2)))
                                        (error "Context expects 2 values"
                                               _g146284_)))
                                  (let ((_%target145072145098%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146283_ 0)))
                                        (_%tl145074145100%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146283_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145074145100%_))
                                        (letrec ((_%loop145075145103%_
                                                  (lambda (_%hd145073145106%_
                                                           _%rands145079145108%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145073145106%_))
                                                        (let ((_%e145076145111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145073145106%_))))
                  (let ((_%lp-hd145077145114%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145076145111%_)))
                        (_%lp-tl145078145116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145076145111%_))))
                    (_%loop145075145103%_
                     _%lp-tl145078145116%_
                     (cons _%lp-hd145077145114%_ _%rands145079145108%_))))
                (let ((_%rands145080145119%_ (reverse _%rands145079145108%_)))
                  ((lambda (_%L145122%_)
                     (for-each
                      (lambda (_%g145135145137%_)
                        (gxc#compile-e__1 _%self145063%_ _%g145135145137%_))
                      (let ((__tmp146285
                             (lambda (_%g145139145142%_ _%g145140145144%_)
                               (cons _%g145139145142%_ _%g145140145144%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146285 '() _%L145122%_))))
                   _%rands145080145119%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145075145103%_
                                           _%target145072145098%_
                                           '()))
                                        (_%g145066145085%_
                                         _%g145067145088%_)))))
                              (_%g145066145085%_ _%g145067145088%_))))
                      (_%g145066145085%_ _%g145067145088%_)))))
          (_%g145065145147%_ _%stx145064%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx145060%_ _%src-stx145061%_)
        (let ((__tmp146286
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx145061%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx145060%_ __tmp146286))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx145056%_ _%src-stx145057%_ _%ctx145058%_)
        (gxc#compile-e__1
         _%ctx145058%_
         (gxc#xform-wrap-source _%stx145056%_ _%src-stx145057%_))))
    (define gxc#xform-begin%
      (lambda (_%self145011%_ _%stx145012%_)
        (let* ((_%g145014145024%_
                (lambda (_%g145015145021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145015145021%_))))
               (_%g145013145053%_
                (lambda (_%g145015145027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145015145027%_))
                      (let ((_%e145017145029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145015145027%_))))
                        (let ((_%hd145018145032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145017145029%_)))
                              (_%tl145019145034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145017145029%_))))
                          ((lambda (_%L145037%_)
                             (let ((_%forms145051%_
                                    (map (lambda (_%g145046145048%_)
                                           (gxc#compile-e__1
                                            _%self145011%_
                                            _%g145046145048%_))
                                         _%L145037%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms145051%_)
                                _%stx145012%_)))
                           _%tl145019145034%_)))
                      (_%g145014145024%_ _%g145015145027%_)))))
          (_%g145013145053%_ _%stx145012%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self144965%_ _%stx144966%_)
        (let* ((_%g144968144978%_
                (lambda (_%g144969144975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144969144975%_))))
               (_%g144967145008%_
                (lambda (_%g144969144981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144969144981%_))
                      (let ((_%e144971144983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144969144981%_))))
                        (let ((_%hd144972144986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144971144983%_)))
                              (_%tl144973144988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144971144983%_))))
                          ((lambda (_%L144991%_)
                             (let ((__tmp146289
                                    (lambda ()
                                      (let ((_%forms145006%_
                                             (map (lambda (_%g145001145003%_)
                                                    (gxc#compile-e__1
                                                     _%self144965%_
                                                     _%g145001145003%_))
                                                  _%L144991%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms145006%_)
                                         _%stx144966%_))))
                                   (__tmp146287
                                    (let ((__tmp146288
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp146288 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146289
                                gx#current-expander-phi
                                __tmp146287)))
                           _%tl144973144988%_)))
                      (_%g144968144978%_ _%g144969144981%_)))))
          (_%g144967145008%_ _%stx144966%_))))
    (define gxc#xform-module%
      (lambda (_%self144902%_ _%stx144903%_)
        (let* ((_%g144905144919%_
                (lambda (_%g144906144916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144906144916%_))))
               (_%g144904144962%_
                (lambda (_%g144906144922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144906144922%_))
                      (let ((_%e144909144924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144906144922%_))))
                        (let ((_%hd144910144927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144909144924%_)))
                              (_%tl144911144929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144909144924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144911144929%_))
                              (let ((_%e144912144932%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144911144929%_))))
                                (let ((_%hd144913144935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144912144932%_)))
                                      (_%tl144914144937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144912144932%_))))
                                  ((lambda (_%L144940%_ _%L144941%_)
                                     (let* ((_%ctx144954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L144941%_)))
                                            (_%code144956%_
                                             (##structure-ref
                                              _%ctx144954%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code144959%_
                                             (let ((__tmp146290
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self144902%_
                                                       _%code144956%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp146290
                                                gx#current-expander-context
                                                _%ctx144954%_))))
                                       (##structure-set!
                                        _%ctx144954%_
                                        _%code144959%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L144941%_
                                                    (cons _%code144959%_ '())))
                                        _%stx144903%_)))
                                   _%tl144914144937%_
                                   _%hd144913144935%_)))
                              (_%g144905144919%_ _%g144906144922%_))))
                      (_%g144905144919%_ _%g144906144922%_)))))
          (_%g144904144962%_ _%stx144903%_))))
    (define gxc#xform-define-values%
      (lambda (_%self144832%_ _%stx144833%_)
        (let* ((_%g144835144852%_
                (lambda (_%g144836144849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144836144849%_))))
               (_%g144834144899%_
                (lambda (_%g144836144855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144836144855%_))
                      (let ((_%e144839144857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144836144855%_))))
                        (let ((_%hd144840144860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144839144857%_)))
                              (_%tl144841144862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144839144857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144841144862%_))
                              (let ((_%e144842144865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144841144862%_))))
                                (let ((_%hd144843144868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144842144865%_)))
                                      (_%tl144844144870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144842144865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144844144870%_))
                                      (let ((_%e144845144873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144844144870%_))))
                                        (let ((_%hd144846144876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144845144873%_)))
                                              (_%tl144847144878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144845144873%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144847144878%_))
                                              ((lambda (_%L144881%_
                                                        _%L144882%_)
                                                 (let ((_%expr144897%_
                                                        (gxc#compile-e__1
                                                         _%self144832%_
                                                         _%L144881%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L144882%_
                                                                (cons _%expr144897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144833%_)))
                                               _%hd144846144876%_
                                               _%hd144843144868%_)
                                              (_%g144835144852%_
                                               _%g144836144855%_))))
                                      (_%g144835144852%_ _%g144836144855%_))))
                              (_%g144835144852%_ _%g144836144855%_))))
                      (_%g144835144852%_ _%g144836144855%_)))))
          (_%g144834144899%_ _%stx144833%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self144761%_ _%stx144762%_)
        (let* ((_%g144764144781%_
                (lambda (_%g144765144778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144765144778%_))))
               (_%g144763144829%_
                (lambda (_%g144765144784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144765144784%_))
                      (let ((_%e144768144786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144765144784%_))))
                        (let ((_%hd144769144789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144768144786%_)))
                              (_%tl144770144791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144768144786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144770144791%_))
                              (let ((_%e144771144794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144770144791%_))))
                                (let ((_%hd144772144797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144771144794%_)))
                                      (_%tl144773144799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144771144794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144773144799%_))
                                      (let ((_%e144774144802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144773144799%_))))
                                        (let ((_%hd144775144805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144774144802%_)))
                                              (_%tl144776144807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144774144802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144776144807%_))
                                              ((lambda (_%L144810%_
                                                        _%L144811%_)
                                                 (let ((__tmp146293
                                                        (lambda ()
                                                          (let ((_%expr144827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self144761%_ _%L144810%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L144811%_ (cons _%expr144827%_ '())))
                     _%stx144762%_))))
               (__tmp146291
                (let ((__tmp146292
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146292 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146293
                                                    gx#current-expander-phi
                                                    __tmp146291)))
                                               _%hd144775144805%_
                                               _%hd144772144797%_)
                                              (_%g144764144781%_
                                               _%g144765144784%_))))
                                      (_%g144764144781%_ _%g144765144784%_))))
                              (_%g144764144781%_ _%g144765144784%_))))
                      (_%g144764144781%_ _%g144765144784%_)))))
          (_%g144763144829%_ _%stx144762%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self144691%_ _%stx144692%_)
        (let* ((_%g144694144711%_
                (lambda (_%g144695144708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144695144708%_))))
               (_%g144693144758%_
                (lambda (_%g144695144714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144695144714%_))
                      (let ((_%e144698144716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144695144714%_))))
                        (let ((_%hd144699144719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144698144716%_)))
                              (_%tl144700144721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144698144716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144700144721%_))
                              (let ((_%e144701144724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144700144721%_))))
                                (let ((_%hd144702144727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144701144724%_)))
                                      (_%tl144703144729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144701144724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144703144729%_))
                                      (let ((_%e144704144732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144703144729%_))))
                                        (let ((_%hd144705144735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144704144732%_)))
                                              (_%tl144706144737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144704144732%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144706144737%_))
                                              ((lambda (_%L144740%_
                                                        _%L144741%_)
                                                 (let ((_%expr144756%_
                                                        (gxc#compile-e__1
                                                         _%self144691%_
                                                         _%L144740%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L144741%_
                                                                (cons _%expr144756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144692%_)))
                                               _%hd144705144735%_
                                               _%hd144702144727%_)
                                              (_%g144694144711%_
                                               _%g144695144714%_))))
                                      (_%g144694144711%_ _%g144695144714%_))))
                              (_%g144694144711%_ _%g144695144714%_))))
                      (_%g144694144711%_ _%g144695144714%_)))))
          (_%g144693144758%_ _%stx144692%_))))
    (define gxc#xform-lambda%
      (lambda (_%self144629%_ _%stx144630%_)
        (let* ((_%g144632144646%_
                (lambda (_%g144633144643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144633144643%_))))
               (_%g144631144688%_
                (lambda (_%g144633144649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144633144649%_))
                      (let ((_%e144636144651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144633144649%_))))
                        (let ((_%hd144637144654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144636144651%_)))
                              (_%tl144638144656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144636144651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144638144656%_))
                              (let ((_%e144639144659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144638144656%_))))
                                (let ((_%hd144640144662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144639144659%_)))
                                      (_%tl144641144664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144639144659%_))))
                                  ((lambda (_%L144667%_ _%L144668%_)
                                     (let ((__tmp146295
                                            (lambda ()
                                              (let ((_%body144686%_
                                                     (map (lambda (_%g144681144683%_)
                                                            (gxc#compile-e__1
                                                             _%self144629%_
                                                             _%g144681144683%_))
                                                          _%L144667%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L144668%_
                                                             _%body144686%_))
                                                 _%stx144630%_))))
                                           (__tmp146294
                                            (gxc#xform-let-locals
                                             _%L144668%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146295
                                        gxc#current-compile-local-env
                                        __tmp146294)))
                                   _%tl144641144664%_
                                   _%hd144640144662%_)))
                              (_%g144632144646%_ _%g144633144649%_))))
                      (_%g144632144646%_ _%g144633144649%_)))))
          (_%g144631144688%_ _%stx144630%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self144537%_ _%stx144538%_)
        (letrec ((_%clause-e144540%_
                  (lambda (_%clause144581%_)
                    (let* ((_%g144583144594%_
                            (lambda (_%g144584144591%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g144584144591%_))))
                           (_%g144582144626%_
                            (lambda (_%g144584144597%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g144584144597%_))
                                  (let ((_%e144587144599%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g144584144597%_))))
                                    (let ((_%hd144588144602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144587144599%_)))
                                          (_%tl144589144604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144587144599%_))))
                                      ((lambda (_%L144607%_ _%L144608%_)
                                         (let ((__tmp146297
                                                (lambda ()
                                                  (let ((_%body144624%_
                                                         (map (lambda (_%g144619144621%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self144537%_
                         _%g144619144621%_))
                      _%L144607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L144608%_
                                                          _%body144624%_))))
                                               (__tmp146296
                                                (gxc#xform-let-locals
                                                 _%L144608%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp146297
                                            gxc#current-compile-local-env
                                            __tmp146296)))
                                       _%tl144589144604%_
                                       _%hd144588144602%_)))
                                  (_%g144583144594%_ _%g144584144597%_)))))
                      (_%g144582144626%_ _%clause144581%_)))))
          (let* ((_%g144542144552%_
                  (lambda (_%g144543144549%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144543144549%_))))
                 (_%g144541144578%_
                  (lambda (_%g144543144555%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144543144555%_))
                        (let ((_%e144545144557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144543144555%_))))
                          (let ((_%hd144546144560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144545144557%_)))
                                (_%tl144547144562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144545144557%_))))
                            ((lambda (_%L144565%_)
                               (let ((_%clauses144576%_
                                      (map _%clause-e144540%_ _%L144565%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses144576%_)
                                  _%stx144538%_)))
                             _%tl144547144562%_)))
                        (_%g144542144552%_ _%g144543144555%_)))))
            (_%g144541144578%_ _%stx144538%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self144291%_ _%stx144292%_)
        (let* ((_%g144294144327%_
                (lambda (_%g144295144324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144295144324%_))))
               (_%g144293144534%_
                (lambda (_%g144295144330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144295144330%_))
                      (let ((_%e144300144332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144295144330%_))))
                        (let ((_%hd144301144335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144300144332%_)))
                              (_%tl144302144337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144300144332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144302144337%_))
                              (let ((_%e144303144340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144302144337%_))))
                                (let ((_%hd144304144343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144303144340%_)))
                                      (_%tl144305144345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144303144340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144304144343%_))
                                      (let ((_g146298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144304144343%_
                                                '0))))
                                        (begin
                                          (let ((_g146299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146298_)
                                                       (##values-length
                                                        _g146298_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146299_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146299_)))
                                          (let ((_%target144306144348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146298_ 0)))
                                                (_%tl144308144350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146298_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144308144350%_))
                                                (letrec ((_%loop144309144353%_
                                                          (lambda (_%hd144307144356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144313144358%_
                           _%hd144314144360%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144307144356%_))
                        (let ((_%e144310144363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144307144356%_))))
                          (let ((_%lp-hd144311144366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144310144363%_)))
                                (_%lp-tl144312144368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144310144363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144311144366%_))
                                (let ((_%e144317144371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144311144366%_))))
                                  (let ((_%hd144318144374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144317144371%_)))
                                        (_%tl144319144376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144317144371%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144319144376%_))
                                        (let ((_%e144320144379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144319144376%_))))
                                          (let ((_%hd144321144382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144320144379%_)))
                                                (_%tl144322144384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144320144379%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144322144384%_))
                                                (_%loop144309144353%_
                                                 _%lp-tl144312144368%_
                                                 (cons _%hd144321144382%_
                                                       _%expr144313144358%_)
                                                 (cons _%hd144318144374%_
                                                       _%hd144314144360%_))
                                                (_%g144294144327%_
                                                 _%g144295144330%_))))
                                        (_%g144294144327%_
                                         _%g144295144330%_))))
                                (_%g144294144327%_ _%g144295144330%_))))
                        (let ((_%expr144315144387%_
                               (reverse _%expr144313144358%_))
                              (_%hd144316144389%_
                               (reverse _%hd144314144360%_)))
                          ((lambda (_%L144392%_
                                    _%L144393%_
                                    _%L144394%_
                                    _%L144395%_)
                             (let* ((_%g144414144430%_
                                     (lambda (_%g144415144427%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g144415144427%_))))
                                    (_%g144413144520%_
                                     (lambda (_%g144415144433%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g144415144433%_))
                                           (let ((_g146300_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g144415144433%_
                                                     '0))))
                                             (begin
                                               (let ((_g146301_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g146300_)
                                                            (##values-length
                                                             _g146300_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g146301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g146301_)))
                                               (let ((_%target144417144435%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146300_
                                                         0)))
                                                     (_%tl144419144437%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146300_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl144419144437%_))
                                                     (letrec ((_%loop144420144440%_
                                                               (lambda (_%hd144418144443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr144424144445%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd144418144443%_))
                             (let ((_%e144421144448%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd144418144443%_))))
                               (let ((_%lp-hd144422144451%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e144421144448%_)))
                                     (_%lp-tl144423144453%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e144421144448%_))))
                                 (_%loop144420144440%_
                                  _%lp-tl144423144453%_
                                  (cons _%lp-hd144422144451%_
                                        _%expr144424144445%_))))
                             (let ((_%expr144425144456%_
                                    (reverse _%expr144424144445%_)))
                               ((lambda (_%L144459%_)
                                  (let ((__tmp146304
                                         (lambda ()
                                           (let* ((_%g144473144480%_
                                                   (lambda (_%g144474144477%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144474144477%_))))
                                                  (_%g144472144506%_
                                                   (lambda (_%g144474144483%_)
                                                     ((lambda (_%L144485%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144395%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144459%_
                                  _%L144394%_))
                               (let ((__tmp146305
                                      (lambda (_%g144495144499%_
                                               _%g144496144501%_
                                               _%g144497144503%_)
                                        (cons (cons _%g144496144501%_
                                                    (cons _%g144495144499%_
                                                          '()))
                                              _%g144497144503%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146305
                                  '()
                                  _%L144459%_
                                  _%L144394%_)))
                             _%L144485%_))
                 _%stx144292%_))
              _%g144474144483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144472144506%_
                                              (map (lambda (_%g144508144510%_)
                                                     (gxc#compile-e__1
                                                      _%self144291%_
                                                      _%g144508144510%_))
                                                   _%L144392%_)))))
                                        (__tmp146302
                                         (gxc#xform-let-locals
                                          (let ((__tmp146303
                                                 (lambda (_%g144512144515%_
                                                          _%g144513144517%_)
                                                   (cons _%g144512144515%_
                                                         _%g144513144517%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146303
                                             '()
                                             _%L144394%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp146304
                                     gxc#current-compile-local-env
                                     __tmp146302)))
                                _%expr144425144456%_))))))
               (_%loop144420144440%_ _%target144417144435%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g144414144430%_
                                                      _%g144415144433%_)))))
                                           (_%g144414144430%_
                                            _%g144415144433%_)))))
                               (_%g144413144520%_
                                (map (lambda (_%g144522144524%_)
                                       (gxc#compile-e__1
                                        _%self144291%_
                                        _%g144522144524%_))
                                     (let ((__tmp146306
                                            (lambda (_%g144526144529%_
                                                     _%g144527144531%_)
                                              (cons _%g144526144529%_
                                                    _%g144527144531%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146306
                                        '()
                                        _%L144393%_))))))
                           _%tl144305144345%_
                           _%expr144315144387%_
                           _%hd144316144389%_
                           _%hd144301144335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144309144353%_
                                                   _%target144306144348%_
                                                   '()
                                                   '()))
                                                (_%g144294144327%_
                                                 _%g144295144330%_)))))
                                      (_%g144294144327%_ _%g144295144330%_))))
                              (_%g144294144327%_ _%g144295144330%_))))
                      (_%g144294144327%_ _%g144295144330%_)))))
          (_%g144293144534%_ _%stx144292%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self144045%_ _%stx144046%_)
        (let* ((_%g144048144081%_
                (lambda (_%g144049144078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144049144078%_))))
               (_%g144047144288%_
                (lambda (_%g144049144084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144049144084%_))
                      (let ((_%e144054144086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144049144084%_))))
                        (let ((_%hd144055144089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144054144086%_)))
                              (_%tl144056144091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144054144086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144056144091%_))
                              (let ((_%e144057144094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144056144091%_))))
                                (let ((_%hd144058144097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144057144094%_)))
                                      (_%tl144059144099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144057144094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144058144097%_))
                                      (let ((_g146307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144058144097%_
                                                '0))))
                                        (begin
                                          (let ((_g146308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146307_)
                                                       (##values-length
                                                        _g146307_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146308_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146308_)))
                                          (let ((_%target144060144102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146307_ 0)))
                                                (_%tl144062144104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146307_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144062144104%_))
                                                (letrec ((_%loop144063144107%_
                                                          (lambda (_%hd144061144110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144067144112%_
                           _%hd144068144114%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144061144110%_))
                        (let ((_%e144064144117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144061144110%_))))
                          (let ((_%lp-hd144065144120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144064144117%_)))
                                (_%lp-tl144066144122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144064144117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144065144120%_))
                                (let ((_%e144071144125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144065144120%_))))
                                  (let ((_%hd144072144128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144071144125%_)))
                                        (_%tl144073144130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144071144125%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144073144130%_))
                                        (let ((_%e144074144133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144073144130%_))))
                                          (let ((_%hd144075144136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144074144133%_)))
                                                (_%tl144076144138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144074144133%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144076144138%_))
                                                (_%loop144063144107%_
                                                 _%lp-tl144066144122%_
                                                 (cons _%hd144075144136%_
                                                       _%expr144067144112%_)
                                                 (cons _%hd144072144128%_
                                                       _%hd144068144114%_))
                                                (_%g144048144081%_
                                                 _%g144049144084%_))))
                                        (_%g144048144081%_
                                         _%g144049144084%_))))
                                (_%g144048144081%_ _%g144049144084%_))))
                        (let ((_%expr144069144141%_
                               (reverse _%expr144067144112%_))
                              (_%hd144070144143%_
                               (reverse _%hd144068144114%_)))
                          ((lambda (_%L144146%_
                                    _%L144147%_
                                    _%L144148%_
                                    _%L144149%_)
                             (let ((__tmp146311
                                    (lambda ()
                                      (let* ((_%g144169144185%_
                                              (lambda (_%g144170144182%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g144170144182%_))))
                                             (_%g144168144267%_
                                              (lambda (_%g144170144188%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g144170144188%_))
                                                    (let ((_g146312_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g144170144188%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g146313_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g146312_)
                             (##values-length _g146312_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g146313_ 2)))
                      (error "Context expects 2 values" _g146313_)))
                (let ((_%target144172144190%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146312_ 0)))
                      (_%tl144174144192%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146312_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144174144192%_))
                      (letrec ((_%loop144175144195%_
                                (lambda (_%hd144173144198%_
                                         _%expr144179144200%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144173144198%_))
                                      (let ((_%e144176144203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd144173144198%_))))
                                        (let ((_%lp-hd144177144206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144176144203%_)))
                                              (_%lp-tl144178144208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144176144203%_))))
                                          (_%loop144175144195%_
                                           _%lp-tl144178144208%_
                                           (cons _%lp-hd144177144206%_
                                                 _%expr144179144200%_))))
                                      (let ((_%expr144180144211%_
                                             (reverse _%expr144179144200%_)))
                                        ((lambda (_%L144214%_)
                                           (let* ((_%g144228144235%_
                                                   (lambda (_%g144229144232%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144229144232%_))))
                                                  (_%g144227144260%_
                                                   (lambda (_%g144229144238%_)
                                                     ((lambda (_%L144240%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144149%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144214%_
                                  _%L144148%_))
                               (let ((__tmp146314
                                      (lambda (_%g144249144253%_
                                               _%g144250144255%_
                                               _%g144251144257%_)
                                        (cons (cons _%g144250144255%_
                                                    (cons _%g144249144253%_
                                                          '()))
                                              _%g144251144257%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146314
                                  '()
                                  _%L144214%_
                                  _%L144148%_)))
                             _%L144240%_))
                 _%stx144046%_))
              _%g144229144238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144227144260%_
                                              (map (lambda (_%g144262144264%_)
                                                     (gxc#compile-e__1
                                                      _%self144045%_
                                                      _%g144262144264%_))
                                                   _%L144146%_))))
                                         _%expr144180144211%_))))))
                        (_%loop144175144195%_ _%target144172144190%_ '()))
                      (_%g144169144185%_ _%g144170144188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g144169144185%_
                                                     _%g144170144188%_)))))
                                        (_%g144168144267%_
                                         (map (lambda (_%g144269144271%_)
                                                (gxc#compile-e__1
                                                 _%self144045%_
                                                 _%g144269144271%_))
                                              (let ((__tmp146315
                                                     (lambda (_%g144273144276%_
                                                              _%g144274144278%_)
                                                       (cons _%g144273144276%_
                                                             _%g144274144278%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp146315
                                                 '()
                                                 _%L144147%_)))))))
                                   (__tmp146309
                                    (gxc#xform-let-locals
                                     (let ((__tmp146310
                                            (lambda (_%g144280144283%_
                                                     _%g144281144285%_)
                                              (cons _%g144280144283%_
                                                    _%g144281144285%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146310
                                        '()
                                        _%L144148%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146311
                                gxc#current-compile-local-env
                                __tmp146309)))
                           _%tl144059144099%_
                           _%expr144069144141%_
                           _%hd144070144143%_
                           _%hd144055144089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144063144107%_
                                                   _%target144060144102%_
                                                   '()
                                                   '()))
                                                (_%g144048144081%_
                                                 _%g144049144084%_)))))
                                      (_%g144048144081%_ _%g144049144084%_))))
                              (_%g144048144081%_ _%g144049144084%_))))
                      (_%g144048144081%_ _%g144049144084%_)))))
          (_%g144047144288%_ _%stx144046%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings143912%_)
        (letrec ((_%flatten143914%_
                  (lambda (_%maybe-lst143972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst143972%_))
                        (cons _%maybe-lst143972%_ '())
                        (let _%loop143974%_ ((_%rest143976%_
                                              _%maybe-lst143972%_)
                                             (_%result143977%_ '()))
                          (let* ((_%__stx146203146204%_ _%rest143976%_)
                                 (_%g143981143993%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx146203146204%_)))))
                            (let ((_%__kont146205146206%_
                                   (lambda (_%L144031%_ _%L144032%_)
                                     (_%loop143974%_
                                      _%L144031%_
                                      (let ((__tmp146316
                                             (_%flatten143914%_ _%L144032%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result143977%_
                                         __tmp146316)))))
                                  (_%__kont146207146208%_
                                   (lambda (_%L144005%_)
                                     (cons _%L144005%_ _%result143977%_)))
                                  (_%__kont146209146210%_
                                   (lambda () _%result143977%_)))
                              (let ((_%g143979144018%_
                                     (lambda ()
                                       (let ((_%L144005%_
                                              _%__stx146203146204%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144005%_))
                                             (_%__kont146207146208%_
                                              _%L144005%_)
                                             (_%__kont146209146210%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx146203146204%_))
                                    (let ((_%e143985144023%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx146203146204%_))))
                                      (let ((_%tl143987144028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143985144023%_)))
                                            (_%hd143986144026%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143985144023%_))))
                                        (_%__kont146205146206%_
                                         _%tl143987144028%_
                                         _%hd143986144026%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143979144018%_)))))))))))
          (let _%loop143916%_ ((_%rest143918%_
                                (_%flatten143914%_ _%bindings143912%_))
                               (_%locals143919%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest143920143931%_ _%rest143918%_)
                   (_%E143924143935%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest143920143931%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K143927143960%_
                     (lambda (_%rest143957%_ _%id143958%_)
                       (_%loop143916%_
                        _%rest143957%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id143958%_))
                              _%locals143919%_))))
                    (_%K143926143949%_
                     (lambda (_%id143947%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id143947%_))
                             _%locals143919%_)))
                    (_%K143925143940%_ (lambda () _%locals143919%_)))
                (let ((_%try-match143922143954%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest143920143931%_))
                             (let ((_%id143952%_ _%rest143920143931%_))
                               (_%K143926143949%_ _%id143952%_))
                             (_%K143925143940%_)))))
                  (if (pair? _%rest143920143931%_)
                      (let ((_%tl143929143965%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest143920143931%_)))
                            (_%hd143928143963%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest143920143931%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd143928143963%_))
                            (let ((_%id143968%_ _%hd143928143963%_)
                                  (_%rest143970%_ _%tl143929143965%_))
                              (_%K143927143960%_ _%rest143970%_ _%id143968%_))
                            (_%K143925143940%_)))
                      (_%try-match143922143954%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self143864%_ _%stx143865%_)
        (let* ((_%g143867143878%_
                (lambda (_%g143868143875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143868143875%_))))
               (_%g143866143909%_
                (lambda (_%g143868143881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143868143881%_))
                      (let ((_%e143871143883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143868143881%_))))
                        (let ((_%hd143872143886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143871143883%_)))
                              (_%tl143873143888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143871143883%_))))
                          ((lambda (_%L143891%_ _%L143892%_)
                             (let ((_%rands143907%_
                                    (map (lambda (_%g143902143904%_)
                                           (gxc#compile-e__1
                                            _%self143864%_
                                            _%g143902143904%_))
                                         _%L143891%_)))
                               (gxc#xform-wrap-source
                                (cons _%L143892%_ _%rands143907%_)
                                _%stx143865%_)))
                           _%tl143873143888%_
                           _%hd143872143886%_)))
                      (_%g143867143878%_ _%g143868143881%_)))))
          (_%g143866143909%_ _%stx143865%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self143794%_ _%stx143795%_)
        (let* ((_%g143797143814%_
                (lambda (_%g143798143811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143798143811%_))))
               (_%g143796143861%_
                (lambda (_%g143798143817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143798143817%_))
                      (let ((_%e143801143819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143798143817%_))))
                        (let ((_%hd143802143822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143801143819%_)))
                              (_%tl143803143824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143801143819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143803143824%_))
                              (let ((_%e143804143827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143803143824%_))))
                                (let ((_%hd143805143830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143804143827%_)))
                                      (_%tl143806143832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143804143827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143806143832%_))
                                      (let ((_%e143807143835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143806143832%_))))
                                        (let ((_%hd143808143838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143807143835%_)))
                                              (_%tl143809143840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143807143835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143809143840%_))
                                              ((lambda (_%L143843%_
                                                        _%L143844%_)
                                                 (let ((_%expr143859%_
                                                        (gxc#compile-e__1
                                                         _%self143794%_
                                                         _%L143843%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L143844%_
                                                                (cons _%expr143859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx143795%_)))
                                               _%hd143808143838%_
                                               _%hd143805143830%_)
                                              (_%g143797143814%_
                                               _%g143798143817%_))))
                                      (_%g143797143814%_ _%g143798143817%_))))
                              (_%g143797143814%_ _%g143798143817%_))))
                      (_%g143797143814%_ _%g143798143817%_)))))
          (_%g143796143861%_ _%stx143795%_))))))
