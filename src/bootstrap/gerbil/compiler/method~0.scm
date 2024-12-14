(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734131747)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137837%_)
        (let* ((_%self137839%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137841%_
                (let ((__tmp138037 (gxc#stx-car-e _%stx137837%_)))
                  (declare (not safe))
                  (method-ref _%self137839%_ __tmp138037))))
          (if _%$e137841%_
              ((lambda (_%method137844%_)
                 (declare (not safe))
                 (_%method137844%_ _%self137839%_ _%stx137837%_))
               _%$e137841%_)
              (let ((__tmp138039 (gxc#stx-car-e _%stx137837%_))
                    (__tmp138038
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137837%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137839%_
                       __tmp138039
                       __tmp138038))))))
    (define gxc#compile-e__1
      (lambda (_%self137848%_ _%stx137849%_)
        (let ((_%$e137851%_
               (let ((__tmp138040 (gxc#stx-car-e _%stx137849%_)))
                 (declare (not safe))
                 (method-ref _%self137848%_ __tmp138040))))
          (if _%$e137851%_
              ((lambda (_%method137854%_)
                 (declare (not safe))
                 (_%method137854%_ _%self137848%_ _%stx137849%_))
               _%$e137851%_)
              (let ((__tmp138042 (gxc#stx-car-e _%stx137849%_))
                    (__tmp138041
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137849%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137848%_
                       __tmp138042
                       __tmp138041))))))
    (define gxc#compile-e
      (lambda _g138044_
        (let ((_g138043_ (let () (declare (not safe)) (##length _g138044_))))
          (cond ((let () (declare (not safe)) (##fx= _g138043_ 1))
                 (apply gxc#compile-e__0 _g138044_))
                ((let () (declare (not safe)) (##fx= _g138043_ 2))
                 (apply gxc#compile-e__1 _g138044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g138044_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137835%_)
        (let ((__tmp138045
               (car (let () (declare (not safe)) (gx#stx-e _%stx137835%_)))))
          (declare (not safe))
          (gx#stx-e __tmp138045))))
    (define gxc#void-method (lambda (_%self137832%_ _%stx137833%_) '#!void))
    (define gxc#false-method (lambda (_%self137829%_ _%stx137830%_) '#f))
    (define gxc#true-method (lambda (_%self137826%_ _%stx137827%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137823%_ _%stx137824%_) _%stx137824%_))
    (define gxc#::void-expression::t
      (let ((__tmp138046 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp138046
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137820%_
        (apply make-instance gxc#::void-expression::t _%$args137820%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp138047
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
        (__make-promise __tmp138047)))
    (define gxc#::void-special-form::t
      (let ((__tmp138048 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp138048
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137816%_
        (apply make-instance gxc#::void-special-form::t _%$args137816%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp138049
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
        (__make-promise __tmp138049)))
    (define gxc#::void::t
      (let ((__tmp138050
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp138050 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137812%_
        (apply make-instance gxc#::void::t _%$args137812%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp138051
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138051)))
    (define gxc#::false-expression::t
      (let ((__tmp138052 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp138052
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137808%_
        (apply make-instance gxc#::false-expression::t _%$args137808%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp138053
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
        (__make-promise __tmp138053)))
    (define gxc#::false-special-form::t
      (let ((__tmp138054 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp138054
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137804%_
        (apply make-instance gxc#::false-special-form::t _%$args137804%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp138055
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
        (__make-promise __tmp138055)))
    (define gxc#::false::t
      (let ((__tmp138056
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp138056 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137800%_
        (apply make-instance gxc#::false::t _%$args137800%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp138057
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138057)))
    (define gxc#::identity-expression::t
      (let ((__tmp138058 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp138058
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137796%_
        (apply make-instance gxc#::identity-expression::t _%$args137796%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp138059
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
        (__make-promise __tmp138059)))
    (define gxc#::identity-special-form::t
      (let ((__tmp138060 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp138060
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137792%_
        (apply make-instance gxc#::identity-special-form::t _%$args137792%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp138061
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
        (__make-promise __tmp138061)))
    (define gxc#::identity::t
      (let ((__tmp138062
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp138062
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137788%_
        (apply make-instance gxc#::identity::t _%$args137788%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp138063
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138063)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp138064 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp138064
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137784%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137784%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp138065
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
        (__make-promise __tmp138065)))
    (define gxc#::basic-xform::t
      (let ((__tmp138066
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp138066
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137780%_
        (apply make-instance gxc#::basic-xform::t _%$args137780%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp138067
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
        (__make-promise __tmp138067)))
    (define gxc#apply-begin%
      (lambda (_%self137736%_ _%stx137737%_)
        (let* ((_%g137739137749%_
                (lambda (_%g137740137746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137740137746%_))))
               (_%g137738137776%_
                (lambda (_%g137740137752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137740137752%_))
                      (let ((_%e137742137754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137740137752%_))))
                        (let ((_%hd137743137757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137742137754%_)))
                              (_%tl137744137759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137742137754%_))))
                          ((lambda (_%L137762%_)
                             (for-each
                              (lambda (_%g137771137773%_)
                                (gxc#compile-e__1
                                 _%self137736%_
                                 _%g137771137773%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137762%_))))
                           _%tl137744137759%_)))
                      (_%g137739137749%_ _%g137740137752%_)))))
          (_%g137738137776%_ _%stx137737%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self137697%_ _%stx137698%_)
        (let* ((_%g137700137710%_
                (lambda (_%g137701137707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137701137707%_))))
               (_%g137699137733%_
                (lambda (_%g137701137713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137701137713%_))
                      (let ((_%e137703137715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137701137713%_))))
                        (let ((_%hd137704137718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137703137715%_)))
                              (_%tl137705137720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137703137715%_))))
                          ((lambda (_%L137723%_)
                             (gxc#compile-e__1
                              _%self137697%_
                              (last _%L137723%_)))
                           _%tl137705137720%_)))
                      (_%g137700137710%_ _%g137701137713%_)))))
          (_%g137699137733%_ _%stx137698%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self137693%_ _%stx137694%_)
        (let ((__tmp138070
               (lambda () (gxc#apply-begin% _%self137693%_ _%stx137694%_)))
              (__tmp138068
               (let ((__tmp138069
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp138069 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp138070
           gx#current-expander-phi
           __tmp138068))))
    (define gxc#apply-module%
      (lambda (_%self137632%_ _%stx137633%_)
        (let* ((_%g137635137649%_
                (lambda (_%g137636137646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137636137646%_))))
               (_%g137634137690%_
                (lambda (_%g137636137652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137636137652%_))
                      (let ((_%e137639137654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137636137652%_))))
                        (let ((_%hd137640137657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137639137654%_)))
                              (_%tl137641137659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137639137654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137641137659%_))
                              (let ((_%e137642137662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137641137659%_))))
                                (let ((_%hd137643137665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137642137662%_)))
                                      (_%tl137644137667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137642137662%_))))
                                  ((lambda (_%L137670%_ _%L137671%_)
                                     (let* ((_%ctx137684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137671%_)))
                                            (_%ctx-stx137686%_
                                             (##structure-ref
                                              _%ctx137684%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp138071
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self137632%_
                                                _%ctx-stx137686%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138071
                                        gx#current-expander-context
                                        _%ctx137684%_)))
                                   _%tl137644137667%_
                                   _%hd137643137665%_)))
                              (_%g137635137649%_ _%g137636137652%_))))
                      (_%g137635137649%_ _%g137636137652%_)))))
          (_%g137634137690%_ _%stx137633%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self137564%_ _%stx137565%_)
        (let* ((_%g137567137584%_
                (lambda (_%g137568137581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137568137581%_))))
               (_%g137566137629%_
                (lambda (_%g137568137587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137568137587%_))
                      (let ((_%e137571137589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137568137587%_))))
                        (let ((_%hd137572137592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137571137589%_)))
                              (_%tl137573137594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137571137589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137573137594%_))
                              (let ((_%e137574137597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137573137594%_))))
                                (let ((_%hd137575137600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137574137597%_)))
                                      (_%tl137576137602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137574137597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137576137602%_))
                                      (let ((_%e137577137605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137576137602%_))))
                                        (let ((_%hd137578137608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137577137605%_)))
                                              (_%tl137579137610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137577137605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137579137610%_))
                                              ((lambda (_%L137613%_
                                                        _%L137614%_)
                                                 (gxc#compile-e__1
                                                  _%self137564%_
                                                  _%L137613%_))
                                               _%hd137578137608%_
                                               _%hd137575137600%_)
                                              (_%g137567137584%_
                                               _%g137568137587%_))))
                                      (_%g137567137584%_ _%g137568137587%_))))
                              (_%g137567137584%_ _%g137568137587%_))))
                      (_%g137567137584%_ _%g137568137587%_)))))
          (_%g137566137629%_ _%stx137565%_))))
    (define gxc#apply-define-values%
      (lambda (_%self137496%_ _%stx137497%_)
        (let* ((_%g137499137516%_
                (lambda (_%g137500137513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137500137513%_))))
               (_%g137498137561%_
                (lambda (_%g137500137519%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137500137519%_))
                      (let ((_%e137503137521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137500137519%_))))
                        (let ((_%hd137504137524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137503137521%_)))
                              (_%tl137505137526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137503137521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137505137526%_))
                              (let ((_%e137506137529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137505137526%_))))
                                (let ((_%hd137507137532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137506137529%_)))
                                      (_%tl137508137534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137506137529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137508137534%_))
                                      (let ((_%e137509137537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137508137534%_))))
                                        (let ((_%hd137510137540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137509137537%_)))
                                              (_%tl137511137542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137509137537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137511137542%_))
                                              ((lambda (_%L137545%_
                                                        _%L137546%_)
                                                 (gxc#compile-e__1
                                                  _%self137496%_
                                                  _%L137545%_))
                                               _%hd137510137540%_
                                               _%hd137507137532%_)
                                              (_%g137499137516%_
                                               _%g137500137519%_))))
                                      (_%g137499137516%_ _%g137500137519%_))))
                              (_%g137499137516%_ _%g137500137519%_))))
                      (_%g137499137516%_ _%g137500137519%_)))))
          (_%g137498137561%_ _%stx137497%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self137427%_ _%stx137428%_)
        (let* ((_%g137430137447%_
                (lambda (_%g137431137444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137431137444%_))))
               (_%g137429137493%_
                (lambda (_%g137431137450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137431137450%_))
                      (let ((_%e137434137452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137431137450%_))))
                        (let ((_%hd137435137455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137434137452%_)))
                              (_%tl137436137457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137434137452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137436137457%_))
                              (let ((_%e137437137460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137436137457%_))))
                                (let ((_%hd137438137463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137437137460%_)))
                                      (_%tl137439137465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137437137460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137439137465%_))
                                      (let ((_%e137440137468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137439137465%_))))
                                        (let ((_%hd137441137471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137440137468%_)))
                                              (_%tl137442137473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137440137468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137442137473%_))
                                              ((lambda (_%L137476%_
                                                        _%L137477%_)
                                                 (let ((__tmp138074
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self137427%_
                                                           _%L137476%_)))
                                                       (__tmp138072
                                                        (let ((__tmp138073
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138073 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138074
                                                    gx#current-expander-phi
                                                    __tmp138072)))
                                               _%hd137441137471%_
                                               _%hd137438137463%_)
                                              (_%g137430137447%_
                                               _%g137431137450%_))))
                                      (_%g137430137447%_ _%g137431137450%_))))
                              (_%g137430137447%_ _%g137431137450%_))))
                      (_%g137430137447%_ _%g137431137450%_)))))
          (_%g137429137493%_ _%stx137428%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self137359%_ _%stx137360%_)
        (let* ((_%g137362137379%_
                (lambda (_%g137363137376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137363137376%_))))
               (_%g137361137424%_
                (lambda (_%g137363137382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137363137382%_))
                      (let ((_%e137366137384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137363137382%_))))
                        (let ((_%hd137367137387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137366137384%_)))
                              (_%tl137368137389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137366137384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137368137389%_))
                              (let ((_%e137369137392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137368137389%_))))
                                (let ((_%hd137370137395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137369137392%_)))
                                      (_%tl137371137397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137369137392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137371137397%_))
                                      (let ((_%e137372137400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137371137397%_))))
                                        (let ((_%hd137373137403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137372137400%_)))
                                              (_%tl137374137405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137372137400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137374137405%_))
                                              ((lambda (_%L137408%_
                                                        _%L137409%_)
                                                 (gxc#compile-e__1
                                                  _%self137359%_
                                                  _%L137408%_))
                                               _%hd137373137403%_
                                               _%hd137370137395%_)
                                              (_%g137362137379%_
                                               _%g137363137382%_))))
                                      (_%g137362137379%_ _%g137363137382%_))))
                              (_%g137362137379%_ _%g137363137382%_))))
                      (_%g137362137379%_ _%g137363137382%_)))))
          (_%g137361137424%_ _%stx137360%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self137241%_ _%stx137242%_)
        (let* ((_%g137244137272%_
                (lambda (_%g137245137269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137245137269%_))))
               (_%g137243137356%_
                (lambda (_%g137245137275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137245137275%_))
                      (let ((_%e137248137277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137245137275%_))))
                        (let ((_%hd137249137280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137248137277%_)))
                              (_%tl137250137282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137248137277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137250137282%_))
                              (let ((_g138075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137250137282%_
                                        '0))))
                                (begin
                                  (let ((_g138076_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138075_)
                                               (##values-length _g138075_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138076_ 2)))
                                        (error "Context expects 2 values"
                                               _g138076_)))
                                  (let ((_%target137251137285%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138075_ 0)))
                                        (_%tl137253137287%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138075_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137253137287%_))
                                        (letrec ((_%loop137254137290%_
                                                  (lambda (_%hd137252137293%_
                                                           _%body137258137295%_
                                                           _%hd137259137297%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137252137293%_))
                                                        (let ((_%e137255137300%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137252137293%_))))
                  (let ((_%lp-hd137256137303%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137255137300%_)))
                        (_%lp-tl137257137305%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137255137300%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd137256137303%_))
                        (let ((_%e137262137308%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd137256137303%_))))
                          (let ((_%hd137263137311%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137262137308%_)))
                                (_%tl137264137313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137262137308%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137264137313%_))
                                (let ((_%e137265137316%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137264137313%_))))
                                  (let ((_%hd137266137319%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137265137316%_)))
                                        (_%tl137267137321%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137265137316%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137267137321%_))
                                        (_%loop137254137290%_
                                         _%lp-tl137257137305%_
                                         (cons _%hd137266137319%_
                                               _%body137258137295%_)
                                         (cons _%hd137263137311%_
                                               _%hd137259137297%_))
                                        (_%g137244137272%_
                                         _%g137245137275%_))))
                                (_%g137244137272%_ _%g137245137275%_))))
                        (_%g137244137272%_ _%g137245137275%_))))
                (let ((_%body137260137324%_ (reverse _%body137258137295%_))
                      (_%hd137261137326%_ (reverse _%hd137259137297%_)))
                  ((lambda (_%L137329%_ _%L137330%_)
                     (for-each
                      (lambda (_%g137344137346%_)
                        (gxc#compile-e__1 _%self137241%_ _%g137344137346%_))
                      (let ((__tmp138077
                             (lambda (_%g137348137351%_ _%g137349137353%_)
                               (cons _%g137348137351%_ _%g137349137353%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138077 '() _%L137329%_))))
                   _%body137260137324%_
                   _%hd137261137326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137254137290%_
                                           _%target137251137285%_
                                           '()
                                           '()))
                                        (_%g137244137272%_
                                         _%g137245137275%_)))))
                              (_%g137244137272%_ _%g137245137275%_))))
                      (_%g137244137272%_ _%g137245137275%_)))))
          (_%g137243137356%_ _%stx137242%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self137094%_ _%stx137095%_)
        (let* ((_%g137097137132%_
                (lambda (_%g137098137129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137098137129%_))))
               (_%g137096137238%_
                (lambda (_%g137098137135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137098137135%_))
                      (let ((_%e137102137137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137098137135%_))))
                        (let ((_%hd137103137140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137102137137%_)))
                              (_%tl137104137142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137102137137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137104137142%_))
                              (let ((_%e137105137145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137104137142%_))))
                                (let ((_%hd137106137148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137105137145%_)))
                                      (_%tl137107137150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137105137145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137106137148%_))
                                      (let ((_g138078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137106137148%_
                                                '0))))
                                        (begin
                                          (let ((_g138079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138078_)
                                                       (##values-length
                                                        _g138078_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138079_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138079_)))
                                          (let ((_%target137108137153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138078_ 0)))
                                                (_%tl137110137155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138078_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137110137155%_))
                                                (letrec ((_%loop137111137158%_
                                                          (lambda (_%hd137109137161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137115137163%_
                           _%hd137116137165%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137109137161%_))
                        (let ((_%e137112137168%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137109137161%_))))
                          (let ((_%lp-hd137113137171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137112137168%_)))
                                (_%lp-tl137114137173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137112137168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137113137171%_))
                                (let ((_%e137122137176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137113137171%_))))
                                  (let ((_%hd137123137179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137122137176%_)))
                                        (_%tl137124137181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137122137176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137124137181%_))
                                        (let ((_%e137125137184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137124137181%_))))
                                          (let ((_%hd137126137187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137125137184%_)))
                                                (_%tl137127137189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137125137184%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137127137189%_))
                                                (_%loop137111137158%_
                                                 _%lp-tl137114137173%_
                                                 (cons _%hd137126137187%_
                                                       _%expr137115137163%_)
                                                 (cons _%hd137123137179%_
                                                       _%hd137116137165%_))
                                                (_%g137097137132%_
                                                 _%g137098137135%_))))
                                        (_%g137097137132%_
                                         _%g137098137135%_))))
                                (_%g137097137132%_ _%g137098137135%_))))
                        (let ((_%expr137117137192%_
                               (reverse _%expr137115137163%_))
                              (_%hd137118137194%_
                               (reverse _%hd137116137165%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137107137150%_))
                              (let ((_%e137119137197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137107137150%_))))
                                (let ((_%hd137120137200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137119137197%_)))
                                      (_%tl137121137202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137119137197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137121137202%_))
                                      ((lambda (_%L137205%_
                                                _%L137206%_
                                                _%L137207%_)
                                         (for-each
                                          (lambda (_%g137226137228%_)
                                            (gxc#compile-e__1
                                             _%self137094%_
                                             _%g137226137228%_))
                                          (let ((__tmp138081
                                                 (lambda (_%g137230137233%_
                                                          _%g137231137235%_)
                                                   (cons _%g137230137233%_
                                                         _%g137231137235%_)))
                                                (__tmp138080
                                                 (cons _%L137205%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138081
                                             __tmp138080
                                             _%L137206%_))))
                                       _%hd137120137200%_
                                       _%expr137117137192%_
                                       _%hd137118137194%_)
                                      (_%g137097137132%_ _%g137098137135%_))))
                              (_%g137097137132%_ _%g137098137135%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137111137158%_
                                                   _%target137108137153%_
                                                   '()
                                                   '()))
                                                (_%g137097137132%_
                                                 _%g137098137135%_)))))
                                      (_%g137097137132%_ _%g137098137135%_))))
                              (_%g137097137132%_ _%g137098137135%_))))
                      (_%g137097137132%_ _%g137098137135%_)))))
          (_%g137096137238%_ _%stx137095%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self137039%_ _%stx137040%_)
        (let* ((_%g137042137056%_
                (lambda (_%g137043137053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137043137053%_))))
               (_%g137041137091%_
                (lambda (_%g137043137059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137043137059%_))
                      (let ((_%e137046137061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137043137059%_))))
                        (let ((_%hd137047137064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137046137061%_)))
                              (_%tl137048137066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137046137061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137048137066%_))
                              (let ((_%e137049137069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137048137066%_))))
                                (let ((_%hd137050137072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137049137069%_)))
                                      (_%tl137051137074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137049137069%_))))
                                  ((lambda (_%L137077%_ _%L137078%_)
                                     (gxc#compile-e__1
                                      _%self137039%_
                                      (last _%L137077%_)))
                                   _%tl137051137074%_
                                   _%hd137050137072%_)))
                              (_%g137042137056%_ _%g137043137059%_))))
                      (_%g137042137056%_ _%g137043137059%_)))))
          (_%g137041137091%_ _%stx137040%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self136971%_ _%stx136972%_)
        (let* ((_%g136974136991%_
                (lambda (_%g136975136988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136975136988%_))))
               (_%g136973137036%_
                (lambda (_%g136975136994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136975136994%_))
                      (let ((_%e136978136996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136975136994%_))))
                        (let ((_%hd136979136999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136978136996%_)))
                              (_%tl136980137001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136978136996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136980137001%_))
                              (let ((_%e136981137004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136980137001%_))))
                                (let ((_%hd136982137007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136981137004%_)))
                                      (_%tl136983137009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136981137004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136983137009%_))
                                      (let ((_%e136984137012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136983137009%_))))
                                        (let ((_%hd136985137015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136984137012%_)))
                                              (_%tl136986137017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136984137012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136986137017%_))
                                              ((lambda (_%L137020%_
                                                        _%L137021%_)
                                                 (gxc#compile-e__1
                                                  _%self136971%_
                                                  _%L137020%_))
                                               _%hd136985137015%_
                                               _%hd136982137007%_)
                                              (_%g136974136991%_
                                               _%g136975136994%_))))
                                      (_%g136974136991%_ _%g136975136994%_))))
                              (_%g136974136991%_ _%g136975136994%_))))
                      (_%g136974136991%_ _%g136975136994%_)))))
          (_%g136973137036%_ _%stx136972%_))))
    (define gxc#apply-operands
      (lambda (_%self136884%_ _%stx136885%_)
        (let* ((_%g136887136906%_
                (lambda (_%g136888136903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136888136903%_))))
               (_%g136886136968%_
                (lambda (_%g136888136909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136888136909%_))
                      (let ((_%e136890136911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136888136909%_))))
                        (let ((_%hd136891136914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136890136911%_)))
                              (_%tl136892136916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136890136911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136892136916%_))
                              (let ((_g138082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136892136916%_
                                        '0))))
                                (begin
                                  (let ((_g138083_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138082_)
                                               (##values-length _g138082_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138083_ 2)))
                                        (error "Context expects 2 values"
                                               _g138083_)))
                                  (let ((_%target136893136919%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138082_ 0)))
                                        (_%tl136895136921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138082_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136895136921%_))
                                        (letrec ((_%loop136896136924%_
                                                  (lambda (_%hd136894136927%_
                                                           _%rands136900136929%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136894136927%_))
                                                        (let ((_%e136897136932%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136894136927%_))))
                  (let ((_%lp-hd136898136935%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136897136932%_)))
                        (_%lp-tl136899136937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136897136932%_))))
                    (_%loop136896136924%_
                     _%lp-tl136899136937%_
                     (cons _%lp-hd136898136935%_ _%rands136900136929%_))))
                (let ((_%rands136901136940%_ (reverse _%rands136900136929%_)))
                  ((lambda (_%L136943%_)
                     (for-each
                      (lambda (_%g136956136958%_)
                        (gxc#compile-e__1 _%self136884%_ _%g136956136958%_))
                      (let ((__tmp138084
                             (lambda (_%g136960136963%_ _%g136961136965%_)
                               (cons _%g136960136963%_ _%g136961136965%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138084 '() _%L136943%_))))
                   _%rands136901136940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136896136924%_
                                           _%target136893136919%_
                                           '()))
                                        (_%g136887136906%_
                                         _%g136888136909%_)))))
                              (_%g136887136906%_ _%g136888136909%_))))
                      (_%g136887136906%_ _%g136888136909%_)))))
          (_%g136886136968%_ _%stx136885%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136881%_ _%src-stx136882%_)
        (let ((__tmp138085
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136882%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136881%_ __tmp138085))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136877%_ _%src-stx136878%_ _%ctx136879%_)
        (gxc#compile-e__1
         _%ctx136879%_
         (gxc#xform-wrap-source _%stx136877%_ _%src-stx136878%_))))
    (define gxc#xform-begin%
      (lambda (_%self136832%_ _%stx136833%_)
        (let* ((_%g136835136845%_
                (lambda (_%g136836136842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136836136842%_))))
               (_%g136834136874%_
                (lambda (_%g136836136848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136836136848%_))
                      (let ((_%e136838136850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136836136848%_))))
                        (let ((_%hd136839136853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136838136850%_)))
                              (_%tl136840136855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136838136850%_))))
                          ((lambda (_%L136858%_)
                             (let ((_%forms136872%_
                                    (map (lambda (_%g136867136869%_)
                                           (gxc#compile-e__1
                                            _%self136832%_
                                            _%g136867136869%_))
                                         _%L136858%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136872%_)
                                _%stx136833%_)))
                           _%tl136840136855%_)))
                      (_%g136835136845%_ _%g136836136848%_)))))
          (_%g136834136874%_ _%stx136833%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136786%_ _%stx136787%_)
        (let* ((_%g136789136799%_
                (lambda (_%g136790136796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136790136796%_))))
               (_%g136788136829%_
                (lambda (_%g136790136802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136790136802%_))
                      (let ((_%e136792136804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136790136802%_))))
                        (let ((_%hd136793136807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136792136804%_)))
                              (_%tl136794136809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136792136804%_))))
                          ((lambda (_%L136812%_)
                             (let ((__tmp138088
                                    (lambda ()
                                      (let ((_%forms136827%_
                                             (map (lambda (_%g136822136824%_)
                                                    (gxc#compile-e__1
                                                     _%self136786%_
                                                     _%g136822136824%_))
                                                  _%L136812%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136827%_)
                                         _%stx136787%_))))
                                   (__tmp138086
                                    (let ((__tmp138087
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp138087 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138088
                                gx#current-expander-phi
                                __tmp138086)))
                           _%tl136794136809%_)))
                      (_%g136789136799%_ _%g136790136802%_)))))
          (_%g136788136829%_ _%stx136787%_))))
    (define gxc#xform-module%
      (lambda (_%self136723%_ _%stx136724%_)
        (let* ((_%g136726136740%_
                (lambda (_%g136727136737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136727136737%_))))
               (_%g136725136783%_
                (lambda (_%g136727136743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136727136743%_))
                      (let ((_%e136730136745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136727136743%_))))
                        (let ((_%hd136731136748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136730136745%_)))
                              (_%tl136732136750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136730136745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136732136750%_))
                              (let ((_%e136733136753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136732136750%_))))
                                (let ((_%hd136734136756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136733136753%_)))
                                      (_%tl136735136758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136733136753%_))))
                                  ((lambda (_%L136761%_ _%L136762%_)
                                     (let* ((_%ctx136775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136762%_)))
                                            (_%code136777%_
                                             (##structure-ref
                                              _%ctx136775%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136780%_
                                             (let ((__tmp138089
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self136723%_
                                                       _%code136777%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp138089
                                                gx#current-expander-context
                                                _%ctx136775%_))))
                                       (##structure-set!
                                        _%ctx136775%_
                                        _%code136780%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136762%_
                                                    (cons _%code136780%_ '())))
                                        _%stx136724%_)))
                                   _%tl136735136758%_
                                   _%hd136734136756%_)))
                              (_%g136726136740%_ _%g136727136743%_))))
                      (_%g136726136740%_ _%g136727136743%_)))))
          (_%g136725136783%_ _%stx136724%_))))
    (define gxc#xform-define-values%
      (lambda (_%self136653%_ _%stx136654%_)
        (let* ((_%g136656136673%_
                (lambda (_%g136657136670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136657136670%_))))
               (_%g136655136720%_
                (lambda (_%g136657136676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136657136676%_))
                      (let ((_%e136660136678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136657136676%_))))
                        (let ((_%hd136661136681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136660136678%_)))
                              (_%tl136662136683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136660136678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136662136683%_))
                              (let ((_%e136663136686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136662136683%_))))
                                (let ((_%hd136664136689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136663136686%_)))
                                      (_%tl136665136691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136663136686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136665136691%_))
                                      (let ((_%e136666136694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136665136691%_))))
                                        (let ((_%hd136667136697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136666136694%_)))
                                              (_%tl136668136699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136666136694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136668136699%_))
                                              ((lambda (_%L136702%_
                                                        _%L136703%_)
                                                 (let ((_%expr136718%_
                                                        (gxc#compile-e__1
                                                         _%self136653%_
                                                         _%L136702%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L136703%_
                                                                (cons _%expr136718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136654%_)))
                                               _%hd136667136697%_
                                               _%hd136664136689%_)
                                              (_%g136656136673%_
                                               _%g136657136676%_))))
                                      (_%g136656136673%_ _%g136657136676%_))))
                              (_%g136656136673%_ _%g136657136676%_))))
                      (_%g136656136673%_ _%g136657136676%_)))))
          (_%g136655136720%_ _%stx136654%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self136582%_ _%stx136583%_)
        (let* ((_%g136585136602%_
                (lambda (_%g136586136599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136586136599%_))))
               (_%g136584136650%_
                (lambda (_%g136586136605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136586136605%_))
                      (let ((_%e136589136607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136586136605%_))))
                        (let ((_%hd136590136610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136589136607%_)))
                              (_%tl136591136612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136589136607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136591136612%_))
                              (let ((_%e136592136615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136591136612%_))))
                                (let ((_%hd136593136618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136592136615%_)))
                                      (_%tl136594136620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136592136615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136594136620%_))
                                      (let ((_%e136595136623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136594136620%_))))
                                        (let ((_%hd136596136626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136595136623%_)))
                                              (_%tl136597136628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136595136623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136597136628%_))
                                              ((lambda (_%L136631%_
                                                        _%L136632%_)
                                                 (let ((__tmp138092
                                                        (lambda ()
                                                          (let ((_%expr136648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self136582%_ _%L136631%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L136632%_ (cons _%expr136648%_ '())))
                     _%stx136583%_))))
               (__tmp138090
                (let ((__tmp138091
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138091 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138092
                                                    gx#current-expander-phi
                                                    __tmp138090)))
                                               _%hd136596136626%_
                                               _%hd136593136618%_)
                                              (_%g136585136602%_
                                               _%g136586136605%_))))
                                      (_%g136585136602%_ _%g136586136605%_))))
                              (_%g136585136602%_ _%g136586136605%_))))
                      (_%g136585136602%_ _%g136586136605%_)))))
          (_%g136584136650%_ _%stx136583%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self136512%_ _%stx136513%_)
        (let* ((_%g136515136532%_
                (lambda (_%g136516136529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136516136529%_))))
               (_%g136514136579%_
                (lambda (_%g136516136535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136516136535%_))
                      (let ((_%e136519136537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136516136535%_))))
                        (let ((_%hd136520136540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136519136537%_)))
                              (_%tl136521136542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136519136537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136521136542%_))
                              (let ((_%e136522136545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136521136542%_))))
                                (let ((_%hd136523136548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136522136545%_)))
                                      (_%tl136524136550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136522136545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136524136550%_))
                                      (let ((_%e136525136553%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136524136550%_))))
                                        (let ((_%hd136526136556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136525136553%_)))
                                              (_%tl136527136558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136525136553%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136527136558%_))
                                              ((lambda (_%L136561%_
                                                        _%L136562%_)
                                                 (let ((_%expr136577%_
                                                        (gxc#compile-e__1
                                                         _%self136512%_
                                                         _%L136561%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L136562%_
                                                                (cons _%expr136577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136513%_)))
                                               _%hd136526136556%_
                                               _%hd136523136548%_)
                                              (_%g136515136532%_
                                               _%g136516136535%_))))
                                      (_%g136515136532%_ _%g136516136535%_))))
                              (_%g136515136532%_ _%g136516136535%_))))
                      (_%g136515136532%_ _%g136516136535%_)))))
          (_%g136514136579%_ _%stx136513%_))))
    (define gxc#xform-lambda%
      (lambda (_%self136450%_ _%stx136451%_)
        (let* ((_%g136453136467%_
                (lambda (_%g136454136464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136454136464%_))))
               (_%g136452136509%_
                (lambda (_%g136454136470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136454136470%_))
                      (let ((_%e136457136472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136454136470%_))))
                        (let ((_%hd136458136475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136457136472%_)))
                              (_%tl136459136477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136457136472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136459136477%_))
                              (let ((_%e136460136480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136459136477%_))))
                                (let ((_%hd136461136483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136460136480%_)))
                                      (_%tl136462136485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136460136480%_))))
                                  ((lambda (_%L136488%_ _%L136489%_)
                                     (let ((__tmp138094
                                            (lambda ()
                                              (let ((_%body136507%_
                                                     (map (lambda (_%g136502136504%_)
                                                            (gxc#compile-e__1
                                                             _%self136450%_
                                                             _%g136502136504%_))
                                                          _%L136488%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L136489%_
                                                             _%body136507%_))
                                                 _%stx136451%_))))
                                           (__tmp138093
                                            (gxc#xform-let-locals
                                             _%L136489%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138094
                                        gxc#current-compile-local-env
                                        __tmp138093)))
                                   _%tl136462136485%_
                                   _%hd136461136483%_)))
                              (_%g136453136467%_ _%g136454136470%_))))
                      (_%g136453136467%_ _%g136454136470%_)))))
          (_%g136452136509%_ _%stx136451%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self136358%_ _%stx136359%_)
        (letrec ((_%clause-e136361%_
                  (lambda (_%clause136402%_)
                    (let* ((_%g136404136415%_
                            (lambda (_%g136405136412%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g136405136412%_))))
                           (_%g136403136447%_
                            (lambda (_%g136405136418%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g136405136418%_))
                                  (let ((_%e136408136420%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g136405136418%_))))
                                    (let ((_%hd136409136423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136408136420%_)))
                                          (_%tl136410136425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136408136420%_))))
                                      ((lambda (_%L136428%_ _%L136429%_)
                                         (let ((__tmp138096
                                                (lambda ()
                                                  (let ((_%body136445%_
                                                         (map (lambda (_%g136440136442%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self136358%_
                         _%g136440136442%_))
                      _%L136428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L136429%_
                                                          _%body136445%_))))
                                               (__tmp138095
                                                (gxc#xform-let-locals
                                                 _%L136429%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp138096
                                            gxc#current-compile-local-env
                                            __tmp138095)))
                                       _%tl136410136425%_
                                       _%hd136409136423%_)))
                                  (_%g136404136415%_ _%g136405136418%_)))))
                      (_%g136403136447%_ _%clause136402%_)))))
          (let* ((_%g136363136373%_
                  (lambda (_%g136364136370%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136364136370%_))))
                 (_%g136362136399%_
                  (lambda (_%g136364136376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136364136376%_))
                        (let ((_%e136366136378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136364136376%_))))
                          (let ((_%hd136367136381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136366136378%_)))
                                (_%tl136368136383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136366136378%_))))
                            ((lambda (_%L136386%_)
                               (let ((_%clauses136397%_
                                      (map _%clause-e136361%_ _%L136386%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses136397%_)
                                  _%stx136359%_)))
                             _%tl136368136383%_)))
                        (_%g136363136373%_ _%g136364136376%_)))))
            (_%g136362136399%_ _%stx136359%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self136112%_ _%stx136113%_)
        (let* ((_%g136115136148%_
                (lambda (_%g136116136145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136116136145%_))))
               (_%g136114136355%_
                (lambda (_%g136116136151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136116136151%_))
                      (let ((_%e136121136153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136116136151%_))))
                        (let ((_%hd136122136156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136121136153%_)))
                              (_%tl136123136158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136121136153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136123136158%_))
                              (let ((_%e136124136161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136123136158%_))))
                                (let ((_%hd136125136164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136124136161%_)))
                                      (_%tl136126136166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136124136161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136125136164%_))
                                      (let ((_g138097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136125136164%_
                                                '0))))
                                        (begin
                                          (let ((_g138098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138097_)
                                                       (##values-length
                                                        _g138097_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138098_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138098_)))
                                          (let ((_%target136127136169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138097_ 0)))
                                                (_%tl136129136171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138097_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136129136171%_))
                                                (letrec ((_%loop136130136174%_
                                                          (lambda (_%hd136128136177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136134136179%_
                           _%hd136135136181%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136128136177%_))
                        (let ((_%e136131136184%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136128136177%_))))
                          (let ((_%lp-hd136132136187%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136131136184%_)))
                                (_%lp-tl136133136189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136131136184%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136132136187%_))
                                (let ((_%e136138136192%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136132136187%_))))
                                  (let ((_%hd136139136195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136138136192%_)))
                                        (_%tl136140136197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136138136192%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136140136197%_))
                                        (let ((_%e136141136200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136140136197%_))))
                                          (let ((_%hd136142136203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136141136200%_)))
                                                (_%tl136143136205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136141136200%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136143136205%_))
                                                (_%loop136130136174%_
                                                 _%lp-tl136133136189%_
                                                 (cons _%hd136142136203%_
                                                       _%expr136134136179%_)
                                                 (cons _%hd136139136195%_
                                                       _%hd136135136181%_))
                                                (_%g136115136148%_
                                                 _%g136116136151%_))))
                                        (_%g136115136148%_
                                         _%g136116136151%_))))
                                (_%g136115136148%_ _%g136116136151%_))))
                        (let ((_%expr136136136208%_
                               (reverse _%expr136134136179%_))
                              (_%hd136137136210%_
                               (reverse _%hd136135136181%_)))
                          ((lambda (_%L136213%_
                                    _%L136214%_
                                    _%L136215%_
                                    _%L136216%_)
                             (let* ((_%g136235136251%_
                                     (lambda (_%g136236136248%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136236136248%_))))
                                    (_%g136234136341%_
                                     (lambda (_%g136236136254%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g136236136254%_))
                                           (let ((_g138099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g136236136254%_
                                                     '0))))
                                             (begin
                                               (let ((_g138100_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g138099_)
                                                            (##values-length
                                                             _g138099_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g138100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g138100_)))
                                               (let ((_%target136238136256%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138099_
                                                         0)))
                                                     (_%tl136240136258%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138099_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl136240136258%_))
                                                     (letrec ((_%loop136241136261%_
                                                               (lambda (_%hd136239136264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr136245136266%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd136239136264%_))
                             (let ((_%e136242136269%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd136239136264%_))))
                               (let ((_%lp-hd136243136272%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136242136269%_)))
                                     (_%lp-tl136244136274%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136242136269%_))))
                                 (_%loop136241136261%_
                                  _%lp-tl136244136274%_
                                  (cons _%lp-hd136243136272%_
                                        _%expr136245136266%_))))
                             (let ((_%expr136246136277%_
                                    (reverse _%expr136245136266%_)))
                               ((lambda (_%L136280%_)
                                  (let ((__tmp138103
                                         (lambda ()
                                           (let* ((_%g136294136301%_
                                                   (lambda (_%g136295136298%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136295136298%_))))
                                                  (_%g136293136327%_
                                                   (lambda (_%g136295136304%_)
                                                     ((lambda (_%L136306%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136216%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136280%_
                                  _%L136215%_))
                               (let ((__tmp138104
                                      (lambda (_%g136316136320%_
                                               _%g136317136322%_
                                               _%g136318136324%_)
                                        (cons (cons _%g136317136322%_
                                                    (cons _%g136316136320%_
                                                          '()))
                                              _%g136318136324%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138104
                                  '()
                                  _%L136280%_
                                  _%L136215%_)))
                             _%L136306%_))
                 _%stx136113%_))
              _%g136295136304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136293136327%_
                                              (map (lambda (_%g136329136331%_)
                                                     (gxc#compile-e__1
                                                      _%self136112%_
                                                      _%g136329136331%_))
                                                   _%L136213%_)))))
                                        (__tmp138101
                                         (gxc#xform-let-locals
                                          (let ((__tmp138102
                                                 (lambda (_%g136333136336%_
                                                          _%g136334136338%_)
                                                   (cons _%g136333136336%_
                                                         _%g136334136338%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138102
                                             '()
                                             _%L136215%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp138103
                                     gxc#current-compile-local-env
                                     __tmp138101)))
                                _%expr136246136277%_))))))
               (_%loop136241136261%_ _%target136238136256%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136235136251%_
                                                      _%g136236136254%_)))))
                                           (_%g136235136251%_
                                            _%g136236136254%_)))))
                               (_%g136234136341%_
                                (map (lambda (_%g136343136345%_)
                                       (gxc#compile-e__1
                                        _%self136112%_
                                        _%g136343136345%_))
                                     (let ((__tmp138105
                                            (lambda (_%g136347136350%_
                                                     _%g136348136352%_)
                                              (cons _%g136347136350%_
                                                    _%g136348136352%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138105
                                        '()
                                        _%L136214%_))))))
                           _%tl136126136166%_
                           _%expr136136136208%_
                           _%hd136137136210%_
                           _%hd136122136156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136130136174%_
                                                   _%target136127136169%_
                                                   '()
                                                   '()))
                                                (_%g136115136148%_
                                                 _%g136116136151%_)))))
                                      (_%g136115136148%_ _%g136116136151%_))))
                              (_%g136115136148%_ _%g136116136151%_))))
                      (_%g136115136148%_ _%g136116136151%_)))))
          (_%g136114136355%_ _%stx136113%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135866%_ _%stx135867%_)
        (let* ((_%g135869135902%_
                (lambda (_%g135870135899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135870135899%_))))
               (_%g135868136109%_
                (lambda (_%g135870135905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135870135905%_))
                      (let ((_%e135875135907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135870135905%_))))
                        (let ((_%hd135876135910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135875135907%_)))
                              (_%tl135877135912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135875135907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135877135912%_))
                              (let ((_%e135878135915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135877135912%_))))
                                (let ((_%hd135879135918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135878135915%_)))
                                      (_%tl135880135920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135878135915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135879135918%_))
                                      (let ((_g138106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135879135918%_
                                                '0))))
                                        (begin
                                          (let ((_g138107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138106_)
                                                       (##values-length
                                                        _g138106_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138107_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138107_)))
                                          (let ((_%target135881135923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138106_ 0)))
                                                (_%tl135883135925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138106_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135883135925%_))
                                                (letrec ((_%loop135884135928%_
                                                          (lambda (_%hd135882135931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135888135933%_
                           _%hd135889135935%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135882135931%_))
                        (let ((_%e135885135938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135882135931%_))))
                          (let ((_%lp-hd135886135941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135885135938%_)))
                                (_%lp-tl135887135943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135885135938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135886135941%_))
                                (let ((_%e135892135946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135886135941%_))))
                                  (let ((_%hd135893135949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135892135946%_)))
                                        (_%tl135894135951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135892135946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135894135951%_))
                                        (let ((_%e135895135954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135894135951%_))))
                                          (let ((_%hd135896135957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135895135954%_)))
                                                (_%tl135897135959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135895135954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135897135959%_))
                                                (_%loop135884135928%_
                                                 _%lp-tl135887135943%_
                                                 (cons _%hd135896135957%_
                                                       _%expr135888135933%_)
                                                 (cons _%hd135893135949%_
                                                       _%hd135889135935%_))
                                                (_%g135869135902%_
                                                 _%g135870135905%_))))
                                        (_%g135869135902%_
                                         _%g135870135905%_))))
                                (_%g135869135902%_ _%g135870135905%_))))
                        (let ((_%expr135890135962%_
                               (reverse _%expr135888135933%_))
                              (_%hd135891135964%_
                               (reverse _%hd135889135935%_)))
                          ((lambda (_%L135967%_
                                    _%L135968%_
                                    _%L135969%_
                                    _%L135970%_)
                             (let ((__tmp138110
                                    (lambda ()
                                      (let* ((_%g135990136006%_
                                              (lambda (_%g135991136003%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g135991136003%_))))
                                             (_%g135989136088%_
                                              (lambda (_%g135991136009%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g135991136009%_))
                                                    (let ((_g138111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g135991136009%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g138112_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g138111_)
                             (##values-length _g138111_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g138112_ 2)))
                      (error "Context expects 2 values" _g138112_)))
                (let ((_%target135993136011%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138111_ 0)))
                      (_%tl135995136013%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138111_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl135995136013%_))
                      (letrec ((_%loop135996136016%_
                                (lambda (_%hd135994136019%_
                                         _%expr136000136021%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd135994136019%_))
                                      (let ((_%e135997136024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd135994136019%_))))
                                        (let ((_%lp-hd135998136027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135997136024%_)))
                                              (_%lp-tl135999136029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135997136024%_))))
                                          (_%loop135996136016%_
                                           _%lp-tl135999136029%_
                                           (cons _%lp-hd135998136027%_
                                                 _%expr136000136021%_))))
                                      (let ((_%expr136001136032%_
                                             (reverse _%expr136000136021%_)))
                                        ((lambda (_%L136035%_)
                                           (let* ((_%g136049136056%_
                                                   (lambda (_%g136050136053%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136050136053%_))))
                                                  (_%g136048136081%_
                                                   (lambda (_%g136050136059%_)
                                                     ((lambda (_%L136061%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135970%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136035%_
                                  _%L135969%_))
                               (let ((__tmp138113
                                      (lambda (_%g136070136074%_
                                               _%g136071136076%_
                                               _%g136072136078%_)
                                        (cons (cons _%g136071136076%_
                                                    (cons _%g136070136074%_
                                                          '()))
                                              _%g136072136078%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138113
                                  '()
                                  _%L136035%_
                                  _%L135969%_)))
                             _%L136061%_))
                 _%stx135867%_))
              _%g136050136059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136048136081%_
                                              (map (lambda (_%g136083136085%_)
                                                     (gxc#compile-e__1
                                                      _%self135866%_
                                                      _%g136083136085%_))
                                                   _%L135967%_))))
                                         _%expr136001136032%_))))))
                        (_%loop135996136016%_ _%target135993136011%_ '()))
                      (_%g135990136006%_ _%g135991136009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g135990136006%_
                                                     _%g135991136009%_)))))
                                        (_%g135989136088%_
                                         (map (lambda (_%g136090136092%_)
                                                (gxc#compile-e__1
                                                 _%self135866%_
                                                 _%g136090136092%_))
                                              (let ((__tmp138114
                                                     (lambda (_%g136094136097%_
                                                              _%g136095136099%_)
                                                       (cons _%g136094136097%_
                                                             _%g136095136099%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp138114
                                                 '()
                                                 _%L135968%_)))))))
                                   (__tmp138108
                                    (gxc#xform-let-locals
                                     (let ((__tmp138109
                                            (lambda (_%g136101136104%_
                                                     _%g136102136106%_)
                                              (cons _%g136101136104%_
                                                    _%g136102136106%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138109
                                        '()
                                        _%L135969%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138110
                                gxc#current-compile-local-env
                                __tmp138108)))
                           _%tl135880135920%_
                           _%expr135890135962%_
                           _%hd135891135964%_
                           _%hd135876135910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135884135928%_
                                                   _%target135881135923%_
                                                   '()
                                                   '()))
                                                (_%g135869135902%_
                                                 _%g135870135905%_)))))
                                      (_%g135869135902%_ _%g135870135905%_))))
                              (_%g135869135902%_ _%g135870135905%_))))
                      (_%g135869135902%_ _%g135870135905%_)))))
          (_%g135868136109%_ _%stx135867%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings135733%_)
        (letrec ((_%flatten135735%_
                  (lambda (_%maybe-lst135793%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135793%_))
                        (cons _%maybe-lst135793%_ '())
                        (let _%loop135795%_ ((_%rest135797%_
                                              _%maybe-lst135793%_)
                                             (_%result135798%_ '()))
                          (let* ((_%__stx138002138003%_ _%rest135797%_)
                                 (_%g135802135814%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138002138003%_)))))
                            (let ((_%__kont138004138005%_
                                   (lambda (_%L135852%_ _%L135853%_)
                                     (_%loop135795%_
                                      _%L135852%_
                                      (let ((__tmp138115
                                             (_%flatten135735%_ _%L135853%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135798%_
                                         __tmp138115)))))
                                  (_%__kont138006138007%_
                                   (lambda (_%L135826%_)
                                     (cons _%L135826%_ _%result135798%_)))
                                  (_%__kont138008138009%_
                                   (lambda () _%result135798%_)))
                              (let ((_%g135800135839%_
                                     (lambda ()
                                       (let ((_%L135826%_
                                              _%__stx138002138003%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135826%_))
                                             (_%__kont138006138007%_
                                              _%L135826%_)
                                             (_%__kont138008138009%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138002138003%_))
                                    (let ((_%e135806135844%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138002138003%_))))
                                      (let ((_%tl135808135849%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135806135844%_)))
                                            (_%hd135807135847%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135806135844%_))))
                                        (_%__kont138004138005%_
                                         _%tl135808135849%_
                                         _%hd135807135847%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135800135839%_)))))))))))
          (let _%loop135737%_ ((_%rest135739%_
                                (_%flatten135735%_ _%bindings135733%_))
                               (_%locals135740%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135741135752%_ _%rest135739%_)
                   (_%E135745135756%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135741135752%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135748135781%_
                     (lambda (_%rest135778%_ _%id135779%_)
                       (_%loop135737%_
                        _%rest135778%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135779%_))
                              _%locals135740%_))))
                    (_%K135747135770%_
                     (lambda (_%id135768%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135768%_))
                             _%locals135740%_)))
                    (_%K135746135761%_ (lambda () _%locals135740%_)))
                (let ((_%try-match135743135775%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135741135752%_))
                             (let ((_%id135773%_ _%rest135741135752%_))
                               (_%K135747135770%_ _%id135773%_))
                             (_%K135746135761%_)))))
                  (if (pair? _%rest135741135752%_)
                      (let ((_%tl135750135786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135741135752%_)))
                            (_%hd135749135784%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135741135752%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135749135784%_))
                            (let ((_%id135789%_ _%hd135749135784%_)
                                  (_%rest135791%_ _%tl135750135786%_))
                              (_%K135748135781%_ _%rest135791%_ _%id135789%_))
                            (_%K135746135761%_)))
                      (_%try-match135743135775%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self135685%_ _%stx135686%_)
        (let* ((_%g135688135699%_
                (lambda (_%g135689135696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135689135696%_))))
               (_%g135687135730%_
                (lambda (_%g135689135702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135689135702%_))
                      (let ((_%e135692135704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135689135702%_))))
                        (let ((_%hd135693135707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135692135704%_)))
                              (_%tl135694135709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135692135704%_))))
                          ((lambda (_%L135712%_ _%L135713%_)
                             (let ((_%rands135728%_
                                    (map (lambda (_%g135723135725%_)
                                           (gxc#compile-e__1
                                            _%self135685%_
                                            _%g135723135725%_))
                                         _%L135712%_)))
                               (gxc#xform-wrap-source
                                (cons _%L135713%_ _%rands135728%_)
                                _%stx135686%_)))
                           _%tl135694135709%_
                           _%hd135693135707%_)))
                      (_%g135688135699%_ _%g135689135702%_)))))
          (_%g135687135730%_ _%stx135686%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self135615%_ _%stx135616%_)
        (let* ((_%g135618135635%_
                (lambda (_%g135619135632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135619135632%_))))
               (_%g135617135682%_
                (lambda (_%g135619135638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135619135638%_))
                      (let ((_%e135622135640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135619135638%_))))
                        (let ((_%hd135623135643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135622135640%_)))
                              (_%tl135624135645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135622135640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135624135645%_))
                              (let ((_%e135625135648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135624135645%_))))
                                (let ((_%hd135626135651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135625135648%_)))
                                      (_%tl135627135653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135625135648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135627135653%_))
                                      (let ((_%e135628135656%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135627135653%_))))
                                        (let ((_%hd135629135659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135628135656%_)))
                                              (_%tl135630135661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135628135656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135630135661%_))
                                              ((lambda (_%L135664%_
                                                        _%L135665%_)
                                                 (let ((_%expr135680%_
                                                        (gxc#compile-e__1
                                                         _%self135615%_
                                                         _%L135664%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L135665%_
                                                                (cons _%expr135680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135616%_)))
                                               _%hd135629135659%_
                                               _%hd135626135651%_)
                                              (_%g135618135635%_
                                               _%g135619135638%_))))
                                      (_%g135618135635%_ _%g135619135638%_))))
                              (_%g135618135635%_ _%g135619135638%_))))
                      (_%g135618135635%_ _%g135619135638%_)))))
          (_%g135617135682%_ _%stx135616%_))))))
