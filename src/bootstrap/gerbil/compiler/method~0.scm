(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1784279016)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx203781%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204003
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx203781%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204003))
            '#!void)
        (let* ((_%self203783%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e203785%_
                (let ((__tmp204004 (gxc#stx-car-e _%stx203781%_)))
                  (declare (not safe))
                  (method-ref _%self203783%_ __tmp204004))))
          (if _%$e203785%_
              (let ()
                (declare (not safe))
                (let ((_%$e203791%_ (gx#stx-source _%stx203781%_)))
                  (if _%$e203791%_
                      (call-with-parameters__1
                       (lambda () (_%$e203785%_ _%self203783%_ _%stx203781%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e203791%_)
                             (let ((_%$e203798%_
                                    (gxc#current-compile-context)))
                               (if _%$e203798%_ _%$e203798%_ '()))))
                      (_%$e203785%_ _%self203783%_ _%stx203781%_))))
              (let ((__tmp204006 (gxc#stx-car-e _%stx203781%_))
                    (__tmp204005
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203781%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203783%_
                       __tmp204006
                       __tmp204005))))))
    (define gxc#compile-e__1
      (lambda (_%self203803%_ _%stx203804%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp204007
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx203804%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp204007))
            '#!void)
        (let ((_%$e203806%_
               (let ((__tmp204008 (gxc#stx-car-e _%stx203804%_)))
                 (declare (not safe))
                 (method-ref _%self203803%_ __tmp204008))))
          (if _%$e203806%_
              (let ()
                (declare (not safe))
                (let ((_%$e203812%_ (gx#stx-source _%stx203804%_)))
                  (if _%$e203812%_
                      (call-with-parameters__1
                       (lambda () (_%$e203806%_ _%self203803%_ _%stx203804%_))
                       gxc#current-compile-context
                       (cons (list '@ _%$e203812%_)
                             (let ((_%$e203819%_
                                    (gxc#current-compile-context)))
                               (if _%$e203819%_ _%$e203819%_ '()))))
                      (_%$e203806%_ _%self203803%_ _%stx203804%_))))
              (let ((__tmp204010 (gxc#stx-car-e _%stx203804%_))
                    (__tmp204009
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx203804%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self203803%_
                       __tmp204010
                       __tmp204009))))))
    (define gxc#compile-e
      (lambda _g204011_
        (let ((_g204012_ (let () (declare (not safe)) (##length _g204011_))))
          (cond ((let () (declare (not safe)) (##fx= _g204012_ 1))
                 (apply gxc#compile-e__0 _g204011_))
                ((let () (declare (not safe)) (##fx= _g204012_ 2))
                 (apply gxc#compile-e__1 _g204011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g204011_))))))
    (define gxc#stx-car-e
      (lambda (_%stx203779%_)
        (let ((__tmp204013
               (car (let () (declare (not safe)) (gx#stx-e _%stx203779%_)))))
          (declare (not safe))
          (gx#stx-e __tmp204013))))
    (define gxc#void-method (lambda (_%self203776%_ _%stx203777%_) '#!void))
    (define gxc#false-method (lambda (_%self203773%_ _%stx203774%_) '#f))
    (define gxc#true-method (lambda (_%self203770%_ _%stx203771%_) '#t))
    (define gxc#identity-method
      (lambda (_%self203767%_ _%stx203768%_) _%stx203768%_))
    (define gxc#::void-expression::t
      (let ((__tmp204014 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp204014
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args203764%_
        (apply make-instance gxc#::void-expression::t _%$args203764%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp204015
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
        (__make-atomic-promise __tmp204015)))
    (define gxc#::void-special-form::t
      (let ((__tmp204016 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp204016
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args203760%_
        (apply make-instance gxc#::void-special-form::t _%$args203760%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp204017
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
        (__make-atomic-promise __tmp204017)))
    (define gxc#::void::t
      (let ((__tmp204018
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp204018 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args203756%_
        (apply make-instance gxc#::void::t _%$args203756%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp204019
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204019)))
    (define gxc#::false-expression::t
      (let ((__tmp204020 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp204020
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args203752%_
        (apply make-instance gxc#::false-expression::t _%$args203752%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp204021
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
        (__make-atomic-promise __tmp204021)))
    (define gxc#::false-special-form::t
      (let ((__tmp204022 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp204022
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args203748%_
        (apply make-instance gxc#::false-special-form::t _%$args203748%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp204023
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
        (__make-atomic-promise __tmp204023)))
    (define gxc#::false::t
      (let ((__tmp204024
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp204024 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args203744%_
        (apply make-instance gxc#::false::t _%$args203744%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp204025
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204025)))
    (define gxc#::identity-expression::t
      (let ((__tmp204026 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp204026
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args203740%_
        (apply make-instance gxc#::identity-expression::t _%$args203740%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp204027
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
        (__make-atomic-promise __tmp204027)))
    (define gxc#::identity-special-form::t
      (let ((__tmp204028 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp204028
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args203736%_
        (apply make-instance gxc#::identity-special-form::t _%$args203736%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp204029
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
        (__make-atomic-promise __tmp204029)))
    (define gxc#::identity::t
      (let ((__tmp204030
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp204030
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args203732%_
        (apply make-instance gxc#::identity::t _%$args203732%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp204031
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp204031)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp204032 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp204032
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args203728%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args203728%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp204033
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
        (__make-atomic-promise __tmp204033)))
    (define gxc#::basic-xform::t
      (let ((__tmp204034
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp204034
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args203724%_
        (apply make-instance gxc#::basic-xform::t _%$args203724%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp204035
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
        (__make-atomic-promise __tmp204035)))
    (define gxc#apply-begin%
      (lambda (_%self203680%_ _%stx203681%_)
        (let* ((_%$%g203683203693%_
                (lambda (_%$%g203684203690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203684203690%_))))
               (_%$%g203682203720%_
                (lambda (_%$%g203684203696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203684203696%_))
                      (let ((_%$%e203686203698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203684203696%_))))
                        (let ((_%$%hd203687203701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203686203698%_)))
                              (_%$%tl203688203703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203686203698%_))))
                          (for-each
                           (lambda (_%$%g203715203717%_)
                             (gxc#compile-e__1
                              _%self203680%_
                              _%$%g203715203717%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl203688203703%_)))))
                      (_%$%g203683203693%_ _%$%g203684203696%_)))))
          (_%$%g203682203720%_ _%stx203681%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self203641%_ _%stx203642%_)
        (let* ((_%$%g203644203654%_
                (lambda (_%$%g203645203651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203645203651%_))))
               (_%$%g203643203677%_
                (lambda (_%$%g203645203657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203645203657%_))
                      (let ((_%$%e203647203659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203645203657%_))))
                        (let ((_%$%hd203648203662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203647203659%_)))
                              (_%$%tl203649203664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203647203659%_))))
                          (gxc#compile-e__1
                           _%self203641%_
                           (last _%$%tl203649203664%_))))
                      (_%$%g203644203654%_ _%$%g203645203657%_)))))
          (_%$%g203643203677%_ _%stx203642%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self203637%_ _%stx203638%_)
        (let ((__tmp204038
               (lambda () (gxc#apply-begin% _%self203637%_ _%stx203638%_)))
              (__tmp204036
               (let ((__tmp204037
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp204037 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp204038
           gx#current-expander-phi
           __tmp204036))))
    (define gxc#apply-module%
      (lambda (_%self203576%_ _%stx203577%_)
        (let* ((_%$%g203579203593%_
                (lambda (_%$%g203580203590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203580203590%_))))
               (_%$%g203578203634%_
                (lambda (_%$%g203580203596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203580203596%_))
                      (let ((_%$%e203583203598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203580203596%_))))
                        (let ((_%$%hd203584203601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203583203598%_)))
                              (_%$%tl203585203603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203583203598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203585203603%_))
                              (let ((_%$%e203586203606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203585203603%_))))
                                (let ((_%$%hd203587203609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203586203606%_)))
                                      (_%$%tl203588203611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203586203606%_))))
                                  (let* ((_%ctx203628%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd203587203609%_)))
                                         (_%ctx-stx203630%_
                                          (##structure-ref
                                           _%ctx203628%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp204039
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self203576%_
                                             _%ctx-stx203630%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204039
                                     gx#current-expander-context
                                     _%ctx203628%_))))
                              (_%$%g203579203593%_ _%$%g203580203596%_))))
                      (_%$%g203579203593%_ _%$%g203580203596%_)))))
          (_%$%g203578203634%_ _%stx203577%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self203508%_ _%stx203509%_)
        (let* ((_%$%g203511203528%_
                (lambda (_%$%g203512203525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203512203525%_))))
               (_%$%g203510203573%_
                (lambda (_%$%g203512203531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203512203531%_))
                      (let ((_%$%e203515203533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203512203531%_))))
                        (let ((_%$%hd203516203536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203515203533%_)))
                              (_%$%tl203517203538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203515203533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203517203538%_))
                              (let ((_%$%e203518203541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203517203538%_))))
                                (let ((_%$%hd203519203544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203518203541%_)))
                                      (_%$%tl203520203546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203518203541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203520203546%_))
                                      (let ((_%$%e203521203549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203520203546%_))))
                                        (let ((_%$%hd203522203552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203521203549%_)))
                                              (_%$%tl203523203554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203521203549%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203523203554%_))
                                              (gxc#compile-e__1
                                               _%self203508%_
                                               _%$%hd203522203552%_)
                                              (_%$%g203511203528%_
                                               _%$%g203512203531%_))))
                                      (_%$%g203511203528%_
                                       _%$%g203512203531%_))))
                              (_%$%g203511203528%_ _%$%g203512203531%_))))
                      (_%$%g203511203528%_ _%$%g203512203531%_)))))
          (_%$%g203510203573%_ _%stx203509%_))))
    (define gxc#apply-define-values%
      (lambda (_%self203440%_ _%stx203441%_)
        (let* ((_%$%g203443203460%_
                (lambda (_%$%g203444203457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203444203457%_))))
               (_%$%g203442203505%_
                (lambda (_%$%g203444203463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203444203463%_))
                      (let ((_%$%e203447203465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203444203463%_))))
                        (let ((_%$%hd203448203468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203447203465%_)))
                              (_%$%tl203449203470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203447203465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203449203470%_))
                              (let ((_%$%e203450203473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203449203470%_))))
                                (let ((_%$%hd203451203476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203450203473%_)))
                                      (_%$%tl203452203478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203450203473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203452203478%_))
                                      (let ((_%$%e203453203481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203452203478%_))))
                                        (let ((_%$%hd203454203484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203453203481%_)))
                                              (_%$%tl203455203486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203453203481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203455203486%_))
                                              (gxc#compile-e__1
                                               _%self203440%_
                                               _%$%hd203454203484%_)
                                              (_%$%g203443203460%_
                                               _%$%g203444203463%_))))
                                      (_%$%g203443203460%_
                                       _%$%g203444203463%_))))
                              (_%$%g203443203460%_ _%$%g203444203463%_))))
                      (_%$%g203443203460%_ _%$%g203444203463%_)))))
          (_%$%g203442203505%_ _%stx203441%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self203371%_ _%stx203372%_)
        (let* ((_%$%g203374203391%_
                (lambda (_%$%g203375203388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203375203388%_))))
               (_%$%g203373203437%_
                (lambda (_%$%g203375203394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203375203394%_))
                      (let ((_%$%e203378203396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203375203394%_))))
                        (let ((_%$%hd203379203399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203378203396%_)))
                              (_%$%tl203380203401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203378203396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203380203401%_))
                              (let ((_%$%e203381203404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203380203401%_))))
                                (let ((_%$%hd203382203407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203381203404%_)))
                                      (_%$%tl203383203409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203381203404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203383203409%_))
                                      (let ((_%$%e203384203412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203383203409%_))))
                                        (let ((_%$%hd203385203415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203384203412%_)))
                                              (_%$%tl203386203417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203384203412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203386203417%_))
                                              (let ((__tmp204042
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self203371%_
                                                        _%$%hd203385203415%_)))
                                                    (__tmp204040
                                                     (let ((__tmp204041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204041
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204042
                                                 gx#current-expander-phi
                                                 __tmp204040))
                                              (_%$%g203374203391%_
                                               _%$%g203375203394%_))))
                                      (_%$%g203374203391%_
                                       _%$%g203375203394%_))))
                              (_%$%g203374203391%_ _%$%g203375203394%_))))
                      (_%$%g203374203391%_ _%$%g203375203394%_)))))
          (_%$%g203373203437%_ _%stx203372%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self203303%_ _%stx203304%_)
        (let* ((_%$%g203306203323%_
                (lambda (_%$%g203307203320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203307203320%_))))
               (_%$%g203305203368%_
                (lambda (_%$%g203307203326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203307203326%_))
                      (let ((_%$%e203310203328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203307203326%_))))
                        (let ((_%$%hd203311203331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203310203328%_)))
                              (_%$%tl203312203333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203310203328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203312203333%_))
                              (let ((_%$%e203313203336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203312203333%_))))
                                (let ((_%$%hd203314203339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203313203336%_)))
                                      (_%$%tl203315203341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203313203336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl203315203341%_))
                                      (let ((_%$%e203316203344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl203315203341%_))))
                                        (let ((_%$%hd203317203347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e203316203344%_)))
                                              (_%$%tl203318203349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e203316203344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl203318203349%_))
                                              (gxc#compile-e__1
                                               _%self203303%_
                                               _%$%hd203317203347%_)
                                              (_%$%g203306203323%_
                                               _%$%g203307203326%_))))
                                      (_%$%g203306203323%_
                                       _%$%g203307203326%_))))
                              (_%$%g203306203323%_ _%$%g203307203326%_))))
                      (_%$%g203306203323%_ _%$%g203307203326%_)))))
          (_%$%g203305203368%_ _%stx203304%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self203189%_ _%stx203190%_)
        (let* ((_%$%g203192203220%_
                (lambda (_%$%g203193203217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203193203217%_))))
               (_%$%g203191203300%_
                (lambda (_%$%g203193203223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203193203223%_))
                      (let ((_%$%e203196203225%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203193203223%_))))
                        (let ((_%$%hd203197203228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203196203225%_)))
                              (_%$%tl203198203230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203196203225%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl203198203230%_))
                              (let ((_g204043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl203198203230%_
                                        '0))))
                                (begin
                                  (let ((_g204044_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204043_)
                                               (##values-length _g204043_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204044_ 2)))
                                        (error "Context expects 2 values"
                                               _g204044_)))
                                  (let ((_%$%target203199203233%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204043_ 0)))
                                        (_%$%tl203201203235%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204043_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203201203235%_))
                                        (letrec ((_%$%loop203202203238%_
                                                  (lambda (_%$%hd203200203241%_
                                                           _%$%body203206203243%_
                                                           _%$%hd203207203244%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd203200203241%_))
                                                        (let ((_%$%e203203203246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd203200203241%_))))
                  (let ((_%$%lp-hd203204203249%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e203203203246%_)))
                        (_%$%lp-tl203205203251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e203203203246%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd203204203249%_))
                        (let ((_%$%e203210203254%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd203204203249%_))))
                          (let ((_%$%hd203211203257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203210203254%_)))
                                (_%$%tl203212203259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203210203254%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl203212203259%_))
                                (let ((_%$%e203213203262%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl203212203259%_))))
                                  (let ((_%$%hd203214203265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203213203262%_)))
                                        (_%$%tl203215203267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203213203262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl203215203267%_))
                                        (_%$%loop203202203238%_
                                         _%$%lp-tl203205203251%_
                                         (cons _%$%hd203214203265%_
                                               _%$%body203206203243%_)
                                         (cons _%$%hd203211203257%_
                                               _%$%hd203207203244%_))
                                        (_%$%g203192203220%_
                                         _%$%g203193203223%_))))
                                (_%$%g203192203220%_ _%$%g203193203223%_))))
                        (_%$%g203192203220%_ _%$%g203193203223%_))))
                (let ((_%$%body203208203270%_ (reverse _%$%body203206203243%_))
                      (_%$%hd203209203271%_ (reverse _%$%hd203207203244%_)))
                  (for-each
                   (lambda (_%$%g203288203290%_)
                     (gxc#compile-e__1 _%self203189%_ _%$%g203288203290%_))
                   (let ((__tmp204045
                          (lambda (_%$%g203292203295%_ _%$%g203293203297%_)
                            (cons _%$%g203292203295%_ _%$%g203293203297%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204045 '() _%$%body203208203270%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop203202203238%_
                                           _%$%target203199203233%_
                                           '()
                                           '()))
                                        (_%$%g203192203220%_
                                         _%$%g203193203223%_)))))
                              (_%$%g203192203220%_ _%$%g203193203223%_))))
                      (_%$%g203192203220%_ _%$%g203193203223%_)))))
          (_%$%g203191203300%_ _%stx203190%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self203046%_ _%stx203047%_)
        (let* ((_%$%g203049203084%_
                (lambda (_%$%g203050203081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g203050203081%_))))
               (_%$%g203048203186%_
                (lambda (_%$%g203050203087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g203050203087%_))
                      (let ((_%$%e203054203089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g203050203087%_))))
                        (let ((_%$%hd203055203092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e203054203089%_)))
                              (_%$%tl203056203094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e203054203089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203056203094%_))
                              (let ((_%$%e203057203097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203056203094%_))))
                                (let ((_%$%hd203058203100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203057203097%_)))
                                      (_%$%tl203059203102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203057203097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd203058203100%_))
                                      (let ((_g204046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd203058203100%_
                                                '0))))
                                        (begin
                                          (let ((_g204047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204046_)
                                                       (##values-length
                                                        _g204046_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204047_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204047_)))
                                          (let ((_%$%target203060203105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204046_ 0)))
                                                (_%$%tl203062203107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204046_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203062203107%_))
                                                (letrec ((_%$%loop203063203110%_
                                                          (lambda (_%$%hd203061203113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr203067203115%_
                           _%$%hd203068203116%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd203061203113%_))
                        (let ((_%$%e203064203118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd203061203113%_))))
                          (let ((_%$%lp-hd203065203121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e203064203118%_)))
                                (_%$%lp-tl203066203123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e203064203118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd203065203121%_))
                                (let ((_%$%e203071203126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd203065203121%_))))
                                  (let ((_%$%hd203072203129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e203071203126%_)))
                                        (_%$%tl203073203131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e203071203126%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl203073203131%_))
                                        (let ((_%$%e203074203134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl203073203131%_))))
                                          (let ((_%$%hd203075203137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e203074203134%_)))
                                                (_%$%tl203076203139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e203074203134%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl203076203139%_))
                                                (_%$%loop203063203110%_
                                                 _%$%lp-tl203066203123%_
                                                 (cons _%$%hd203075203137%_
                                                       _%$%expr203067203115%_)
                                                 (cons _%$%hd203072203129%_
                                                       _%$%hd203068203116%_))
                                                (_%$%g203049203084%_
                                                 _%$%g203050203087%_))))
                                        (_%$%g203049203084%_
                                         _%$%g203050203087%_))))
                                (_%$%g203049203084%_ _%$%g203050203087%_))))
                        (let ((_%$%expr203069203142%_
                               (reverse _%$%expr203067203115%_))
                              (_%$%hd203070203143%_
                               (reverse _%$%hd203068203116%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203059203102%_))
                              (let ((_%$%e203077203145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203059203102%_))))
                                (let ((_%$%hd203078203148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203077203145%_)))
                                      (_%$%tl203079203150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203077203145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl203079203150%_))
                                      (for-each
                                       (lambda (_%$%g203174203176%_)
                                         (gxc#compile-e__1
                                          _%self203046%_
                                          _%$%g203174203176%_))
                                       (let ((__tmp204049
                                              (lambda (_%$%g203178203181%_
                                                       _%$%g203179203183%_)
                                                (cons _%$%g203178203181%_
                                                      _%$%g203179203183%_)))
                                             (__tmp204048
                                              (cons _%$%hd203078203148%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp204049
                                          __tmp204048
                                          _%$%expr203069203142%_)))
                                      (_%$%g203049203084%_
                                       _%$%g203050203087%_))))
                              (_%$%g203049203084%_ _%$%g203050203087%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop203063203110%_
                                                   _%$%target203060203105%_
                                                   '()
                                                   '()))
                                                (_%$%g203049203084%_
                                                 _%$%g203050203087%_)))))
                                      (_%$%g203049203084%_
                                       _%$%g203050203087%_))))
                              (_%$%g203049203084%_ _%$%g203050203087%_))))
                      (_%$%g203049203084%_ _%$%g203050203087%_)))))
          (_%$%g203048203186%_ _%stx203047%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self202991%_ _%stx202992%_)
        (let* ((_%$%g202994203008%_
                (lambda (_%$%g202995203005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202995203005%_))))
               (_%$%g202993203043%_
                (lambda (_%$%g202995203011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202995203011%_))
                      (let ((_%$%e202998203013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202995203011%_))))
                        (let ((_%$%hd202999203016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202998203013%_)))
                              (_%$%tl203000203018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202998203013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl203000203018%_))
                              (let ((_%$%e203001203021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl203000203018%_))))
                                (let ((_%$%hd203002203024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e203001203021%_)))
                                      (_%$%tl203003203026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e203001203021%_))))
                                  (gxc#compile-e__1
                                   _%self202991%_
                                   (last _%$%tl203003203026%_))))
                              (_%$%g202994203008%_ _%$%g202995203011%_))))
                      (_%$%g202994203008%_ _%$%g202995203011%_)))))
          (_%$%g202993203043%_ _%stx202992%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self202923%_ _%stx202924%_)
        (let* ((_%$%g202926202943%_
                (lambda (_%$%g202927202940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202927202940%_))))
               (_%$%g202925202988%_
                (lambda (_%$%g202927202946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202927202946%_))
                      (let ((_%$%e202930202948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202927202946%_))))
                        (let ((_%$%hd202931202951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202930202948%_)))
                              (_%$%tl202932202953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202930202948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202932202953%_))
                              (let ((_%$%e202933202956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202932202953%_))))
                                (let ((_%$%hd202934202959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202933202956%_)))
                                      (_%$%tl202935202961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202933202956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202935202961%_))
                                      (let ((_%$%e202936202964%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202935202961%_))))
                                        (let ((_%$%hd202937202967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202936202964%_)))
                                              (_%$%tl202938202969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202936202964%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202938202969%_))
                                              (gxc#compile-e__1
                                               _%self202923%_
                                               _%$%hd202937202967%_)
                                              (_%$%g202926202943%_
                                               _%$%g202927202946%_))))
                                      (_%$%g202926202943%_
                                       _%$%g202927202946%_))))
                              (_%$%g202926202943%_ _%$%g202927202946%_))))
                      (_%$%g202926202943%_ _%$%g202927202946%_)))))
          (_%$%g202925202988%_ _%stx202924%_))))
    (define gxc#apply-operands
      (lambda (_%self202838%_ _%stx202839%_)
        (let* ((_%$%g202841202860%_
                (lambda (_%$%g202842202857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202842202857%_))))
               (_%$%g202840202920%_
                (lambda (_%$%g202842202863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202842202863%_))
                      (let ((_%$%e202844202865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202842202863%_))))
                        (let ((_%$%hd202845202868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202844202865%_)))
                              (_%$%tl202846202870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202844202865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl202846202870%_))
                              (let ((_g204050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl202846202870%_
                                        '0))))
                                (begin
                                  (let ((_g204051_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204050_)
                                               (##values-length _g204050_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204051_ 2)))
                                        (error "Context expects 2 values"
                                               _g204051_)))
                                  (let ((_%$%target202847202873%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204050_ 0)))
                                        (_%$%tl202849202875%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g204050_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl202849202875%_))
                                        (letrec ((_%$%loop202850202878%_
                                                  (lambda (_%$%hd202848202881%_
                                                           _%$%rands202854202883%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd202848202881%_))
                                                        (let ((_%$%e202851202885%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd202848202881%_))))
                  (let ((_%$%lp-hd202852202888%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e202851202885%_)))
                        (_%$%lp-tl202853202890%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e202851202885%_))))
                    (_%$%loop202850202878%_
                     _%$%lp-tl202853202890%_
                     (cons _%$%lp-hd202852202888%_ _%$%rands202854202883%_))))
                (let ((_%$%rands202855202893%_
                       (reverse _%$%rands202854202883%_)))
                  (for-each
                   (lambda (_%$%g202908202910%_)
                     (gxc#compile-e__1 _%self202838%_ _%$%g202908202910%_))
                   (let ((__tmp204052
                          (lambda (_%$%g202912202915%_ _%$%g202913202917%_)
                            (cons _%$%g202912202915%_ _%$%g202913202917%_))))
                     (declare (not safe))
                     (foldr__0 __tmp204052 '() _%$%rands202855202893%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop202850202878%_
                                           _%$%target202847202873%_
                                           '()))
                                        (_%$%g202841202860%_
                                         _%$%g202842202863%_)))))
                              (_%$%g202841202860%_ _%$%g202842202863%_))))
                      (_%$%g202841202860%_ _%$%g202842202863%_)))))
          (_%$%g202840202920%_ _%stx202839%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx202835%_ _%src-stx202836%_)
        (let ((__tmp204053
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx202836%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx202835%_ __tmp204053))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx202831%_ _%src-stx202832%_ _%ctx202833%_)
        (gxc#compile-e__1
         _%ctx202833%_
         (gxc#xform-wrap-source _%stx202831%_ _%src-stx202832%_))))
    (define gxc#xform-begin%
      (lambda (_%self202786%_ _%stx202787%_)
        (let* ((_%$%g202789202799%_
                (lambda (_%$%g202790202796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202790202796%_))))
               (_%$%g202788202828%_
                (lambda (_%$%g202790202802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202790202802%_))
                      (let ((_%$%e202792202804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202790202802%_))))
                        (let ((_%$%hd202793202807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202792202804%_)))
                              (_%$%tl202794202809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202792202804%_))))
                          (let ((_%forms202826%_
                                 (map (lambda (_%$%g202821202823%_)
                                        (gxc#compile-e__1
                                         _%self202786%_
                                         _%$%g202821202823%_))
                                      _%$%tl202794202809%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms202826%_)
                             _%stx202787%_))))
                      (_%$%g202789202799%_ _%$%g202790202802%_)))))
          (_%$%g202788202828%_ _%stx202787%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self202740%_ _%stx202741%_)
        (let* ((_%$%g202743202753%_
                (lambda (_%$%g202744202750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202744202750%_))))
               (_%$%g202742202783%_
                (lambda (_%$%g202744202756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202744202756%_))
                      (let ((_%$%e202746202758%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202744202756%_))))
                        (let ((_%$%hd202747202761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202746202758%_)))
                              (_%$%tl202748202763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202746202758%_))))
                          (let ((__tmp204056
                                 (lambda ()
                                   (let ((_%forms202781%_
                                          (map (lambda (_%$%g202776202778%_)
                                                 (gxc#compile-e__1
                                                  _%self202740%_
                                                  _%$%g202776202778%_))
                                               _%$%tl202748202763%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms202781%_)
                                      _%stx202741%_))))
                                (__tmp204054
                                 (let ((__tmp204055
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp204055 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204056
                             gx#current-expander-phi
                             __tmp204054))))
                      (_%$%g202743202753%_ _%$%g202744202756%_)))))
          (_%$%g202742202783%_ _%stx202741%_))))
    (define gxc#xform-module%
      (lambda (_%self202677%_ _%stx202678%_)
        (let* ((_%$%g202680202694%_
                (lambda (_%$%g202681202691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202681202691%_))))
               (_%$%g202679202737%_
                (lambda (_%$%g202681202697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202681202697%_))
                      (let ((_%$%e202684202699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202681202697%_))))
                        (let ((_%$%hd202685202702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202684202699%_)))
                              (_%$%tl202686202704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202684202699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202686202704%_))
                              (let ((_%$%e202687202707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202686202704%_))))
                                (let ((_%$%hd202688202710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202687202707%_)))
                                      (_%$%tl202689202712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202687202707%_))))
                                  (let* ((_%ctx202729%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd202688202710%_)))
                                         (_%code202731%_
                                          (##structure-ref
                                           _%ctx202729%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code202734%_
                                          (let ((__tmp204057
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self202677%_
                                                    _%code202731%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp204057
                                             gx#current-expander-context
                                             _%ctx202729%_))))
                                    (##structure-set!
                                     _%ctx202729%_
                                     _%code202734%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd202688202710%_
                                                 (cons _%code202734%_ '())))
                                     _%stx202678%_))))
                              (_%$%g202680202694%_ _%$%g202681202697%_))))
                      (_%$%g202680202694%_ _%$%g202681202697%_)))))
          (_%$%g202679202737%_ _%stx202678%_))))
    (define gxc#xform-define-values%
      (lambda (_%self202607%_ _%stx202608%_)
        (let* ((_%$%g202610202627%_
                (lambda (_%$%g202611202624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202611202624%_))))
               (_%$%g202609202674%_
                (lambda (_%$%g202611202630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202611202630%_))
                      (let ((_%$%e202614202632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202611202630%_))))
                        (let ((_%$%hd202615202635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202614202632%_)))
                              (_%$%tl202616202637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202614202632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202616202637%_))
                              (let ((_%$%e202617202640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202616202637%_))))
                                (let ((_%$%hd202618202643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202617202640%_)))
                                      (_%$%tl202619202645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202617202640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202619202645%_))
                                      (let ((_%$%e202620202648%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202619202645%_))))
                                        (let ((_%$%hd202621202651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202620202648%_)))
                                              (_%$%tl202622202653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202620202648%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202622202653%_))
                                              (let ((_%expr202672%_
                                                     (gxc#compile-e__1
                                                      _%self202607%_
                                                      _%$%hd202621202651%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd202618202643%_
                                                             (cons _%expr202672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202608%_))
                                              (_%$%g202610202627%_
                                               _%$%g202611202630%_))))
                                      (_%$%g202610202627%_
                                       _%$%g202611202630%_))))
                              (_%$%g202610202627%_ _%$%g202611202630%_))))
                      (_%$%g202610202627%_ _%$%g202611202630%_)))))
          (_%$%g202609202674%_ _%stx202608%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self202536%_ _%stx202537%_)
        (let* ((_%$%g202539202556%_
                (lambda (_%$%g202540202553%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202540202553%_))))
               (_%$%g202538202604%_
                (lambda (_%$%g202540202559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202540202559%_))
                      (let ((_%$%e202543202561%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202540202559%_))))
                        (let ((_%$%hd202544202564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202543202561%_)))
                              (_%$%tl202545202566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202543202561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202545202566%_))
                              (let ((_%$%e202546202569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202545202566%_))))
                                (let ((_%$%hd202547202572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202546202569%_)))
                                      (_%$%tl202548202574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202546202569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202548202574%_))
                                      (let ((_%$%e202549202577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202548202574%_))))
                                        (let ((_%$%hd202550202580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202549202577%_)))
                                              (_%$%tl202551202582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202549202577%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202551202582%_))
                                              (let ((__tmp204060
                                                     (lambda ()
                                                       (let ((_%expr202602%_
                                                              (gxc#compile-e__1
                                                               _%self202536%_
                                                               _%$%hd202550202580%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd202547202572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr202602%_ '())))
                  _%stx202537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp204058
                                                     (let ((__tmp204059
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp204059
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp204060
                                                 gx#current-expander-phi
                                                 __tmp204058))
                                              (_%$%g202539202556%_
                                               _%$%g202540202559%_))))
                                      (_%$%g202539202556%_
                                       _%$%g202540202559%_))))
                              (_%$%g202539202556%_ _%$%g202540202559%_))))
                      (_%$%g202539202556%_ _%$%g202540202559%_)))))
          (_%$%g202538202604%_ _%stx202537%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self202466%_ _%stx202467%_)
        (let* ((_%$%g202469202486%_
                (lambda (_%$%g202470202483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202470202483%_))))
               (_%$%g202468202533%_
                (lambda (_%$%g202470202489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202470202489%_))
                      (let ((_%$%e202473202491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202470202489%_))))
                        (let ((_%$%hd202474202494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202473202491%_)))
                              (_%$%tl202475202496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202473202491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202475202496%_))
                              (let ((_%$%e202476202499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202475202496%_))))
                                (let ((_%$%hd202477202502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202476202499%_)))
                                      (_%$%tl202478202504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202476202499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl202478202504%_))
                                      (let ((_%$%e202479202507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl202478202504%_))))
                                        (let ((_%$%hd202480202510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e202479202507%_)))
                                              (_%$%tl202481202512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e202479202507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl202481202512%_))
                                              (let ((_%expr202531%_
                                                     (gxc#compile-e__1
                                                      _%self202466%_
                                                      _%$%hd202480202510%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd202477202502%_
                                                             (cons _%expr202531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx202467%_))
                                              (_%$%g202469202486%_
                                               _%$%g202470202489%_))))
                                      (_%$%g202469202486%_
                                       _%$%g202470202489%_))))
                              (_%$%g202469202486%_ _%$%g202470202489%_))))
                      (_%$%g202469202486%_ _%$%g202470202489%_)))))
          (_%$%g202468202533%_ _%stx202467%_))))
    (define gxc#xform-lambda%
      (lambda (_%self202404%_ _%stx202405%_)
        (let* ((_%$%g202407202421%_
                (lambda (_%$%g202408202418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202408202418%_))))
               (_%$%g202406202463%_
                (lambda (_%$%g202408202424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202408202424%_))
                      (let ((_%$%e202411202426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202408202424%_))))
                        (let ((_%$%hd202412202429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202411202426%_)))
                              (_%$%tl202413202431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202411202426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202413202431%_))
                              (let ((_%$%e202414202434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202413202431%_))))
                                (let ((_%$%hd202415202437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202414202434%_)))
                                      (_%$%tl202416202439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202414202434%_))))
                                  (let ((__tmp204062
                                         (lambda ()
                                           (let ((_%body202461%_
                                                  (map (lambda (_%$%g202456202458%_)
                                                         (gxc#compile-e__1
                                                          _%self202404%_
                                                          _%$%g202456202458%_))
                                                       _%$%tl202416202439%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd202415202437%_
                                                          _%body202461%_))
                                              _%stx202405%_))))
                                        (__tmp204061
                                         (gxc#xform-let-locals
                                          _%$%hd202415202437%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp204062
                                     gxc#current-compile-local-env
                                     __tmp204061))))
                              (_%$%g202407202421%_ _%$%g202408202424%_))))
                      (_%$%g202407202421%_ _%$%g202408202424%_)))))
          (_%$%g202406202463%_ _%stx202405%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self202312%_ _%stx202313%_)
        (letrec ((_%clause-e202315%_
                  (lambda (_%clause202356%_)
                    (let* ((_%$%g202358202369%_
                            (lambda (_%$%g202359202366%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g202359202366%_))))
                           (_%$%g202357202401%_
                            (lambda (_%$%g202359202372%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g202359202372%_))
                                  (let ((_%$%e202362202374%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g202359202372%_))))
                                    (let ((_%$%hd202363202377%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e202362202374%_)))
                                          (_%$%tl202364202379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e202362202374%_))))
                                      (let ((__tmp204064
                                             (lambda ()
                                               (let ((_%body202399%_
                                                      (map (lambda (_%$%g202394202396%_)
                                                             (gxc#compile-e__1
                                                              _%self202312%_
                                                              _%$%g202394202396%_))
                                                           _%$%tl202364202379%_)))
                                                 (cons _%$%hd202363202377%_
                                                       _%body202399%_))))
                                            (__tmp204063
                                             (gxc#xform-let-locals
                                              _%$%hd202363202377%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp204064
                                         gxc#current-compile-local-env
                                         __tmp204063))))
                                  (_%$%g202358202369%_ _%$%g202359202372%_)))))
                      (_%$%g202357202401%_ _%clause202356%_)))))
          (let* ((_%$%g202317202327%_
                  (lambda (_%$%g202318202324%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g202318202324%_))))
                 (_%$%g202316202353%_
                  (lambda (_%$%g202318202330%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g202318202330%_))
                        (let ((_%$%e202320202332%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g202318202330%_))))
                          (let ((_%$%hd202321202335%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202320202332%_)))
                                (_%$%tl202322202337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202320202332%_))))
                            (let ((_%clauses202351%_
                                   (map _%clause-e202315%_
                                        _%$%tl202322202337%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses202351%_)
                               _%stx202313%_))))
                        (_%$%g202317202327%_ _%$%g202318202330%_)))))
            (_%$%g202316202353%_ _%stx202313%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self202072%_ _%stx202073%_)
        (let* ((_%$%g202075202108%_
                (lambda (_%$%g202076202105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202076202105%_))))
               (_%$%g202074202309%_
                (lambda (_%$%g202076202111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202076202111%_))
                      (let ((_%$%e202081202113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g202076202111%_))))
                        (let ((_%$%hd202082202116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202081202113%_)))
                              (_%$%tl202083202118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202081202113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202083202118%_))
                              (let ((_%$%e202084202121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl202083202118%_))))
                                (let ((_%$%hd202085202124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202084202121%_)))
                                      (_%$%tl202086202126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202084202121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd202085202124%_))
                                      (let ((_g204065_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd202085202124%_
                                                '0))))
                                        (begin
                                          (let ((_g204066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204065_)
                                                       (##values-length
                                                        _g204065_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204066_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204066_)))
                                          (let ((_%$%target202087202129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204065_ 0)))
                                                (_%$%tl202089202131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204065_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202089202131%_))
                                                (letrec ((_%$%loop202090202134%_
                                                          (lambda (_%$%hd202088202137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr202094202139%_
                           _%$%hd202095202140%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202088202137%_))
                        (let ((_%$%e202091202142%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd202088202137%_))))
                          (let ((_%$%lp-hd202092202145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202091202142%_)))
                                (_%$%lp-tl202093202147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202091202142%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd202092202145%_))
                                (let ((_%$%e202098202150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd202092202145%_))))
                                  (let ((_%$%hd202099202153%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e202098202150%_)))
                                        (_%$%tl202100202155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e202098202150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl202100202155%_))
                                        (let ((_%$%e202101202158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl202100202155%_))))
                                          (let ((_%$%hd202102202161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e202101202158%_)))
                                                (_%$%tl202103202163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e202101202158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202103202163%_))
                                                (_%$%loop202090202134%_
                                                 _%$%lp-tl202093202147%_
                                                 (cons _%$%hd202102202161%_
                                                       _%$%expr202094202139%_)
                                                 (cons _%$%hd202099202153%_
                                                       _%$%hd202095202140%_))
                                                (_%$%g202075202108%_
                                                 _%$%g202076202111%_))))
                                        (_%$%g202075202108%_
                                         _%$%g202076202111%_))))
                                (_%$%g202075202108%_ _%$%g202076202111%_))))
                        (let ((_%$%expr202096202166%_
                               (reverse _%$%expr202094202139%_))
                              (_%$%hd202097202167%_
                               (reverse _%$%hd202095202140%_)))
                          (let* ((_%$%g202191202207%_
                                  (lambda (_%$%g202192202204%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g202192202204%_))))
                                 (_%$%g202190202295%_
                                  (lambda (_%$%g202192202210%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g202192202210%_))
                                        (let ((_g204067_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g202192202210%_
                                                  '0))))
                                          (begin
                                            (let ((_g204068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g204067_)
                                                         (##values-length
                                                          _g204067_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g204068_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g204068_)))
                                            (let ((_%$%target202194202212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204067_
                                                      0)))
                                                  (_%$%tl202196202214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g204067_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl202196202214%_))
                                                  (letrec ((_%$%loop202197202217%_
                                                            (lambda (_%$%hd202195202220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr202201202222%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd202195202220%_))
                          (let ((_%$%e202198202224%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd202195202220%_))))
                            (let ((_%$%lp-hd202199202227%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e202198202224%_)))
                                  (_%$%lp-tl202200202229%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e202198202224%_))))
                              (_%$%loop202197202217%_
                               _%$%lp-tl202200202229%_
                               (cons _%$%lp-hd202199202227%_
                                     _%$%expr202201202222%_))))
                          (let ((_%$%expr202202202232%_
                                 (reverse _%$%expr202201202222%_)))
                            (let ((__tmp204071
                                   (lambda ()
                                     (let* ((_%$%g202248202255%_
                                             (lambda (_%$%g202249202252%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g202249202252%_))))
                                            (_%$%g202247202281%_
                                             (lambda (_%$%g202249202258%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd202082202116%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr202202202232%_
                         _%$%hd202097202167%_))
                      (let ((__tmp204072
                             (lambda (_%$%g202270202274%_
                                      _%$%g202271202276%_
                                      _%$%g202272202278%_)
                               (cons (cons _%$%g202271202276%_
                                           (cons _%$%g202270202274%_ '()))
                                     _%$%g202272202278%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp204072
                         '()
                         _%$%expr202202202232%_
                         _%$%hd202097202167%_)))
                    _%$%g202249202258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx202073%_))))
                                       (_%$%g202247202281%_
                                        (map (lambda (_%$%g202283202285%_)
                                               (gxc#compile-e__1
                                                _%self202072%_
                                                _%$%g202283202285%_))
                                             _%$%tl202086202126%_)))))
                                  (__tmp204069
                                   (gxc#xform-let-locals
                                    (let ((__tmp204070
                                           (lambda (_%$%g202287202290%_
                                                    _%$%g202288202292%_)
                                             (cons _%$%g202287202290%_
                                                   _%$%g202288202292%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp204070
                                       '()
                                       _%$%hd202097202167%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp204071
                               gxc#current-compile-local-env
                               __tmp204069)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop202197202217%_
                                                     _%$%target202194202212%_
                                                     '()))
                                                  (_%$%g202191202207%_
                                                   _%$%g202192202210%_)))))
                                        (_%$%g202191202207%_
                                         _%$%g202192202210%_)))))
                            (_%$%g202190202295%_
                             (map (lambda (_%$%g202297202299%_)
                                    (gxc#compile-e__1
                                     _%self202072%_
                                     _%$%g202297202299%_))
                                  (let ((__tmp204073
                                         (lambda (_%$%g202301202304%_
                                                  _%$%g202302202306%_)
                                           (cons _%$%g202301202304%_
                                                 _%$%g202302202306%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204073
                                     '()
                                     _%$%expr202096202166%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202090202134%_
                                                   _%$%target202087202129%_
                                                   '()
                                                   '()))
                                                (_%$%g202075202108%_
                                                 _%$%g202076202111%_)))))
                                      (_%$%g202075202108%_
                                       _%$%g202076202111%_))))
                              (_%$%g202075202108%_ _%$%g202076202111%_))))
                      (_%$%g202075202108%_ _%$%g202076202111%_)))))
          (_%$%g202074202309%_ _%stx202073%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self201832%_ _%stx201833%_)
        (let* ((_%$%g201835201868%_
                (lambda (_%$%g201836201865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201836201865%_))))
               (_%$%g201834202069%_
                (lambda (_%$%g201836201871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201836201871%_))
                      (let ((_%$%e201841201873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201836201871%_))))
                        (let ((_%$%hd201842201876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201841201873%_)))
                              (_%$%tl201843201878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201841201873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201843201878%_))
                              (let ((_%$%e201844201881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201843201878%_))))
                                (let ((_%$%hd201845201884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201844201881%_)))
                                      (_%$%tl201846201886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201844201881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd201845201884%_))
                                      (let ((_g204074_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd201845201884%_
                                                '0))))
                                        (begin
                                          (let ((_g204075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204074_)
                                                       (##values-length
                                                        _g204074_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204075_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204075_)))
                                          (let ((_%$%target201847201889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g204074_ 0)))
                                                (_%$%tl201849201891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g204074_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201849201891%_))
                                                (letrec ((_%$%loop201850201894%_
                                                          (lambda (_%$%hd201848201897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr201854201899%_
                           _%$%hd201855201900%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd201848201897%_))
                        (let ((_%$%e201851201902%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd201848201897%_))))
                          (let ((_%$%lp-hd201852201905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201851201902%_)))
                                (_%$%lp-tl201853201907%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201851201902%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd201852201905%_))
                                (let ((_%$%e201858201910%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd201852201905%_))))
                                  (let ((_%$%hd201859201913%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201858201910%_)))
                                        (_%$%tl201860201915%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201858201910%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl201860201915%_))
                                        (let ((_%$%e201861201918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl201860201915%_))))
                                          (let ((_%$%hd201862201921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e201861201918%_)))
                                                (_%$%tl201863201923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e201861201918%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201863201923%_))
                                                (_%$%loop201850201894%_
                                                 _%$%lp-tl201853201907%_
                                                 (cons _%$%hd201862201921%_
                                                       _%$%expr201854201899%_)
                                                 (cons _%$%hd201859201913%_
                                                       _%$%hd201855201900%_))
                                                (_%$%g201835201868%_
                                                 _%$%g201836201871%_))))
                                        (_%$%g201835201868%_
                                         _%$%g201836201871%_))))
                                (_%$%g201835201868%_ _%$%g201836201871%_))))
                        (let ((_%$%expr201856201926%_
                               (reverse _%$%expr201854201899%_))
                              (_%$%hd201857201927%_
                               (reverse _%$%hd201855201900%_)))
                          (let ((__tmp204078
                                 (lambda ()
                                   (let* ((_%$%g201952201968%_
                                           (lambda (_%$%g201953201965%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g201953201965%_))))
                                          (_%$%g201951202048%_
                                           (lambda (_%$%g201953201971%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g201953201971%_))
                                                 (let ((_g204079_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g201953201971%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g204080_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g204079_)
                          (##values-length _g204079_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g204080_ 2)))
                   (error "Context expects 2 values" _g204080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target201955201973%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204079_
                                                               0)))
                                                           (_%$%tl201957201975%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g204079_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl201957201975%_))
                                                           (letrec ((_%$%loop201958201978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd201956201981%_
                                      _%$%expr201962201983%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd201956201981%_))
                                   (let ((_%$%e201959201985%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd201956201981%_))))
                                     (let ((_%$%lp-hd201960201988%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e201959201985%_)))
                                           (_%$%lp-tl201961201990%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e201959201985%_))))
                                       (_%$%loop201958201978%_
                                        _%$%lp-tl201961201990%_
                                        (cons _%$%lp-hd201960201988%_
                                              _%$%expr201962201983%_))))
                                   (let* ((_%$%expr201963201993%_
                                           (reverse _%$%expr201962201983%_))
                                          (_%$%g202009202016%_
                                           (lambda (_%$%g202010202013%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g202010202013%_))))
                                          (_%$%g202008202041%_
                                           (lambda (_%$%g202010202019%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd201842201876%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr201963201993%_
                                                               _%$%hd201857201927%_))
                                                            (let ((__tmp204081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g202030202034%_
                                    _%$%g202031202036%_
                                    _%$%g202032202038%_)
                             (cons (cons _%$%g202031202036%_
                                         (cons _%$%g202030202034%_ '()))
                                   _%$%g202032202038%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp204081
                       '()
                       _%$%expr201963201993%_
                       _%$%hd201857201927%_)))
                  _%$%g202010202019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx201833%_))))
                                     (_%$%g202008202041%_
                                      (map (lambda (_%$%g202043202045%_)
                                             (gxc#compile-e__1
                                              _%self201832%_
                                              _%$%g202043202045%_))
                                           _%$%tl201846201886%_)))))))
                     (_%$%loop201958201978%_ _%$%target201955201973%_ '()))
                   (_%$%g201952201968%_ _%$%g201953201971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g201952201968%_
                                                  _%$%g201953201971%_)))))
                                     (_%$%g201951202048%_
                                      (map (lambda (_%$%g202050202052%_)
                                             (gxc#compile-e__1
                                              _%self201832%_
                                              _%$%g202050202052%_))
                                           (let ((__tmp204082
                                                  (lambda (_%$%g202054202057%_
                                                           _%$%g202055202059%_)
                                                    (cons _%$%g202054202057%_
                                                          _%$%g202055202059%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp204082
                                              '()
                                              _%$%expr201856201926%_)))))))
                                (__tmp204076
                                 (gxc#xform-let-locals
                                  (let ((__tmp204077
                                         (lambda (_%$%g202061202064%_
                                                  _%$%g202062202066%_)
                                           (cons _%$%g202061202064%_
                                                 _%$%g202062202066%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp204077
                                     '()
                                     _%$%hd201857201927%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp204078
                             gxc#current-compile-local-env
                             __tmp204076)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop201850201894%_
                                                   _%$%target201847201889%_
                                                   '()
                                                   '()))
                                                (_%$%g201835201868%_
                                                 _%$%g201836201871%_)))))
                                      (_%$%g201835201868%_
                                       _%$%g201836201871%_))))
                              (_%$%g201835201868%_ _%$%g201836201871%_))))
                      (_%$%g201835201868%_ _%$%g201836201871%_)))))
          (_%$%g201834202069%_ _%stx201833%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings201699%_)
        (letrec ((_%flatten201701%_
                  (lambda (_%maybe-lst201759%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst201759%_))
                        (cons _%maybe-lst201759%_ '())
                        (let _%loop201761%_ ((_%rest201763%_
                                              _%maybe-lst201759%_)
                                             (_%result201764%_ '()))
                          (let* ((_%__stx203968203969%_ _%rest201763%_)
                                 (_%$%g201768201780%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx203968203969%_)))))
                            (let ((_%__kont203970203971%_
                                   (lambda (_%$%g201770201818%_
                                            _%$%g201771201819%_)
                                     (_%loop201761%_
                                      _%$%g201770201818%_
                                      (let ((__tmp204083
                                             (_%flatten201701%_
                                              _%$%g201771201819%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result201764%_
                                         __tmp204083)))))
                                  (_%__kont203972203973%_
                                   (lambda (_%$%g201775201792%_)
                                     (cons _%$%g201775201792%_
                                           _%result201764%_)))
                                  (_%__kont203974203975%_
                                   (lambda () _%result201764%_)))
                              (let ((_%$%g201766201805%_
                                     (lambda ()
                                       (let ((_%$%g201775201792%_
                                              _%__stx203968203969%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g201775201792%_))
                                             (_%__kont203972203973%_
                                              _%$%g201775201792%_)
                                             (_%__kont203974203975%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx203968203969%_))
                                    (let ((_%$%e201772201810%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx203968203969%_))))
                                      (let ((_%$%tl201774201815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e201772201810%_)))
                                            (_%$%hd201773201813%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e201772201810%_))))
                                        (_%__kont203970203971%_
                                         _%$%tl201774201815%_
                                         _%$%hd201773201813%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g201766201805%_)))))))))))
          (let _%loop201703%_ ((_%rest201705%_
                                (_%flatten201701%_ _%bindings201699%_))
                               (_%locals201706%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest201707201718%_ _%rest201705%_)
                   (_%$%E201711201722%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest201707201718%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K201714201747%_
                     (lambda (_%rest201744%_ _%id201745%_)
                       (_%loop201703%_
                        _%rest201744%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id201745%_))
                              _%locals201706%_))))
                    (_%$%K201713201736%_
                     (lambda (_%id201734%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id201734%_))
                             _%locals201706%_)))
                    (_%$%K201712201727%_ (lambda () _%locals201706%_)))
                (let ((_%$%try-match201709201741%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest201707201718%_))
                             (let ((_%id201739%_ _%$%rest201707201718%_))
                               (_%$%K201713201736%_ _%id201739%_))
                             (_%$%K201712201727%_)))))
                  (if (pair? _%$%rest201707201718%_)
                      (let ((_%$%tl201716201752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest201707201718%_)))
                            (_%$%hd201715201750%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest201707201718%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd201715201750%_))
                            (let ((_%id201755%_ _%$%hd201715201750%_)
                                  (_%rest201757%_ _%$%tl201716201752%_))
                              (_%$%K201714201747%_
                               _%rest201757%_
                               _%id201755%_))
                            (_%$%K201712201727%_)))
                      (_%$%try-match201709201741%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self201651%_ _%stx201652%_)
        (let* ((_%$%g201654201665%_
                (lambda (_%$%g201655201662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201655201662%_))))
               (_%$%g201653201696%_
                (lambda (_%$%g201655201668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201655201668%_))
                      (let ((_%$%e201658201670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201655201668%_))))
                        (let ((_%$%hd201659201673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201658201670%_)))
                              (_%$%tl201660201675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201658201670%_))))
                          (let ((_%rands201694%_
                                 (map (lambda (_%$%g201689201691%_)
                                        (gxc#compile-e__1
                                         _%self201651%_
                                         _%$%g201689201691%_))
                                      _%$%tl201660201675%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd201659201673%_ _%rands201694%_)
                             _%stx201652%_))))
                      (_%$%g201654201665%_ _%$%g201655201668%_)))))
          (_%$%g201653201696%_ _%stx201652%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self201581%_ _%stx201582%_)
        (let* ((_%$%g201584201601%_
                (lambda (_%$%g201585201598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201585201598%_))))
               (_%$%g201583201648%_
                (lambda (_%$%g201585201604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201585201604%_))
                      (let ((_%$%e201588201606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201585201604%_))))
                        (let ((_%$%hd201589201609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201588201606%_)))
                              (_%$%tl201590201611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201588201606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201590201611%_))
                              (let ((_%$%e201591201614%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201590201611%_))))
                                (let ((_%$%hd201592201617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201591201614%_)))
                                      (_%$%tl201593201619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201591201614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl201593201619%_))
                                      (let ((_%$%e201594201622%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl201593201619%_))))
                                        (let ((_%$%hd201595201625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e201594201622%_)))
                                              (_%$%tl201596201627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e201594201622%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl201596201627%_))
                                              (let ((_%expr201646%_
                                                     (gxc#compile-e__1
                                                      _%self201581%_
                                                      _%$%hd201595201625%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd201592201617%_
                                                             (cons _%expr201646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx201582%_))
                                              (_%$%g201584201601%_
                                               _%$%g201585201604%_))))
                                      (_%$%g201584201601%_
                                       _%$%g201585201604%_))))
                              (_%$%g201584201601%_ _%$%g201585201604%_))))
                      (_%$%g201584201601%_ _%$%g201585201604%_)))))
          (_%$%g201583201648%_ _%stx201582%_))))))
