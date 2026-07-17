(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1784471385)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx203914%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204136
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx203914%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204136))
            '#!void)
        (let* ((_%self203916%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e203918%_
                (let ((__tmp204137 (gxc#stx-car-e _%stx203914%_)))
                  (declare (not safe))
                  (method-ref _%self203916%_ __tmp204137))))
          (if _%$e203918%_
              (let ()
                (declare (not safe))
                (let ((_%$e203924%_ (gx#stx-source _%stx203914%_)))
                  (if _%$e203924%_
                      (call-with-parameters__1
                       (lambda () (_%$e203918%_ _%self203916%_ _%stx203914%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e203924%_)
                             (let ((_%$e203931%_
                                    (gxc#current-compile-context)))
                               (if _%$e203931%_ _%$e203931%_ '()))))
                      (_%$e203918%_ _%self203916%_ _%stx203914%_))))
              (let ((__tmp204139 (gxc#stx-car-e _%stx203914%_))
                    (__tmp204138
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203914%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203916%_
                       __tmp204139
                       __tmp204138))))))
    (define gxc#compile-e__1
      (lambda (_%self203936%_ _%stx203937%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204140
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx203937%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204140))
            '#!void)
        (let ((_%$e203939%_
               (let ((__tmp204141 (gxc#stx-car-e _%stx203937%_)))
                 (declare (not safe))
                 (method-ref _%self203936%_ __tmp204141))))
          (if _%$e203939%_
              (let ()
                (declare (not safe))
                (let ((_%$e203945%_ (gx#stx-source _%stx203937%_)))
                  (if _%$e203945%_
                      (call-with-parameters__1
                       (lambda () (_%$e203939%_ _%self203936%_ _%stx203937%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e203945%_)
                             (let ((_%$e203952%_
                                    (gxc#current-compile-context)))
                               (if _%$e203952%_ _%$e203952%_ '()))))
                      (_%$e203939%_ _%self203936%_ _%stx203937%_))))
              (let ((__tmp204143 (gxc#stx-car-e _%stx203937%_))
                    (__tmp204142
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203937%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203936%_
                       __tmp204143
                       __tmp204142))))))
    (define gxc#compile-e
      (lambda _g204144_
        (let ((_g204145_ (let () (declare (not safe)) (##length _g204144_))))
          (cond ((let () (declare (not safe)) (##fx= _g204145_ 1))
                 (apply gxc#compile-e__0 _g204144_))
                ((let () (declare (not safe)) (##fx= _g204145_ 2))
                 (apply gxc#compile-e__1 _g204144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g204144_))))))
    (define gxc#stx-car-e
      (lambda (_%stx203912%_)
        (let ((__tmp204146
               (car (let () (declare (not safe)) (gx#stx-e _%stx203912%_)))))
          (declare (not safe))
          (gx#stx-e __tmp204146))))
    (define gxc#void-method (lambda (_%self203909%_ _%stx203910%_) '#!void))
    (define gxc#false-method (lambda (_%self203906%_ _%stx203907%_) '#f))
    (define gxc#true-method (lambda (_%self203903%_ _%stx203904%_) '#t))
    (define gxc#identity-method
      (lambda (_%self203900%_ _%stx203901%_) _%stx203901%_))
    (define gxc#::void-expression::t
      (let ((__tmp204147 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp204147
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args203897%_
        (apply make-instance gxc#::void-expression::t _%$args203897%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp204148
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
        (__make-atomic-promise __tmp204148)))
    (define gxc#::void-special-form::t
      (let ((__tmp204149 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp204149
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args203893%_
        (apply make-instance gxc#::void-special-form::t _%$args203893%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp204150
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
                  '%#define-runtime
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204150)))
    (define gxc#::void::t
      (let ((__tmp204151
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp204151 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args203889%_
        (apply make-instance gxc#::void::t _%$args203889%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp204152
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204152)))
    (define gxc#::false-expression::t
      (let ((__tmp204153 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp204153
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args203885%_
        (apply make-instance gxc#::false-expression::t _%$args203885%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp204154
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
        (__make-atomic-promise __tmp204154)))
    (define gxc#::false-special-form::t
      (let ((__tmp204155 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp204155
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args203881%_
        (apply make-instance gxc#::false-special-form::t _%$args203881%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp204156
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
                  '%#define-runtime
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204156)))
    (define gxc#::false::t
      (let ((__tmp204157
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp204157 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args203877%_
        (apply make-instance gxc#::false::t _%$args203877%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp204158
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204158)))
    (define gxc#::identity-expression::t
      (let ((__tmp204159 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp204159
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args203873%_
        (apply make-instance gxc#::identity-expression::t _%$args203873%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp204160
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
        (__make-atomic-promise __tmp204160)))
    (define gxc#::identity-special-form::t
      (let ((__tmp204161 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp204161
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args203869%_
        (apply make-instance gxc#::identity-special-form::t _%$args203869%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp204162
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
                  '%#define-runtime
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp204162)))
    (define gxc#::identity::t
      (let ((__tmp204163
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp204163
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args203865%_
        (apply make-instance gxc#::identity::t _%$args203865%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp204164
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204164)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp204165 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp204165
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args203861%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args203861%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp204166
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
        (__make-atomic-promise __tmp204166)))
    (define gxc#::basic-xform::t
      (let ((__tmp204167
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp204167
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args203857%_
        (apply make-instance gxc#::basic-xform::t _%$args203857%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp204168
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
        (__make-atomic-promise __tmp204168)))
    (define gxc#apply-begin%
      (lambda (_%self203813%_ _%stx203814%_)
        (let* ((_%$%g203816203826%_
                (lambda (_%$%g203817203823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203817203823%_))))
               (_%$%g203815203853%_
                (lambda (_%$%g203817203829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203817203829%_))
                      (let ((_%$%e203819203831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203817203829%_))))
                        (let ((_%$%hd203820203834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203819203831%_)))
                              (_%$%tl203821203836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203819203831%_))))
                          (for-each
                           (lambda (_%$%g203848203850%_)
                             (gxc#compile-e__1
                              _%self203813%_
                              _%$%g203848203850%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl203821203836%_)))))
                      (_%$%g203816203826%_ _%$%g203817203829%_)))))
          (_%$%g203815203853%_ _%stx203814%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self203774%_ _%stx203775%_)
        (let* ((_%$%g203777203787%_
                (lambda (_%$%g203778203784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203778203784%_))))
               (_%$%g203776203810%_
                (lambda (_%$%g203778203790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203778203790%_))
                      (let ((_%$%e203780203792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203778203790%_))))
                        (let ((_%$%hd203781203795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203780203792%_)))
                              (_%$%tl203782203797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203780203792%_))))
                          (gxc#compile-e__1
                           _%self203774%_
                           (last _%$%tl203782203797%_))))
                      (_%$%g203777203787%_ _%$%g203778203790%_)))))
          (_%$%g203776203810%_ _%stx203775%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self203770%_ _%stx203771%_)
        (let ((__tmp204171
               (lambda () (gxc#apply-begin% _%self203770%_ _%stx203771%_)))
              (__tmp204169
               (let ((__tmp204170
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp204170 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204171
           gx#current-expander-phi
           __tmp204169))))
    (define gxc#apply-module%
      (lambda (_%self203709%_ _%stx203710%_)
        (let* ((_%$%g203712203726%_
                (lambda (_%$%g203713203723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203713203723%_))))
               (_%$%g203711203767%_
                (lambda (_%$%g203713203729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203713203729%_))
                      (let ((_%$%e203716203731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203713203729%_))))
                        (let ((_%$%hd203717203734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203716203731%_)))
                              (_%$%tl203718203736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203716203731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203718203736%_))
                              (let ((_%$%e203719203739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203718203736%_))))
                                (let ((_%$%hd203720203742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203719203739%_)))
                                      (_%$%tl203721203744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203719203739%_))))
                                  (let* ((_%ctx203761%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd203720203742%_)))
                                         (_%ctx-stx203763%_
                                          (##structure-ref
                                           _%ctx203761%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp204172
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self203709%_
                                             _%ctx-stx203763%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204172
                                     gx#current-expander-context
                                     _%ctx203761%_))))
                              (_%$%g203712203726%_ _%$%g203713203729%_))))
                      (_%$%g203712203726%_ _%$%g203713203729%_)))))
          (_%$%g203711203767%_ _%stx203710%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self203641%_ _%stx203642%_)
        (let* ((_%$%g203644203661%_
                (lambda (_%$%g203645203658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203645203658%_))))
               (_%$%g203643203706%_
                (lambda (_%$%g203645203664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203645203664%_))
                      (let ((_%$%e203648203666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203645203664%_))))
                        (let ((_%$%hd203649203669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203648203666%_)))
                              (_%$%tl203650203671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203648203666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203650203671%_))
                              (let ((_%$%e203651203674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203650203671%_))))
                                (let ((_%$%hd203652203677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203651203674%_)))
                                      (_%$%tl203653203679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203651203674%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203653203679%_))
                                      (let ((_%$%e203654203682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203653203679%_))))
                                        (let ((_%$%hd203655203685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203654203682%_)))
                                              (_%$%tl203656203687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203654203682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203656203687%_))
                                              (gxc#compile-e__1
                                               _%self203641%_
                                               _%$%hd203655203685%_)
                                              (_%$%g203644203661%_
                                               _%$%g203645203664%_))))
                                      (_%$%g203644203661%_
                                       _%$%g203645203664%_))))
                              (_%$%g203644203661%_ _%$%g203645203664%_))))
                      (_%$%g203644203661%_ _%$%g203645203664%_)))))
          (_%$%g203643203706%_ _%stx203642%_))))
    (define gxc#apply-define-values%
      (lambda (_%self203573%_ _%stx203574%_)
        (let* ((_%$%g203576203593%_
                (lambda (_%$%g203577203590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203577203590%_))))
               (_%$%g203575203638%_
                (lambda (_%$%g203577203596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203577203596%_))
                      (let ((_%$%e203580203598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203577203596%_))))
                        (let ((_%$%hd203581203601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203580203598%_)))
                              (_%$%tl203582203603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203580203598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203582203603%_))
                              (let ((_%$%e203583203606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203582203603%_))))
                                (let ((_%$%hd203584203609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203583203606%_)))
                                      (_%$%tl203585203611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203583203606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203585203611%_))
                                      (let ((_%$%e203586203614%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203585203611%_))))
                                        (let ((_%$%hd203587203617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203586203614%_)))
                                              (_%$%tl203588203619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203586203614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203588203619%_))
                                              (gxc#compile-e__1
                                               _%self203573%_
                                               _%$%hd203587203617%_)
                                              (_%$%g203576203593%_
                                               _%$%g203577203596%_))))
                                      (_%$%g203576203593%_
                                       _%$%g203577203596%_))))
                              (_%$%g203576203593%_ _%$%g203577203596%_))))
                      (_%$%g203576203593%_ _%$%g203577203596%_)))))
          (_%$%g203575203638%_ _%stx203574%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self203504%_ _%stx203505%_)
        (let* ((_%$%g203507203524%_
                (lambda (_%$%g203508203521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203508203521%_))))
               (_%$%g203506203570%_
                (lambda (_%$%g203508203527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203508203527%_))
                      (let ((_%$%e203511203529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203508203527%_))))
                        (let ((_%$%hd203512203532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203511203529%_)))
                              (_%$%tl203513203534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203511203529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203513203534%_))
                              (let ((_%$%e203514203537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203513203534%_))))
                                (let ((_%$%hd203515203540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203514203537%_)))
                                      (_%$%tl203516203542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203514203537%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203516203542%_))
                                      (let ((_%$%e203517203545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203516203542%_))))
                                        (let ((_%$%hd203518203548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203517203545%_)))
                                              (_%$%tl203519203550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203517203545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203519203550%_))
                                              (let ((__tmp204175
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self203504%_
                                                        _%$%hd203518203548%_)))
                                                    (__tmp204173
                                                     (let ((__tmp204174
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204174
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204175
                                                 gx#current-expander-phi
                                                 __tmp204173))
                                              (_%$%g203507203524%_
                                               _%$%g203508203527%_))))
                                      (_%$%g203507203524%_
                                       _%$%g203508203527%_))))
                              (_%$%g203507203524%_ _%$%g203508203527%_))))
                      (_%$%g203507203524%_ _%$%g203508203527%_)))))
          (_%$%g203506203570%_ _%stx203505%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self203436%_ _%stx203437%_)
        (let* ((_%$%g203439203456%_
                (lambda (_%$%g203440203453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203440203453%_))))
               (_%$%g203438203501%_
                (lambda (_%$%g203440203459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203440203459%_))
                      (let ((_%$%e203443203461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203440203459%_))))
                        (let ((_%$%hd203444203464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203443203461%_)))
                              (_%$%tl203445203466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203443203461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203445203466%_))
                              (let ((_%$%e203446203469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203445203466%_))))
                                (let ((_%$%hd203447203472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203446203469%_)))
                                      (_%$%tl203448203474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203446203469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203448203474%_))
                                      (let ((_%$%e203449203477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203448203474%_))))
                                        (let ((_%$%hd203450203480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203449203477%_)))
                                              (_%$%tl203451203482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203449203477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203451203482%_))
                                              (gxc#compile-e__1
                                               _%self203436%_
                                               _%$%hd203450203480%_)
                                              (_%$%g203439203456%_
                                               _%$%g203440203459%_))))
                                      (_%$%g203439203456%_
                                       _%$%g203440203459%_))))
                              (_%$%g203439203456%_ _%$%g203440203459%_))))
                      (_%$%g203439203456%_ _%$%g203440203459%_)))))
          (_%$%g203438203501%_ _%stx203437%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self203322%_ _%stx203323%_)
        (let* ((_%$%g203325203353%_
                (lambda (_%$%g203326203350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203326203350%_))))
               (_%$%g203324203433%_
                (lambda (_%$%g203326203356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203326203356%_))
                      (let ((_%$%e203329203358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203326203356%_))))
                        (let ((_%$%hd203330203361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203329203358%_)))
                              (_%$%tl203331203363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203329203358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203331203363%_))
                              (let ((_g204176_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203331203363%_
                                        '0))))
                                (begin
                                  (let ((_g204177_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204176_)
                                               (##values-length _g204176_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204177_ 2)))
                                        (error "Context expects 2 values"
                                               _g204177_)))
                                  (let ((_%$%target203332203366%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204176_ 0)))
                                        (_%$%tl203334203368%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204176_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203334203368%_))
                                        (letrec ((_%$%loop203335203371%_
                                                  (lambda (_%$%hd203333203374%_
                                                           _%$%body203339203376%_
                                                           _%$%hd203340203377%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203333203374%_))
                                                        (let ((_%$%e203336203379%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203333203374%_))))
                  (let ((_%$%lp-hd203337203382%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203336203379%_)))
                        (_%$%lp-tl203338203384%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203336203379%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd203337203382%_))
                        (let ((_%$%e203343203387%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd203337203382%_))))
                          (let ((_%$%hd203344203390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203343203387%_)))
                                (_%$%tl203345203392%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203343203387%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203345203392%_))
                                (let ((_%$%e203346203395%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203345203392%_))))
                                  (let ((_%$%hd203347203398%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203346203395%_)))
                                        (_%$%tl203348203400%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203346203395%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203348203400%_))
                                        (_%$%loop203335203371%_
                                         _%$%lp-tl203338203384%_
                                         (cons _%$%hd203347203398%_
                                               _%$%body203339203376%_)
                                         (cons _%$%hd203344203390%_
                                               _%$%hd203340203377%_))
                                        (_%$%g203325203353%_
                                         _%$%g203326203356%_))))
                                (_%$%g203325203353%_ _%$%g203326203356%_))))
                        (_%$%g203325203353%_ _%$%g203326203356%_))))
                (let ((_%$%body203341203403%_ (reverse _%$%body203339203376%_))
                      (_%$%hd203342203404%_ (reverse _%$%hd203340203377%_)))
                  (for-each
                   (lambda (_%$%g203421203423%_)
                     (gxc#compile-e__1 _%self203322%_ _%$%g203421203423%_))
                   (let ((__tmp204178
                          (lambda (_%$%g203425203428%_ _%$%g203426203430%_)
                            (cons _%$%g203425203428%_ _%$%g203426203430%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204178 '() _%$%body203341203403%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203335203371%_
                                           _%$%target203332203366%_
                                           '()
                                           '()))
                                        (_%$%g203325203353%_
                                         _%$%g203326203356%_)))))
                              (_%$%g203325203353%_ _%$%g203326203356%_))))
                      (_%$%g203325203353%_ _%$%g203326203356%_)))))
          (_%$%g203324203433%_ _%stx203323%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self203179%_ _%stx203180%_)
        (let* ((_%$%g203182203217%_
                (lambda (_%$%g203183203214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203183203214%_))))
               (_%$%g203181203319%_
                (lambda (_%$%g203183203220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203183203220%_))
                      (let ((_%$%e203187203222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203183203220%_))))
                        (let ((_%$%hd203188203225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203187203222%_)))
                              (_%$%tl203189203227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203187203222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203189203227%_))
                              (let ((_%$%e203190203230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203189203227%_))))
                                (let ((_%$%hd203191203233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203190203230%_)))
                                      (_%$%tl203192203235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203190203230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd203191203233%_))
                                      (let ((_g204179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd203191203233%_
                                                '0))))
                                        (begin
                                          (let ((_g204180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204179_)
                                                       (##values-length
                                                        _g204179_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204180_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204180_)))
                                          (let ((_%$%target203193203238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204179_ 0)))
                                                (_%$%tl203195203240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204179_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203195203240%_))
                                                (letrec ((_%$%loop203196203243%_
                                                          (lambda (_%$%hd203194203246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr203200203248%_
                           _%$%hd203201203249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd203194203246%_))
                        (let ((_%$%e203197203251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd203194203246%_))))
                          (let ((_%$%lp-hd203198203254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203197203251%_)))
                                (_%$%lp-tl203199203256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203197203251%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd203198203254%_))
                                (let ((_%$%e203204203259%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd203198203254%_))))
                                  (let ((_%$%hd203205203262%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203204203259%_)))
                                        (_%$%tl203206203264%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203204203259%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203206203264%_))
                                        (let ((_%$%e203207203267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203206203264%_))))
                                          (let ((_%$%hd203208203270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203207203267%_)))
                                                (_%$%tl203209203272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203207203267%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203209203272%_))
                                                (_%$%loop203196203243%_
                                                 _%$%lp-tl203199203256%_
                                                 (cons _%$%hd203208203270%_
                                                       _%$%expr203200203248%_)
                                                 (cons _%$%hd203205203262%_
                                                       _%$%hd203201203249%_))
                                                (_%$%g203182203217%_
                                                 _%$%g203183203220%_))))
                                        (_%$%g203182203217%_
                                         _%$%g203183203220%_))))
                                (_%$%g203182203217%_ _%$%g203183203220%_))))
                        (let ((_%$%expr203202203275%_
                               (reverse _%$%expr203200203248%_))
                              (_%$%hd203203203276%_
                               (reverse _%$%hd203201203249%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203192203235%_))
                              (let ((_%$%e203210203278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203192203235%_))))
                                (let ((_%$%hd203211203281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203210203278%_)))
                                      (_%$%tl203212203283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203210203278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203212203283%_))
                                      (for-each
                                       (lambda (_%$%g203307203309%_)
                                         (gxc#compile-e__1
                                          _%self203179%_
                                          _%$%g203307203309%_))
                                       (let ((__tmp204182
                                              (lambda (_%$%g203311203314%_
                                                       _%$%g203312203316%_)
                                                (cons _%$%g203311203314%_
                                                      _%$%g203312203316%_)))
                                             (__tmp204181
                                              (cons _%$%hd203211203281%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp204182
                                          __tmp204181
                                          _%$%expr203202203275%_)))
                                      (_%$%g203182203217%_
                                       _%$%g203183203220%_))))
                              (_%$%g203182203217%_ _%$%g203183203220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop203196203243%_
                                                   _%$%target203193203238%_
                                                   '()
                                                   '()))
                                                (_%$%g203182203217%_
                                                 _%$%g203183203220%_)))))
                                      (_%$%g203182203217%_
                                       _%$%g203183203220%_))))
                              (_%$%g203182203217%_ _%$%g203183203220%_))))
                      (_%$%g203182203217%_ _%$%g203183203220%_)))))
          (_%$%g203181203319%_ _%stx203180%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self203124%_ _%stx203125%_)
        (let* ((_%$%g203127203141%_
                (lambda (_%$%g203128203138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203128203138%_))))
               (_%$%g203126203176%_
                (lambda (_%$%g203128203144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203128203144%_))
                      (let ((_%$%e203131203146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203128203144%_))))
                        (let ((_%$%hd203132203149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203131203146%_)))
                              (_%$%tl203133203151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203131203146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203133203151%_))
                              (let ((_%$%e203134203154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203133203151%_))))
                                (let ((_%$%hd203135203157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203134203154%_)))
                                      (_%$%tl203136203159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203134203154%_))))
                                  (gxc#compile-e__1
                                   _%self203124%_
                                   (last _%$%tl203136203159%_))))
                              (_%$%g203127203141%_ _%$%g203128203144%_))))
                      (_%$%g203127203141%_ _%$%g203128203144%_)))))
          (_%$%g203126203176%_ _%stx203125%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self203056%_ _%stx203057%_)
        (let* ((_%$%g203059203076%_
                (lambda (_%$%g203060203073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203060203073%_))))
               (_%$%g203058203121%_
                (lambda (_%$%g203060203079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203060203079%_))
                      (let ((_%$%e203063203081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203060203079%_))))
                        (let ((_%$%hd203064203084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203063203081%_)))
                              (_%$%tl203065203086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203063203081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203065203086%_))
                              (let ((_%$%e203066203089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203065203086%_))))
                                (let ((_%$%hd203067203092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203066203089%_)))
                                      (_%$%tl203068203094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203066203089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203068203094%_))
                                      (let ((_%$%e203069203097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203068203094%_))))
                                        (let ((_%$%hd203070203100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203069203097%_)))
                                              (_%$%tl203071203102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203069203097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203071203102%_))
                                              (gxc#compile-e__1
                                               _%self203056%_
                                               _%$%hd203070203100%_)
                                              (_%$%g203059203076%_
                                               _%$%g203060203079%_))))
                                      (_%$%g203059203076%_
                                       _%$%g203060203079%_))))
                              (_%$%g203059203076%_ _%$%g203060203079%_))))
                      (_%$%g203059203076%_ _%$%g203060203079%_)))))
          (_%$%g203058203121%_ _%stx203057%_))))
    (define gxc#apply-operands
      (lambda (_%self202971%_ _%stx202972%_)
        (let* ((_%$%g202974202993%_
                (lambda (_%$%g202975202990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202975202990%_))))
               (_%$%g202973203053%_
                (lambda (_%$%g202975202996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202975202996%_))
                      (let ((_%$%e202977202998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202975202996%_))))
                        (let ((_%$%hd202978203001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202977202998%_)))
                              (_%$%tl202979203003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202977202998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl202979203003%_))
                              (let ((_g204183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl202979203003%_
                                        '0))))
                                (begin
                                  (let ((_g204184_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204183_)
                                               (##values-length _g204183_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204184_ 2)))
                                        (error "Context expects 2 values"
                                               _g204184_)))
                                  (let ((_%$%target202980203006%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204183_ 0)))
                                        (_%$%tl202982203008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204183_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl202982203008%_))
                                        (letrec ((_%$%loop202983203011%_
                                                  (lambda (_%$%hd202981203014%_
                                                           _%$%rands202987203016%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd202981203014%_))
                                                        (let ((_%$%e202984203018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd202981203014%_))))
                  (let ((_%$%lp-hd202985203021%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202984203018%_)))
                        (_%$%lp-tl202986203023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202984203018%_))))
                    (_%$%loop202983203011%_
                     _%$%lp-tl202986203023%_
                     (cons _%$%lp-hd202985203021%_ _%$%rands202987203016%_))))
                (let ((_%$%rands202988203026%_
                       (reverse _%$%rands202987203016%_)))
                  (for-each
                   (lambda (_%$%g203041203043%_)
                     (gxc#compile-e__1 _%self202971%_ _%$%g203041203043%_))
                   (let ((__tmp204185
                          (lambda (_%$%g203045203048%_ _%$%g203046203050%_)
                            (cons _%$%g203045203048%_ _%$%g203046203050%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204185 '() _%$%rands202988203026%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop202983203011%_
                                           _%$%target202980203006%_
                                           '()))
                                        (_%$%g202974202993%_
                                         _%$%g202975202996%_)))))
                              (_%$%g202974202993%_ _%$%g202975202996%_))))
                      (_%$%g202974202993%_ _%$%g202975202996%_)))))
          (_%$%g202973203053%_ _%stx202972%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx202968%_ _%src-stx202969%_)
        (let ((__tmp204186
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx202969%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx202968%_ __tmp204186))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx202964%_ _%src-stx202965%_ _%ctx202966%_)
        (gxc#compile-e__1
         _%ctx202966%_
         (gxc#xform-wrap-source _%stx202964%_ _%src-stx202965%_))))
    (define gxc#xform-begin%
      (lambda (_%self202919%_ _%stx202920%_)
        (let* ((_%$%g202922202932%_
                (lambda (_%$%g202923202929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202923202929%_))))
               (_%$%g202921202961%_
                (lambda (_%$%g202923202935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202923202935%_))
                      (let ((_%$%e202925202937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202923202935%_))))
                        (let ((_%$%hd202926202940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202925202937%_)))
                              (_%$%tl202927202942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202925202937%_))))
                          (let ((_%forms202959%_
                                 (map (lambda (_%$%g202954202956%_)
                                        (gxc#compile-e__1
                                         _%self202919%_
                                         _%$%g202954202956%_))
                                      _%$%tl202927202942%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms202959%_)
                             _%stx202920%_))))
                      (_%$%g202922202932%_ _%$%g202923202935%_)))))
          (_%$%g202921202961%_ _%stx202920%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self202873%_ _%stx202874%_)
        (let* ((_%$%g202876202886%_
                (lambda (_%$%g202877202883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202877202883%_))))
               (_%$%g202875202916%_
                (lambda (_%$%g202877202889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202877202889%_))
                      (let ((_%$%e202879202891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202877202889%_))))
                        (let ((_%$%hd202880202894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202879202891%_)))
                              (_%$%tl202881202896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202879202891%_))))
                          (let ((__tmp204189
                                 (lambda ()
                                   (let ((_%forms202914%_
                                          (map (lambda (_%$%g202909202911%_)
                                                 (gxc#compile-e__1
                                                  _%self202873%_
                                                  _%$%g202909202911%_))
                                               _%$%tl202881202896%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms202914%_)
                                      _%stx202874%_))))
                                (__tmp204187
                                 (let ((__tmp204188
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp204188 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204189
                             gx#current-expander-phi
                             __tmp204187))))
                      (_%$%g202876202886%_ _%$%g202877202889%_)))))
          (_%$%g202875202916%_ _%stx202874%_))))
    (define gxc#xform-module%
      (lambda (_%self202810%_ _%stx202811%_)
        (let* ((_%$%g202813202827%_
                (lambda (_%$%g202814202824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202814202824%_))))
               (_%$%g202812202870%_
                (lambda (_%$%g202814202830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202814202830%_))
                      (let ((_%$%e202817202832%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202814202830%_))))
                        (let ((_%$%hd202818202835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202817202832%_)))
                              (_%$%tl202819202837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202817202832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202819202837%_))
                              (let ((_%$%e202820202840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202819202837%_))))
                                (let ((_%$%hd202821202843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202820202840%_)))
                                      (_%$%tl202822202845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202820202840%_))))
                                  (let* ((_%ctx202862%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd202821202843%_)))
                                         (_%code202864%_
                                          (##structure-ref
                                           _%ctx202862%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code202867%_
                                          (let ((__tmp204190
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self202810%_
                                                    _%code202864%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp204190
                                             gx#current-expander-context
                                             _%ctx202862%_))))
                                    (##structure-set!
                                     _%ctx202862%_
                                     _%code202867%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd202821202843%_
                                                 (cons _%code202867%_ '())))
                                     _%stx202811%_))))
                              (_%$%g202813202827%_ _%$%g202814202830%_))))
                      (_%$%g202813202827%_ _%$%g202814202830%_)))))
          (_%$%g202812202870%_ _%stx202811%_))))
    (define gxc#xform-define-values%
      (lambda (_%self202740%_ _%stx202741%_)
        (let* ((_%$%g202743202760%_
                (lambda (_%$%g202744202757%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202744202757%_))))
               (_%$%g202742202807%_
                (lambda (_%$%g202744202763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202744202763%_))
                      (let ((_%$%e202747202765%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202744202763%_))))
                        (let ((_%$%hd202748202768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202747202765%_)))
                              (_%$%tl202749202770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202747202765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202749202770%_))
                              (let ((_%$%e202750202773%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202749202770%_))))
                                (let ((_%$%hd202751202776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202750202773%_)))
                                      (_%$%tl202752202778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202750202773%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202752202778%_))
                                      (let ((_%$%e202753202781%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202752202778%_))))
                                        (let ((_%$%hd202754202784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202753202781%_)))
                                              (_%$%tl202755202786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202753202781%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202755202786%_))
                                              (let ((_%expr202805%_
                                                     (gxc#compile-e__1
                                                      _%self202740%_
                                                      _%$%hd202754202784%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd202751202776%_
                                                             (cons _%expr202805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202741%_))
                                              (_%$%g202743202760%_
                                               _%$%g202744202763%_))))
                                      (_%$%g202743202760%_
                                       _%$%g202744202763%_))))
                              (_%$%g202743202760%_ _%$%g202744202763%_))))
                      (_%$%g202743202760%_ _%$%g202744202763%_)))))
          (_%$%g202742202807%_ _%stx202741%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self202669%_ _%stx202670%_)
        (let* ((_%$%g202672202689%_
                (lambda (_%$%g202673202686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202673202686%_))))
               (_%$%g202671202737%_
                (lambda (_%$%g202673202692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202673202692%_))
                      (let ((_%$%e202676202694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202673202692%_))))
                        (let ((_%$%hd202677202697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202676202694%_)))
                              (_%$%tl202678202699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202676202694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202678202699%_))
                              (let ((_%$%e202679202702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202678202699%_))))
                                (let ((_%$%hd202680202705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202679202702%_)))
                                      (_%$%tl202681202707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202679202702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202681202707%_))
                                      (let ((_%$%e202682202710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202681202707%_))))
                                        (let ((_%$%hd202683202713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202682202710%_)))
                                              (_%$%tl202684202715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202682202710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202684202715%_))
                                              (let ((__tmp204193
                                                     (lambda ()
                                                       (let ((_%expr202735%_
                                                              (gxc#compile-e__1
                                                               _%self202669%_
                                                               _%$%hd202683202713%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd202680202705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr202735%_ '())))
                  _%stx202670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp204191
                                                     (let ((__tmp204192
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204192
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204193
                                                 gx#current-expander-phi
                                                 __tmp204191))
                                              (_%$%g202672202689%_
                                               _%$%g202673202692%_))))
                                      (_%$%g202672202689%_
                                       _%$%g202673202692%_))))
                              (_%$%g202672202689%_ _%$%g202673202692%_))))
                      (_%$%g202672202689%_ _%$%g202673202692%_)))))
          (_%$%g202671202737%_ _%stx202670%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self202599%_ _%stx202600%_)
        (let* ((_%$%g202602202619%_
                (lambda (_%$%g202603202616%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202603202616%_))))
               (_%$%g202601202666%_
                (lambda (_%$%g202603202622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202603202622%_))
                      (let ((_%$%e202606202624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202603202622%_))))
                        (let ((_%$%hd202607202627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202606202624%_)))
                              (_%$%tl202608202629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202606202624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202608202629%_))
                              (let ((_%$%e202609202632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202608202629%_))))
                                (let ((_%$%hd202610202635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202609202632%_)))
                                      (_%$%tl202611202637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202609202632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202611202637%_))
                                      (let ((_%$%e202612202640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202611202637%_))))
                                        (let ((_%$%hd202613202643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202612202640%_)))
                                              (_%$%tl202614202645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202612202640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202614202645%_))
                                              (let ((_%expr202664%_
                                                     (gxc#compile-e__1
                                                      _%self202599%_
                                                      _%$%hd202613202643%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd202610202635%_
                                                             (cons _%expr202664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202600%_))
                                              (_%$%g202602202619%_
                                               _%$%g202603202622%_))))
                                      (_%$%g202602202619%_
                                       _%$%g202603202622%_))))
                              (_%$%g202602202619%_ _%$%g202603202622%_))))
                      (_%$%g202602202619%_ _%$%g202603202622%_)))))
          (_%$%g202601202666%_ _%stx202600%_))))
    (define gxc#xform-lambda%
      (lambda (_%self202537%_ _%stx202538%_)
        (let* ((_%$%g202540202554%_
                (lambda (_%$%g202541202551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202541202551%_))))
               (_%$%g202539202596%_
                (lambda (_%$%g202541202557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202541202557%_))
                      (let ((_%$%e202544202559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202541202557%_))))
                        (let ((_%$%hd202545202562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202544202559%_)))
                              (_%$%tl202546202564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202544202559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202546202564%_))
                              (let ((_%$%e202547202567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202546202564%_))))
                                (let ((_%$%hd202548202570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202547202567%_)))
                                      (_%$%tl202549202572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202547202567%_))))
                                  (let ((__tmp204195
                                         (lambda ()
                                           (let ((_%body202594%_
                                                  (map (lambda (_%$%g202589202591%_)
                                                         (gxc#compile-e__1
                                                          _%self202537%_
                                                          _%$%g202589202591%_))
                                                       _%$%tl202549202572%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd202548202570%_
                                                          _%body202594%_))
                                              _%stx202538%_))))
                                        (__tmp204194
                                         (gxc#xform-let-locals
                                          _%$%hd202548202570%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204195
                                     gxc#current-compile-local-env
                                     __tmp204194))))
                              (_%$%g202540202554%_ _%$%g202541202557%_))))
                      (_%$%g202540202554%_ _%$%g202541202557%_)))))
          (_%$%g202539202596%_ _%stx202538%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self202445%_ _%stx202446%_)
        (letrec ((_%clause-e202448%_
                  (lambda (_%clause202489%_)
                    (let* ((_%$%g202491202502%_
                            (lambda (_%$%g202492202499%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g202492202499%_))))
                           (_%$%g202490202534%_
                            (lambda (_%$%g202492202505%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g202492202505%_))
                                  (let ((_%$%e202495202507%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g202492202505%_))))
                                    (let ((_%$%hd202496202510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202495202507%_)))
                                          (_%$%tl202497202512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202495202507%_))))
                                      (let ((__tmp204197
                                             (lambda ()
                                               (let ((_%body202532%_
                                                      (map (lambda (_%$%g202527202529%_)
                                                             (gxc#compile-e__1
                                                              _%self202445%_
                                                              _%$%g202527202529%_))
                                                           _%$%tl202497202512%_)))
                                                 (cons _%$%hd202496202510%_
                                                       _%body202532%_))))
                                            (__tmp204196
                                             (gxc#xform-let-locals
                                              _%$%hd202496202510%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp204197
                                         gxc#current-compile-local-env
                                         __tmp204196))))
                                  (_%$%g202491202502%_ _%$%g202492202505%_)))))
                      (_%$%g202490202534%_ _%clause202489%_)))))
          (let* ((_%$%g202450202460%_
                  (lambda (_%$%g202451202457%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202451202457%_))))
                 (_%$%g202449202486%_
                  (lambda (_%$%g202451202463%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202451202463%_))
                        (let ((_%$%e202453202465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202451202463%_))))
                          (let ((_%$%hd202454202468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202453202465%_)))
                                (_%$%tl202455202470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202453202465%_))))
                            (let ((_%clauses202484%_
                                   (map _%clause-e202448%_
                                        _%$%tl202455202470%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses202484%_)
                               _%stx202446%_))))
                        (_%$%g202450202460%_ _%$%g202451202463%_)))))
            (_%$%g202449202486%_ _%stx202446%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self202205%_ _%stx202206%_)
        (let* ((_%$%g202208202241%_
                (lambda (_%$%g202209202238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202209202238%_))))
               (_%$%g202207202442%_
                (lambda (_%$%g202209202244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202209202244%_))
                      (let ((_%$%e202214202246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202209202244%_))))
                        (let ((_%$%hd202215202249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202214202246%_)))
                              (_%$%tl202216202251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202214202246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202216202251%_))
                              (let ((_%$%e202217202254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202216202251%_))))
                                (let ((_%$%hd202218202257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202217202254%_)))
                                      (_%$%tl202219202259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202217202254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202218202257%_))
                                      (let ((_g204198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202218202257%_
                                                '0))))
                                        (begin
                                          (let ((_g204199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204198_)
                                                       (##values-length
                                                        _g204198_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204199_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204199_)))
                                          (let ((_%$%target202220202262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204198_ 0)))
                                                (_%$%tl202222202264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204198_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202222202264%_))
                                                (letrec ((_%$%loop202223202267%_
                                                          (lambda (_%$%hd202221202270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202227202272%_
                           _%$%hd202228202273%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202221202270%_))
                        (let ((_%$%e202224202275%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202221202270%_))))
                          (let ((_%$%lp-hd202225202278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202224202275%_)))
                                (_%$%lp-tl202226202280%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202224202275%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202225202278%_))
                                (let ((_%$%e202231202283%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202225202278%_))))
                                  (let ((_%$%hd202232202286%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202231202283%_)))
                                        (_%$%tl202233202288%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202231202283%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202233202288%_))
                                        (let ((_%$%e202234202291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202233202288%_))))
                                          (let ((_%$%hd202235202294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202234202291%_)))
                                                (_%$%tl202236202296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202234202291%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202236202296%_))
                                                (_%$%loop202223202267%_
                                                 _%$%lp-tl202226202280%_
                                                 (cons _%$%hd202235202294%_
                                                       _%$%expr202227202272%_)
                                                 (cons _%$%hd202232202286%_
                                                       _%$%hd202228202273%_))
                                                (_%$%g202208202241%_
                                                 _%$%g202209202244%_))))
                                        (_%$%g202208202241%_
                                         _%$%g202209202244%_))))
                                (_%$%g202208202241%_ _%$%g202209202244%_))))
                        (let ((_%$%expr202229202299%_
                               (reverse _%$%expr202227202272%_))
                              (_%$%hd202230202300%_
                               (reverse _%$%hd202228202273%_)))
                          (let* ((_%$%g202324202340%_
                                  (lambda (_%$%g202325202337%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g202325202337%_))))
                                 (_%$%g202323202428%_
                                  (lambda (_%$%g202325202343%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g202325202343%_))
                                        (let ((_g204200_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g202325202343%_
                                                  '0))))
                                          (begin
                                            (let ((_g204201_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g204200_)
                                                         (##values-length
                                                          _g204200_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g204201_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g204201_)))
                                            (let ((_%$%target202327202345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204200_
                                                      0)))
                                                  (_%$%tl202329202347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204200_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl202329202347%_))
                                                  (letrec ((_%$%loop202330202350%_
                                                            (lambda (_%$%hd202328202353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr202334202355%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd202328202353%_))
                          (let ((_%$%e202331202357%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd202328202353%_))))
                            (let ((_%$%lp-hd202332202360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202331202357%_)))
                                  (_%$%lp-tl202333202362%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202331202357%_))))
                              (_%$%loop202330202350%_
                               _%$%lp-tl202333202362%_
                               (cons _%$%lp-hd202332202360%_
                                     _%$%expr202334202355%_))))
                          (let ((_%$%expr202335202365%_
                                 (reverse _%$%expr202334202355%_)))
                            (let ((__tmp204204
                                   (lambda ()
                                     (let* ((_%$%g202381202388%_
                                             (lambda (_%$%g202382202385%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g202382202385%_))))
                                            (_%$%g202380202414%_
                                             (lambda (_%$%g202382202391%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd202215202249%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr202335202365%_
                         _%$%hd202230202300%_))
                      (let ((__tmp204205
                             (lambda (_%$%g202403202407%_
                                      _%$%g202404202409%_
                                      _%$%g202405202411%_)
                               (cons (cons _%$%g202404202409%_
                                           (cons _%$%g202403202407%_ '()))
                                     _%$%g202405202411%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp204205
                         '()
                         _%$%expr202335202365%_
                         _%$%hd202230202300%_)))
                    _%$%g202382202391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202206%_))))
                                       (_%$%g202380202414%_
                                        (map (lambda (_%$%g202416202418%_)
                                               (gxc#compile-e__1
                                                _%self202205%_
                                                _%$%g202416202418%_))
                                             _%$%tl202219202259%_)))))
                                  (__tmp204202
                                   (gxc#xform-let-locals
                                    (let ((__tmp204203
                                           (lambda (_%$%g202420202423%_
                                                    _%$%g202421202425%_)
                                             (cons _%$%g202420202423%_
                                                   _%$%g202421202425%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp204203
                                       '()
                                       _%$%hd202230202300%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp204204
                               gxc#current-compile-local-env
                               __tmp204202)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop202330202350%_
                                                     _%$%target202327202345%_
                                                     '()))
                                                  (_%$%g202324202340%_
                                                   _%$%g202325202343%_)))))
                                        (_%$%g202324202340%_
                                         _%$%g202325202343%_)))))
                            (_%$%g202323202428%_
                             (map (lambda (_%$%g202430202432%_)
                                    (gxc#compile-e__1
                                     _%self202205%_
                                     _%$%g202430202432%_))
                                  (let ((__tmp204206
                                         (lambda (_%$%g202434202437%_
                                                  _%$%g202435202439%_)
                                           (cons _%$%g202434202437%_
                                                 _%$%g202435202439%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204206
                                     '()
                                     _%$%expr202229202299%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202223202267%_
                                                   _%$%target202220202262%_
                                                   '()
                                                   '()))
                                                (_%$%g202208202241%_
                                                 _%$%g202209202244%_)))))
                                      (_%$%g202208202241%_
                                       _%$%g202209202244%_))))
                              (_%$%g202208202241%_ _%$%g202209202244%_))))
                      (_%$%g202208202241%_ _%$%g202209202244%_)))))
          (_%$%g202207202442%_ _%stx202206%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self201965%_ _%stx201966%_)
        (let* ((_%$%g201968202001%_
                (lambda (_%$%g201969201998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201969201998%_))))
               (_%$%g201967202202%_
                (lambda (_%$%g201969202004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201969202004%_))
                      (let ((_%$%e201974202006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201969202004%_))))
                        (let ((_%$%hd201975202009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201974202006%_)))
                              (_%$%tl201976202011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201974202006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201976202011%_))
                              (let ((_%$%e201977202014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201976202011%_))))
                                (let ((_%$%hd201978202017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201977202014%_)))
                                      (_%$%tl201979202019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201977202014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd201978202017%_))
                                      (let ((_g204207_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd201978202017%_
                                                '0))))
                                        (begin
                                          (let ((_g204208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204207_)
                                                       (##values-length
                                                        _g204207_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204208_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204208_)))
                                          (let ((_%$%target201980202022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204207_ 0)))
                                                (_%$%tl201982202024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204207_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201982202024%_))
                                                (letrec ((_%$%loop201983202027%_
                                                          (lambda (_%$%hd201981202030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr201987202032%_
                           _%$%hd201988202033%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd201981202030%_))
                        (let ((_%$%e201984202035%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd201981202030%_))))
                          (let ((_%$%lp-hd201985202038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201984202035%_)))
                                (_%$%lp-tl201986202040%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201984202035%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd201985202038%_))
                                (let ((_%$%e201991202043%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd201985202038%_))))
                                  (let ((_%$%hd201992202046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201991202043%_)))
                                        (_%$%tl201993202048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201991202043%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl201993202048%_))
                                        (let ((_%$%e201994202051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl201993202048%_))))
                                          (let ((_%$%hd201995202054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201994202051%_)))
                                                (_%$%tl201996202056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201994202051%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201996202056%_))
                                                (_%$%loop201983202027%_
                                                 _%$%lp-tl201986202040%_
                                                 (cons _%$%hd201995202054%_
                                                       _%$%expr201987202032%_)
                                                 (cons _%$%hd201992202046%_
                                                       _%$%hd201988202033%_))
                                                (_%$%g201968202001%_
                                                 _%$%g201969202004%_))))
                                        (_%$%g201968202001%_
                                         _%$%g201969202004%_))))
                                (_%$%g201968202001%_ _%$%g201969202004%_))))
                        (let ((_%$%expr201989202059%_
                               (reverse _%$%expr201987202032%_))
                              (_%$%hd201990202060%_
                               (reverse _%$%hd201988202033%_)))
                          (let ((__tmp204211
                                 (lambda ()
                                   (let* ((_%$%g202085202101%_
                                           (lambda (_%$%g202086202098%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202086202098%_))))
                                          (_%$%g202084202181%_
                                           (lambda (_%$%g202086202104%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g202086202104%_))
                                                 (let ((_g204212_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g202086202104%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g204213_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g204212_)
                          (##values-length _g204212_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g204213_ 2)))
                   (error "Context expects 2 values" _g204213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target202088202106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204212_
                                                               0)))
                                                           (_%$%tl202090202108%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204212_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl202090202108%_))
                                                           (letrec ((_%$%loop202091202111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd202089202114%_
                                      _%$%expr202095202116%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd202089202114%_))
                                   (let ((_%$%e202092202118%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd202089202114%_))))
                                     (let ((_%$%lp-hd202093202121%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e202092202118%_)))
                                           (_%$%lp-tl202094202123%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e202092202118%_))))
                                       (_%$%loop202091202111%_
                                        _%$%lp-tl202094202123%_
                                        (cons _%$%lp-hd202093202121%_
                                              _%$%expr202095202116%_))))
                                   (let* ((_%$%expr202096202126%_
                                           (reverse _%$%expr202095202116%_))
                                          (_%$%g202142202149%_
                                           (lambda (_%$%g202143202146%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202143202146%_))))
                                          (_%$%g202141202174%_
                                           (lambda (_%$%g202143202152%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd201975202009%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr202096202126%_
                                                               _%$%hd201990202060%_))
                                                            (let ((__tmp204214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g202163202167%_
                                    _%$%g202164202169%_
                                    _%$%g202165202171%_)
                             (cons (cons _%$%g202164202169%_
                                         (cons _%$%g202163202167%_ '()))
                                   _%$%g202165202171%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp204214
                       '()
                       _%$%expr202096202126%_
                       _%$%hd201990202060%_)))
                  _%$%g202143202152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx201966%_))))
                                     (_%$%g202141202174%_
                                      (map (lambda (_%$%g202176202178%_)
                                             (gxc#compile-e__1
                                              _%self201965%_
                                              _%$%g202176202178%_))
                                           _%$%tl201979202019%_)))))))
                     (_%$%loop202091202111%_ _%$%target202088202106%_ '()))
                   (_%$%g202085202101%_ _%$%g202086202104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g202085202101%_
                                                  _%$%g202086202104%_)))))
                                     (_%$%g202084202181%_
                                      (map (lambda (_%$%g202183202185%_)
                                             (gxc#compile-e__1
                                              _%self201965%_
                                              _%$%g202183202185%_))
                                           (let ((__tmp204215
                                                  (lambda (_%$%g202187202190%_
                                                           _%$%g202188202192%_)
                                                    (cons _%$%g202187202190%_
                                                          _%$%g202188202192%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp204215
                                              '()
                                              _%$%expr201989202059%_)))))))
                                (__tmp204209
                                 (gxc#xform-let-locals
                                  (let ((__tmp204210
                                         (lambda (_%$%g202194202197%_
                                                  _%$%g202195202199%_)
                                           (cons _%$%g202194202197%_
                                                 _%$%g202195202199%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204210
                                     '()
                                     _%$%hd201990202060%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204211
                             gxc#current-compile-local-env
                             __tmp204209)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop201983202027%_
                                                   _%$%target201980202022%_
                                                   '()
                                                   '()))
                                                (_%$%g201968202001%_
                                                 _%$%g201969202004%_)))))
                                      (_%$%g201968202001%_
                                       _%$%g201969202004%_))))
                              (_%$%g201968202001%_ _%$%g201969202004%_))))
                      (_%$%g201968202001%_ _%$%g201969202004%_)))))
          (_%$%g201967202202%_ _%stx201966%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings201832%_)
        (letrec ((_%flatten201834%_
                  (lambda (_%maybe-lst201892%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst201892%_))
                        (cons _%maybe-lst201892%_ '())
                        (let _%loop201894%_ ((_%rest201896%_
                                              _%maybe-lst201892%_)
                                             (_%result201897%_ '()))
                          (let* ((_%__stx204101204102%_ _%rest201896%_)
                                 (_%$%g201901201913%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx204101204102%_)))))
                            (let ((_%__kont204103204104%_
                                   (lambda (_%$%g201903201951%_
                                            _%$%g201904201952%_)
                                     (_%loop201894%_
                                      _%$%g201903201951%_
                                      (let ((__tmp204216
                                             (_%flatten201834%_
                                              _%$%g201904201952%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result201897%_
                                         __tmp204216)))))
                                  (_%__kont204105204106%_
                                   (lambda (_%$%g201908201925%_)
                                     (cons _%$%g201908201925%_
                                           _%result201897%_)))
                                  (_%__kont204107204108%_
                                   (lambda () _%result201897%_)))
                              (let ((_%$%g201899201938%_
                                     (lambda ()
                                       (let ((_%$%g201908201925%_
                                              _%__stx204101204102%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g201908201925%_))
                                             (_%__kont204105204106%_
                                              _%$%g201908201925%_)
                                             (_%__kont204107204108%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx204101204102%_))
                                    (let ((_%$%e201905201943%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx204101204102%_))))
                                      (let ((_%$%tl201907201948%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e201905201943%_)))
                                            (_%$%hd201906201946%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e201905201943%_))))
                                        (_%__kont204103204104%_
                                         _%$%tl201907201948%_
                                         _%$%hd201906201946%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g201899201938%_)))))))))))
          (let _%loop201836%_ ((_%rest201838%_
                                (_%flatten201834%_ _%bindings201832%_))
                               (_%locals201839%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest201840201851%_ _%rest201838%_)
                   (_%$%E201844201855%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest201840201851%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K201847201880%_
                     (lambda (_%rest201877%_ _%id201878%_)
                       (_%loop201836%_
                        _%rest201877%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id201878%_))
                              _%locals201839%_))))
                    (_%$%K201846201869%_
                     (lambda (_%id201867%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id201867%_))
                             _%locals201839%_)))
                    (_%$%K201845201860%_ (lambda () _%locals201839%_)))
                (let ((_%$%try-match201842201874%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest201840201851%_))
                             (let ((_%id201872%_ _%$%rest201840201851%_))
                               (_%$%K201846201869%_ _%id201872%_))
                             (_%$%K201845201860%_)))))
                  (if (pair? _%$%rest201840201851%_)
                      (let ((_%$%tl201849201885%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest201840201851%_)))
                            (_%$%hd201848201883%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest201840201851%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd201848201883%_))
                            (let ((_%id201888%_ _%$%hd201848201883%_)
                                  (_%rest201890%_ _%$%tl201849201885%_))
                              (_%$%K201847201880%_
                               _%rest201890%_
                               _%id201888%_))
                            (_%$%K201845201860%_)))
                      (_%$%try-match201842201874%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self201784%_ _%stx201785%_)
        (let* ((_%$%g201787201798%_
                (lambda (_%$%g201788201795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201788201795%_))))
               (_%$%g201786201829%_
                (lambda (_%$%g201788201801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201788201801%_))
                      (let ((_%$%e201791201803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201788201801%_))))
                        (let ((_%$%hd201792201806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201791201803%_)))
                              (_%$%tl201793201808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201791201803%_))))
                          (let ((_%rands201827%_
                                 (map (lambda (_%$%g201822201824%_)
                                        (gxc#compile-e__1
                                         _%self201784%_
                                         _%$%g201822201824%_))
                                      _%$%tl201793201808%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd201792201806%_ _%rands201827%_)
                             _%stx201785%_))))
                      (_%$%g201787201798%_ _%$%g201788201801%_)))))
          (_%$%g201786201829%_ _%stx201785%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self201714%_ _%stx201715%_)
        (let* ((_%$%g201717201734%_
                (lambda (_%$%g201718201731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201718201731%_))))
               (_%$%g201716201781%_
                (lambda (_%$%g201718201737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201718201737%_))
                      (let ((_%$%e201721201739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201718201737%_))))
                        (let ((_%$%hd201722201742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201721201739%_)))
                              (_%$%tl201723201744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201721201739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201723201744%_))
                              (let ((_%$%e201724201747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201723201744%_))))
                                (let ((_%$%hd201725201750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201724201747%_)))
                                      (_%$%tl201726201752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201724201747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201726201752%_))
                                      (let ((_%$%e201727201755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201726201752%_))))
                                        (let ((_%$%hd201728201758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201727201755%_)))
                                              (_%$%tl201729201760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201727201755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201729201760%_))
                                              (let ((_%expr201779%_
                                                     (gxc#compile-e__1
                                                      _%self201714%_
                                                      _%$%hd201728201758%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd201725201750%_
                                                             (cons _%expr201779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx201715%_))
                                              (_%$%g201717201734%_
                                               _%$%g201718201737%_))))
                                      (_%$%g201717201734%_
                                       _%$%g201718201737%_))))
                              (_%$%g201717201734%_ _%$%g201718201737%_))))
                      (_%$%g201717201734%_ _%$%g201718201737%_)))))
          (_%$%g201716201781%_ _%stx201715%_))))))
