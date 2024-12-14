(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734215270)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137939%_)
        (let* ((_%self137941%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137943%_
                (let ((__tmp138139 (gxc#stx-car-e _%stx137939%_)))
                  (declare (not safe))
                  (method-ref _%self137941%_ __tmp138139))))
          (if _%$e137943%_
              ((lambda (_%method137946%_)
                 (declare (not safe))
                 (_%method137946%_ _%self137941%_ _%stx137939%_))
               _%$e137943%_)
              (let ((__tmp138141 (gxc#stx-car-e _%stx137939%_))
                    (__tmp138140
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137939%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137941%_
                       __tmp138141
                       __tmp138140))))))
    (define gxc#compile-e__1
      (lambda (_%self137950%_ _%stx137951%_)
        (let ((_%$e137953%_
               (let ((__tmp138142 (gxc#stx-car-e _%stx137951%_)))
                 (declare (not safe))
                 (method-ref _%self137950%_ __tmp138142))))
          (if _%$e137953%_
              ((lambda (_%method137956%_)
                 (declare (not safe))
                 (_%method137956%_ _%self137950%_ _%stx137951%_))
               _%$e137953%_)
              (let ((__tmp138144 (gxc#stx-car-e _%stx137951%_))
                    (__tmp138143
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137951%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137950%_
                       __tmp138144
                       __tmp138143))))))
    (define gxc#compile-e
      (lambda _g138146_
        (let ((_g138145_ (let () (declare (not safe)) (##length _g138146_))))
          (cond ((let () (declare (not safe)) (##fx= _g138145_ 1))
                 (apply gxc#compile-e__0 _g138146_))
                ((let () (declare (not safe)) (##fx= _g138145_ 2))
                 (apply gxc#compile-e__1 _g138146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g138146_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137937%_)
        (let ((__tmp138147
               (car (let () (declare (not safe)) (gx#stx-e _%stx137937%_)))))
          (declare (not safe))
          (gx#stx-e __tmp138147))))
    (define gxc#void-method (lambda (_%self137934%_ _%stx137935%_) '#!void))
    (define gxc#false-method (lambda (_%self137931%_ _%stx137932%_) '#f))
    (define gxc#true-method (lambda (_%self137928%_ _%stx137929%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137925%_ _%stx137926%_) _%stx137926%_))
    (define gxc#::void-expression::t
      (let ((__tmp138148 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp138148
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137922%_
        (apply make-instance gxc#::void-expression::t _%$args137922%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp138149
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
        (__make-promise __tmp138149)))
    (define gxc#::void-special-form::t
      (let ((__tmp138150 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp138150
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137918%_
        (apply make-instance gxc#::void-special-form::t _%$args137918%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp138151
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
        (__make-promise __tmp138151)))
    (define gxc#::void::t
      (let ((__tmp138152
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp138152 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137914%_
        (apply make-instance gxc#::void::t _%$args137914%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp138153
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138153)))
    (define gxc#::false-expression::t
      (let ((__tmp138154 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp138154
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137910%_
        (apply make-instance gxc#::false-expression::t _%$args137910%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp138155
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
        (__make-promise __tmp138155)))
    (define gxc#::false-special-form::t
      (let ((__tmp138156 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp138156
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137906%_
        (apply make-instance gxc#::false-special-form::t _%$args137906%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp138157
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
        (__make-promise __tmp138157)))
    (define gxc#::false::t
      (let ((__tmp138158
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp138158 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137902%_
        (apply make-instance gxc#::false::t _%$args137902%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp138159
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138159)))
    (define gxc#::identity-expression::t
      (let ((__tmp138160 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp138160
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137898%_
        (apply make-instance gxc#::identity-expression::t _%$args137898%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp138161
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
        (__make-promise __tmp138161)))
    (define gxc#::identity-special-form::t
      (let ((__tmp138162 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp138162
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137894%_
        (apply make-instance gxc#::identity-special-form::t _%$args137894%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp138163
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
        (__make-promise __tmp138163)))
    (define gxc#::identity::t
      (let ((__tmp138164
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp138164
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137890%_
        (apply make-instance gxc#::identity::t _%$args137890%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp138165
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138165)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp138166 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp138166
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137886%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137886%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp138167
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
        (__make-promise __tmp138167)))
    (define gxc#::basic-xform::t
      (let ((__tmp138168
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp138168
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137882%_
        (apply make-instance gxc#::basic-xform::t _%$args137882%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp138169
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
        (__make-promise __tmp138169)))
    (define gxc#apply-begin%
      (lambda (_%self137838%_ _%stx137839%_)
        (let* ((_%g137841137851%_
                (lambda (_%g137842137848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137842137848%_))))
               (_%g137840137878%_
                (lambda (_%g137842137854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137842137854%_))
                      (let ((_%e137844137856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137842137854%_))))
                        (let ((_%hd137845137859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137844137856%_)))
                              (_%tl137846137861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137844137856%_))))
                          ((lambda (_%L137864%_)
                             (for-each
                              (lambda (_%g137873137875%_)
                                (gxc#compile-e__1
                                 _%self137838%_
                                 _%g137873137875%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137864%_))))
                           _%tl137846137861%_)))
                      (_%g137841137851%_ _%g137842137854%_)))))
          (_%g137840137878%_ _%stx137839%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self137799%_ _%stx137800%_)
        (let* ((_%g137802137812%_
                (lambda (_%g137803137809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137803137809%_))))
               (_%g137801137835%_
                (lambda (_%g137803137815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137803137815%_))
                      (let ((_%e137805137817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137803137815%_))))
                        (let ((_%hd137806137820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137805137817%_)))
                              (_%tl137807137822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137805137817%_))))
                          ((lambda (_%L137825%_)
                             (gxc#compile-e__1
                              _%self137799%_
                              (last _%L137825%_)))
                           _%tl137807137822%_)))
                      (_%g137802137812%_ _%g137803137815%_)))))
          (_%g137801137835%_ _%stx137800%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self137795%_ _%stx137796%_)
        (let ((__tmp138172
               (lambda () (gxc#apply-begin% _%self137795%_ _%stx137796%_)))
              (__tmp138170
               (let ((__tmp138171
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp138171 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp138172
           gx#current-expander-phi
           __tmp138170))))
    (define gxc#apply-module%
      (lambda (_%self137734%_ _%stx137735%_)
        (let* ((_%g137737137751%_
                (lambda (_%g137738137748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137738137748%_))))
               (_%g137736137792%_
                (lambda (_%g137738137754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137738137754%_))
                      (let ((_%e137741137756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137738137754%_))))
                        (let ((_%hd137742137759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137741137756%_)))
                              (_%tl137743137761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137741137756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137743137761%_))
                              (let ((_%e137744137764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137743137761%_))))
                                (let ((_%hd137745137767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137744137764%_)))
                                      (_%tl137746137769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137744137764%_))))
                                  ((lambda (_%L137772%_ _%L137773%_)
                                     (let* ((_%ctx137786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137773%_)))
                                            (_%ctx-stx137788%_
                                             (##structure-ref
                                              _%ctx137786%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp138173
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self137734%_
                                                _%ctx-stx137788%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138173
                                        gx#current-expander-context
                                        _%ctx137786%_)))
                                   _%tl137746137769%_
                                   _%hd137745137767%_)))
                              (_%g137737137751%_ _%g137738137754%_))))
                      (_%g137737137751%_ _%g137738137754%_)))))
          (_%g137736137792%_ _%stx137735%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self137666%_ _%stx137667%_)
        (let* ((_%g137669137686%_
                (lambda (_%g137670137683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137670137683%_))))
               (_%g137668137731%_
                (lambda (_%g137670137689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137670137689%_))
                      (let ((_%e137673137691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137670137689%_))))
                        (let ((_%hd137674137694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137673137691%_)))
                              (_%tl137675137696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137673137691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137675137696%_))
                              (let ((_%e137676137699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137675137696%_))))
                                (let ((_%hd137677137702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137676137699%_)))
                                      (_%tl137678137704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137676137699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137678137704%_))
                                      (let ((_%e137679137707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137678137704%_))))
                                        (let ((_%hd137680137710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137679137707%_)))
                                              (_%tl137681137712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137679137707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137681137712%_))
                                              ((lambda (_%L137715%_
                                                        _%L137716%_)
                                                 (gxc#compile-e__1
                                                  _%self137666%_
                                                  _%L137715%_))
                                               _%hd137680137710%_
                                               _%hd137677137702%_)
                                              (_%g137669137686%_
                                               _%g137670137689%_))))
                                      (_%g137669137686%_ _%g137670137689%_))))
                              (_%g137669137686%_ _%g137670137689%_))))
                      (_%g137669137686%_ _%g137670137689%_)))))
          (_%g137668137731%_ _%stx137667%_))))
    (define gxc#apply-define-values%
      (lambda (_%self137598%_ _%stx137599%_)
        (let* ((_%g137601137618%_
                (lambda (_%g137602137615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137602137615%_))))
               (_%g137600137663%_
                (lambda (_%g137602137621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137602137621%_))
                      (let ((_%e137605137623%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137602137621%_))))
                        (let ((_%hd137606137626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137605137623%_)))
                              (_%tl137607137628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137605137623%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137607137628%_))
                              (let ((_%e137608137631%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137607137628%_))))
                                (let ((_%hd137609137634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137608137631%_)))
                                      (_%tl137610137636%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137608137631%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137610137636%_))
                                      (let ((_%e137611137639%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137610137636%_))))
                                        (let ((_%hd137612137642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137611137639%_)))
                                              (_%tl137613137644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137611137639%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137613137644%_))
                                              ((lambda (_%L137647%_
                                                        _%L137648%_)
                                                 (gxc#compile-e__1
                                                  _%self137598%_
                                                  _%L137647%_))
                                               _%hd137612137642%_
                                               _%hd137609137634%_)
                                              (_%g137601137618%_
                                               _%g137602137621%_))))
                                      (_%g137601137618%_ _%g137602137621%_))))
                              (_%g137601137618%_ _%g137602137621%_))))
                      (_%g137601137618%_ _%g137602137621%_)))))
          (_%g137600137663%_ _%stx137599%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self137529%_ _%stx137530%_)
        (let* ((_%g137532137549%_
                (lambda (_%g137533137546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137533137546%_))))
               (_%g137531137595%_
                (lambda (_%g137533137552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137533137552%_))
                      (let ((_%e137536137554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137533137552%_))))
                        (let ((_%hd137537137557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137536137554%_)))
                              (_%tl137538137559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137536137554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137538137559%_))
                              (let ((_%e137539137562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137538137559%_))))
                                (let ((_%hd137540137565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137539137562%_)))
                                      (_%tl137541137567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137539137562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137541137567%_))
                                      (let ((_%e137542137570%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137541137567%_))))
                                        (let ((_%hd137543137573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137542137570%_)))
                                              (_%tl137544137575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137542137570%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137544137575%_))
                                              ((lambda (_%L137578%_
                                                        _%L137579%_)
                                                 (let ((__tmp138176
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self137529%_
                                                           _%L137578%_)))
                                                       (__tmp138174
                                                        (let ((__tmp138175
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138175 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138176
                                                    gx#current-expander-phi
                                                    __tmp138174)))
                                               _%hd137543137573%_
                                               _%hd137540137565%_)
                                              (_%g137532137549%_
                                               _%g137533137552%_))))
                                      (_%g137532137549%_ _%g137533137552%_))))
                              (_%g137532137549%_ _%g137533137552%_))))
                      (_%g137532137549%_ _%g137533137552%_)))))
          (_%g137531137595%_ _%stx137530%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self137461%_ _%stx137462%_)
        (let* ((_%g137464137481%_
                (lambda (_%g137465137478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137465137478%_))))
               (_%g137463137526%_
                (lambda (_%g137465137484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137465137484%_))
                      (let ((_%e137468137486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137465137484%_))))
                        (let ((_%hd137469137489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137468137486%_)))
                              (_%tl137470137491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137468137486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137470137491%_))
                              (let ((_%e137471137494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137470137491%_))))
                                (let ((_%hd137472137497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137471137494%_)))
                                      (_%tl137473137499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137471137494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137473137499%_))
                                      (let ((_%e137474137502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137473137499%_))))
                                        (let ((_%hd137475137505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137474137502%_)))
                                              (_%tl137476137507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137474137502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137476137507%_))
                                              ((lambda (_%L137510%_
                                                        _%L137511%_)
                                                 (gxc#compile-e__1
                                                  _%self137461%_
                                                  _%L137510%_))
                                               _%hd137475137505%_
                                               _%hd137472137497%_)
                                              (_%g137464137481%_
                                               _%g137465137484%_))))
                                      (_%g137464137481%_ _%g137465137484%_))))
                              (_%g137464137481%_ _%g137465137484%_))))
                      (_%g137464137481%_ _%g137465137484%_)))))
          (_%g137463137526%_ _%stx137462%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self137343%_ _%stx137344%_)
        (let* ((_%g137346137374%_
                (lambda (_%g137347137371%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137347137371%_))))
               (_%g137345137458%_
                (lambda (_%g137347137377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137347137377%_))
                      (let ((_%e137350137379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137347137377%_))))
                        (let ((_%hd137351137382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137350137379%_)))
                              (_%tl137352137384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137350137379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137352137384%_))
                              (let ((_g138177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137352137384%_
                                        '0))))
                                (begin
                                  (let ((_g138178_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138177_)
                                               (##values-length _g138177_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138178_ 2)))
                                        (error "Context expects 2 values"
                                               _g138178_)))
                                  (let ((_%target137353137387%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138177_ 0)))
                                        (_%tl137355137389%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138177_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137355137389%_))
                                        (letrec ((_%loop137356137392%_
                                                  (lambda (_%hd137354137395%_
                                                           _%body137360137397%_
                                                           _%hd137361137399%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137354137395%_))
                                                        (let ((_%e137357137402%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137354137395%_))))
                  (let ((_%lp-hd137358137405%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137357137402%_)))
                        (_%lp-tl137359137407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137357137402%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd137358137405%_))
                        (let ((_%e137364137410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd137358137405%_))))
                          (let ((_%hd137365137413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137364137410%_)))
                                (_%tl137366137415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137364137410%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137366137415%_))
                                (let ((_%e137367137418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137366137415%_))))
                                  (let ((_%hd137368137421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137367137418%_)))
                                        (_%tl137369137423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137367137418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137369137423%_))
                                        (_%loop137356137392%_
                                         _%lp-tl137359137407%_
                                         (cons _%hd137368137421%_
                                               _%body137360137397%_)
                                         (cons _%hd137365137413%_
                                               _%hd137361137399%_))
                                        (_%g137346137374%_
                                         _%g137347137377%_))))
                                (_%g137346137374%_ _%g137347137377%_))))
                        (_%g137346137374%_ _%g137347137377%_))))
                (let ((_%body137362137426%_ (reverse _%body137360137397%_))
                      (_%hd137363137428%_ (reverse _%hd137361137399%_)))
                  ((lambda (_%L137431%_ _%L137432%_)
                     (for-each
                      (lambda (_%g137446137448%_)
                        (gxc#compile-e__1 _%self137343%_ _%g137446137448%_))
                      (let ((__tmp138179
                             (lambda (_%g137450137453%_ _%g137451137455%_)
                               (cons _%g137450137453%_ _%g137451137455%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138179 '() _%L137431%_))))
                   _%body137362137426%_
                   _%hd137363137428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137356137392%_
                                           _%target137353137387%_
                                           '()
                                           '()))
                                        (_%g137346137374%_
                                         _%g137347137377%_)))))
                              (_%g137346137374%_ _%g137347137377%_))))
                      (_%g137346137374%_ _%g137347137377%_)))))
          (_%g137345137458%_ _%stx137344%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self137196%_ _%stx137197%_)
        (let* ((_%g137199137234%_
                (lambda (_%g137200137231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137200137231%_))))
               (_%g137198137340%_
                (lambda (_%g137200137237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137200137237%_))
                      (let ((_%e137204137239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137200137237%_))))
                        (let ((_%hd137205137242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137204137239%_)))
                              (_%tl137206137244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137204137239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137206137244%_))
                              (let ((_%e137207137247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137206137244%_))))
                                (let ((_%hd137208137250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137207137247%_)))
                                      (_%tl137209137252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137207137247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137208137250%_))
                                      (let ((_g138180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137208137250%_
                                                '0))))
                                        (begin
                                          (let ((_g138181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138180_)
                                                       (##values-length
                                                        _g138180_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138181_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138181_)))
                                          (let ((_%target137210137255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138180_ 0)))
                                                (_%tl137212137257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138180_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137212137257%_))
                                                (letrec ((_%loop137213137260%_
                                                          (lambda (_%hd137211137263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137217137265%_
                           _%hd137218137267%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137211137263%_))
                        (let ((_%e137214137270%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137211137263%_))))
                          (let ((_%lp-hd137215137273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137214137270%_)))
                                (_%lp-tl137216137275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137214137270%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137215137273%_))
                                (let ((_%e137224137278%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137215137273%_))))
                                  (let ((_%hd137225137281%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137224137278%_)))
                                        (_%tl137226137283%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137224137278%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137226137283%_))
                                        (let ((_%e137227137286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137226137283%_))))
                                          (let ((_%hd137228137289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137227137286%_)))
                                                (_%tl137229137291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137227137286%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137229137291%_))
                                                (_%loop137213137260%_
                                                 _%lp-tl137216137275%_
                                                 (cons _%hd137228137289%_
                                                       _%expr137217137265%_)
                                                 (cons _%hd137225137281%_
                                                       _%hd137218137267%_))
                                                (_%g137199137234%_
                                                 _%g137200137237%_))))
                                        (_%g137199137234%_
                                         _%g137200137237%_))))
                                (_%g137199137234%_ _%g137200137237%_))))
                        (let ((_%expr137219137294%_
                               (reverse _%expr137217137265%_))
                              (_%hd137220137296%_
                               (reverse _%hd137218137267%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137209137252%_))
                              (let ((_%e137221137299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137209137252%_))))
                                (let ((_%hd137222137302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137221137299%_)))
                                      (_%tl137223137304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137221137299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137223137304%_))
                                      ((lambda (_%L137307%_
                                                _%L137308%_
                                                _%L137309%_)
                                         (for-each
                                          (lambda (_%g137328137330%_)
                                            (gxc#compile-e__1
                                             _%self137196%_
                                             _%g137328137330%_))
                                          (let ((__tmp138183
                                                 (lambda (_%g137332137335%_
                                                          _%g137333137337%_)
                                                   (cons _%g137332137335%_
                                                         _%g137333137337%_)))
                                                (__tmp138182
                                                 (cons _%L137307%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138183
                                             __tmp138182
                                             _%L137308%_))))
                                       _%hd137222137302%_
                                       _%expr137219137294%_
                                       _%hd137220137296%_)
                                      (_%g137199137234%_ _%g137200137237%_))))
                              (_%g137199137234%_ _%g137200137237%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137213137260%_
                                                   _%target137210137255%_
                                                   '()
                                                   '()))
                                                (_%g137199137234%_
                                                 _%g137200137237%_)))))
                                      (_%g137199137234%_ _%g137200137237%_))))
                              (_%g137199137234%_ _%g137200137237%_))))
                      (_%g137199137234%_ _%g137200137237%_)))))
          (_%g137198137340%_ _%stx137197%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self137141%_ _%stx137142%_)
        (let* ((_%g137144137158%_
                (lambda (_%g137145137155%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137145137155%_))))
               (_%g137143137193%_
                (lambda (_%g137145137161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137145137161%_))
                      (let ((_%e137148137163%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137145137161%_))))
                        (let ((_%hd137149137166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137148137163%_)))
                              (_%tl137150137168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137148137163%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137150137168%_))
                              (let ((_%e137151137171%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137150137168%_))))
                                (let ((_%hd137152137174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137151137171%_)))
                                      (_%tl137153137176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137151137171%_))))
                                  ((lambda (_%L137179%_ _%L137180%_)
                                     (gxc#compile-e__1
                                      _%self137141%_
                                      (last _%L137179%_)))
                                   _%tl137153137176%_
                                   _%hd137152137174%_)))
                              (_%g137144137158%_ _%g137145137161%_))))
                      (_%g137144137158%_ _%g137145137161%_)))))
          (_%g137143137193%_ _%stx137142%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self137073%_ _%stx137074%_)
        (let* ((_%g137076137093%_
                (lambda (_%g137077137090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137077137090%_))))
               (_%g137075137138%_
                (lambda (_%g137077137096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137077137096%_))
                      (let ((_%e137080137098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137077137096%_))))
                        (let ((_%hd137081137101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137080137098%_)))
                              (_%tl137082137103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137080137098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137082137103%_))
                              (let ((_%e137083137106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137082137103%_))))
                                (let ((_%hd137084137109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137083137106%_)))
                                      (_%tl137085137111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137083137106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137085137111%_))
                                      (let ((_%e137086137114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137085137111%_))))
                                        (let ((_%hd137087137117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137086137114%_)))
                                              (_%tl137088137119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137086137114%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137088137119%_))
                                              ((lambda (_%L137122%_
                                                        _%L137123%_)
                                                 (gxc#compile-e__1
                                                  _%self137073%_
                                                  _%L137122%_))
                                               _%hd137087137117%_
                                               _%hd137084137109%_)
                                              (_%g137076137093%_
                                               _%g137077137096%_))))
                                      (_%g137076137093%_ _%g137077137096%_))))
                              (_%g137076137093%_ _%g137077137096%_))))
                      (_%g137076137093%_ _%g137077137096%_)))))
          (_%g137075137138%_ _%stx137074%_))))
    (define gxc#apply-operands
      (lambda (_%self136986%_ _%stx136987%_)
        (let* ((_%g136989137008%_
                (lambda (_%g136990137005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136990137005%_))))
               (_%g136988137070%_
                (lambda (_%g136990137011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136990137011%_))
                      (let ((_%e136992137013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136990137011%_))))
                        (let ((_%hd136993137016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136992137013%_)))
                              (_%tl136994137018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136992137013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136994137018%_))
                              (let ((_g138184_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136994137018%_
                                        '0))))
                                (begin
                                  (let ((_g138185_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138184_)
                                               (##values-length _g138184_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138185_ 2)))
                                        (error "Context expects 2 values"
                                               _g138185_)))
                                  (let ((_%target136995137021%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138184_ 0)))
                                        (_%tl136997137023%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138184_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136997137023%_))
                                        (letrec ((_%loop136998137026%_
                                                  (lambda (_%hd136996137029%_
                                                           _%rands137002137031%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136996137029%_))
                                                        (let ((_%e136999137034%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136996137029%_))))
                  (let ((_%lp-hd137000137037%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136999137034%_)))
                        (_%lp-tl137001137039%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136999137034%_))))
                    (_%loop136998137026%_
                     _%lp-tl137001137039%_
                     (cons _%lp-hd137000137037%_ _%rands137002137031%_))))
                (let ((_%rands137003137042%_ (reverse _%rands137002137031%_)))
                  ((lambda (_%L137045%_)
                     (for-each
                      (lambda (_%g137058137060%_)
                        (gxc#compile-e__1 _%self136986%_ _%g137058137060%_))
                      (let ((__tmp138186
                             (lambda (_%g137062137065%_ _%g137063137067%_)
                               (cons _%g137062137065%_ _%g137063137067%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138186 '() _%L137045%_))))
                   _%rands137003137042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136998137026%_
                                           _%target136995137021%_
                                           '()))
                                        (_%g136989137008%_
                                         _%g136990137011%_)))))
                              (_%g136989137008%_ _%g136990137011%_))))
                      (_%g136989137008%_ _%g136990137011%_)))))
          (_%g136988137070%_ _%stx136987%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136983%_ _%src-stx136984%_)
        (let ((__tmp138187
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136984%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136983%_ __tmp138187))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136979%_ _%src-stx136980%_ _%ctx136981%_)
        (gxc#compile-e__1
         _%ctx136981%_
         (gxc#xform-wrap-source _%stx136979%_ _%src-stx136980%_))))
    (define gxc#xform-begin%
      (lambda (_%self136934%_ _%stx136935%_)
        (let* ((_%g136937136947%_
                (lambda (_%g136938136944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136938136944%_))))
               (_%g136936136976%_
                (lambda (_%g136938136950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136938136950%_))
                      (let ((_%e136940136952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136938136950%_))))
                        (let ((_%hd136941136955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136940136952%_)))
                              (_%tl136942136957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136940136952%_))))
                          ((lambda (_%L136960%_)
                             (let ((_%forms136974%_
                                    (map (lambda (_%g136969136971%_)
                                           (gxc#compile-e__1
                                            _%self136934%_
                                            _%g136969136971%_))
                                         _%L136960%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136974%_)
                                _%stx136935%_)))
                           _%tl136942136957%_)))
                      (_%g136937136947%_ _%g136938136950%_)))))
          (_%g136936136976%_ _%stx136935%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136888%_ _%stx136889%_)
        (let* ((_%g136891136901%_
                (lambda (_%g136892136898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136892136898%_))))
               (_%g136890136931%_
                (lambda (_%g136892136904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136892136904%_))
                      (let ((_%e136894136906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136892136904%_))))
                        (let ((_%hd136895136909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136894136906%_)))
                              (_%tl136896136911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136894136906%_))))
                          ((lambda (_%L136914%_)
                             (let ((__tmp138190
                                    (lambda ()
                                      (let ((_%forms136929%_
                                             (map (lambda (_%g136924136926%_)
                                                    (gxc#compile-e__1
                                                     _%self136888%_
                                                     _%g136924136926%_))
                                                  _%L136914%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136929%_)
                                         _%stx136889%_))))
                                   (__tmp138188
                                    (let ((__tmp138189
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp138189 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138190
                                gx#current-expander-phi
                                __tmp138188)))
                           _%tl136896136911%_)))
                      (_%g136891136901%_ _%g136892136904%_)))))
          (_%g136890136931%_ _%stx136889%_))))
    (define gxc#xform-module%
      (lambda (_%self136825%_ _%stx136826%_)
        (let* ((_%g136828136842%_
                (lambda (_%g136829136839%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136829136839%_))))
               (_%g136827136885%_
                (lambda (_%g136829136845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136829136845%_))
                      (let ((_%e136832136847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136829136845%_))))
                        (let ((_%hd136833136850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136832136847%_)))
                              (_%tl136834136852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136832136847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136834136852%_))
                              (let ((_%e136835136855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136834136852%_))))
                                (let ((_%hd136836136858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136835136855%_)))
                                      (_%tl136837136860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136835136855%_))))
                                  ((lambda (_%L136863%_ _%L136864%_)
                                     (let* ((_%ctx136877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136864%_)))
                                            (_%code136879%_
                                             (##structure-ref
                                              _%ctx136877%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136882%_
                                             (let ((__tmp138191
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self136825%_
                                                       _%code136879%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp138191
                                                gx#current-expander-context
                                                _%ctx136877%_))))
                                       (##structure-set!
                                        _%ctx136877%_
                                        _%code136882%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136864%_
                                                    (cons _%code136882%_ '())))
                                        _%stx136826%_)))
                                   _%tl136837136860%_
                                   _%hd136836136858%_)))
                              (_%g136828136842%_ _%g136829136845%_))))
                      (_%g136828136842%_ _%g136829136845%_)))))
          (_%g136827136885%_ _%stx136826%_))))
    (define gxc#xform-define-values%
      (lambda (_%self136755%_ _%stx136756%_)
        (let* ((_%g136758136775%_
                (lambda (_%g136759136772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136759136772%_))))
               (_%g136757136822%_
                (lambda (_%g136759136778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136759136778%_))
                      (let ((_%e136762136780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136759136778%_))))
                        (let ((_%hd136763136783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136762136780%_)))
                              (_%tl136764136785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136762136780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136764136785%_))
                              (let ((_%e136765136788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136764136785%_))))
                                (let ((_%hd136766136791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136765136788%_)))
                                      (_%tl136767136793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136765136788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136767136793%_))
                                      (let ((_%e136768136796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136767136793%_))))
                                        (let ((_%hd136769136799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136768136796%_)))
                                              (_%tl136770136801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136768136796%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136770136801%_))
                                              ((lambda (_%L136804%_
                                                        _%L136805%_)
                                                 (let ((_%expr136820%_
                                                        (gxc#compile-e__1
                                                         _%self136755%_
                                                         _%L136804%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L136805%_
                                                                (cons _%expr136820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136756%_)))
                                               _%hd136769136799%_
                                               _%hd136766136791%_)
                                              (_%g136758136775%_
                                               _%g136759136778%_))))
                                      (_%g136758136775%_ _%g136759136778%_))))
                              (_%g136758136775%_ _%g136759136778%_))))
                      (_%g136758136775%_ _%g136759136778%_)))))
          (_%g136757136822%_ _%stx136756%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self136684%_ _%stx136685%_)
        (let* ((_%g136687136704%_
                (lambda (_%g136688136701%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136688136701%_))))
               (_%g136686136752%_
                (lambda (_%g136688136707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136688136707%_))
                      (let ((_%e136691136709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136688136707%_))))
                        (let ((_%hd136692136712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136691136709%_)))
                              (_%tl136693136714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136691136709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136693136714%_))
                              (let ((_%e136694136717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136693136714%_))))
                                (let ((_%hd136695136720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136694136717%_)))
                                      (_%tl136696136722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136694136717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136696136722%_))
                                      (let ((_%e136697136725%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136696136722%_))))
                                        (let ((_%hd136698136728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136697136725%_)))
                                              (_%tl136699136730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136697136725%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136699136730%_))
                                              ((lambda (_%L136733%_
                                                        _%L136734%_)
                                                 (let ((__tmp138194
                                                        (lambda ()
                                                          (let ((_%expr136750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self136684%_ _%L136733%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L136734%_ (cons _%expr136750%_ '())))
                     _%stx136685%_))))
               (__tmp138192
                (let ((__tmp138193
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138193 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138194
                                                    gx#current-expander-phi
                                                    __tmp138192)))
                                               _%hd136698136728%_
                                               _%hd136695136720%_)
                                              (_%g136687136704%_
                                               _%g136688136707%_))))
                                      (_%g136687136704%_ _%g136688136707%_))))
                              (_%g136687136704%_ _%g136688136707%_))))
                      (_%g136687136704%_ _%g136688136707%_)))))
          (_%g136686136752%_ _%stx136685%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self136614%_ _%stx136615%_)
        (let* ((_%g136617136634%_
                (lambda (_%g136618136631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136618136631%_))))
               (_%g136616136681%_
                (lambda (_%g136618136637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136618136637%_))
                      (let ((_%e136621136639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136618136637%_))))
                        (let ((_%hd136622136642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136621136639%_)))
                              (_%tl136623136644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136621136639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136623136644%_))
                              (let ((_%e136624136647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136623136644%_))))
                                (let ((_%hd136625136650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136624136647%_)))
                                      (_%tl136626136652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136624136647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136626136652%_))
                                      (let ((_%e136627136655%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136626136652%_))))
                                        (let ((_%hd136628136658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136627136655%_)))
                                              (_%tl136629136660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136627136655%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136629136660%_))
                                              ((lambda (_%L136663%_
                                                        _%L136664%_)
                                                 (let ((_%expr136679%_
                                                        (gxc#compile-e__1
                                                         _%self136614%_
                                                         _%L136663%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L136664%_
                                                                (cons _%expr136679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136615%_)))
                                               _%hd136628136658%_
                                               _%hd136625136650%_)
                                              (_%g136617136634%_
                                               _%g136618136637%_))))
                                      (_%g136617136634%_ _%g136618136637%_))))
                              (_%g136617136634%_ _%g136618136637%_))))
                      (_%g136617136634%_ _%g136618136637%_)))))
          (_%g136616136681%_ _%stx136615%_))))
    (define gxc#xform-lambda%
      (lambda (_%self136552%_ _%stx136553%_)
        (let* ((_%g136555136569%_
                (lambda (_%g136556136566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136556136566%_))))
               (_%g136554136611%_
                (lambda (_%g136556136572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136556136572%_))
                      (let ((_%e136559136574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136556136572%_))))
                        (let ((_%hd136560136577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136559136574%_)))
                              (_%tl136561136579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136559136574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136561136579%_))
                              (let ((_%e136562136582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136561136579%_))))
                                (let ((_%hd136563136585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136562136582%_)))
                                      (_%tl136564136587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136562136582%_))))
                                  ((lambda (_%L136590%_ _%L136591%_)
                                     (let ((__tmp138196
                                            (lambda ()
                                              (let ((_%body136609%_
                                                     (map (lambda (_%g136604136606%_)
                                                            (gxc#compile-e__1
                                                             _%self136552%_
                                                             _%g136604136606%_))
                                                          _%L136590%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L136591%_
                                                             _%body136609%_))
                                                 _%stx136553%_))))
                                           (__tmp138195
                                            (gxc#xform-let-locals
                                             _%L136591%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138196
                                        gxc#current-compile-local-env
                                        __tmp138195)))
                                   _%tl136564136587%_
                                   _%hd136563136585%_)))
                              (_%g136555136569%_ _%g136556136572%_))))
                      (_%g136555136569%_ _%g136556136572%_)))))
          (_%g136554136611%_ _%stx136553%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self136460%_ _%stx136461%_)
        (letrec ((_%clause-e136463%_
                  (lambda (_%clause136504%_)
                    (let* ((_%g136506136517%_
                            (lambda (_%g136507136514%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g136507136514%_))))
                           (_%g136505136549%_
                            (lambda (_%g136507136520%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g136507136520%_))
                                  (let ((_%e136510136522%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g136507136520%_))))
                                    (let ((_%hd136511136525%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136510136522%_)))
                                          (_%tl136512136527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136510136522%_))))
                                      ((lambda (_%L136530%_ _%L136531%_)
                                         (let ((__tmp138198
                                                (lambda ()
                                                  (let ((_%body136547%_
                                                         (map (lambda (_%g136542136544%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self136460%_
                         _%g136542136544%_))
                      _%L136530%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L136531%_
                                                          _%body136547%_))))
                                               (__tmp138197
                                                (gxc#xform-let-locals
                                                 _%L136531%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp138198
                                            gxc#current-compile-local-env
                                            __tmp138197)))
                                       _%tl136512136527%_
                                       _%hd136511136525%_)))
                                  (_%g136506136517%_ _%g136507136520%_)))))
                      (_%g136505136549%_ _%clause136504%_)))))
          (let* ((_%g136465136475%_
                  (lambda (_%g136466136472%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136466136472%_))))
                 (_%g136464136501%_
                  (lambda (_%g136466136478%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136466136478%_))
                        (let ((_%e136468136480%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136466136478%_))))
                          (let ((_%hd136469136483%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136468136480%_)))
                                (_%tl136470136485%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136468136480%_))))
                            ((lambda (_%L136488%_)
                               (let ((_%clauses136499%_
                                      (map _%clause-e136463%_ _%L136488%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses136499%_)
                                  _%stx136461%_)))
                             _%tl136470136485%_)))
                        (_%g136465136475%_ _%g136466136478%_)))))
            (_%g136464136501%_ _%stx136461%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self136214%_ _%stx136215%_)
        (let* ((_%g136217136250%_
                (lambda (_%g136218136247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136218136247%_))))
               (_%g136216136457%_
                (lambda (_%g136218136253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136218136253%_))
                      (let ((_%e136223136255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136218136253%_))))
                        (let ((_%hd136224136258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136223136255%_)))
                              (_%tl136225136260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136223136255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136225136260%_))
                              (let ((_%e136226136263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136225136260%_))))
                                (let ((_%hd136227136266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136226136263%_)))
                                      (_%tl136228136268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136226136263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136227136266%_))
                                      (let ((_g138199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136227136266%_
                                                '0))))
                                        (begin
                                          (let ((_g138200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138199_)
                                                       (##values-length
                                                        _g138199_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138200_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138200_)))
                                          (let ((_%target136229136271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138199_ 0)))
                                                (_%tl136231136273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138199_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136231136273%_))
                                                (letrec ((_%loop136232136276%_
                                                          (lambda (_%hd136230136279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136236136281%_
                           _%hd136237136283%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136230136279%_))
                        (let ((_%e136233136286%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136230136279%_))))
                          (let ((_%lp-hd136234136289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136233136286%_)))
                                (_%lp-tl136235136291%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136233136286%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136234136289%_))
                                (let ((_%e136240136294%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136234136289%_))))
                                  (let ((_%hd136241136297%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136240136294%_)))
                                        (_%tl136242136299%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136240136294%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136242136299%_))
                                        (let ((_%e136243136302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136242136299%_))))
                                          (let ((_%hd136244136305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136243136302%_)))
                                                (_%tl136245136307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136243136302%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136245136307%_))
                                                (_%loop136232136276%_
                                                 _%lp-tl136235136291%_
                                                 (cons _%hd136244136305%_
                                                       _%expr136236136281%_)
                                                 (cons _%hd136241136297%_
                                                       _%hd136237136283%_))
                                                (_%g136217136250%_
                                                 _%g136218136253%_))))
                                        (_%g136217136250%_
                                         _%g136218136253%_))))
                                (_%g136217136250%_ _%g136218136253%_))))
                        (let ((_%expr136238136310%_
                               (reverse _%expr136236136281%_))
                              (_%hd136239136312%_
                               (reverse _%hd136237136283%_)))
                          ((lambda (_%L136315%_
                                    _%L136316%_
                                    _%L136317%_
                                    _%L136318%_)
                             (let* ((_%g136337136353%_
                                     (lambda (_%g136338136350%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136338136350%_))))
                                    (_%g136336136443%_
                                     (lambda (_%g136338136356%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g136338136356%_))
                                           (let ((_g138201_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g136338136356%_
                                                     '0))))
                                             (begin
                                               (let ((_g138202_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g138201_)
                                                            (##values-length
                                                             _g138201_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g138202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g138202_)))
                                               (let ((_%target136340136358%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138201_
                                                         0)))
                                                     (_%tl136342136360%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138201_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl136342136360%_))
                                                     (letrec ((_%loop136343136363%_
                                                               (lambda (_%hd136341136366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr136347136368%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd136341136366%_))
                             (let ((_%e136344136371%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd136341136366%_))))
                               (let ((_%lp-hd136345136374%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136344136371%_)))
                                     (_%lp-tl136346136376%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136344136371%_))))
                                 (_%loop136343136363%_
                                  _%lp-tl136346136376%_
                                  (cons _%lp-hd136345136374%_
                                        _%expr136347136368%_))))
                             (let ((_%expr136348136379%_
                                    (reverse _%expr136347136368%_)))
                               ((lambda (_%L136382%_)
                                  (let ((__tmp138205
                                         (lambda ()
                                           (let* ((_%g136396136403%_
                                                   (lambda (_%g136397136400%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136397136400%_))))
                                                  (_%g136395136429%_
                                                   (lambda (_%g136397136406%_)
                                                     ((lambda (_%L136408%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136318%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136382%_
                                  _%L136317%_))
                               (let ((__tmp138206
                                      (lambda (_%g136418136422%_
                                               _%g136419136424%_
                                               _%g136420136426%_)
                                        (cons (cons _%g136419136424%_
                                                    (cons _%g136418136422%_
                                                          '()))
                                              _%g136420136426%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138206
                                  '()
                                  _%L136382%_
                                  _%L136317%_)))
                             _%L136408%_))
                 _%stx136215%_))
              _%g136397136406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136395136429%_
                                              (map (lambda (_%g136431136433%_)
                                                     (gxc#compile-e__1
                                                      _%self136214%_
                                                      _%g136431136433%_))
                                                   _%L136315%_)))))
                                        (__tmp138203
                                         (gxc#xform-let-locals
                                          (let ((__tmp138204
                                                 (lambda (_%g136435136438%_
                                                          _%g136436136440%_)
                                                   (cons _%g136435136438%_
                                                         _%g136436136440%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138204
                                             '()
                                             _%L136317%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp138205
                                     gxc#current-compile-local-env
                                     __tmp138203)))
                                _%expr136348136379%_))))))
               (_%loop136343136363%_ _%target136340136358%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136337136353%_
                                                      _%g136338136356%_)))))
                                           (_%g136337136353%_
                                            _%g136338136356%_)))))
                               (_%g136336136443%_
                                (map (lambda (_%g136445136447%_)
                                       (gxc#compile-e__1
                                        _%self136214%_
                                        _%g136445136447%_))
                                     (let ((__tmp138207
                                            (lambda (_%g136449136452%_
                                                     _%g136450136454%_)
                                              (cons _%g136449136452%_
                                                    _%g136450136454%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138207
                                        '()
                                        _%L136316%_))))))
                           _%tl136228136268%_
                           _%expr136238136310%_
                           _%hd136239136312%_
                           _%hd136224136258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136232136276%_
                                                   _%target136229136271%_
                                                   '()
                                                   '()))
                                                (_%g136217136250%_
                                                 _%g136218136253%_)))))
                                      (_%g136217136250%_ _%g136218136253%_))))
                              (_%g136217136250%_ _%g136218136253%_))))
                      (_%g136217136250%_ _%g136218136253%_)))))
          (_%g136216136457%_ _%stx136215%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135968%_ _%stx135969%_)
        (let* ((_%g135971136004%_
                (lambda (_%g135972136001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135972136001%_))))
               (_%g135970136211%_
                (lambda (_%g135972136007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135972136007%_))
                      (let ((_%e135977136009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135972136007%_))))
                        (let ((_%hd135978136012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135977136009%_)))
                              (_%tl135979136014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135977136009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135979136014%_))
                              (let ((_%e135980136017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135979136014%_))))
                                (let ((_%hd135981136020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135980136017%_)))
                                      (_%tl135982136022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135980136017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135981136020%_))
                                      (let ((_g138208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135981136020%_
                                                '0))))
                                        (begin
                                          (let ((_g138209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138208_)
                                                       (##values-length
                                                        _g138208_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138209_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138209_)))
                                          (let ((_%target135983136025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138208_ 0)))
                                                (_%tl135985136027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138208_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135985136027%_))
                                                (letrec ((_%loop135986136030%_
                                                          (lambda (_%hd135984136033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135990136035%_
                           _%hd135991136037%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135984136033%_))
                        (let ((_%e135987136040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135984136033%_))))
                          (let ((_%lp-hd135988136043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135987136040%_)))
                                (_%lp-tl135989136045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135987136040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135988136043%_))
                                (let ((_%e135994136048%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135988136043%_))))
                                  (let ((_%hd135995136051%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135994136048%_)))
                                        (_%tl135996136053%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135994136048%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135996136053%_))
                                        (let ((_%e135997136056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135996136053%_))))
                                          (let ((_%hd135998136059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135997136056%_)))
                                                (_%tl135999136061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135997136056%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135999136061%_))
                                                (_%loop135986136030%_
                                                 _%lp-tl135989136045%_
                                                 (cons _%hd135998136059%_
                                                       _%expr135990136035%_)
                                                 (cons _%hd135995136051%_
                                                       _%hd135991136037%_))
                                                (_%g135971136004%_
                                                 _%g135972136007%_))))
                                        (_%g135971136004%_
                                         _%g135972136007%_))))
                                (_%g135971136004%_ _%g135972136007%_))))
                        (let ((_%expr135992136064%_
                               (reverse _%expr135990136035%_))
                              (_%hd135993136066%_
                               (reverse _%hd135991136037%_)))
                          ((lambda (_%L136069%_
                                    _%L136070%_
                                    _%L136071%_
                                    _%L136072%_)
                             (let ((__tmp138212
                                    (lambda ()
                                      (let* ((_%g136092136108%_
                                              (lambda (_%g136093136105%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g136093136105%_))))
                                             (_%g136091136190%_
                                              (lambda (_%g136093136111%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g136093136111%_))
                                                    (let ((_g138213_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g136093136111%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g138214_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g138213_)
                             (##values-length _g138213_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g138214_ 2)))
                      (error "Context expects 2 values" _g138214_)))
                (let ((_%target136095136113%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138213_ 0)))
                      (_%tl136097136115%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138213_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136097136115%_))
                      (letrec ((_%loop136098136118%_
                                (lambda (_%hd136096136121%_
                                         _%expr136102136123%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd136096136121%_))
                                      (let ((_%e136099136126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd136096136121%_))))
                                        (let ((_%lp-hd136100136129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136099136126%_)))
                                              (_%lp-tl136101136131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136099136126%_))))
                                          (_%loop136098136118%_
                                           _%lp-tl136101136131%_
                                           (cons _%lp-hd136100136129%_
                                                 _%expr136102136123%_))))
                                      (let ((_%expr136103136134%_
                                             (reverse _%expr136102136123%_)))
                                        ((lambda (_%L136137%_)
                                           (let* ((_%g136151136158%_
                                                   (lambda (_%g136152136155%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136152136155%_))))
                                                  (_%g136150136183%_
                                                   (lambda (_%g136152136161%_)
                                                     ((lambda (_%L136163%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136072%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136137%_
                                  _%L136071%_))
                               (let ((__tmp138215
                                      (lambda (_%g136172136176%_
                                               _%g136173136178%_
                                               _%g136174136180%_)
                                        (cons (cons _%g136173136178%_
                                                    (cons _%g136172136176%_
                                                          '()))
                                              _%g136174136180%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138215
                                  '()
                                  _%L136137%_
                                  _%L136071%_)))
                             _%L136163%_))
                 _%stx135969%_))
              _%g136152136161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136150136183%_
                                              (map (lambda (_%g136185136187%_)
                                                     (gxc#compile-e__1
                                                      _%self135968%_
                                                      _%g136185136187%_))
                                                   _%L136069%_))))
                                         _%expr136103136134%_))))))
                        (_%loop136098136118%_ _%target136095136113%_ '()))
                      (_%g136092136108%_ _%g136093136111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136092136108%_
                                                     _%g136093136111%_)))))
                                        (_%g136091136190%_
                                         (map (lambda (_%g136192136194%_)
                                                (gxc#compile-e__1
                                                 _%self135968%_
                                                 _%g136192136194%_))
                                              (let ((__tmp138216
                                                     (lambda (_%g136196136199%_
                                                              _%g136197136201%_)
                                                       (cons _%g136196136199%_
                                                             _%g136197136201%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp138216
                                                 '()
                                                 _%L136070%_)))))))
                                   (__tmp138210
                                    (gxc#xform-let-locals
                                     (let ((__tmp138211
                                            (lambda (_%g136203136206%_
                                                     _%g136204136208%_)
                                              (cons _%g136203136206%_
                                                    _%g136204136208%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138211
                                        '()
                                        _%L136071%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138212
                                gxc#current-compile-local-env
                                __tmp138210)))
                           _%tl135982136022%_
                           _%expr135992136064%_
                           _%hd135993136066%_
                           _%hd135978136012%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135986136030%_
                                                   _%target135983136025%_
                                                   '()
                                                   '()))
                                                (_%g135971136004%_
                                                 _%g135972136007%_)))))
                                      (_%g135971136004%_ _%g135972136007%_))))
                              (_%g135971136004%_ _%g135972136007%_))))
                      (_%g135971136004%_ _%g135972136007%_)))))
          (_%g135970136211%_ _%stx135969%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings135835%_)
        (letrec ((_%flatten135837%_
                  (lambda (_%maybe-lst135895%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135895%_))
                        (cons _%maybe-lst135895%_ '())
                        (let _%loop135897%_ ((_%rest135899%_
                                              _%maybe-lst135895%_)
                                             (_%result135900%_ '()))
                          (let* ((_%__stx138104138105%_ _%rest135899%_)
                                 (_%g135904135916%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138104138105%_)))))
                            (let ((_%__kont138106138107%_
                                   (lambda (_%L135954%_ _%L135955%_)
                                     (_%loop135897%_
                                      _%L135954%_
                                      (let ((__tmp138217
                                             (_%flatten135837%_ _%L135955%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135900%_
                                         __tmp138217)))))
                                  (_%__kont138108138109%_
                                   (lambda (_%L135928%_)
                                     (cons _%L135928%_ _%result135900%_)))
                                  (_%__kont138110138111%_
                                   (lambda () _%result135900%_)))
                              (let ((_%g135902135941%_
                                     (lambda ()
                                       (let ((_%L135928%_
                                              _%__stx138104138105%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135928%_))
                                             (_%__kont138108138109%_
                                              _%L135928%_)
                                             (_%__kont138110138111%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138104138105%_))
                                    (let ((_%e135908135946%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138104138105%_))))
                                      (let ((_%tl135910135951%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135908135946%_)))
                                            (_%hd135909135949%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135908135946%_))))
                                        (_%__kont138106138107%_
                                         _%tl135910135951%_
                                         _%hd135909135949%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135902135941%_)))))))))))
          (let _%loop135839%_ ((_%rest135841%_
                                (_%flatten135837%_ _%bindings135835%_))
                               (_%locals135842%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135843135854%_ _%rest135841%_)
                   (_%E135847135858%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135843135854%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135850135883%_
                     (lambda (_%rest135880%_ _%id135881%_)
                       (_%loop135839%_
                        _%rest135880%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135881%_))
                              _%locals135842%_))))
                    (_%K135849135872%_
                     (lambda (_%id135870%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135870%_))
                             _%locals135842%_)))
                    (_%K135848135863%_ (lambda () _%locals135842%_)))
                (let ((_%try-match135845135877%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135843135854%_))
                             (let ((_%id135875%_ _%rest135843135854%_))
                               (_%K135849135872%_ _%id135875%_))
                             (_%K135848135863%_)))))
                  (if (pair? _%rest135843135854%_)
                      (let ((_%tl135852135888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135843135854%_)))
                            (_%hd135851135886%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135843135854%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135851135886%_))
                            (let ((_%id135891%_ _%hd135851135886%_)
                                  (_%rest135893%_ _%tl135852135888%_))
                              (_%K135850135883%_ _%rest135893%_ _%id135891%_))
                            (_%K135848135863%_)))
                      (_%try-match135845135877%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self135787%_ _%stx135788%_)
        (let* ((_%g135790135801%_
                (lambda (_%g135791135798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135791135798%_))))
               (_%g135789135832%_
                (lambda (_%g135791135804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135791135804%_))
                      (let ((_%e135794135806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135791135804%_))))
                        (let ((_%hd135795135809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135794135806%_)))
                              (_%tl135796135811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135794135806%_))))
                          ((lambda (_%L135814%_ _%L135815%_)
                             (let ((_%rands135830%_
                                    (map (lambda (_%g135825135827%_)
                                           (gxc#compile-e__1
                                            _%self135787%_
                                            _%g135825135827%_))
                                         _%L135814%_)))
                               (gxc#xform-wrap-source
                                (cons _%L135815%_ _%rands135830%_)
                                _%stx135788%_)))
                           _%tl135796135811%_
                           _%hd135795135809%_)))
                      (_%g135790135801%_ _%g135791135804%_)))))
          (_%g135789135832%_ _%stx135788%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self135717%_ _%stx135718%_)
        (let* ((_%g135720135737%_
                (lambda (_%g135721135734%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135721135734%_))))
               (_%g135719135784%_
                (lambda (_%g135721135740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135721135740%_))
                      (let ((_%e135724135742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135721135740%_))))
                        (let ((_%hd135725135745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135724135742%_)))
                              (_%tl135726135747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135724135742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135726135747%_))
                              (let ((_%e135727135750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135726135747%_))))
                                (let ((_%hd135728135753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135727135750%_)))
                                      (_%tl135729135755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135727135750%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135729135755%_))
                                      (let ((_%e135730135758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135729135755%_))))
                                        (let ((_%hd135731135761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135730135758%_)))
                                              (_%tl135732135763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135730135758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135732135763%_))
                                              ((lambda (_%L135766%_
                                                        _%L135767%_)
                                                 (let ((_%expr135782%_
                                                        (gxc#compile-e__1
                                                         _%self135717%_
                                                         _%L135766%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L135767%_
                                                                (cons _%expr135782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135718%_)))
                                               _%hd135731135761%_
                                               _%hd135728135753%_)
                                              (_%g135720135737%_
                                               _%g135721135740%_))))
                                      (_%g135720135737%_ _%g135721135740%_))))
                              (_%g135720135737%_ _%g135721135740%_))))
                      (_%g135720135737%_ _%g135721135740%_)))))
          (_%g135719135784%_ _%stx135718%_))))))
