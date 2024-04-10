(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712757955)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134171%_)
        (let* ((_%self134173%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134175%_
                (let ((__tmp134371 (gxc#stx-car-e _%stx134171%_)))
                  (declare (not safe))
                  (method-ref _%self134173%_ __tmp134371))))
          (if _%$e134175%_
              ((lambda (_%method134178%_)
                 (declare (not safe))
                 (_%method134178%_ _%self134173%_ _%stx134171%_))
               _%$e134175%_)
              (let ((__tmp134373 (gxc#stx-car-e _%stx134171%_))
                    (__tmp134372
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134171%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134173%_
                       __tmp134373
                       __tmp134372))))))
    (define gxc#compile-e__1
      (lambda (_%self134182%_ _%stx134183%_)
        (let ((_%$e134185%_
               (let ((__tmp134374 (gxc#stx-car-e _%stx134183%_)))
                 (declare (not safe))
                 (method-ref _%self134182%_ __tmp134374))))
          (if _%$e134185%_
              ((lambda (_%method134188%_)
                 (declare (not safe))
                 (_%method134188%_ _%self134182%_ _%stx134183%_))
               _%$e134185%_)
              (let ((__tmp134376 (gxc#stx-car-e _%stx134183%_))
                    (__tmp134375
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134183%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134182%_
                       __tmp134376
                       __tmp134375))))))
    (define gxc#compile-e
      (lambda _g134378_
        (let ((_g134377_ (let () (declare (not safe)) (##length _g134378_))))
          (cond ((let () (declare (not safe)) (##fx= _g134377_ 1))
                 (apply gxc#compile-e__0 _g134378_))
                ((let () (declare (not safe)) (##fx= _g134377_ 2))
                 (apply gxc#compile-e__1 _g134378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134378_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134169%_)
        (let ((__tmp134379
               (car (let () (declare (not safe)) (gx#stx-e _%stx134169%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134379))))
    (define gxc#void-method (lambda (_%self134166%_ _%stx134167%_) '#!void))
    (define gxc#false-method (lambda (_%self134163%_ _%stx134164%_) '#f))
    (define gxc#true-method (lambda (_%self134160%_ _%stx134161%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134157%_ _%stx134158%_) _%stx134158%_))
    (define gxc#::void-expression::t
      (let ((__tmp134380 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134380
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134154%_
        (apply make-instance gxc#::void-expression::t _%$args134154%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134381
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
        (__make-promise __tmp134381)))
    (define gxc#::void-special-form::t
      (let ((__tmp134382 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134382
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134150%_
        (apply make-instance gxc#::void-special-form::t _%$args134150%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134383
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
        (__make-promise __tmp134383)))
    (define gxc#::void::t
      (let ((__tmp134384
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134384 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134146%_
        (apply make-instance gxc#::void::t _%$args134146%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134385
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134385)))
    (define gxc#::false-expression::t
      (let ((__tmp134386 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134386
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134142%_
        (apply make-instance gxc#::false-expression::t _%$args134142%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134387
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
        (__make-promise __tmp134387)))
    (define gxc#::false-special-form::t
      (let ((__tmp134388 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134388
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134138%_
        (apply make-instance gxc#::false-special-form::t _%$args134138%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134389
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
        (__make-promise __tmp134389)))
    (define gxc#::false::t
      (let ((__tmp134390
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134390 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134134%_
        (apply make-instance gxc#::false::t _%$args134134%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134391
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134391)))
    (define gxc#::identity-expression::t
      (let ((__tmp134392 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134392
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134130%_
        (apply make-instance gxc#::identity-expression::t _%$args134130%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134393
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
        (__make-promise __tmp134393)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134394 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134394
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134126%_
        (apply make-instance gxc#::identity-special-form::t _%$args134126%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134395
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
        (__make-promise __tmp134395)))
    (define gxc#::identity::t
      (let ((__tmp134396
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134396
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134122%_
        (apply make-instance gxc#::identity::t _%$args134122%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134397
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134397)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134398 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134398
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134118%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134118%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134399
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
        (__make-promise __tmp134399)))
    (define gxc#::basic-xform::t
      (let ((__tmp134400
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134400
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134114%_
        (apply make-instance gxc#::basic-xform::t _%$args134114%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134401
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
        (__make-promise __tmp134401)))
    (define gxc#apply-begin%
      (lambda (_%self134070%_ _%stx134071%_)
        (let* ((_%g134073134083%_
                (lambda (_%g134074134080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134074134080%_))))
               (_%g134072134110%_
                (lambda (_%g134074134086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134074134086%_))
                      (let ((_%e134076134088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134074134086%_))))
                        (let ((_%hd134077134091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134076134088%_)))
                              (_%tl134078134093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134076134088%_))))
                          ((lambda (_%L134096%_)
                             (for-each
                              (lambda (_%g134105134107%_)
                                (gxc#compile-e__1
                                 _%self134070%_
                                 _%g134105134107%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134096%_))))
                           _%tl134078134093%_)))
                      (_%g134073134083%_ _%g134074134086%_)))))
          (_%g134072134110%_ _%stx134071%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134031%_ _%stx134032%_)
        (let* ((_%g134034134044%_
                (lambda (_%g134035134041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134035134041%_))))
               (_%g134033134067%_
                (lambda (_%g134035134047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134035134047%_))
                      (let ((_%e134037134049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134035134047%_))))
                        (let ((_%hd134038134052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134037134049%_)))
                              (_%tl134039134054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134037134049%_))))
                          ((lambda (_%L134057%_)
                             (gxc#compile-e__1
                              _%self134031%_
                              (last _%L134057%_)))
                           _%tl134039134054%_)))
                      (_%g134034134044%_ _%g134035134047%_)))))
          (_%g134033134067%_ _%stx134032%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134027%_ _%stx134028%_)
        (let ((__tmp134404
               (lambda () (gxc#apply-begin% _%self134027%_ _%stx134028%_)))
              (__tmp134402
               (let ((__tmp134403
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134403 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134404
           gx#current-expander-phi
           __tmp134402))))
    (define gxc#apply-module%
      (lambda (_%self133966%_ _%stx133967%_)
        (let* ((_%g133969133983%_
                (lambda (_%g133970133980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133970133980%_))))
               (_%g133968134024%_
                (lambda (_%g133970133986%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133970133986%_))
                      (let ((_%e133973133988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133970133986%_))))
                        (let ((_%hd133974133991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133973133988%_)))
                              (_%tl133975133993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133973133988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133975133993%_))
                              (let ((_%e133976133996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133975133993%_))))
                                (let ((_%hd133977133999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133976133996%_)))
                                      (_%tl133978134001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133976133996%_))))
                                  ((lambda (_%L134004%_ _%L134005%_)
                                     (let* ((_%ctx134018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134005%_)))
                                            (_%ctx-stx134020%_
                                             (##structure-ref
                                              _%ctx134018%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134405
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self133966%_
                                                _%ctx-stx134020%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134405
                                        gx#current-expander-context
                                        _%ctx134018%_)))
                                   _%tl133978134001%_
                                   _%hd133977133999%_)))
                              (_%g133969133983%_ _%g133970133986%_))))
                      (_%g133969133983%_ _%g133970133986%_)))))
          (_%g133968134024%_ _%stx133967%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133898%_ _%stx133899%_)
        (let* ((_%g133901133918%_
                (lambda (_%g133902133915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133902133915%_))))
               (_%g133900133963%_
                (lambda (_%g133902133921%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133902133921%_))
                      (let ((_%e133905133923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133902133921%_))))
                        (let ((_%hd133906133926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133905133923%_)))
                              (_%tl133907133928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133905133923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133907133928%_))
                              (let ((_%e133908133931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133907133928%_))))
                                (let ((_%hd133909133934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133908133931%_)))
                                      (_%tl133910133936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133908133931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133910133936%_))
                                      (let ((_%e133911133939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133910133936%_))))
                                        (let ((_%hd133912133942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133911133939%_)))
                                              (_%tl133913133944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133911133939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133913133944%_))
                                              ((lambda (_%L133947%_
                                                        _%L133948%_)
                                                 (gxc#compile-e__1
                                                  _%self133898%_
                                                  _%L133947%_))
                                               _%hd133912133942%_
                                               _%hd133909133934%_)
                                              (_%g133901133918%_
                                               _%g133902133921%_))))
                                      (_%g133901133918%_ _%g133902133921%_))))
                              (_%g133901133918%_ _%g133902133921%_))))
                      (_%g133901133918%_ _%g133902133921%_)))))
          (_%g133900133963%_ _%stx133899%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133830%_ _%stx133831%_)
        (let* ((_%g133833133850%_
                (lambda (_%g133834133847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133834133847%_))))
               (_%g133832133895%_
                (lambda (_%g133834133853%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133834133853%_))
                      (let ((_%e133837133855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133834133853%_))))
                        (let ((_%hd133838133858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133837133855%_)))
                              (_%tl133839133860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133837133855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133839133860%_))
                              (let ((_%e133840133863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133839133860%_))))
                                (let ((_%hd133841133866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133840133863%_)))
                                      (_%tl133842133868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133840133863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133842133868%_))
                                      (let ((_%e133843133871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133842133868%_))))
                                        (let ((_%hd133844133874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133843133871%_)))
                                              (_%tl133845133876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133843133871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133845133876%_))
                                              ((lambda (_%L133879%_
                                                        _%L133880%_)
                                                 (gxc#compile-e__1
                                                  _%self133830%_
                                                  _%L133879%_))
                                               _%hd133844133874%_
                                               _%hd133841133866%_)
                                              (_%g133833133850%_
                                               _%g133834133853%_))))
                                      (_%g133833133850%_ _%g133834133853%_))))
                              (_%g133833133850%_ _%g133834133853%_))))
                      (_%g133833133850%_ _%g133834133853%_)))))
          (_%g133832133895%_ _%stx133831%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133761%_ _%stx133762%_)
        (let* ((_%g133764133781%_
                (lambda (_%g133765133778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133765133778%_))))
               (_%g133763133827%_
                (lambda (_%g133765133784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133765133784%_))
                      (let ((_%e133768133786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133765133784%_))))
                        (let ((_%hd133769133789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133768133786%_)))
                              (_%tl133770133791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133768133786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133770133791%_))
                              (let ((_%e133771133794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133770133791%_))))
                                (let ((_%hd133772133797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133771133794%_)))
                                      (_%tl133773133799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133771133794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133773133799%_))
                                      (let ((_%e133774133802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133773133799%_))))
                                        (let ((_%hd133775133805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133774133802%_)))
                                              (_%tl133776133807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133774133802%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133776133807%_))
                                              ((lambda (_%L133810%_
                                                        _%L133811%_)
                                                 (let ((__tmp134408
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self133761%_
                                                           _%L133810%_)))
                                                       (__tmp134406
                                                        (let ((__tmp134407
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134407 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134408
                                                    gx#current-expander-phi
                                                    __tmp134406)))
                                               _%hd133775133805%_
                                               _%hd133772133797%_)
                                              (_%g133764133781%_
                                               _%g133765133784%_))))
                                      (_%g133764133781%_ _%g133765133784%_))))
                              (_%g133764133781%_ _%g133765133784%_))))
                      (_%g133764133781%_ _%g133765133784%_)))))
          (_%g133763133827%_ _%stx133762%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133693%_ _%stx133694%_)
        (let* ((_%g133696133713%_
                (lambda (_%g133697133710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133697133710%_))))
               (_%g133695133758%_
                (lambda (_%g133697133716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133697133716%_))
                      (let ((_%e133700133718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133697133716%_))))
                        (let ((_%hd133701133721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133700133718%_)))
                              (_%tl133702133723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133700133718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133702133723%_))
                              (let ((_%e133703133726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133702133723%_))))
                                (let ((_%hd133704133729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133703133726%_)))
                                      (_%tl133705133731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133703133726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133705133731%_))
                                      (let ((_%e133706133734%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133705133731%_))))
                                        (let ((_%hd133707133737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133706133734%_)))
                                              (_%tl133708133739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133706133734%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133708133739%_))
                                              ((lambda (_%L133742%_
                                                        _%L133743%_)
                                                 (gxc#compile-e__1
                                                  _%self133693%_
                                                  _%L133742%_))
                                               _%hd133707133737%_
                                               _%hd133704133729%_)
                                              (_%g133696133713%_
                                               _%g133697133716%_))))
                                      (_%g133696133713%_ _%g133697133716%_))))
                              (_%g133696133713%_ _%g133697133716%_))))
                      (_%g133696133713%_ _%g133697133716%_)))))
          (_%g133695133758%_ _%stx133694%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133575%_ _%stx133576%_)
        (let* ((_%g133578133606%_
                (lambda (_%g133579133603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133579133603%_))))
               (_%g133577133690%_
                (lambda (_%g133579133609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133579133609%_))
                      (let ((_%e133582133611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133579133609%_))))
                        (let ((_%hd133583133614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133582133611%_)))
                              (_%tl133584133616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133582133611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133584133616%_))
                              (let ((_g134409_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133584133616%_
                                        '0))))
                                (begin
                                  (let ((_g134410_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134409_)
                                               (##vector-length _g134409_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134410_ 2)))
                                        (error "Context expects 2 values"
                                               _g134410_)))
                                  (let ((_%target133585133619%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134409_ 0)))
                                        (_%tl133587133621%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134409_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133587133621%_))
                                        (letrec ((_%loop133588133624%_
                                                  (lambda (_%hd133586133627%_
                                                           _%body133592133629%_
                                                           _%hd133593133631%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133586133627%_))
                                                        (let ((_%e133589133634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133586133627%_))))
                  (let ((_%lp-hd133590133637%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133589133634%_)))
                        (_%lp-tl133591133639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133589133634%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133590133637%_))
                        (let ((_%e133596133642%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133590133637%_))))
                          (let ((_%hd133597133645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133596133642%_)))
                                (_%tl133598133647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133596133642%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133598133647%_))
                                (let ((_%e133599133650%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133598133647%_))))
                                  (let ((_%hd133600133653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133599133650%_)))
                                        (_%tl133601133655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133599133650%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133601133655%_))
                                        (_%loop133588133624%_
                                         _%lp-tl133591133639%_
                                         (cons _%hd133600133653%_
                                               _%body133592133629%_)
                                         (cons _%hd133597133645%_
                                               _%hd133593133631%_))
                                        (_%g133578133606%_
                                         _%g133579133609%_))))
                                (_%g133578133606%_ _%g133579133609%_))))
                        (_%g133578133606%_ _%g133579133609%_))))
                (let ((_%body133594133658%_ (reverse _%body133592133629%_))
                      (_%hd133595133660%_ (reverse _%hd133593133631%_)))
                  ((lambda (_%L133663%_ _%L133664%_)
                     (for-each
                      (lambda (_%g133678133680%_)
                        (gxc#compile-e__1 _%self133575%_ _%g133678133680%_))
                      (let ((__tmp134411
                             (lambda (_%g133682133685%_ _%g133683133687%_)
                               (cons _%g133682133685%_ _%g133683133687%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134411 '() _%L133663%_))))
                   _%body133594133658%_
                   _%hd133595133660%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133588133624%_
                                           _%target133585133619%_
                                           '()
                                           '()))
                                        (_%g133578133606%_
                                         _%g133579133609%_)))))
                              (_%g133578133606%_ _%g133579133609%_))))
                      (_%g133578133606%_ _%g133579133609%_)))))
          (_%g133577133690%_ _%stx133576%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133428%_ _%stx133429%_)
        (let* ((_%g133431133466%_
                (lambda (_%g133432133463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133432133463%_))))
               (_%g133430133572%_
                (lambda (_%g133432133469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133432133469%_))
                      (let ((_%e133436133471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133432133469%_))))
                        (let ((_%hd133437133474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133436133471%_)))
                              (_%tl133438133476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133436133471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133438133476%_))
                              (let ((_%e133439133479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133438133476%_))))
                                (let ((_%hd133440133482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133439133479%_)))
                                      (_%tl133441133484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133439133479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133440133482%_))
                                      (let ((_g134412_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133440133482%_
                                                '0))))
                                        (begin
                                          (let ((_g134413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134412_)
                                                       (##vector-length
                                                        _g134412_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134413_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134413_)))
                                          (let ((_%target133442133487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134412_ 0)))
                                                (_%tl133444133489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134412_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133444133489%_))
                                                (letrec ((_%loop133445133492%_
                                                          (lambda (_%hd133443133495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133449133497%_
                           _%hd133450133499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133443133495%_))
                        (let ((_%e133446133502%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133443133495%_))))
                          (let ((_%lp-hd133447133505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133446133502%_)))
                                (_%lp-tl133448133507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133446133502%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133447133505%_))
                                (let ((_%e133456133510%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133447133505%_))))
                                  (let ((_%hd133457133513%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133456133510%_)))
                                        (_%tl133458133515%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133456133510%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133458133515%_))
                                        (let ((_%e133459133518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133458133515%_))))
                                          (let ((_%hd133460133521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133459133518%_)))
                                                (_%tl133461133523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133459133518%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133461133523%_))
                                                (_%loop133445133492%_
                                                 _%lp-tl133448133507%_
                                                 (cons _%hd133460133521%_
                                                       _%expr133449133497%_)
                                                 (cons _%hd133457133513%_
                                                       _%hd133450133499%_))
                                                (_%g133431133466%_
                                                 _%g133432133469%_))))
                                        (_%g133431133466%_
                                         _%g133432133469%_))))
                                (_%g133431133466%_ _%g133432133469%_))))
                        (let ((_%expr133451133526%_
                               (reverse _%expr133449133497%_))
                              (_%hd133452133528%_
                               (reverse _%hd133450133499%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133441133484%_))
                              (let ((_%e133453133531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133441133484%_))))
                                (let ((_%hd133454133534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133453133531%_)))
                                      (_%tl133455133536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133453133531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133455133536%_))
                                      ((lambda (_%L133539%_
                                                _%L133540%_
                                                _%L133541%_)
                                         (for-each
                                          (lambda (_%g133560133562%_)
                                            (gxc#compile-e__1
                                             _%self133428%_
                                             _%g133560133562%_))
                                          (let ((__tmp134415
                                                 (lambda (_%g133564133567%_
                                                          _%g133565133569%_)
                                                   (cons _%g133564133567%_
                                                         _%g133565133569%_)))
                                                (__tmp134414
                                                 (cons _%L133539%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134415
                                             __tmp134414
                                             _%L133540%_))))
                                       _%hd133454133534%_
                                       _%expr133451133526%_
                                       _%hd133452133528%_)
                                      (_%g133431133466%_ _%g133432133469%_))))
                              (_%g133431133466%_ _%g133432133469%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133445133492%_
                                                   _%target133442133487%_
                                                   '()
                                                   '()))
                                                (_%g133431133466%_
                                                 _%g133432133469%_)))))
                                      (_%g133431133466%_ _%g133432133469%_))))
                              (_%g133431133466%_ _%g133432133469%_))))
                      (_%g133431133466%_ _%g133432133469%_)))))
          (_%g133430133572%_ _%stx133429%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133373%_ _%stx133374%_)
        (let* ((_%g133376133390%_
                (lambda (_%g133377133387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133377133387%_))))
               (_%g133375133425%_
                (lambda (_%g133377133393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133377133393%_))
                      (let ((_%e133380133395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133377133393%_))))
                        (let ((_%hd133381133398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133380133395%_)))
                              (_%tl133382133400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133380133395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133382133400%_))
                              (let ((_%e133383133403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133382133400%_))))
                                (let ((_%hd133384133406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133383133403%_)))
                                      (_%tl133385133408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133383133403%_))))
                                  ((lambda (_%L133411%_ _%L133412%_)
                                     (gxc#compile-e__1
                                      _%self133373%_
                                      (last _%L133411%_)))
                                   _%tl133385133408%_
                                   _%hd133384133406%_)))
                              (_%g133376133390%_ _%g133377133393%_))))
                      (_%g133376133390%_ _%g133377133393%_)))))
          (_%g133375133425%_ _%stx133374%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133305%_ _%stx133306%_)
        (let* ((_%g133308133325%_
                (lambda (_%g133309133322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133309133322%_))))
               (_%g133307133370%_
                (lambda (_%g133309133328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133309133328%_))
                      (let ((_%e133312133330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133309133328%_))))
                        (let ((_%hd133313133333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133312133330%_)))
                              (_%tl133314133335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133312133330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133314133335%_))
                              (let ((_%e133315133338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133314133335%_))))
                                (let ((_%hd133316133341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133315133338%_)))
                                      (_%tl133317133343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133315133338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133317133343%_))
                                      (let ((_%e133318133346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133317133343%_))))
                                        (let ((_%hd133319133349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133318133346%_)))
                                              (_%tl133320133351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133318133346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133320133351%_))
                                              ((lambda (_%L133354%_
                                                        _%L133355%_)
                                                 (gxc#compile-e__1
                                                  _%self133305%_
                                                  _%L133354%_))
                                               _%hd133319133349%_
                                               _%hd133316133341%_)
                                              (_%g133308133325%_
                                               _%g133309133328%_))))
                                      (_%g133308133325%_ _%g133309133328%_))))
                              (_%g133308133325%_ _%g133309133328%_))))
                      (_%g133308133325%_ _%g133309133328%_)))))
          (_%g133307133370%_ _%stx133306%_))))
    (define gxc#apply-operands
      (lambda (_%self133218%_ _%stx133219%_)
        (let* ((_%g133221133240%_
                (lambda (_%g133222133237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133222133237%_))))
               (_%g133220133302%_
                (lambda (_%g133222133243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133222133243%_))
                      (let ((_%e133224133245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133222133243%_))))
                        (let ((_%hd133225133248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133224133245%_)))
                              (_%tl133226133250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133224133245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133226133250%_))
                              (let ((_g134416_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133226133250%_
                                        '0))))
                                (begin
                                  (let ((_g134417_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134416_)
                                               (##vector-length _g134416_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134417_ 2)))
                                        (error "Context expects 2 values"
                                               _g134417_)))
                                  (let ((_%target133227133253%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134416_ 0)))
                                        (_%tl133229133255%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134416_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133229133255%_))
                                        (letrec ((_%loop133230133258%_
                                                  (lambda (_%hd133228133261%_
                                                           _%rands133234133263%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133228133261%_))
                                                        (let ((_%e133231133266%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133228133261%_))))
                  (let ((_%lp-hd133232133269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133231133266%_)))
                        (_%lp-tl133233133271%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133231133266%_))))
                    (_%loop133230133258%_
                     _%lp-tl133233133271%_
                     (cons _%lp-hd133232133269%_ _%rands133234133263%_))))
                (let ((_%rands133235133274%_ (reverse _%rands133234133263%_)))
                  ((lambda (_%L133277%_)
                     (for-each
                      (lambda (_%g133290133292%_)
                        (gxc#compile-e__1 _%self133218%_ _%g133290133292%_))
                      (let ((__tmp134418
                             (lambda (_%g133294133297%_ _%g133295133299%_)
                               (cons _%g133294133297%_ _%g133295133299%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134418 '() _%L133277%_))))
                   _%rands133235133274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop133230133258%_
                                           _%target133227133253%_
                                           '()))
                                        (_%g133221133240%_
                                         _%g133222133243%_)))))
                              (_%g133221133240%_ _%g133222133243%_))))
                      (_%g133221133240%_ _%g133222133243%_)))))
          (_%g133220133302%_ _%stx133219%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133215%_ _%src-stx133216%_)
        (let ((__tmp134419
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133216%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133215%_ __tmp134419))))
    (define gxc#xform-begin%
      (lambda (_%self133170%_ _%stx133171%_)
        (let* ((_%g133173133183%_
                (lambda (_%g133174133180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133174133180%_))))
               (_%g133172133212%_
                (lambda (_%g133174133186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133174133186%_))
                      (let ((_%e133176133188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133174133186%_))))
                        (let ((_%hd133177133191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133176133188%_)))
                              (_%tl133178133193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133176133188%_))))
                          ((lambda (_%L133196%_)
                             (let ((_%forms133210%_
                                    (map (lambda (_%g133205133207%_)
                                           (gxc#compile-e__1
                                            _%self133170%_
                                            _%g133205133207%_))
                                         _%L133196%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms133210%_)
                                _%stx133171%_)))
                           _%tl133178133193%_)))
                      (_%g133173133183%_ _%g133174133186%_)))))
          (_%g133172133212%_ _%stx133171%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133124%_ _%stx133125%_)
        (let* ((_%g133127133137%_
                (lambda (_%g133128133134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133128133134%_))))
               (_%g133126133167%_
                (lambda (_%g133128133140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133128133140%_))
                      (let ((_%e133130133142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133128133140%_))))
                        (let ((_%hd133131133145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133130133142%_)))
                              (_%tl133132133147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133130133142%_))))
                          ((lambda (_%L133150%_)
                             (let ((__tmp134422
                                    (lambda ()
                                      (let ((_%forms133165%_
                                             (map (lambda (_%g133160133162%_)
                                                    (gxc#compile-e__1
                                                     _%self133124%_
                                                     _%g133160133162%_))
                                                  _%L133150%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms133165%_)
                                         _%stx133125%_))))
                                   (__tmp134420
                                    (let ((__tmp134421
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134421 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134422
                                gx#current-expander-phi
                                __tmp134420)))
                           _%tl133132133147%_)))
                      (_%g133127133137%_ _%g133128133140%_)))))
          (_%g133126133167%_ _%stx133125%_))))
    (define gxc#xform-module%
      (lambda (_%self133061%_ _%stx133062%_)
        (let* ((_%g133064133078%_
                (lambda (_%g133065133075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133065133075%_))))
               (_%g133063133121%_
                (lambda (_%g133065133081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133065133081%_))
                      (let ((_%e133068133083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133065133081%_))))
                        (let ((_%hd133069133086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133068133083%_)))
                              (_%tl133070133088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133068133083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133070133088%_))
                              (let ((_%e133071133091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133070133088%_))))
                                (let ((_%hd133072133094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133071133091%_)))
                                      (_%tl133073133096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133071133091%_))))
                                  ((lambda (_%L133099%_ _%L133100%_)
                                     (let* ((_%ctx133113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133100%_)))
                                            (_%code133115%_
                                             (##structure-ref
                                              _%ctx133113%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133118%_
                                             (let ((__tmp134423
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self133061%_
                                                       _%code133115%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134423
                                                gx#current-expander-context
                                                _%ctx133113%_))))
                                       (##structure-set!
                                        _%ctx133113%_
                                        _%code133118%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L133100%_
                                                    (cons _%code133118%_ '())))
                                        _%stx133062%_)))
                                   _%tl133073133096%_
                                   _%hd133072133094%_)))
                              (_%g133064133078%_ _%g133065133081%_))))
                      (_%g133064133078%_ _%g133065133081%_)))))
          (_%g133063133121%_ _%stx133062%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132991%_ _%stx132992%_)
        (let* ((_%g132994133011%_
                (lambda (_%g132995133008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132995133008%_))))
               (_%g132993133058%_
                (lambda (_%g132995133014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132995133014%_))
                      (let ((_%e132998133016%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132995133014%_))))
                        (let ((_%hd132999133019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132998133016%_)))
                              (_%tl133000133021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132998133016%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133000133021%_))
                              (let ((_%e133001133024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133000133021%_))))
                                (let ((_%hd133002133027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133001133024%_)))
                                      (_%tl133003133029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133001133024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133003133029%_))
                                      (let ((_%e133004133032%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133003133029%_))))
                                        (let ((_%hd133005133035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133004133032%_)))
                                              (_%tl133006133037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133004133032%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133006133037%_))
                                              ((lambda (_%L133040%_
                                                        _%L133041%_)
                                                 (let ((_%expr133056%_
                                                        (gxc#compile-e__1
                                                         _%self132991%_
                                                         _%L133040%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L133041%_
                                                                (cons _%expr133056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132992%_)))
                                               _%hd133005133035%_
                                               _%hd133002133027%_)
                                              (_%g132994133011%_
                                               _%g132995133014%_))))
                                      (_%g132994133011%_ _%g132995133014%_))))
                              (_%g132994133011%_ _%g132995133014%_))))
                      (_%g132994133011%_ _%g132995133014%_)))))
          (_%g132993133058%_ _%stx132992%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132920%_ _%stx132921%_)
        (let* ((_%g132923132940%_
                (lambda (_%g132924132937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132924132937%_))))
               (_%g132922132988%_
                (lambda (_%g132924132943%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132924132943%_))
                      (let ((_%e132927132945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132924132943%_))))
                        (let ((_%hd132928132948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132927132945%_)))
                              (_%tl132929132950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132927132945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132929132950%_))
                              (let ((_%e132930132953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132929132950%_))))
                                (let ((_%hd132931132956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132930132953%_)))
                                      (_%tl132932132958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132930132953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132932132958%_))
                                      (let ((_%e132933132961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132932132958%_))))
                                        (let ((_%hd132934132964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132933132961%_)))
                                              (_%tl132935132966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132933132961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132935132966%_))
                                              ((lambda (_%L132969%_
                                                        _%L132970%_)
                                                 (let ((__tmp134426
                                                        (lambda ()
                                                          (let ((_%expr132986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self132920%_ _%L132969%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L132970%_ (cons _%expr132986%_ '())))
                     _%stx132921%_))))
               (__tmp134424
                (let ((__tmp134425
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134425 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134426
                                                    gx#current-expander-phi
                                                    __tmp134424)))
                                               _%hd132934132964%_
                                               _%hd132931132956%_)
                                              (_%g132923132940%_
                                               _%g132924132943%_))))
                                      (_%g132923132940%_ _%g132924132943%_))))
                              (_%g132923132940%_ _%g132924132943%_))))
                      (_%g132923132940%_ _%g132924132943%_)))))
          (_%g132922132988%_ _%stx132921%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132850%_ _%stx132851%_)
        (let* ((_%g132853132870%_
                (lambda (_%g132854132867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132854132867%_))))
               (_%g132852132917%_
                (lambda (_%g132854132873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132854132873%_))
                      (let ((_%e132857132875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132854132873%_))))
                        (let ((_%hd132858132878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132857132875%_)))
                              (_%tl132859132880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132857132875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132859132880%_))
                              (let ((_%e132860132883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132859132880%_))))
                                (let ((_%hd132861132886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132860132883%_)))
                                      (_%tl132862132888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132860132883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132862132888%_))
                                      (let ((_%e132863132891%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132862132888%_))))
                                        (let ((_%hd132864132894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132863132891%_)))
                                              (_%tl132865132896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132863132891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132865132896%_))
                                              ((lambda (_%L132899%_
                                                        _%L132900%_)
                                                 (let ((_%expr132915%_
                                                        (gxc#compile-e__1
                                                         _%self132850%_
                                                         _%L132899%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L132900%_
                                                                (cons _%expr132915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx132851%_)))
                                               _%hd132864132894%_
                                               _%hd132861132886%_)
                                              (_%g132853132870%_
                                               _%g132854132873%_))))
                                      (_%g132853132870%_ _%g132854132873%_))))
                              (_%g132853132870%_ _%g132854132873%_))))
                      (_%g132853132870%_ _%g132854132873%_)))))
          (_%g132852132917%_ _%stx132851%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132788%_ _%stx132789%_)
        (let* ((_%g132791132805%_
                (lambda (_%g132792132802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132792132802%_))))
               (_%g132790132847%_
                (lambda (_%g132792132808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132792132808%_))
                      (let ((_%e132795132810%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132792132808%_))))
                        (let ((_%hd132796132813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132795132810%_)))
                              (_%tl132797132815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132795132810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132797132815%_))
                              (let ((_%e132798132818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132797132815%_))))
                                (let ((_%hd132799132821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132798132818%_)))
                                      (_%tl132800132823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132798132818%_))))
                                  ((lambda (_%L132826%_ _%L132827%_)
                                     (let ((__tmp134428
                                            (lambda ()
                                              (let ((_%body132845%_
                                                     (map (lambda (_%g132840132842%_)
                                                            (gxc#compile-e__1
                                                             _%self132788%_
                                                             _%g132840132842%_))
                                                          _%L132826%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L132827%_
                                                             _%body132845%_))
                                                 _%stx132789%_))))
                                           (__tmp134427
                                            (gxc#xform-let-locals
                                             _%L132827%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134428
                                        gxc#current-compile-local-env
                                        __tmp134427)))
                                   _%tl132800132823%_
                                   _%hd132799132821%_)))
                              (_%g132791132805%_ _%g132792132808%_))))
                      (_%g132791132805%_ _%g132792132808%_)))))
          (_%g132790132847%_ _%stx132789%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132696%_ _%stx132697%_)
        (letrec ((_%clause-e132699%_
                  (lambda (_%clause132740%_)
                    (let* ((_%g132742132753%_
                            (lambda (_%g132743132750%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132743132750%_))))
                           (_%g132741132785%_
                            (lambda (_%g132743132756%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132743132756%_))
                                  (let ((_%e132746132758%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132743132756%_))))
                                    (let ((_%hd132747132761%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132746132758%_)))
                                          (_%tl132748132763%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132746132758%_))))
                                      ((lambda (_%L132766%_ _%L132767%_)
                                         (let ((__tmp134430
                                                (lambda ()
                                                  (let ((_%body132783%_
                                                         (map (lambda (_%g132778132780%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self132696%_
                         _%g132778132780%_))
                      _%L132766%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132767%_
                                                          _%body132783%_))))
                                               (__tmp134429
                                                (gxc#xform-let-locals
                                                 _%L132767%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134430
                                            gxc#current-compile-local-env
                                            __tmp134429)))
                                       _%tl132748132763%_
                                       _%hd132747132761%_)))
                                  (_%g132742132753%_ _%g132743132756%_)))))
                      (_%g132741132785%_ _%clause132740%_)))))
          (let* ((_%g132701132711%_
                  (lambda (_%g132702132708%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132702132708%_))))
                 (_%g132700132737%_
                  (lambda (_%g132702132714%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132702132714%_))
                        (let ((_%e132704132716%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132702132714%_))))
                          (let ((_%hd132705132719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132704132716%_)))
                                (_%tl132706132721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132704132716%_))))
                            ((lambda (_%L132724%_)
                               (let ((_%clauses132735%_
                                      (map _%clause-e132699%_ _%L132724%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses132735%_)
                                  _%stx132697%_)))
                             _%tl132706132721%_)))
                        (_%g132701132711%_ _%g132702132714%_)))))
            (_%g132700132737%_ _%stx132697%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132450%_ _%stx132451%_)
        (let* ((_%g132453132486%_
                (lambda (_%g132454132483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132454132483%_))))
               (_%g132452132693%_
                (lambda (_%g132454132489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132454132489%_))
                      (let ((_%e132459132491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132454132489%_))))
                        (let ((_%hd132460132494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132459132491%_)))
                              (_%tl132461132496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132459132491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132461132496%_))
                              (let ((_%e132462132499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132461132496%_))))
                                (let ((_%hd132463132502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132462132499%_)))
                                      (_%tl132464132504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132462132499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132463132502%_))
                                      (let ((_g134431_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132463132502%_
                                                '0))))
                                        (begin
                                          (let ((_g134432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134431_)
                                                       (##vector-length
                                                        _g134431_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134432_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134432_)))
                                          (let ((_%target132465132507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134431_ 0)))
                                                (_%tl132467132509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134431_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132467132509%_))
                                                (letrec ((_%loop132468132512%_
                                                          (lambda (_%hd132466132515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132472132517%_
                           _%hd132473132519%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132466132515%_))
                        (let ((_%e132469132522%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132466132515%_))))
                          (let ((_%lp-hd132470132525%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132469132522%_)))
                                (_%lp-tl132471132527%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132469132522%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132470132525%_))
                                (let ((_%e132476132530%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132470132525%_))))
                                  (let ((_%hd132477132533%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132476132530%_)))
                                        (_%tl132478132535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132476132530%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132478132535%_))
                                        (let ((_%e132479132538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132478132535%_))))
                                          (let ((_%hd132480132541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132479132538%_)))
                                                (_%tl132481132543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132479132538%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132481132543%_))
                                                (_%loop132468132512%_
                                                 _%lp-tl132471132527%_
                                                 (cons _%hd132480132541%_
                                                       _%expr132472132517%_)
                                                 (cons _%hd132477132533%_
                                                       _%hd132473132519%_))
                                                (_%g132453132486%_
                                                 _%g132454132489%_))))
                                        (_%g132453132486%_
                                         _%g132454132489%_))))
                                (_%g132453132486%_ _%g132454132489%_))))
                        (let ((_%expr132474132546%_
                               (reverse _%expr132472132517%_))
                              (_%hd132475132548%_
                               (reverse _%hd132473132519%_)))
                          ((lambda (_%L132551%_
                                    _%L132552%_
                                    _%L132553%_
                                    _%L132554%_)
                             (let* ((_%g132573132589%_
                                     (lambda (_%g132574132586%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132574132586%_))))
                                    (_%g132572132679%_
                                     (lambda (_%g132574132592%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132574132592%_))
                                           (let ((_g134433_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132574132592%_
                                                     '0))))
                                             (begin
                                               (let ((_g134434_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134433_)
                                                            (##vector-length
                                                             _g134433_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134434_)))
                                               (let ((_%target132576132594%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134433_
                                                         0)))
                                                     (_%tl132578132596%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134433_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132578132596%_))
                                                     (letrec ((_%loop132579132599%_
                                                               (lambda (_%hd132577132602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132583132604%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132577132602%_))
                             (let ((_%e132580132607%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132577132602%_))))
                               (let ((_%lp-hd132581132610%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132580132607%_)))
                                     (_%lp-tl132582132612%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132580132607%_))))
                                 (_%loop132579132599%_
                                  _%lp-tl132582132612%_
                                  (cons _%lp-hd132581132610%_
                                        _%expr132583132604%_))))
                             (let ((_%expr132584132615%_
                                    (reverse _%expr132583132604%_)))
                               ((lambda (_%L132618%_)
                                  (let ((__tmp134437
                                         (lambda ()
                                           (let* ((_%g132632132639%_
                                                   (lambda (_%g132633132636%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132633132636%_))))
                                                  (_%g132631132665%_
                                                   (lambda (_%g132633132642%_)
                                                     ((lambda (_%L132644%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L132554%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132618%_
                                  _%L132553%_))
                               (let ((__tmp134438
                                      (lambda (_%g132654132658%_
                                               _%g132655132660%_
                                               _%g132656132662%_)
                                        (cons (cons _%g132655132660%_
                                                    (cons _%g132654132658%_
                                                          '()))
                                              _%g132656132662%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp134438
                                  '()
                                  _%L132618%_
                                  _%L132553%_)))
                             _%L132644%_))
                 _%stx132451%_))
              _%g132633132642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132631132665%_
                                              (map (lambda (_%g132667132669%_)
                                                     (gxc#compile-e__1
                                                      _%self132450%_
                                                      _%g132667132669%_))
                                                   _%L132551%_)))))
                                        (__tmp134435
                                         (gxc#xform-let-locals
                                          (let ((__tmp134436
                                                 (lambda (_%g132671132674%_
                                                          _%g132672132676%_)
                                                   (cons _%g132671132674%_
                                                         _%g132672132676%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134436
                                             '()
                                             _%L132553%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134437
                                     gxc#current-compile-local-env
                                     __tmp134435)))
                                _%expr132584132615%_))))))
               (_%loop132579132599%_ _%target132576132594%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g132573132589%_
                                                      _%g132574132592%_)))))
                                           (_%g132573132589%_
                                            _%g132574132592%_)))))
                               (_%g132572132679%_
                                (map (lambda (_%g132681132683%_)
                                       (gxc#compile-e__1
                                        _%self132450%_
                                        _%g132681132683%_))
                                     (let ((__tmp134439
                                            (lambda (_%g132685132688%_
                                                     _%g132686132690%_)
                                              (cons _%g132685132688%_
                                                    _%g132686132690%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp134439
                                        '()
                                        _%L132552%_))))))
                           _%tl132464132504%_
                           _%expr132474132546%_
                           _%hd132475132548%_
                           _%hd132460132494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132468132512%_
                                                   _%target132465132507%_
                                                   '()
                                                   '()))
                                                (_%g132453132486%_
                                                 _%g132454132489%_)))))
                                      (_%g132453132486%_ _%g132454132489%_))))
                              (_%g132453132486%_ _%g132454132489%_))))
                      (_%g132453132486%_ _%g132454132489%_)))))
          (_%g132452132693%_ _%stx132451%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132204%_ _%stx132205%_)
        (let* ((_%g132207132240%_
                (lambda (_%g132208132237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132208132237%_))))
               (_%g132206132447%_
                (lambda (_%g132208132243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132208132243%_))
                      (let ((_%e132213132245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132208132243%_))))
                        (let ((_%hd132214132248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132213132245%_)))
                              (_%tl132215132250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132213132245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132215132250%_))
                              (let ((_%e132216132253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132215132250%_))))
                                (let ((_%hd132217132256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132216132253%_)))
                                      (_%tl132218132258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132216132253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132217132256%_))
                                      (let ((_g134440_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132217132256%_
                                                '0))))
                                        (begin
                                          (let ((_g134441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134440_)
                                                       (##vector-length
                                                        _g134440_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134441_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134441_)))
                                          (let ((_%target132219132261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134440_ 0)))
                                                (_%tl132221132263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134440_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132221132263%_))
                                                (letrec ((_%loop132222132266%_
                                                          (lambda (_%hd132220132269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132226132271%_
                           _%hd132227132273%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132220132269%_))
                        (let ((_%e132223132276%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132220132269%_))))
                          (let ((_%lp-hd132224132279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132223132276%_)))
                                (_%lp-tl132225132281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132223132276%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132224132279%_))
                                (let ((_%e132230132284%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132224132279%_))))
                                  (let ((_%hd132231132287%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132230132284%_)))
                                        (_%tl132232132289%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132230132284%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132232132289%_))
                                        (let ((_%e132233132292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132232132289%_))))
                                          (let ((_%hd132234132295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132233132292%_)))
                                                (_%tl132235132297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132233132292%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132235132297%_))
                                                (_%loop132222132266%_
                                                 _%lp-tl132225132281%_
                                                 (cons _%hd132234132295%_
                                                       _%expr132226132271%_)
                                                 (cons _%hd132231132287%_
                                                       _%hd132227132273%_))
                                                (_%g132207132240%_
                                                 _%g132208132243%_))))
                                        (_%g132207132240%_
                                         _%g132208132243%_))))
                                (_%g132207132240%_ _%g132208132243%_))))
                        (let ((_%expr132228132300%_
                               (reverse _%expr132226132271%_))
                              (_%hd132229132302%_
                               (reverse _%hd132227132273%_)))
                          ((lambda (_%L132305%_
                                    _%L132306%_
                                    _%L132307%_
                                    _%L132308%_)
                             (let ((__tmp134444
                                    (lambda ()
                                      (let* ((_%g132328132344%_
                                              (lambda (_%g132329132341%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132329132341%_))))
                                             (_%g132327132426%_
                                              (lambda (_%g132329132347%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132329132347%_))
                                                    (let ((_g134445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132329132347%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134446_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134445_)
                             (##vector-length _g134445_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134446_ 2)))
                      (error "Context expects 2 values" _g134446_)))
                (let ((_%target132331132349%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134445_ 0)))
                      (_%tl132333132351%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134445_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132333132351%_))
                      (letrec ((_%loop132334132354%_
                                (lambda (_%hd132332132357%_
                                         _%expr132338132359%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132332132357%_))
                                      (let ((_%e132335132362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132332132357%_))))
                                        (let ((_%lp-hd132336132365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132335132362%_)))
                                              (_%lp-tl132337132367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132335132362%_))))
                                          (_%loop132334132354%_
                                           _%lp-tl132337132367%_
                                           (cons _%lp-hd132336132365%_
                                                 _%expr132338132359%_))))
                                      (let ((_%expr132339132370%_
                                             (reverse _%expr132338132359%_)))
                                        ((lambda (_%L132373%_)
                                           (let* ((_%g132387132394%_
                                                   (lambda (_%g132388132391%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132388132391%_))))
                                                  (_%g132386132419%_
                                                   (lambda (_%g132388132397%_)
                                                     ((lambda (_%L132399%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L132308%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L132373%_
                                  _%L132307%_))
                               (let ((__tmp134447
                                      (lambda (_%g132408132412%_
                                               _%g132409132414%_
                                               _%g132410132416%_)
                                        (cons (cons _%g132409132414%_
                                                    (cons _%g132408132412%_
                                                          '()))
                                              _%g132410132416%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp134447
                                  '()
                                  _%L132373%_
                                  _%L132307%_)))
                             _%L132399%_))
                 _%stx132205%_))
              _%g132388132397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g132386132419%_
                                              (map (lambda (_%g132421132423%_)
                                                     (gxc#compile-e__1
                                                      _%self132204%_
                                                      _%g132421132423%_))
                                                   _%L132305%_))))
                                         _%expr132339132370%_))))))
                        (_%loop132334132354%_ _%target132331132349%_ '()))
                      (_%g132328132344%_ _%g132329132347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g132328132344%_
                                                     _%g132329132347%_)))))
                                        (_%g132327132426%_
                                         (map (lambda (_%g132428132430%_)
                                                (gxc#compile-e__1
                                                 _%self132204%_
                                                 _%g132428132430%_))
                                              (let ((__tmp134448
                                                     (lambda (_%g132432132435%_
                                                              _%g132433132437%_)
                                                       (cons _%g132432132435%_
                                                             _%g132433132437%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp134448
                                                 '()
                                                 _%L132306%_)))))))
                                   (__tmp134442
                                    (gxc#xform-let-locals
                                     (let ((__tmp134443
                                            (lambda (_%g132439132442%_
                                                     _%g132440132444%_)
                                              (cons _%g132439132442%_
                                                    _%g132440132444%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp134443
                                        '()
                                        _%L132307%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134444
                                gxc#current-compile-local-env
                                __tmp134442)))
                           _%tl132218132258%_
                           _%expr132228132300%_
                           _%hd132229132302%_
                           _%hd132214132248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop132222132266%_
                                                   _%target132219132261%_
                                                   '()
                                                   '()))
                                                (_%g132207132240%_
                                                 _%g132208132243%_)))))
                                      (_%g132207132240%_ _%g132208132243%_))))
                              (_%g132207132240%_ _%g132208132243%_))))
                      (_%g132207132240%_ _%g132208132243%_)))))
          (_%g132206132447%_ _%stx132205%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132071%_)
        (letrec ((_%flatten132073%_
                  (lambda (_%maybe-lst132131%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst132131%_))
                        (cons _%maybe-lst132131%_ '())
                        (let _%loop132133%_ ((_%rest132135%_
                                              _%maybe-lst132131%_)
                                             (_%result132136%_ '()))
                          (let* ((_%__stx134336134337%_ _%rest132135%_)
                                 (_%g132140132152%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx134336134337%_)))))
                            (let ((_%__kont134338134339%_
                                   (lambda (_%L132190%_ _%L132191%_)
                                     (_%loop132133%_
                                      _%L132190%_
                                      (let ((__tmp134449
                                             (_%flatten132073%_ _%L132191%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result132136%_
                                         __tmp134449)))))
                                  (_%__kont134340134341%_
                                   (lambda (_%L132164%_)
                                     (cons _%L132164%_ _%result132136%_)))
                                  (_%__kont134342134343%_
                                   (lambda () _%result132136%_)))
                              (let ((_%g132138132177%_
                                     (lambda ()
                                       (let ((_%L132164%_
                                              _%__stx134336134337%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L132164%_))
                                             (_%__kont134340134341%_
                                              _%L132164%_)
                                             (_%__kont134342134343%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx134336134337%_))
                                    (let ((_%e132144132182%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx134336134337%_))))
                                      (let ((_%tl132146132187%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132144132182%_)))
                                            (_%hd132145132185%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132144132182%_))))
                                        (_%__kont134338134339%_
                                         _%tl132146132187%_
                                         _%hd132145132185%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g132138132177%_)))))))))))
          (let _%loop132075%_ ((_%rest132077%_
                                (_%flatten132073%_ _%bindings132071%_))
                               (_%locals132078%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest132079132090%_ _%rest132077%_)
                   (_%E132083132094%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest132079132090%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K132086132119%_
                     (lambda (_%rest132116%_ _%id132117%_)
                       (_%loop132075%_
                        _%rest132116%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id132117%_))
                              _%locals132078%_))))
                    (_%K132085132108%_
                     (lambda (_%id132106%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id132106%_))
                             _%locals132078%_)))
                    (_%K132084132099%_ (lambda () _%locals132078%_)))
                (let ((_%try-match132081132113%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest132079132090%_))
                             (let ((_%id132111%_ _%rest132079132090%_))
                               (_%K132085132108%_ _%id132111%_))
                             (_%K132084132099%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest132079132090%_))
                      (let ((_%tl132088132124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest132079132090%_)))
                            (_%hd132087132122%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest132079132090%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd132087132122%_))
                            (let ((_%id132127%_ _%hd132087132122%_)
                                  (_%rest132129%_ _%tl132088132124%_))
                              (_%K132086132119%_ _%rest132129%_ _%id132127%_))
                            (_%K132084132099%_)))
                      (_%try-match132081132113%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self132023%_ _%stx132024%_)
        (let* ((_%g132026132037%_
                (lambda (_%g132027132034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132027132034%_))))
               (_%g132025132068%_
                (lambda (_%g132027132040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132027132040%_))
                      (let ((_%e132030132042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132027132040%_))))
                        (let ((_%hd132031132045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132030132042%_)))
                              (_%tl132032132047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132030132042%_))))
                          ((lambda (_%L132050%_ _%L132051%_)
                             (let ((_%rands132066%_
                                    (map (lambda (_%g132061132063%_)
                                           (gxc#compile-e__1
                                            _%self132023%_
                                            _%g132061132063%_))
                                         _%L132050%_)))
                               (gxc#xform-wrap-source
                                (cons _%L132051%_ _%rands132066%_)
                                _%stx132024%_)))
                           _%tl132032132047%_
                           _%hd132031132045%_)))
                      (_%g132026132037%_ _%g132027132040%_)))))
          (_%g132025132068%_ _%stx132024%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131953%_ _%stx131954%_)
        (let* ((_%g131956131973%_
                (lambda (_%g131957131970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131957131970%_))))
               (_%g131955132020%_
                (lambda (_%g131957131976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131957131976%_))
                      (let ((_%e131960131978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131957131976%_))))
                        (let ((_%hd131961131981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131960131978%_)))
                              (_%tl131962131983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131960131978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131962131983%_))
                              (let ((_%e131963131986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131962131983%_))))
                                (let ((_%hd131964131989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131963131986%_)))
                                      (_%tl131965131991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131963131986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131965131991%_))
                                      (let ((_%e131966131994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131965131991%_))))
                                        (let ((_%hd131967131997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131966131994%_)))
                                              (_%tl131968131999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131966131994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131968131999%_))
                                              ((lambda (_%L132002%_
                                                        _%L132003%_)
                                                 (let ((_%expr132018%_
                                                        (gxc#compile-e__1
                                                         _%self131953%_
                                                         _%L132002%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L132003%_
                                                                (cons _%expr132018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx131954%_)))
                                               _%hd131967131997%_
                                               _%hd131964131989%_)
                                              (_%g131956131973%_
                                               _%g131957131976%_))))
                                      (_%g131956131973%_ _%g131957131976%_))))
                              (_%g131956131973%_ _%g131957131976%_))))
                      (_%g131956131973%_ _%g131957131976%_)))))
          (_%g131955132020%_ _%stx131954%_))))))
