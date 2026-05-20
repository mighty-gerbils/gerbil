(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1779274772)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx195845%_)
        (let* ((_%self195847%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e195849%_
                (let ((__tmp196067 (gxc#stx-car-e _%stx195845%_)))
                  (declare (not safe))
                  (method-ref _%self195847%_ __tmp196067))))
          (if _%$e195849%_
              ((lambda (_%method195852%_)
                 (declare (not safe))
                 (let ((_%$e195855%_ (gx#stx-source _%stx195845%_)))
                   (if _%$e195855%_
                       ((lambda (_%source195858%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195852%_ _%self195847%_ _%stx195845%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195858%_ '()))
                                 (let ((_%$e195862%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195862%_ _%$e195862%_ '())))))
                        _%$e195855%_)
                       (_%method195852%_ _%self195847%_ _%stx195845%_))))
               _%$e195849%_)
              (let ((__tmp196069 (gxc#stx-car-e _%stx195845%_))
                    (__tmp196068
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195845%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195847%_
                       __tmp196069
                       __tmp196068))))))
    (define gxc#compile-e__1
      (lambda (_%self195867%_ _%stx195868%_)
        (let ((_%$e195870%_
               (let ((__tmp196070 (gxc#stx-car-e _%stx195868%_)))
                 (declare (not safe))
                 (method-ref _%self195867%_ __tmp196070))))
          (if _%$e195870%_
              ((lambda (_%method195873%_)
                 (declare (not safe))
                 (let ((_%$e195876%_ (gx#stx-source _%stx195868%_)))
                   (if _%$e195876%_
                       ((lambda (_%source195879%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195873%_ _%self195867%_ _%stx195868%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195879%_ '()))
                                 (let ((_%$e195883%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195883%_ _%$e195883%_ '())))))
                        _%$e195876%_)
                       (_%method195873%_ _%self195867%_ _%stx195868%_))))
               _%$e195870%_)
              (let ((__tmp196072 (gxc#stx-car-e _%stx195868%_))
                    (__tmp196071
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195868%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195867%_
                       __tmp196072
                       __tmp196071))))))
    (define gxc#compile-e
      (lambda _g196073_
        (let ((_g196074_ (let () (declare (not safe)) (##length _g196073_))))
          (cond ((let () (declare (not safe)) (##fx= _g196074_ 1))
                 (apply gxc#compile-e__0 _g196073_))
                ((let () (declare (not safe)) (##fx= _g196074_ 2))
                 (apply gxc#compile-e__1 _g196073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g196073_))))))
    (define gxc#stx-car-e
      (lambda (_%stx195843%_)
        (let ((__tmp196075
               (car (let () (declare (not safe)) (gx#stx-e _%stx195843%_)))))
          (declare (not safe))
          (gx#stx-e __tmp196075))))
    (define gxc#void-method (lambda (_%self195840%_ _%stx195841%_) '#!void))
    (define gxc#false-method (lambda (_%self195837%_ _%stx195838%_) '#f))
    (define gxc#true-method (lambda (_%self195834%_ _%stx195835%_) '#t))
    (define gxc#identity-method
      (lambda (_%self195831%_ _%stx195832%_) _%stx195832%_))
    (define gxc#::void-expression::t
      (let ((__tmp196076 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp196076
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args195828%_
        (apply make-instance gxc#::void-expression::t _%$args195828%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp196077
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
        (__make-atomic-promise __tmp196077)))
    (define gxc#::void-special-form::t
      (let ((__tmp196078 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp196078
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args195824%_
        (apply make-instance gxc#::void-special-form::t _%$args195824%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp196079
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
        (__make-atomic-promise __tmp196079)))
    (define gxc#::void::t
      (let ((__tmp196080
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp196080 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args195820%_
        (apply make-instance gxc#::void::t _%$args195820%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp196081
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196081)))
    (define gxc#::false-expression::t
      (let ((__tmp196082 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp196082
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args195816%_
        (apply make-instance gxc#::false-expression::t _%$args195816%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp196083
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
        (__make-atomic-promise __tmp196083)))
    (define gxc#::false-special-form::t
      (let ((__tmp196084 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp196084
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args195812%_
        (apply make-instance gxc#::false-special-form::t _%$args195812%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp196085
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
        (__make-atomic-promise __tmp196085)))
    (define gxc#::false::t
      (let ((__tmp196086
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp196086 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args195808%_
        (apply make-instance gxc#::false::t _%$args195808%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp196087
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196087)))
    (define gxc#::identity-expression::t
      (let ((__tmp196088 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp196088
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args195804%_
        (apply make-instance gxc#::identity-expression::t _%$args195804%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp196089
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
        (__make-atomic-promise __tmp196089)))
    (define gxc#::identity-special-form::t
      (let ((__tmp196090 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp196090
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args195800%_
        (apply make-instance gxc#::identity-special-form::t _%$args195800%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp196091
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
        (__make-atomic-promise __tmp196091)))
    (define gxc#::identity::t
      (let ((__tmp196092
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp196092
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args195796%_
        (apply make-instance gxc#::identity::t _%$args195796%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp196093
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp196093)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp196094 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp196094
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args195792%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args195792%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp196095
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
        (__make-atomic-promise __tmp196095)))
    (define gxc#::basic-xform::t
      (let ((__tmp196096
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp196096
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args195788%_
        (apply make-instance gxc#::basic-xform::t _%$args195788%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp196097
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
        (__make-atomic-promise __tmp196097)))
    (define gxc#apply-begin%
      (lambda (_%self195744%_ _%stx195745%_)
        (let* ((_%g195747195757%_
                (lambda (_%g195748195754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195748195754%_))))
               (_%g195746195784%_
                (lambda (_%g195748195760%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195748195760%_))
                      (let ((_%e195750195762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195748195760%_))))
                        (let ((_%hd195751195765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195750195762%_)))
                              (_%tl195752195767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195750195762%_))))
                          ((lambda (_%g195749195770%_)
                             (for-each
                              (lambda (_%g195779195781%_)
                                (gxc#compile-e__1
                                 _%self195744%_
                                 _%g195779195781%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g195749195770%_))))
                           _%tl195752195767%_)))
                      (_%g195747195757%_ _%g195748195760%_)))))
          (_%g195746195784%_ _%stx195745%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self195705%_ _%stx195706%_)
        (let* ((_%g195708195718%_
                (lambda (_%g195709195715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195709195715%_))))
               (_%g195707195741%_
                (lambda (_%g195709195721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195709195721%_))
                      (let ((_%e195711195723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195709195721%_))))
                        (let ((_%hd195712195726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195711195723%_)))
                              (_%tl195713195728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195711195723%_))))
                          ((lambda (_%g195710195731%_)
                             (gxc#compile-e__1
                              _%self195705%_
                              (last _%g195710195731%_)))
                           _%tl195713195728%_)))
                      (_%g195708195718%_ _%g195709195721%_)))))
          (_%g195707195741%_ _%stx195706%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self195701%_ _%stx195702%_)
        (let ((__tmp196100
               (lambda () (gxc#apply-begin% _%self195701%_ _%stx195702%_)))
              (__tmp196098
               (let ((__tmp196099
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp196099 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp196100
           gx#current-expander-phi
           __tmp196098))))
    (define gxc#apply-module%
      (lambda (_%self195640%_ _%stx195641%_)
        (let* ((_%g195643195657%_
                (lambda (_%g195644195654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195644195654%_))))
               (_%g195642195698%_
                (lambda (_%g195644195660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195644195660%_))
                      (let ((_%e195647195662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195644195660%_))))
                        (let ((_%hd195648195665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195647195662%_)))
                              (_%tl195649195667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195647195662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195649195667%_))
                              (let ((_%e195650195670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195649195667%_))))
                                (let ((_%hd195651195673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195650195670%_)))
                                      (_%tl195652195675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195650195670%_))))
                                  ((lambda (_%g195645195678%_
                                            _%g195646195679%_)
                                     (let* ((_%ctx195692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g195646195679%_)))
                                            (_%ctx-stx195694%_
                                             (##structure-ref
                                              _%ctx195692%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp196101
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self195640%_
                                                _%ctx-stx195694%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp196101
                                        gx#current-expander-context
                                        _%ctx195692%_)))
                                   _%tl195652195675%_
                                   _%hd195651195673%_)))
                              (_%g195643195657%_ _%g195644195660%_))))
                      (_%g195643195657%_ _%g195644195660%_)))))
          (_%g195642195698%_ _%stx195641%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self195572%_ _%stx195573%_)
        (let* ((_%g195575195592%_
                (lambda (_%g195576195589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195576195589%_))))
               (_%g195574195637%_
                (lambda (_%g195576195595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195576195595%_))
                      (let ((_%e195579195597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195576195595%_))))
                        (let ((_%hd195580195600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195579195597%_)))
                              (_%tl195581195602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195579195597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195581195602%_))
                              (let ((_%e195582195605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195581195602%_))))
                                (let ((_%hd195583195608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195582195605%_)))
                                      (_%tl195584195610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195582195605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195584195610%_))
                                      (let ((_%e195585195613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195584195610%_))))
                                        (let ((_%hd195586195616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195585195613%_)))
                                              (_%tl195587195618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195585195613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195587195618%_))
                                              ((lambda (_%g195577195621%_
                                                        _%g195578195622%_)
                                                 (gxc#compile-e__1
                                                  _%self195572%_
                                                  _%g195577195621%_))
                                               _%hd195586195616%_
                                               _%hd195583195608%_)
                                              (_%g195575195592%_
                                               _%g195576195595%_))))
                                      (_%g195575195592%_ _%g195576195595%_))))
                              (_%g195575195592%_ _%g195576195595%_))))
                      (_%g195575195592%_ _%g195576195595%_)))))
          (_%g195574195637%_ _%stx195573%_))))
    (define gxc#apply-define-values%
      (lambda (_%self195504%_ _%stx195505%_)
        (let* ((_%g195507195524%_
                (lambda (_%g195508195521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195508195521%_))))
               (_%g195506195569%_
                (lambda (_%g195508195527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195508195527%_))
                      (let ((_%e195511195529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195508195527%_))))
                        (let ((_%hd195512195532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195511195529%_)))
                              (_%tl195513195534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195511195529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195513195534%_))
                              (let ((_%e195514195537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195513195534%_))))
                                (let ((_%hd195515195540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195514195537%_)))
                                      (_%tl195516195542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195514195537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195516195542%_))
                                      (let ((_%e195517195545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195516195542%_))))
                                        (let ((_%hd195518195548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195517195545%_)))
                                              (_%tl195519195550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195517195545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195519195550%_))
                                              ((lambda (_%g195509195553%_
                                                        _%g195510195554%_)
                                                 (gxc#compile-e__1
                                                  _%self195504%_
                                                  _%g195509195553%_))
                                               _%hd195518195548%_
                                               _%hd195515195540%_)
                                              (_%g195507195524%_
                                               _%g195508195527%_))))
                                      (_%g195507195524%_ _%g195508195527%_))))
                              (_%g195507195524%_ _%g195508195527%_))))
                      (_%g195507195524%_ _%g195508195527%_)))))
          (_%g195506195569%_ _%stx195505%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self195435%_ _%stx195436%_)
        (let* ((_%g195438195455%_
                (lambda (_%g195439195452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195439195452%_))))
               (_%g195437195501%_
                (lambda (_%g195439195458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195439195458%_))
                      (let ((_%e195442195460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195439195458%_))))
                        (let ((_%hd195443195463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195442195460%_)))
                              (_%tl195444195465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195442195460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195444195465%_))
                              (let ((_%e195445195468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195444195465%_))))
                                (let ((_%hd195446195471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195445195468%_)))
                                      (_%tl195447195473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195445195468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195447195473%_))
                                      (let ((_%e195448195476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195447195473%_))))
                                        (let ((_%hd195449195479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195448195476%_)))
                                              (_%tl195450195481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195448195476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195450195481%_))
                                              ((lambda (_%g195440195484%_
                                                        _%g195441195485%_)
                                                 (let ((__tmp196104
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self195435%_
                                                           _%g195440195484%_)))
                                                       (__tmp196102
                                                        (let ((__tmp196103
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp196103 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp196104
                                                    gx#current-expander-phi
                                                    __tmp196102)))
                                               _%hd195449195479%_
                                               _%hd195446195471%_)
                                              (_%g195438195455%_
                                               _%g195439195458%_))))
                                      (_%g195438195455%_ _%g195439195458%_))))
                              (_%g195438195455%_ _%g195439195458%_))))
                      (_%g195438195455%_ _%g195439195458%_)))))
          (_%g195437195501%_ _%stx195436%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self195367%_ _%stx195368%_)
        (let* ((_%g195370195387%_
                (lambda (_%g195371195384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195371195384%_))))
               (_%g195369195432%_
                (lambda (_%g195371195390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195371195390%_))
                      (let ((_%e195374195392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195371195390%_))))
                        (let ((_%hd195375195395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195374195392%_)))
                              (_%tl195376195397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195374195392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195376195397%_))
                              (let ((_%e195377195400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195376195397%_))))
                                (let ((_%hd195378195403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195377195400%_)))
                                      (_%tl195379195405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195377195400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195379195405%_))
                                      (let ((_%e195380195408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195379195405%_))))
                                        (let ((_%hd195381195411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195380195408%_)))
                                              (_%tl195382195413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195380195408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195382195413%_))
                                              ((lambda (_%g195372195416%_
                                                        _%g195373195417%_)
                                                 (gxc#compile-e__1
                                                  _%self195367%_
                                                  _%g195372195416%_))
                                               _%hd195381195411%_
                                               _%hd195378195403%_)
                                              (_%g195370195387%_
                                               _%g195371195390%_))))
                                      (_%g195370195387%_ _%g195371195390%_))))
                              (_%g195370195387%_ _%g195371195390%_))))
                      (_%g195370195387%_ _%g195371195390%_)))))
          (_%g195369195432%_ _%stx195368%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self195253%_ _%stx195254%_)
        (let* ((_%g195256195284%_
                (lambda (_%g195257195281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195257195281%_))))
               (_%g195255195364%_
                (lambda (_%g195257195287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195257195287%_))
                      (let ((_%e195260195289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195257195287%_))))
                        (let ((_%hd195261195292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195260195289%_)))
                              (_%tl195262195294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195260195289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195262195294%_))
                              (let ((_g196105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195262195294%_
                                        '0))))
                                (begin
                                  (let ((_g196106_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g196105_)
                                               (##values-length _g196105_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g196106_ 2)))
                                        (error "Context expects 2 values"
                                               _g196106_)))
                                  (let ((_%target195263195297%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196105_ 0)))
                                        (_%tl195265195299%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196105_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195265195299%_))
                                        (letrec ((_%loop195266195302%_
                                                  (lambda (_%hd195264195305%_
                                                           _%body195270195307%_
                                                           _%hd195271195308%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195264195305%_))
                                                        (let ((_%e195267195310%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd195264195305%_))))
                  (let ((_%lp-hd195268195313%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195267195310%_)))
                        (_%lp-tl195269195315%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195267195310%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195268195313%_))
                        (let ((_%e195274195318%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd195268195313%_))))
                          (let ((_%hd195275195321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195274195318%_)))
                                (_%tl195276195323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195274195318%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195276195323%_))
                                (let ((_%e195277195326%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195276195323%_))))
                                  (let ((_%hd195278195329%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195277195326%_)))
                                        (_%tl195279195331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195277195326%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195279195331%_))
                                        (_%loop195266195302%_
                                         _%lp-tl195269195315%_
                                         (cons _%hd195278195329%_
                                               _%body195270195307%_)
                                         (cons _%hd195275195321%_
                                               _%hd195271195308%_))
                                        (_%g195256195284%_
                                         _%g195257195287%_))))
                                (_%g195256195284%_ _%g195257195287%_))))
                        (_%g195256195284%_ _%g195257195287%_))))
                (let ((_%body195272195334%_ (reverse _%body195270195307%_))
                      (_%hd195273195335%_ (reverse _%hd195271195308%_)))
                  ((lambda (_%g195258195337%_ _%g195259195338%_)
                     (for-each
                      (lambda (_%g195352195354%_)
                        (gxc#compile-e__1 _%self195253%_ _%g195352195354%_))
                      (let ((__tmp196107
                             (lambda (_%g195356195359%_ _%g195357195361%_)
                               (cons _%g195356195359%_ _%g195357195361%_))))
                        (declare (not safe))
                        (foldr__0 __tmp196107 '() _%g195258195337%_))))
                   _%body195272195334%_
                   _%hd195273195335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195266195302%_
                                           _%target195263195297%_
                                           '()
                                           '()))
                                        (_%g195256195284%_
                                         _%g195257195287%_)))))
                              (_%g195256195284%_ _%g195257195287%_))))
                      (_%g195256195284%_ _%g195257195287%_)))))
          (_%g195255195364%_ _%stx195254%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self195110%_ _%stx195111%_)
        (let* ((_%g195113195148%_
                (lambda (_%g195114195145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195114195145%_))))
               (_%g195112195250%_
                (lambda (_%g195114195151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195114195151%_))
                      (let ((_%e195118195153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195114195151%_))))
                        (let ((_%hd195119195156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195118195153%_)))
                              (_%tl195120195158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195118195153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195120195158%_))
                              (let ((_%e195121195161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195120195158%_))))
                                (let ((_%hd195122195164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195121195161%_)))
                                      (_%tl195123195166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195121195161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd195122195164%_))
                                      (let ((_g196108_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd195122195164%_
                                                '0))))
                                        (begin
                                          (let ((_g196109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196108_)
                                                       (##values-length
                                                        _g196108_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196109_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196109_)))
                                          (let ((_%target195124195169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196108_ 0)))
                                                (_%tl195126195171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196108_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195126195171%_))
                                                (letrec ((_%loop195127195174%_
                                                          (lambda (_%hd195125195177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr195131195179%_
                           _%hd195132195180%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195125195177%_))
                        (let ((_%e195128195182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd195125195177%_))))
                          (let ((_%lp-hd195129195185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195128195182%_)))
                                (_%lp-tl195130195187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195128195182%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195129195185%_))
                                (let ((_%e195135195190%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd195129195185%_))))
                                  (let ((_%hd195136195193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195135195190%_)))
                                        (_%tl195137195195%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195135195190%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195137195195%_))
                                        (let ((_%e195138195198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195137195195%_))))
                                          (let ((_%hd195139195201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195138195198%_)))
                                                (_%tl195140195203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195138195198%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195140195203%_))
                                                (_%loop195127195174%_
                                                 _%lp-tl195130195187%_
                                                 (cons _%hd195139195201%_
                                                       _%expr195131195179%_)
                                                 (cons _%hd195136195193%_
                                                       _%hd195132195180%_))
                                                (_%g195113195148%_
                                                 _%g195114195151%_))))
                                        (_%g195113195148%_
                                         _%g195114195151%_))))
                                (_%g195113195148%_ _%g195114195151%_))))
                        (let ((_%expr195133195206%_
                               (reverse _%expr195131195179%_))
                              (_%hd195134195207%_
                               (reverse _%hd195132195180%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195123195166%_))
                              (let ((_%e195141195209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195123195166%_))))
                                (let ((_%hd195142195212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195141195209%_)))
                                      (_%tl195143195214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195141195209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195143195214%_))
                                      ((lambda (_%g195115195217%_
                                                _%g195116195218%_
                                                _%g195117195219%_)
                                         (for-each
                                          (lambda (_%g195238195240%_)
                                            (gxc#compile-e__1
                                             _%self195110%_
                                             _%g195238195240%_))
                                          (let ((__tmp196111
                                                 (lambda (_%g195242195245%_
                                                          _%g195243195247%_)
                                                   (cons _%g195242195245%_
                                                         _%g195243195247%_)))
                                                (__tmp196110
                                                 (cons _%g195115195217%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp196111
                                             __tmp196110
                                             _%g195116195218%_))))
                                       _%hd195142195212%_
                                       _%expr195133195206%_
                                       _%hd195134195207%_)
                                      (_%g195113195148%_ _%g195114195151%_))))
                              (_%g195113195148%_ _%g195114195151%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195127195174%_
                                                   _%target195124195169%_
                                                   '()
                                                   '()))
                                                (_%g195113195148%_
                                                 _%g195114195151%_)))))
                                      (_%g195113195148%_ _%g195114195151%_))))
                              (_%g195113195148%_ _%g195114195151%_))))
                      (_%g195113195148%_ _%g195114195151%_)))))
          (_%g195112195250%_ _%stx195111%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self195055%_ _%stx195056%_)
        (let* ((_%g195058195072%_
                (lambda (_%g195059195069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195059195069%_))))
               (_%g195057195107%_
                (lambda (_%g195059195075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195059195075%_))
                      (let ((_%e195062195077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195059195075%_))))
                        (let ((_%hd195063195080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195062195077%_)))
                              (_%tl195064195082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195062195077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195064195082%_))
                              (let ((_%e195065195085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195064195082%_))))
                                (let ((_%hd195066195088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195065195085%_)))
                                      (_%tl195067195090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195065195085%_))))
                                  ((lambda (_%g195060195093%_
                                            _%g195061195094%_)
                                     (gxc#compile-e__1
                                      _%self195055%_
                                      (last _%g195060195093%_)))
                                   _%tl195067195090%_
                                   _%hd195066195088%_)))
                              (_%g195058195072%_ _%g195059195075%_))))
                      (_%g195058195072%_ _%g195059195075%_)))))
          (_%g195057195107%_ _%stx195056%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194987%_ _%stx194988%_)
        (let* ((_%g194990195007%_
                (lambda (_%g194991195004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194991195004%_))))
               (_%g194989195052%_
                (lambda (_%g194991195010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194991195010%_))
                      (let ((_%e194994195012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194991195010%_))))
                        (let ((_%hd194995195015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194994195012%_)))
                              (_%tl194996195017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194994195012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194996195017%_))
                              (let ((_%e194997195020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194996195017%_))))
                                (let ((_%hd194998195023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194997195020%_)))
                                      (_%tl194999195025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194997195020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194999195025%_))
                                      (let ((_%e195000195028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194999195025%_))))
                                        (let ((_%hd195001195031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195000195028%_)))
                                              (_%tl195002195033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195000195028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195002195033%_))
                                              ((lambda (_%g194992195036%_
                                                        _%g194993195037%_)
                                                 (gxc#compile-e__1
                                                  _%self194987%_
                                                  _%g194992195036%_))
                                               _%hd195001195031%_
                                               _%hd194998195023%_)
                                              (_%g194990195007%_
                                               _%g194991195010%_))))
                                      (_%g194990195007%_ _%g194991195010%_))))
                              (_%g194990195007%_ _%g194991195010%_))))
                      (_%g194990195007%_ _%g194991195010%_)))))
          (_%g194989195052%_ _%stx194988%_))))
    (define gxc#apply-operands
      (lambda (_%self194902%_ _%stx194903%_)
        (let* ((_%g194905194924%_
                (lambda (_%g194906194921%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194906194921%_))))
               (_%g194904194984%_
                (lambda (_%g194906194927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194906194927%_))
                      (let ((_%e194908194929%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194906194927%_))))
                        (let ((_%hd194909194932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194908194929%_)))
                              (_%tl194910194934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194908194929%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194910194934%_))
                              (let ((_g196112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194910194934%_
                                        '0))))
                                (begin
                                  (let ((_g196113_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g196112_)
                                               (##values-length _g196112_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g196113_ 2)))
                                        (error "Context expects 2 values"
                                               _g196113_)))
                                  (let ((_%target194911194937%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196112_ 0)))
                                        (_%tl194913194939%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g196112_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194913194939%_))
                                        (letrec ((_%loop194914194942%_
                                                  (lambda (_%hd194912194945%_
                                                           _%rands194918194947%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194912194945%_))
                                                        (let ((_%e194915194949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194912194945%_))))
                  (let ((_%lp-hd194916194952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194915194949%_)))
                        (_%lp-tl194917194954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194915194949%_))))
                    (_%loop194914194942%_
                     _%lp-tl194917194954%_
                     (cons _%lp-hd194916194952%_ _%rands194918194947%_))))
                (let ((_%rands194919194957%_ (reverse _%rands194918194947%_)))
                  ((lambda (_%g194907194959%_)
                     (for-each
                      (lambda (_%g194972194974%_)
                        (gxc#compile-e__1 _%self194902%_ _%g194972194974%_))
                      (let ((__tmp196114
                             (lambda (_%g194976194979%_ _%g194977194981%_)
                               (cons _%g194976194979%_ _%g194977194981%_))))
                        (declare (not safe))
                        (foldr__0 __tmp196114 '() _%g194907194959%_))))
                   _%rands194919194957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194914194942%_
                                           _%target194911194937%_
                                           '()))
                                        (_%g194905194924%_
                                         _%g194906194927%_)))))
                              (_%g194905194924%_ _%g194906194927%_))))
                      (_%g194905194924%_ _%g194906194927%_)))))
          (_%g194904194984%_ _%stx194903%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx194899%_ _%src-stx194900%_)
        (let ((__tmp196115
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx194900%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx194899%_ __tmp196115))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx194895%_ _%src-stx194896%_ _%ctx194897%_)
        (gxc#compile-e__1
         _%ctx194897%_
         (gxc#xform-wrap-source _%stx194895%_ _%src-stx194896%_))))
    (define gxc#xform-begin%
      (lambda (_%self194850%_ _%stx194851%_)
        (let* ((_%g194853194863%_
                (lambda (_%g194854194860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194854194860%_))))
               (_%g194852194892%_
                (lambda (_%g194854194866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194854194866%_))
                      (let ((_%e194856194868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194854194866%_))))
                        (let ((_%hd194857194871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194856194868%_)))
                              (_%tl194858194873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194856194868%_))))
                          ((lambda (_%g194855194876%_)
                             (let ((_%forms194890%_
                                    (map (lambda (_%g194885194887%_)
                                           (gxc#compile-e__1
                                            _%self194850%_
                                            _%g194885194887%_))
                                         _%g194855194876%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms194890%_)
                                _%stx194851%_)))
                           _%tl194858194873%_)))
                      (_%g194853194863%_ _%g194854194866%_)))))
          (_%g194852194892%_ _%stx194851%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self194804%_ _%stx194805%_)
        (let* ((_%g194807194817%_
                (lambda (_%g194808194814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194808194814%_))))
               (_%g194806194847%_
                (lambda (_%g194808194820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194808194820%_))
                      (let ((_%e194810194822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194808194820%_))))
                        (let ((_%hd194811194825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194810194822%_)))
                              (_%tl194812194827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194810194822%_))))
                          ((lambda (_%g194809194830%_)
                             (let ((__tmp196118
                                    (lambda ()
                                      (let ((_%forms194845%_
                                             (map (lambda (_%g194840194842%_)
                                                    (gxc#compile-e__1
                                                     _%self194804%_
                                                     _%g194840194842%_))
                                                  _%g194809194830%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms194845%_)
                                         _%stx194805%_))))
                                   (__tmp196116
                                    (let ((__tmp196117
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp196117 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp196118
                                gx#current-expander-phi
                                __tmp196116)))
                           _%tl194812194827%_)))
                      (_%g194807194817%_ _%g194808194820%_)))))
          (_%g194806194847%_ _%stx194805%_))))
    (define gxc#xform-module%
      (lambda (_%self194741%_ _%stx194742%_)
        (let* ((_%g194744194758%_
                (lambda (_%g194745194755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194745194755%_))))
               (_%g194743194801%_
                (lambda (_%g194745194761%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194745194761%_))
                      (let ((_%e194748194763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194745194761%_))))
                        (let ((_%hd194749194766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194748194763%_)))
                              (_%tl194750194768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194748194763%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194750194768%_))
                              (let ((_%e194751194771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194750194768%_))))
                                (let ((_%hd194752194774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194751194771%_)))
                                      (_%tl194753194776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194751194771%_))))
                                  ((lambda (_%g194746194779%_
                                            _%g194747194780%_)
                                     (let* ((_%ctx194793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194747194780%_)))
                                            (_%code194795%_
                                             (##structure-ref
                                              _%ctx194793%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code194798%_
                                             (let ((__tmp196119
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self194741%_
                                                       _%code194795%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp196119
                                                gx#current-expander-context
                                                _%ctx194793%_))))
                                       (##structure-set!
                                        _%ctx194793%_
                                        _%code194798%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g194747194780%_
                                                    (cons _%code194798%_ '())))
                                        _%stx194742%_)))
                                   _%tl194753194776%_
                                   _%hd194752194774%_)))
                              (_%g194744194758%_ _%g194745194761%_))))
                      (_%g194744194758%_ _%g194745194761%_)))))
          (_%g194743194801%_ _%stx194742%_))))
    (define gxc#xform-define-values%
      (lambda (_%self194671%_ _%stx194672%_)
        (let* ((_%g194674194691%_
                (lambda (_%g194675194688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194675194688%_))))
               (_%g194673194738%_
                (lambda (_%g194675194694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194675194694%_))
                      (let ((_%e194678194696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194675194694%_))))
                        (let ((_%hd194679194699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194678194696%_)))
                              (_%tl194680194701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194678194696%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194680194701%_))
                              (let ((_%e194681194704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194680194701%_))))
                                (let ((_%hd194682194707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194681194704%_)))
                                      (_%tl194683194709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194681194704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194683194709%_))
                                      (let ((_%e194684194712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194683194709%_))))
                                        (let ((_%hd194685194715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194684194712%_)))
                                              (_%tl194686194717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194684194712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194686194717%_))
                                              ((lambda (_%g194676194720%_
                                                        _%g194677194721%_)
                                                 (let ((_%expr194736%_
                                                        (gxc#compile-e__1
                                                         _%self194671%_
                                                         _%g194676194720%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g194677194721%_
                                                                (cons _%expr194736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194672%_)))
                                               _%hd194685194715%_
                                               _%hd194682194707%_)
                                              (_%g194674194691%_
                                               _%g194675194694%_))))
                                      (_%g194674194691%_ _%g194675194694%_))))
                              (_%g194674194691%_ _%g194675194694%_))))
                      (_%g194674194691%_ _%g194675194694%_)))))
          (_%g194673194738%_ _%stx194672%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self194600%_ _%stx194601%_)
        (let* ((_%g194603194620%_
                (lambda (_%g194604194617%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194604194617%_))))
               (_%g194602194668%_
                (lambda (_%g194604194623%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194604194623%_))
                      (let ((_%e194607194625%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194604194623%_))))
                        (let ((_%hd194608194628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194607194625%_)))
                              (_%tl194609194630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194607194625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194609194630%_))
                              (let ((_%e194610194633%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194609194630%_))))
                                (let ((_%hd194611194636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194610194633%_)))
                                      (_%tl194612194638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194610194633%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194612194638%_))
                                      (let ((_%e194613194641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194612194638%_))))
                                        (let ((_%hd194614194644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194613194641%_)))
                                              (_%tl194615194646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194613194641%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194615194646%_))
                                              ((lambda (_%g194605194649%_
                                                        _%g194606194650%_)
                                                 (let ((__tmp196122
                                                        (lambda ()
                                                          (let ((_%expr194666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self194600%_ _%g194605194649%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g194606194650%_ (cons _%expr194666%_ '())))
                     _%stx194601%_))))
               (__tmp196120
                (let ((__tmp196121
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp196121 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp196122
                                                    gx#current-expander-phi
                                                    __tmp196120)))
                                               _%hd194614194644%_
                                               _%hd194611194636%_)
                                              (_%g194603194620%_
                                               _%g194604194623%_))))
                                      (_%g194603194620%_ _%g194604194623%_))))
                              (_%g194603194620%_ _%g194604194623%_))))
                      (_%g194603194620%_ _%g194604194623%_)))))
          (_%g194602194668%_ _%stx194601%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self194530%_ _%stx194531%_)
        (let* ((_%g194533194550%_
                (lambda (_%g194534194547%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194534194547%_))))
               (_%g194532194597%_
                (lambda (_%g194534194553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194534194553%_))
                      (let ((_%e194537194555%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194534194553%_))))
                        (let ((_%hd194538194558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194537194555%_)))
                              (_%tl194539194560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194537194555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194539194560%_))
                              (let ((_%e194540194563%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194539194560%_))))
                                (let ((_%hd194541194566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194540194563%_)))
                                      (_%tl194542194568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194540194563%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194542194568%_))
                                      (let ((_%e194543194571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194542194568%_))))
                                        (let ((_%hd194544194574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194543194571%_)))
                                              (_%tl194545194576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194543194571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194545194576%_))
                                              ((lambda (_%g194535194579%_
                                                        _%g194536194580%_)
                                                 (let ((_%expr194595%_
                                                        (gxc#compile-e__1
                                                         _%self194530%_
                                                         _%g194535194579%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g194536194580%_
                                                                (cons _%expr194595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194531%_)))
                                               _%hd194544194574%_
                                               _%hd194541194566%_)
                                              (_%g194533194550%_
                                               _%g194534194553%_))))
                                      (_%g194533194550%_ _%g194534194553%_))))
                              (_%g194533194550%_ _%g194534194553%_))))
                      (_%g194533194550%_ _%g194534194553%_)))))
          (_%g194532194597%_ _%stx194531%_))))
    (define gxc#xform-lambda%
      (lambda (_%self194468%_ _%stx194469%_)
        (let* ((_%g194471194485%_
                (lambda (_%g194472194482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194472194482%_))))
               (_%g194470194527%_
                (lambda (_%g194472194488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194472194488%_))
                      (let ((_%e194475194490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194472194488%_))))
                        (let ((_%hd194476194493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194475194490%_)))
                              (_%tl194477194495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194475194490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194477194495%_))
                              (let ((_%e194478194498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194477194495%_))))
                                (let ((_%hd194479194501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194478194498%_)))
                                      (_%tl194480194503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194478194498%_))))
                                  ((lambda (_%g194473194506%_
                                            _%g194474194507%_)
                                     (let ((__tmp196124
                                            (lambda ()
                                              (let ((_%body194525%_
                                                     (map (lambda (_%g194520194522%_)
                                                            (gxc#compile-e__1
                                                             _%self194468%_
                                                             _%g194520194522%_))
                                                          _%g194473194506%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g194474194507%_
                                                             _%body194525%_))
                                                 _%stx194469%_))))
                                           (__tmp196123
                                            (gxc#xform-let-locals
                                             _%g194474194507%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp196124
                                        gxc#current-compile-local-env
                                        __tmp196123)))
                                   _%tl194480194503%_
                                   _%hd194479194501%_)))
                              (_%g194471194485%_ _%g194472194488%_))))
                      (_%g194471194485%_ _%g194472194488%_)))))
          (_%g194470194527%_ _%stx194469%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self194376%_ _%stx194377%_)
        (letrec ((_%clause-e194379%_
                  (lambda (_%clause194420%_)
                    (let* ((_%g194422194433%_
                            (lambda (_%g194423194430%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g194423194430%_))))
                           (_%g194421194465%_
                            (lambda (_%g194423194436%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g194423194436%_))
                                  (let ((_%e194426194438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g194423194436%_))))
                                    (let ((_%hd194427194441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194426194438%_)))
                                          (_%tl194428194443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194426194438%_))))
                                      ((lambda (_%g194424194446%_
                                                _%g194425194447%_)
                                         (let ((__tmp196126
                                                (lambda ()
                                                  (let ((_%body194463%_
                                                         (map (lambda (_%g194458194460%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self194376%_
                         _%g194458194460%_))
                      _%g194424194446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g194425194447%_
                                                          _%body194463%_))))
                                               (__tmp196125
                                                (gxc#xform-let-locals
                                                 _%g194425194447%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp196126
                                            gxc#current-compile-local-env
                                            __tmp196125)))
                                       _%tl194428194443%_
                                       _%hd194427194441%_)))
                                  (_%g194422194433%_ _%g194423194436%_)))))
                      (_%g194421194465%_ _%clause194420%_)))))
          (let* ((_%g194381194391%_
                  (lambda (_%g194382194388%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194382194388%_))))
                 (_%g194380194417%_
                  (lambda (_%g194382194394%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194382194394%_))
                        (let ((_%e194384194396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194382194394%_))))
                          (let ((_%hd194385194399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194384194396%_)))
                                (_%tl194386194401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194384194396%_))))
                            ((lambda (_%g194383194404%_)
                               (let ((_%clauses194415%_
                                      (map _%clause-e194379%_
                                           _%g194383194404%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses194415%_)
                                  _%stx194377%_)))
                             _%tl194386194401%_)))
                        (_%g194381194391%_ _%g194382194394%_)))))
            (_%g194380194417%_ _%stx194377%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self194136%_ _%stx194137%_)
        (let* ((_%g194139194172%_
                (lambda (_%g194140194169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194140194169%_))))
               (_%g194138194373%_
                (lambda (_%g194140194175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194140194175%_))
                      (let ((_%e194145194177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194140194175%_))))
                        (let ((_%hd194146194180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194145194177%_)))
                              (_%tl194147194182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194145194177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194147194182%_))
                              (let ((_%e194148194185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194147194182%_))))
                                (let ((_%hd194149194188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194148194185%_)))
                                      (_%tl194150194190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194148194185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194149194188%_))
                                      (let ((_g196127_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194149194188%_
                                                '0))))
                                        (begin
                                          (let ((_g196128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196127_)
                                                       (##values-length
                                                        _g196127_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196128_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196128_)))
                                          (let ((_%target194151194193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196127_ 0)))
                                                (_%tl194153194195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196127_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194153194195%_))
                                                (letrec ((_%loop194154194198%_
                                                          (lambda (_%hd194152194201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194158194203%_
                           _%hd194159194204%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194152194201%_))
                        (let ((_%e194155194206%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194152194201%_))))
                          (let ((_%lp-hd194156194209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194155194206%_)))
                                (_%lp-tl194157194211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194155194206%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194156194209%_))
                                (let ((_%e194162194214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194156194209%_))))
                                  (let ((_%hd194163194217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194162194214%_)))
                                        (_%tl194164194219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194162194214%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194164194219%_))
                                        (let ((_%e194165194222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194164194219%_))))
                                          (let ((_%hd194166194225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194165194222%_)))
                                                (_%tl194167194227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194165194222%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194167194227%_))
                                                (_%loop194154194198%_
                                                 _%lp-tl194157194211%_
                                                 (cons _%hd194166194225%_
                                                       _%expr194158194203%_)
                                                 (cons _%hd194163194217%_
                                                       _%hd194159194204%_))
                                                (_%g194139194172%_
                                                 _%g194140194175%_))))
                                        (_%g194139194172%_
                                         _%g194140194175%_))))
                                (_%g194139194172%_ _%g194140194175%_))))
                        (let ((_%expr194160194230%_
                               (reverse _%expr194158194203%_))
                              (_%hd194161194231%_
                               (reverse _%hd194159194204%_)))
                          ((lambda (_%g194141194233%_
                                    _%g194142194234%_
                                    _%g194143194235%_
                                    _%g194144194236%_)
                             (let* ((_%g194255194271%_
                                     (lambda (_%g194256194268%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g194256194268%_))))
                                    (_%g194254194359%_
                                     (lambda (_%g194256194274%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g194256194274%_))
                                           (let ((_g196129_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g194256194274%_
                                                     '0))))
                                             (begin
                                               (let ((_g196130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g196129_)
                                                            (##values-length
                                                             _g196129_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g196130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g196130_)))
                                               (let ((_%target194258194276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g196129_
                                                         0)))
                                                     (_%tl194260194278%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g196129_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl194260194278%_))
                                                     (letrec ((_%loop194261194281%_
                                                               (lambda (_%hd194259194284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr194265194286%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd194259194284%_))
                             (let ((_%e194262194288%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd194259194284%_))))
                               (let ((_%lp-hd194263194291%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e194262194288%_)))
                                     (_%lp-tl194264194293%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e194262194288%_))))
                                 (_%loop194261194281%_
                                  _%lp-tl194264194293%_
                                  (cons _%lp-hd194263194291%_
                                        _%expr194265194286%_))))
                             (let ((_%expr194266194296%_
                                    (reverse _%expr194265194286%_)))
                               ((lambda (_%g194257194298%_)
                                  (let ((__tmp196133
                                         (lambda ()
                                           (let* ((_%g194312194319%_
                                                   (lambda (_%g194313194316%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g194313194316%_))))
                                                  (_%g194311194345%_
                                                   (lambda (_%g194313194322%_)
                                                     ((lambda (_%g194314194324%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g194144194236%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g194257194298%_
                                  _%g194143194235%_))
                               (let ((__tmp196134
                                      (lambda (_%g194334194338%_
                                               _%g194335194340%_
                                               _%g194336194342%_)
                                        (cons (cons _%g194335194340%_
                                                    (cons _%g194334194338%_
                                                          '()))
                                              _%g194336194342%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp196134
                                  '()
                                  _%g194257194298%_
                                  _%g194143194235%_)))
                             _%g194314194324%_))
                 _%stx194137%_))
              _%g194313194322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g194311194345%_
                                              (map (lambda (_%g194347194349%_)
                                                     (gxc#compile-e__1
                                                      _%self194136%_
                                                      _%g194347194349%_))
                                                   _%g194141194233%_)))))
                                        (__tmp196131
                                         (gxc#xform-let-locals
                                          (let ((__tmp196132
                                                 (lambda (_%g194351194354%_
                                                          _%g194352194356%_)
                                                   (cons _%g194351194354%_
                                                         _%g194352194356%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp196132
                                             '()
                                             _%g194143194235%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp196133
                                     gxc#current-compile-local-env
                                     __tmp196131)))
                                _%expr194266194296%_))))))
               (_%loop194261194281%_ _%target194258194276%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194255194271%_
                                                      _%g194256194274%_)))))
                                           (_%g194255194271%_
                                            _%g194256194274%_)))))
                               (_%g194254194359%_
                                (map (lambda (_%g194361194363%_)
                                       (gxc#compile-e__1
                                        _%self194136%_
                                        _%g194361194363%_))
                                     (let ((__tmp196135
                                            (lambda (_%g194365194368%_
                                                     _%g194366194370%_)
                                              (cons _%g194365194368%_
                                                    _%g194366194370%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp196135
                                        '()
                                        _%g194142194234%_))))))
                           _%tl194150194190%_
                           _%expr194160194230%_
                           _%hd194161194231%_
                           _%hd194146194180%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194154194198%_
                                                   _%target194151194193%_
                                                   '()
                                                   '()))
                                                (_%g194139194172%_
                                                 _%g194140194175%_)))))
                                      (_%g194139194172%_ _%g194140194175%_))))
                              (_%g194139194172%_ _%g194140194175%_))))
                      (_%g194139194172%_ _%g194140194175%_)))))
          (_%g194138194373%_ _%stx194137%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self193896%_ _%stx193897%_)
        (let* ((_%g193899193932%_
                (lambda (_%g193900193929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193900193929%_))))
               (_%g193898194133%_
                (lambda (_%g193900193935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193900193935%_))
                      (let ((_%e193905193937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193900193935%_))))
                        (let ((_%hd193906193940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193905193937%_)))
                              (_%tl193907193942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193905193937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193907193942%_))
                              (let ((_%e193908193945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193907193942%_))))
                                (let ((_%hd193909193948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193908193945%_)))
                                      (_%tl193910193950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193908193945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193909193948%_))
                                      (let ((_g196136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193909193948%_
                                                '0))))
                                        (begin
                                          (let ((_g196137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196136_)
                                                       (##values-length
                                                        _g196136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196137_)))
                                          (let ((_%target193911193953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g196136_ 0)))
                                                (_%tl193913193955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g196136_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193913193955%_))
                                                (letrec ((_%loop193914193958%_
                                                          (lambda (_%hd193912193961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193918193963%_
                           _%hd193919193964%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193912193961%_))
                        (let ((_%e193915193966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193912193961%_))))
                          (let ((_%lp-hd193916193969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193915193966%_)))
                                (_%lp-tl193917193971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193915193966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193916193969%_))
                                (let ((_%e193922193974%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193916193969%_))))
                                  (let ((_%hd193923193977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193922193974%_)))
                                        (_%tl193924193979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193922193974%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193924193979%_))
                                        (let ((_%e193925193982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193924193979%_))))
                                          (let ((_%hd193926193985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193925193982%_)))
                                                (_%tl193927193987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193925193982%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193927193987%_))
                                                (_%loop193914193958%_
                                                 _%lp-tl193917193971%_
                                                 (cons _%hd193926193985%_
                                                       _%expr193918193963%_)
                                                 (cons _%hd193923193977%_
                                                       _%hd193919193964%_))
                                                (_%g193899193932%_
                                                 _%g193900193935%_))))
                                        (_%g193899193932%_
                                         _%g193900193935%_))))
                                (_%g193899193932%_ _%g193900193935%_))))
                        (let ((_%expr193920193990%_
                               (reverse _%expr193918193963%_))
                              (_%hd193921193991%_
                               (reverse _%hd193919193964%_)))
                          ((lambda (_%g193901193993%_
                                    _%g193902193994%_
                                    _%g193903193995%_
                                    _%g193904193996%_)
                             (let ((__tmp196140
                                    (lambda ()
                                      (let* ((_%g194016194032%_
                                              (lambda (_%g194017194029%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g194017194029%_))))
                                             (_%g194015194112%_
                                              (lambda (_%g194017194035%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g194017194035%_))
                                                    (let ((_g196141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g194017194035%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g196142_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g196141_)
                             (##values-length _g196141_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g196142_ 2)))
                      (error "Context expects 2 values" _g196142_)))
                (let ((_%target194019194037%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196141_ 0)))
                      (_%tl194021194039%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g196141_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194021194039%_))
                      (letrec ((_%loop194022194042%_
                                (lambda (_%hd194020194045%_
                                         _%expr194026194047%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194020194045%_))
                                      (let ((_%e194023194049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd194020194045%_))))
                                        (let ((_%lp-hd194024194052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194023194049%_)))
                                              (_%lp-tl194025194054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194023194049%_))))
                                          (_%loop194022194042%_
                                           _%lp-tl194025194054%_
                                           (cons _%lp-hd194024194052%_
                                                 _%expr194026194047%_))))
                                      (let ((_%expr194027194057%_
                                             (reverse _%expr194026194047%_)))
                                        ((lambda (_%g194018194059%_)
                                           (let* ((_%g194073194080%_
                                                   (lambda (_%g194074194077%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g194074194077%_))))
                                                  (_%g194072194105%_
                                                   (lambda (_%g194074194083%_)
                                                     ((lambda (_%g194075194085%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193904193996%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g194018194059%_
                                  _%g193903193995%_))
                               (let ((__tmp196143
                                      (lambda (_%g194094194098%_
                                               _%g194095194100%_
                                               _%g194096194102%_)
                                        (cons (cons _%g194095194100%_
                                                    (cons _%g194094194098%_
                                                          '()))
                                              _%g194096194102%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp196143
                                  '()
                                  _%g194018194059%_
                                  _%g193903193995%_)))
                             _%g194075194085%_))
                 _%stx193897%_))
              _%g194074194083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g194072194105%_
                                              (map (lambda (_%g194107194109%_)
                                                     (gxc#compile-e__1
                                                      _%self193896%_
                                                      _%g194107194109%_))
                                                   _%g193901193993%_))))
                                         _%expr194027194057%_))))))
                        (_%loop194022194042%_ _%target194019194037%_ '()))
                      (_%g194016194032%_ _%g194017194035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g194016194032%_
                                                     _%g194017194035%_)))))
                                        (_%g194015194112%_
                                         (map (lambda (_%g194114194116%_)
                                                (gxc#compile-e__1
                                                 _%self193896%_
                                                 _%g194114194116%_))
                                              (let ((__tmp196144
                                                     (lambda (_%g194118194121%_
                                                              _%g194119194123%_)
                                                       (cons _%g194118194121%_
                                                             _%g194119194123%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp196144
                                                 '()
                                                 _%g193902193994%_)))))))
                                   (__tmp196138
                                    (gxc#xform-let-locals
                                     (let ((__tmp196139
                                            (lambda (_%g194125194128%_
                                                     _%g194126194130%_)
                                              (cons _%g194125194128%_
                                                    _%g194126194130%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp196139
                                        '()
                                        _%g193903193995%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp196140
                                gxc#current-compile-local-env
                                __tmp196138)))
                           _%tl193910193950%_
                           _%expr193920193990%_
                           _%hd193921193991%_
                           _%hd193906193940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193914193958%_
                                                   _%target193911193953%_
                                                   '()
                                                   '()))
                                                (_%g193899193932%_
                                                 _%g193900193935%_)))))
                                      (_%g193899193932%_ _%g193900193935%_))))
                              (_%g193899193932%_ _%g193900193935%_))))
                      (_%g193899193932%_ _%g193900193935%_)))))
          (_%g193898194133%_ _%stx193897%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings193763%_)
        (letrec ((_%flatten193765%_
                  (lambda (_%maybe-lst193823%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst193823%_))
                        (cons _%maybe-lst193823%_ '())
                        (let _%loop193825%_ ((_%rest193827%_
                                              _%maybe-lst193823%_)
                                             (_%result193828%_ '()))
                          (let* ((_%__stx196032196033%_ _%rest193827%_)
                                 (_%g193832193844%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx196032196033%_)))))
                            (let ((_%__kont196034196035%_
                                   (lambda (_%g193834193882%_
                                            _%g193835193883%_)
                                     (_%loop193825%_
                                      _%g193834193882%_
                                      (let ((__tmp196145
                                             (_%flatten193765%_
                                              _%g193835193883%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result193828%_
                                         __tmp196145)))))
                                  (_%__kont196036196037%_
                                   (lambda (_%g193839193856%_)
                                     (cons _%g193839193856%_
                                           _%result193828%_)))
                                  (_%__kont196038196039%_
                                   (lambda () _%result193828%_)))
                              (let ((_%g193830193869%_
                                     (lambda ()
                                       (let ((_%g193839193856%_
                                              _%__stx196032196033%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g193839193856%_))
                                             (_%__kont196036196037%_
                                              _%g193839193856%_)
                                             (_%__kont196038196039%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx196032196033%_))
                                    (let ((_%e193836193874%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx196032196033%_))))
                                      (let ((_%tl193838193879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193836193874%_)))
                                            (_%hd193837193877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193836193874%_))))
                                        (_%__kont196034196035%_
                                         _%tl193838193879%_
                                         _%hd193837193877%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193830193869%_)))))))))))
          (let _%loop193767%_ ((_%rest193769%_
                                (_%flatten193765%_ _%bindings193763%_))
                               (_%locals193770%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest193771193782%_ _%rest193769%_)
                   (_%E193775193786%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest193771193782%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K193778193811%_
                     (lambda (_%rest193808%_ _%id193809%_)
                       (_%loop193767%_
                        _%rest193808%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id193809%_))
                              _%locals193770%_))))
                    (_%K193777193800%_
                     (lambda (_%id193798%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id193798%_))
                             _%locals193770%_)))
                    (_%K193776193791%_ (lambda () _%locals193770%_)))
                (let ((_%try-match193773193805%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest193771193782%_))
                             (let ((_%id193803%_ _%rest193771193782%_))
                               (_%K193777193800%_ _%id193803%_))
                             (_%K193776193791%_)))))
                  (if (pair? _%rest193771193782%_)
                      (let ((_%tl193780193816%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest193771193782%_)))
                            (_%hd193779193814%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest193771193782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd193779193814%_))
                            (let ((_%id193819%_ _%hd193779193814%_)
                                  (_%rest193821%_ _%tl193780193816%_))
                              (_%K193778193811%_ _%rest193821%_ _%id193819%_))
                            (_%K193776193791%_)))
                      (_%try-match193773193805%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self193715%_ _%stx193716%_)
        (let* ((_%g193718193729%_
                (lambda (_%g193719193726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193719193726%_))))
               (_%g193717193760%_
                (lambda (_%g193719193732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193719193732%_))
                      (let ((_%e193722193734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193719193732%_))))
                        (let ((_%hd193723193737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193722193734%_)))
                              (_%tl193724193739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193722193734%_))))
                          ((lambda (_%g193720193742%_ _%g193721193743%_)
                             (let ((_%rands193758%_
                                    (map (lambda (_%g193753193755%_)
                                           (gxc#compile-e__1
                                            _%self193715%_
                                            _%g193753193755%_))
                                         _%g193720193742%_)))
                               (gxc#xform-wrap-source
                                (cons _%g193721193743%_ _%rands193758%_)
                                _%stx193716%_)))
                           _%tl193724193739%_
                           _%hd193723193737%_)))
                      (_%g193718193729%_ _%g193719193732%_)))))
          (_%g193717193760%_ _%stx193716%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self193645%_ _%stx193646%_)
        (let* ((_%g193648193665%_
                (lambda (_%g193649193662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193649193662%_))))
               (_%g193647193712%_
                (lambda (_%g193649193668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193649193668%_))
                      (let ((_%e193652193670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193649193668%_))))
                        (let ((_%hd193653193673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193652193670%_)))
                              (_%tl193654193675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193652193670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193654193675%_))
                              (let ((_%e193655193678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193654193675%_))))
                                (let ((_%hd193656193681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193655193678%_)))
                                      (_%tl193657193683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193655193678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193657193683%_))
                                      (let ((_%e193658193686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193657193683%_))))
                                        (let ((_%hd193659193689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193658193686%_)))
                                              (_%tl193660193691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193658193686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193660193691%_))
                                              ((lambda (_%g193650193694%_
                                                        _%g193651193695%_)
                                                 (let ((_%expr193710%_
                                                        (gxc#compile-e__1
                                                         _%self193645%_
                                                         _%g193650193694%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g193651193695%_
                                                                (cons _%expr193710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193646%_)))
                                               _%hd193659193689%_
                                               _%hd193656193681%_)
                                              (_%g193648193665%_
                                               _%g193649193668%_))))
                                      (_%g193648193665%_ _%g193649193668%_))))
                              (_%g193648193665%_ _%g193649193668%_))))
                      (_%g193648193665%_ _%g193649193668%_)))))
          (_%g193647193712%_ _%stx193646%_))))))
