(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712161241)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133776%_)
        (let* ((_%self133778%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133780%_
                (let ((__tmp133958
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133776%_))))
                  (declare (not safe))
                  (method-ref _%self133778%_ __tmp133958))))
          (if _%$e133780%_
              ((lambda (_%method133783%_)
                 (declare (not safe))
                 (_%method133783%_ _%self133778%_ _%stx133776%_))
               _%$e133780%_)
              (let ((__tmp133960
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx133776%_)))
                    (__tmp133959
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133776%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133778%_
                       __tmp133960
                       __tmp133959))))))
    (define gxc#compile-e__1
      (lambda (_%self133787%_ _%stx133788%_)
        (let ((_%$e133790%_
               (let ((__tmp133961
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx133788%_))))
                 (declare (not safe))
                 (method-ref _%self133787%_ __tmp133961))))
          (if _%$e133790%_
              ((lambda (_%method133793%_)
                 (declare (not safe))
                 (_%method133793%_ _%self133787%_ _%stx133788%_))
               _%$e133790%_)
              (let ((__tmp133963
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx133788%_)))
                    (__tmp133962
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx133788%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self133787%_
                       __tmp133963
                       __tmp133962))))))
    (define gxc#compile-e
      (lambda _g133965_
        (let ((_g133964_ (let () (declare (not safe)) (##length _g133965_))))
          (cond ((let () (declare (not safe)) (##fx= _g133964_ 1))
                 (apply (lambda (_%stx133776%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx133776%_)))
                        _g133965_))
                ((let () (declare (not safe)) (##fx= _g133964_ 2))
                 (apply (lambda (_%self133787%_ _%stx133788%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133787%_ _%stx133788%_)))
                        _g133965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133965_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133774%_)
        (let ((__tmp133966
               (car (let () (declare (not safe)) (gx#stx-e _%stx133774%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133966))))
    (define gxc#void-method (lambda (_%self133771%_ _%stx133772%_) '#!void))
    (define gxc#false-method (lambda (_%self133768%_ _%stx133769%_) '#f))
    (define gxc#true-method (lambda (_%self133765%_ _%stx133766%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133762%_ _%stx133763%_) _%stx133763%_))
    (define gxc#::void-expression::t
      (let ((__tmp133967 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133967
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133759%_
        (apply make-instance gxc#::void-expression::t _%$args133759%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133968
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
        (__make-promise __tmp133968)))
    (define gxc#::void-special-form::t
      (let ((__tmp133969 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133969
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133755%_
        (apply make-instance gxc#::void-special-form::t _%$args133755%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133970
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
        (__make-promise __tmp133970)))
    (define gxc#::void::t
      (let ((__tmp133971
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp133971 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133751%_
        (apply make-instance gxc#::void::t _%$args133751%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133972
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133972)))
    (define gxc#::false-expression::t
      (let ((__tmp133973 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133973
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133747%_
        (apply make-instance gxc#::false-expression::t _%$args133747%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133974
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
        (__make-promise __tmp133974)))
    (define gxc#::false-special-form::t
      (let ((__tmp133975 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133975
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133743%_
        (apply make-instance gxc#::false-special-form::t _%$args133743%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133976
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
        (__make-promise __tmp133976)))
    (define gxc#::false::t
      (let ((__tmp133977
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp133977 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133739%_
        (apply make-instance gxc#::false::t _%$args133739%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133978
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133978)))
    (define gxc#::identity-expression::t
      (let ((__tmp133979 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133979
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133735%_
        (apply make-instance gxc#::identity-expression::t _%$args133735%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133980
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
        (__make-promise __tmp133980)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133981 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133981
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133731%_
        (apply make-instance gxc#::identity-special-form::t _%$args133731%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133982
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
        (__make-promise __tmp133982)))
    (define gxc#::identity::t
      (let ((__tmp133983
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133983
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133727%_
        (apply make-instance gxc#::identity::t _%$args133727%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133984
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133984)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133985 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133985
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133723%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133723%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133986
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
        (__make-promise __tmp133986)))
    (define gxc#::basic-xform::t
      (let ((__tmp133987
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133987
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133719%_
        (apply make-instance gxc#::basic-xform::t _%$args133719%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133988
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
        (__make-promise __tmp133988)))
    (define gxc#apply-begin%
      (lambda (_%self133675%_ _%stx133676%_)
        (let* ((_%g133678133688%_
                (lambda (_%g133679133685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133679133685%_))))
               (_%g133677133715%_
                (lambda (_%g133679133691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133679133691%_))
                      (let ((_%e133683133693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133679133691%_))))
                        (let ((_%hd133682133696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133683133693%_)))
                              (_%tl133681133698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133683133693%_))))
                          ((lambda (_%L133701%_)
                             (for-each
                              (lambda (_%g133710133712%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self133675%_
                                   _%g133710133712%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133701%_))))
                           _%tl133681133698%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133678133688%_ _%g133679133691%_))))))
          (declare (not safe))
          (_%g133677133715%_ _%stx133676%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133636%_ _%stx133637%_)
        (let* ((_%g133639133649%_
                (lambda (_%g133640133646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133640133646%_))))
               (_%g133638133672%_
                (lambda (_%g133640133652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133640133652%_))
                      (let ((_%e133644133654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133640133652%_))))
                        (let ((_%hd133643133657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133644133654%_)))
                              (_%tl133642133659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133644133654%_))))
                          ((lambda (_%L133662%_)
                             (let ((__tmp133989 (last _%L133662%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self133636%_ __tmp133989)))
                           _%tl133642133659%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133639133649%_ _%g133640133652%_))))))
          (declare (not safe))
          (_%g133638133672%_ _%stx133637%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133632%_ _%stx133633%_)
        (let ((__tmp133992
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self133632%_ _%stx133633%_))))
              (__tmp133990
               (let ((__tmp133991
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133991 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133992
           gx#current-expander-phi
           __tmp133990))))
    (define gxc#apply-module%
      (lambda (_%self133571%_ _%stx133572%_)
        (let* ((_%g133574133588%_
                (lambda (_%g133575133585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133575133585%_))))
               (_%g133573133629%_
                (lambda (_%g133575133591%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133575133591%_))
                      (let ((_%e133580133593%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133575133591%_))))
                        (let ((_%hd133579133596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133580133593%_)))
                              (_%tl133578133598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133580133593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133578133598%_))
                              (let ((_%e133583133601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133578133598%_))))
                                (let ((_%hd133582133604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133583133601%_)))
                                      (_%tl133581133606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133583133601%_))))
                                  ((lambda (_%L133609%_ _%L133610%_)
                                     (let* ((_%ctx133623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133610%_)))
                                            (_%ctx-stx133625%_
                                             (##structure-ref
                                              _%ctx133623%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp133993
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self133571%_
                                                  _%ctx-stx133625%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp133993
                                        gx#current-expander-context
                                        _%ctx133623%_)))
                                   _%tl133581133606%_
                                   _%hd133582133604%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133574133588%_ _%g133575133591%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133574133588%_ _%g133575133591%_))))))
          (declare (not safe))
          (_%g133573133629%_ _%stx133572%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133503%_ _%stx133504%_)
        (let* ((_%g133506133523%_
                (lambda (_%g133507133520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133507133520%_))))
               (_%g133505133568%_
                (lambda (_%g133507133526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133507133526%_))
                      (let ((_%e133512133528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133507133526%_))))
                        (let ((_%hd133511133531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133512133528%_)))
                              (_%tl133510133533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133512133528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133510133533%_))
                              (let ((_%e133515133536%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133510133533%_))))
                                (let ((_%hd133514133539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133515133536%_)))
                                      (_%tl133513133541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133515133536%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133513133541%_))
                                      (let ((_%e133518133544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133513133541%_))))
                                        (let ((_%hd133517133547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133518133544%_)))
                                              (_%tl133516133549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133518133544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133516133549%_))
                                              ((lambda (_%L133552%_
                                                        _%L133553%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133503%_
                                                    _%L133552%_)))
                                               _%hd133517133547%_
                                               _%hd133514133539%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133506133523%_
                                                 _%g133507133526%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133506133523%_
                                         _%g133507133526%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133506133523%_ _%g133507133526%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133506133523%_ _%g133507133526%_))))))
          (declare (not safe))
          (_%g133505133568%_ _%stx133504%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133435%_ _%stx133436%_)
        (let* ((_%g133438133455%_
                (lambda (_%g133439133452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133439133452%_))))
               (_%g133437133500%_
                (lambda (_%g133439133458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133439133458%_))
                      (let ((_%e133444133460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133439133458%_))))
                        (let ((_%hd133443133463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133444133460%_)))
                              (_%tl133442133465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133444133460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133442133465%_))
                              (let ((_%e133447133468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133442133465%_))))
                                (let ((_%hd133446133471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133447133468%_)))
                                      (_%tl133445133473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133447133468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133445133473%_))
                                      (let ((_%e133450133476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133445133473%_))))
                                        (let ((_%hd133449133479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133450133476%_)))
                                              (_%tl133448133481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133450133476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133448133481%_))
                                              ((lambda (_%L133484%_
                                                        _%L133485%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133435%_
                                                    _%L133484%_)))
                                               _%hd133449133479%_
                                               _%hd133446133471%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133438133455%_
                                                 _%g133439133458%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133438133455%_
                                         _%g133439133458%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133438133455%_ _%g133439133458%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133438133455%_ _%g133439133458%_))))))
          (declare (not safe))
          (_%g133437133500%_ _%stx133436%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133366%_ _%stx133367%_)
        (let* ((_%g133369133386%_
                (lambda (_%g133370133383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133370133383%_))))
               (_%g133368133432%_
                (lambda (_%g133370133389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133370133389%_))
                      (let ((_%e133375133391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133370133389%_))))
                        (let ((_%hd133374133394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133375133391%_)))
                              (_%tl133373133396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133375133391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133373133396%_))
                              (let ((_%e133378133399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133373133396%_))))
                                (let ((_%hd133377133402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133378133399%_)))
                                      (_%tl133376133404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133378133399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133376133404%_))
                                      (let ((_%e133381133407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133376133404%_))))
                                        (let ((_%hd133380133410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133381133407%_)))
                                              (_%tl133379133412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133381133407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133379133412%_))
                                              ((lambda (_%L133415%_
                                                        _%L133416%_)
                                                 (let ((__tmp133996
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133366%_
                                                             _%L133415%_))))
                                                       (__tmp133994
                                                        (let ((__tmp133995
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp133995 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp133996
                                                    gx#current-expander-phi
                                                    __tmp133994)))
                                               _%hd133380133410%_
                                               _%hd133377133402%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133369133386%_
                                                 _%g133370133389%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133369133386%_
                                         _%g133370133389%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133369133386%_ _%g133370133389%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133369133386%_ _%g133370133389%_))))))
          (declare (not safe))
          (_%g133368133432%_ _%stx133367%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133298%_ _%stx133299%_)
        (let* ((_%g133301133318%_
                (lambda (_%g133302133315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133302133315%_))))
               (_%g133300133363%_
                (lambda (_%g133302133321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133302133321%_))
                      (let ((_%e133307133323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133302133321%_))))
                        (let ((_%hd133306133326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133307133323%_)))
                              (_%tl133305133328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133307133323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133305133328%_))
                              (let ((_%e133310133331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133305133328%_))))
                                (let ((_%hd133309133334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133310133331%_)))
                                      (_%tl133308133336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133310133331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133308133336%_))
                                      (let ((_%e133313133339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133308133336%_))))
                                        (let ((_%hd133312133342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133313133339%_)))
                                              (_%tl133311133344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133313133339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133311133344%_))
                                              ((lambda (_%L133347%_
                                                        _%L133348%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133298%_
                                                    _%L133347%_)))
                                               _%hd133312133342%_
                                               _%hd133309133334%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133301133318%_
                                                 _%g133302133321%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133301133318%_
                                         _%g133302133321%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133301133318%_ _%g133302133321%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133301133318%_ _%g133302133321%_))))))
          (declare (not safe))
          (_%g133300133363%_ _%stx133299%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133180%_ _%stx133181%_)
        (let* ((_%g133183133211%_
                (lambda (_%g133184133208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133184133208%_))))
               (_%g133182133295%_
                (lambda (_%g133184133214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133184133214%_))
                      (let ((_%e133189133216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133184133214%_))))
                        (let ((_%hd133188133219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133189133216%_)))
                              (_%tl133187133221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133189133216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133187133221%_))
                              (let ((_g133997_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133187133221%_
                                        '0))))
                                (begin
                                  (let ((_g133998_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g133997_)
                                               (##vector-length _g133997_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g133998_ 2)))
                                        (error "Context expects 2 values"
                                               _g133998_)))
                                  (let ((_%target133190133224%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133997_ 0)))
                                        (_%tl133192133226%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g133997_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133192133226%_))
                                        (letrec ((_%loop133193133229%_
                                                  (lambda (_%hd133191133232%_
                                                           _%body133197133234%_
                                                           _%hd133198133236%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133191133232%_))
                                                        (let ((_%e133194133239%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133191133232%_))))
                  (let ((_%lp-hd133195133242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133194133239%_)))
                        (_%lp-tl133196133244%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133194133239%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133195133242%_))
                        (let ((_%e133203133247%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133195133242%_))))
                          (let ((_%hd133202133250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133203133247%_)))
                                (_%tl133201133252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133203133247%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133201133252%_))
                                (let ((_%e133206133255%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133201133252%_))))
                                  (let ((_%hd133205133258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133206133255%_)))
                                        (_%tl133204133260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133206133255%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133204133260%_))
                                        (let ((__tmp134000
                                               (cons _%hd133205133258%_
                                                     _%body133197133234%_))
                                              (__tmp133999
                                               (cons _%hd133202133250%_
                                                     _%hd133198133236%_)))
                                          (declare (not safe))
                                          (_%loop133193133229%_
                                           _%lp-tl133196133244%_
                                           __tmp134000
                                           __tmp133999))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133183133211%_
                                           _%g133184133214%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133183133211%_ _%g133184133214%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133183133211%_ _%g133184133214%_)))))
                (let ((_%body133199133263%_ (reverse _%body133197133234%_))
                      (_%hd133200133265%_ (reverse _%hd133198133236%_)))
                  ((lambda (_%L133268%_ _%L133269%_)
                     (for-each
                      (lambda (_%g133283133285%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133180%_ _%g133283133285%_)))
                      (let ((__tmp134001
                             (lambda (_%g133287133290%_ _%g133288133292%_)
                               (cons _%g133287133290%_ _%g133288133292%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134001 '() _%L133268%_))))
                   _%body133199133263%_
                   _%hd133200133265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133193133229%_
                                             _%target133190133224%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133183133211%_
                                           _%g133184133214%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133183133211%_ _%g133184133214%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133183133211%_ _%g133184133214%_))))))
          (declare (not safe))
          (_%g133182133295%_ _%stx133181%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133033%_ _%stx133034%_)
        (let* ((_%g133036133071%_
                (lambda (_%g133037133068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133037133068%_))))
               (_%g133035133177%_
                (lambda (_%g133037133074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133037133074%_))
                      (let ((_%e133043133076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133037133074%_))))
                        (let ((_%hd133042133079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133043133076%_)))
                              (_%tl133041133081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133043133076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133041133081%_))
                              (let ((_%e133046133084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133041133081%_))))
                                (let ((_%hd133045133087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133046133084%_)))
                                      (_%tl133044133089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133046133084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133045133087%_))
                                      (let ((_g134002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133045133087%_
                                                '0))))
                                        (begin
                                          (let ((_g134003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134002_)
                                                       (##vector-length
                                                        _g134002_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134003_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134003_)))
                                          (let ((_%target133047133092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134002_ 0)))
                                                (_%tl133049133094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134002_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133049133094%_))
                                                (letrec ((_%loop133050133097%_
                                                          (lambda (_%hd133048133100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133054133102%_
                           _%hd133055133104%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133048133100%_))
                        (let ((_%e133051133107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133048133100%_))))
                          (let ((_%lp-hd133052133110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133051133107%_)))
                                (_%lp-tl133053133112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133051133107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133052133110%_))
                                (let ((_%e133060133115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133052133110%_))))
                                  (let ((_%hd133059133118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133060133115%_)))
                                        (_%tl133058133120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133060133115%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133058133120%_))
                                        (let ((_%e133063133123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133058133120%_))))
                                          (let ((_%hd133062133126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133063133123%_)))
                                                (_%tl133061133128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133063133123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133061133128%_))
                                                (let ((__tmp134005
                                                       (cons _%hd133062133126%_
                                                             _%expr133054133102%_))
                                                      (__tmp134004
                                                       (cons _%hd133059133118%_
                                                             _%hd133055133104%_)))
                                                  (declare (not safe))
                                                  (_%loop133050133097%_
                                                   _%lp-tl133053133112%_
                                                   __tmp134005
                                                   __tmp134004))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133036133071%_
                                                   _%g133037133074%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133036133071%_
                                           _%g133037133074%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133036133071%_ _%g133037133074%_)))))
                        (let ((_%expr133056133131%_
                               (reverse _%expr133054133102%_))
                              (_%hd133057133133%_
                               (reverse _%hd133055133104%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133044133089%_))
                              (let ((_%e133066133136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133044133089%_))))
                                (let ((_%hd133065133139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133066133136%_)))
                                      (_%tl133064133141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133066133136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133064133141%_))
                                      ((lambda (_%L133144%_
                                                _%L133145%_
                                                _%L133146%_)
                                         (for-each
                                          (lambda (_%g133165133167%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133033%_
                                               _%g133165133167%_)))
                                          (let ((__tmp134007
                                                 (lambda (_%g133169133172%_
                                                          _%g133170133174%_)
                                                   (cons _%g133169133172%_
                                                         _%g133170133174%_)))
                                                (__tmp134006
                                                 (cons _%L133144%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134007
                                             __tmp134006
                                             _%L133145%_))))
                                       _%hd133065133139%_
                                       _%expr133056133131%_
                                       _%hd133057133133%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133036133071%_
                                         _%g133037133074%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133036133071%_ _%g133037133074%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133050133097%_
                                                     _%target133047133092%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133036133071%_
                                                   _%g133037133074%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133036133071%_
                                         _%g133037133074%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133036133071%_ _%g133037133074%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133036133071%_ _%g133037133074%_))))))
          (declare (not safe))
          (_%g133035133177%_ _%stx133034%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132978%_ _%stx132979%_)
        (let* ((_%g132981132995%_
                (lambda (_%g132982132992%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132982132992%_))))
               (_%g132980133030%_
                (lambda (_%g132982132998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132982132998%_))
                      (let ((_%e132987133000%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132982132998%_))))
                        (let ((_%hd132986133003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132987133000%_)))
                              (_%tl132985133005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132987133000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132985133005%_))
                              (let ((_%e132990133008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132985133005%_))))
                                (let ((_%hd132989133011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132990133008%_)))
                                      (_%tl132988133013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132990133008%_))))
                                  ((lambda (_%L133016%_ _%L133017%_)
                                     (let ((__tmp134008 (last _%L133016%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self132978%_
                                        __tmp134008)))
                                   _%tl132988133013%_
                                   _%hd132989133011%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132981132995%_ _%g132982132998%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132981132995%_ _%g132982132998%_))))))
          (declare (not safe))
          (_%g132980133030%_ _%stx132979%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132910%_ _%stx132911%_)
        (let* ((_%g132913132930%_
                (lambda (_%g132914132927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132914132927%_))))
               (_%g132912132975%_
                (lambda (_%g132914132933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132914132933%_))
                      (let ((_%e132919132935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132914132933%_))))
                        (let ((_%hd132918132938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132919132935%_)))
                              (_%tl132917132940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132919132935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132917132940%_))
                              (let ((_%e132922132943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132917132940%_))))
                                (let ((_%hd132921132946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132922132943%_)))
                                      (_%tl132920132948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132922132943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132920132948%_))
                                      (let ((_%e132925132951%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132920132948%_))))
                                        (let ((_%hd132924132954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132925132951%_)))
                                              (_%tl132923132956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132925132951%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132923132956%_))
                                              ((lambda (_%L132959%_
                                                        _%L132960%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self132910%_
                                                    _%L132959%_)))
                                               _%hd132924132954%_
                                               _%hd132921132946%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132913132930%_
                                                 _%g132914132933%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132913132930%_
                                         _%g132914132933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132913132930%_ _%g132914132933%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132913132930%_ _%g132914132933%_))))))
          (declare (not safe))
          (_%g132912132975%_ _%stx132911%_))))
    (define gxc#apply-operands
      (lambda (_%self132823%_ _%stx132824%_)
        (let* ((_%g132826132845%_
                (lambda (_%g132827132842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132827132842%_))))
               (_%g132825132907%_
                (lambda (_%g132827132848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132827132848%_))
                      (let ((_%e132831132850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132827132848%_))))
                        (let ((_%hd132830132853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132831132850%_)))
                              (_%tl132829132855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132831132850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132829132855%_))
                              (let ((_g134009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132829132855%_
                                        '0))))
                                (begin
                                  (let ((_g134010_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134009_)
                                               (##vector-length _g134009_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134010_ 2)))
                                        (error "Context expects 2 values"
                                               _g134010_)))
                                  (let ((_%target132832132858%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134009_ 0)))
                                        (_%tl132834132860%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134009_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132834132860%_))
                                        (letrec ((_%loop132835132863%_
                                                  (lambda (_%hd132833132866%_
                                                           _%rands132839132868%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132833132866%_))
                                                        (let ((_%e132836132871%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132833132866%_))))
                  (let ((_%lp-hd132837132874%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132836132871%_)))
                        (_%lp-tl132838132876%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132836132871%_))))
                    (let ((__tmp134011
                           (cons _%lp-hd132837132874%_ _%rands132839132868%_)))
                      (declare (not safe))
                      (_%loop132835132863%_
                       _%lp-tl132838132876%_
                       __tmp134011))))
                (let ((_%rands132840132879%_ (reverse _%rands132839132868%_)))
                  ((lambda (_%L132882%_)
                     (for-each
                      (lambda (_%g132895132897%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132823%_ _%g132895132897%_)))
                      (let ((__tmp134012
                             (lambda (_%g132899132902%_ _%g132900132904%_)
                               (cons _%g132899132902%_ _%g132900132904%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134012 '() _%L132882%_))))
                   _%rands132840132879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop132835132863%_
                                             _%target132832132858%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132826132845%_
                                           _%g132827132848%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g132826132845%_ _%g132827132848%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132826132845%_ _%g132827132848%_))))))
          (declare (not safe))
          (_%g132825132907%_ _%stx132824%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132820%_ _%src-stx132821%_)
        (let ((__tmp134013
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132821%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132820%_ __tmp134013))))
    (define gxc#xform-begin%
      (lambda (_%self132775%_ _%stx132776%_)
        (let* ((_%g132778132788%_
                (lambda (_%g132779132785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132779132785%_))))
               (_%g132777132817%_
                (lambda (_%g132779132791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132779132791%_))
                      (let ((_%e132783132793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132779132791%_))))
                        (let ((_%hd132782132796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132783132793%_)))
                              (_%tl132781132798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132783132793%_))))
                          ((lambda (_%L132801%_)
                             (let* ((_%forms132815%_
                                     (map (lambda (_%g132810132812%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132775%_
                                               _%g132810132812%_)))
                                          _%L132801%_))
                                    (__tmp134014
                                     (cons '%#begin _%forms132815%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134014
                                _%stx132776%_)))
                           _%tl132781132798%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132778132788%_ _%g132779132791%_))))))
          (declare (not safe))
          (_%g132777132817%_ _%stx132776%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132729%_ _%stx132730%_)
        (let* ((_%g132732132742%_
                (lambda (_%g132733132739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132733132739%_))))
               (_%g132731132772%_
                (lambda (_%g132733132745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132733132745%_))
                      (let ((_%e132737132747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132733132745%_))))
                        (let ((_%hd132736132750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132737132747%_)))
                              (_%tl132735132752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132737132747%_))))
                          ((lambda (_%L132755%_)
                             (let ((__tmp134017
                                    (lambda ()
                                      (let* ((_%forms132770%_
                                              (map (lambda (_%g132765132767%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132729%_
                                                        _%g132765132767%_)))
                                                   _%L132755%_))
                                             (__tmp134018
                                              (cons '%#begin-syntax
                                                    _%forms132770%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134018
                                         _%stx132730%_))))
                                   (__tmp134015
                                    (let ((__tmp134016
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134016 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134017
                                gx#current-expander-phi
                                __tmp134015)))
                           _%tl132735132752%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132732132742%_ _%g132733132745%_))))))
          (declare (not safe))
          (_%g132731132772%_ _%stx132730%_))))
    (define gxc#xform-module%
      (lambda (_%self132666%_ _%stx132667%_)
        (let* ((_%g132669132683%_
                (lambda (_%g132670132680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132670132680%_))))
               (_%g132668132726%_
                (lambda (_%g132670132686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132670132686%_))
                      (let ((_%e132675132688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132670132686%_))))
                        (let ((_%hd132674132691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132675132688%_)))
                              (_%tl132673132693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132675132688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132673132693%_))
                              (let ((_%e132678132696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132673132693%_))))
                                (let ((_%hd132677132699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132678132696%_)))
                                      (_%tl132676132701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132678132696%_))))
                                  ((lambda (_%L132704%_ _%L132705%_)
                                     (let* ((_%ctx132718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132705%_)))
                                            (_%code132720%_
                                             (##structure-ref
                                              _%ctx132718%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132723%_
                                             (let ((__tmp134019
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self132666%_
                                                         _%code132720%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134019
                                                gx#current-expander-context
                                                _%ctx132718%_))))
                                       (##structure-set!
                                        _%ctx132718%_
                                        _%code132723%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134020
                                              (cons '%#module
                                                    (cons _%L132705%_
                                                          (cons _%code132723%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134020
                                          _%stx132667%_))))
                                   _%tl132676132701%_
                                   _%hd132677132699%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132669132683%_ _%g132670132686%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132669132683%_ _%g132670132686%_))))))
          (declare (not safe))
          (_%g132668132726%_ _%stx132667%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132596%_ _%stx132597%_)
        (let* ((_%g132599132616%_
                (lambda (_%g132600132613%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132600132613%_))))
               (_%g132598132663%_
                (lambda (_%g132600132619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132600132619%_))
                      (let ((_%e132605132621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132600132619%_))))
                        (let ((_%hd132604132624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132605132621%_)))
                              (_%tl132603132626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132605132621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132603132626%_))
                              (let ((_%e132608132629%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132603132626%_))))
                                (let ((_%hd132607132632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132608132629%_)))
                                      (_%tl132606132634%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132608132629%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132606132634%_))
                                      (let ((_%e132611132637%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132606132634%_))))
                                        (let ((_%hd132610132640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132611132637%_)))
                                              (_%tl132609132642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132611132637%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132609132642%_))
                                              ((lambda (_%L132645%_
                                                        _%L132646%_)
                                                 (let* ((_%expr132661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132596%_
                                                            _%L132645%_)))
                                                        (__tmp134021
                                                         (cons '%#define-values
                                                               (cons _%L132646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132661%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134021
                                                    _%stx132597%_)))
                                               _%hd132610132640%_
                                               _%hd132607132632%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132599132616%_
                                                 _%g132600132619%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132599132616%_
                                         _%g132600132619%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132599132616%_ _%g132600132619%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132599132616%_ _%g132600132619%_))))))
          (declare (not safe))
          (_%g132598132663%_ _%stx132597%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132525%_ _%stx132526%_)
        (let* ((_%g132528132545%_
                (lambda (_%g132529132542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132529132542%_))))
               (_%g132527132593%_
                (lambda (_%g132529132548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132529132548%_))
                      (let ((_%e132534132550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132529132548%_))))
                        (let ((_%hd132533132553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132534132550%_)))
                              (_%tl132532132555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132534132550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132532132555%_))
                              (let ((_%e132537132558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132532132555%_))))
                                (let ((_%hd132536132561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132537132558%_)))
                                      (_%tl132535132563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132537132558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132535132563%_))
                                      (let ((_%e132540132566%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132535132563%_))))
                                        (let ((_%hd132539132569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132540132566%_)))
                                              (_%tl132538132571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132540132566%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132538132571%_))
                                              ((lambda (_%L132574%_
                                                        _%L132575%_)
                                                 (let ((__tmp134024
                                                        (lambda ()
                                                          (let* ((_%expr132591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self132525%_ _%L132574%_)))
                         (__tmp134025
                          (cons '%#define-syntax
                                (cons _%L132575%_ (cons _%expr132591%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134025 _%stx132526%_))))
               (__tmp134022
                (let ((__tmp134023
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134023 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134024
                                                    gx#current-expander-phi
                                                    __tmp134022)))
                                               _%hd132539132569%_
                                               _%hd132536132561%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132528132545%_
                                                 _%g132529132548%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132528132545%_
                                         _%g132529132548%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132528132545%_ _%g132529132548%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132528132545%_ _%g132529132548%_))))))
          (declare (not safe))
          (_%g132527132593%_ _%stx132526%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132455%_ _%stx132456%_)
        (let* ((_%g132458132475%_
                (lambda (_%g132459132472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132459132472%_))))
               (_%g132457132522%_
                (lambda (_%g132459132478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132459132478%_))
                      (let ((_%e132464132480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132459132478%_))))
                        (let ((_%hd132463132483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132464132480%_)))
                              (_%tl132462132485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132464132480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132462132485%_))
                              (let ((_%e132467132488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132462132485%_))))
                                (let ((_%hd132466132491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132467132488%_)))
                                      (_%tl132465132493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132467132488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132465132493%_))
                                      (let ((_%e132470132496%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132465132493%_))))
                                        (let ((_%hd132469132499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132470132496%_)))
                                              (_%tl132468132501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132470132496%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132468132501%_))
                                              ((lambda (_%L132504%_
                                                        _%L132505%_)
                                                 (let* ((_%expr132520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132455%_
                                                            _%L132504%_)))
                                                        (__tmp134026
                                                         (cons '%#begin-annotation
                                                               (cons _%L132505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132520%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134026
                                                    _%stx132456%_)))
                                               _%hd132469132499%_
                                               _%hd132466132491%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132458132475%_
                                                 _%g132459132478%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132458132475%_
                                         _%g132459132478%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132458132475%_ _%g132459132478%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132458132475%_ _%g132459132478%_))))))
          (declare (not safe))
          (_%g132457132522%_ _%stx132456%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132393%_ _%stx132394%_)
        (let* ((_%g132396132410%_
                (lambda (_%g132397132407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132397132407%_))))
               (_%g132395132452%_
                (lambda (_%g132397132413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132397132413%_))
                      (let ((_%e132402132415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132397132413%_))))
                        (let ((_%hd132401132418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132402132415%_)))
                              (_%tl132400132420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132402132415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132400132420%_))
                              (let ((_%e132405132423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132400132420%_))))
                                (let ((_%hd132404132426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132405132423%_)))
                                      (_%tl132403132428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132405132423%_))))
                                  ((lambda (_%L132431%_ _%L132432%_)
                                     (let ((__tmp134029
                                            (lambda ()
                                              (let* ((_%body132450%_
                                                      (map (lambda (_%g132445132447%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132393%_ _%g132445132447%_)))
                   _%L132431%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134030
                                                      (cons '%#lambda
                                                            (cons _%L132432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134030
                                                 _%stx132394%_))))
                                           (__tmp134027
                                            (let ((__tmp134028
                                                   (cons _%L132432%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134028))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134029
                                        gxc#current-compile-local-env
                                        __tmp134027)))
                                   _%tl132403132428%_
                                   _%hd132404132426%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132396132410%_ _%g132397132413%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132396132410%_ _%g132397132413%_))))))
          (declare (not safe))
          (_%g132395132452%_ _%stx132394%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132301%_ _%stx132302%_)
        (letrec ((_%clause-e132304%_
                  (lambda (_%clause132345%_)
                    (let* ((_%g132347132358%_
                            (lambda (_%g132348132355%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132348132355%_))))
                           (_%g132346132390%_
                            (lambda (_%g132348132361%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132348132361%_))
                                  (let ((_%e132353132363%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132348132361%_))))
                                    (let ((_%hd132352132366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132353132363%_)))
                                          (_%tl132351132368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132353132363%_))))
                                      ((lambda (_%L132371%_ _%L132372%_)
                                         (let ((__tmp134033
                                                (lambda ()
                                                  (let ((_%body132388%_
                                                         (map (lambda (_%g132383132385%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132301%_ _%g132383132385%_)))
                      _%L132371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132372%_
                                                          _%body132388%_))))
                                               (__tmp134031
                                                (let ((__tmp134032
                                                       (cons _%L132372%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134032))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134033
                                            gxc#current-compile-local-env
                                            __tmp134031)))
                                       _%tl132351132368%_
                                       _%hd132352132366%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132347132358%_ _%g132348132361%_))))))
                      (declare (not safe))
                      (_%g132346132390%_ _%clause132345%_)))))
          (let* ((_%g132306132316%_
                  (lambda (_%g132307132313%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132307132313%_))))
                 (_%g132305132342%_
                  (lambda (_%g132307132319%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132307132319%_))
                        (let ((_%e132311132321%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132307132319%_))))
                          (let ((_%hd132310132324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132311132321%_)))
                                (_%tl132309132326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132311132321%_))))
                            ((lambda (_%L132329%_)
                               (let* ((_%clauses132340%_
                                       (map _%clause-e132304%_ _%L132329%_))
                                      (__tmp134034
                                       (cons '%#case-lambda
                                             _%clauses132340%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134034
                                  _%stx132302%_)))
                             _%tl132309132326%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132306132316%_ _%g132307132319%_))))))
            (declare (not safe))
            (_%g132305132342%_ _%stx132302%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132055%_ _%stx132056%_)
        (let* ((_%g132058132091%_
                (lambda (_%g132059132088%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132059132088%_))))
               (_%g132057132298%_
                (lambda (_%g132059132094%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132059132094%_))
                      (let ((_%e132066132096%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132059132094%_))))
                        (let ((_%hd132065132099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132066132096%_)))
                              (_%tl132064132101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132066132096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132064132101%_))
                              (let ((_%e132069132104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132064132101%_))))
                                (let ((_%hd132068132107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132069132104%_)))
                                      (_%tl132067132109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132069132104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132068132107%_))
                                      (let ((_g134035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132068132107%_
                                                '0))))
                                        (begin
                                          (let ((_g134036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134035_)
                                                       (##vector-length
                                                        _g134035_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134036_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134036_)))
                                          (let ((_%target132070132112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134035_ 0)))
                                                (_%tl132072132114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134035_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132072132114%_))
                                                (letrec ((_%loop132073132117%_
                                                          (lambda (_%hd132071132120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132077132122%_
                           _%hd132078132124%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132071132120%_))
                        (let ((_%e132074132127%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132071132120%_))))
                          (let ((_%lp-hd132075132130%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132074132127%_)))
                                (_%lp-tl132076132132%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132074132127%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132075132130%_))
                                (let ((_%e132083132135%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132075132130%_))))
                                  (let ((_%hd132082132138%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132083132135%_)))
                                        (_%tl132081132140%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132083132135%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132081132140%_))
                                        (let ((_%e132086132143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132081132140%_))))
                                          (let ((_%hd132085132146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132086132143%_)))
                                                (_%tl132084132148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132086132143%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132084132148%_))
                                                (let ((__tmp134038
                                                       (cons _%hd132085132146%_
                                                             _%expr132077132122%_))
                                                      (__tmp134037
                                                       (cons _%hd132082132138%_
                                                             _%hd132078132124%_)))
                                                  (declare (not safe))
                                                  (_%loop132073132117%_
                                                   _%lp-tl132076132132%_
                                                   __tmp134038
                                                   __tmp134037))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132058132091%_
                                                   _%g132059132094%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132058132091%_
                                           _%g132059132094%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132058132091%_ _%g132059132094%_)))))
                        (let ((_%expr132079132151%_
                               (reverse _%expr132077132122%_))
                              (_%hd132080132153%_
                               (reverse _%hd132078132124%_)))
                          ((lambda (_%L132156%_
                                    _%L132157%_
                                    _%L132158%_
                                    _%L132159%_)
                             (let* ((_%g132178132194%_
                                     (lambda (_%g132179132191%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132179132191%_))))
                                    (_%g132177132284%_
                                     (lambda (_%g132179132197%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132179132197%_))
                                           (let ((_g134039_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132179132197%_
                                                     '0))))
                                             (begin
                                               (let ((_g134040_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134039_)
                                                            (##vector-length
                                                             _g134039_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134040_)))
                                               (let ((_%target132181132199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134039_
                                                         0)))
                                                     (_%tl132183132201%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134039_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132183132201%_))
                                                     (letrec ((_%loop132184132204%_
                                                               (lambda (_%hd132182132207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132188132209%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132182132207%_))
                             (let ((_%e132185132212%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132182132207%_))))
                               (let ((_%lp-hd132186132215%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132185132212%_)))
                                     (_%lp-tl132187132217%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132185132212%_))))
                                 (let ((__tmp134041
                                        (cons _%lp-hd132186132215%_
                                              _%expr132188132209%_)))
                                   (declare (not safe))
                                   (_%loop132184132204%_
                                    _%lp-tl132187132217%_
                                    __tmp134041))))
                             (let ((_%expr132189132220%_
                                    (reverse _%expr132188132209%_)))
                               ((lambda (_%L132223%_)
                                  (let ((__tmp134045
                                         (lambda ()
                                           (let* ((_%g132237132244%_
                                                   (lambda (_%g132238132241%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132238132241%_))))
                                                  (_%g132236132270%_
                                                   (lambda (_%g132238132247%_)
                                                     ((lambda (_%L132249%_)
                                                        (let ((__tmp134046
                                                               (cons _%L132159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132223%_
                                        _%L132158%_))
                                     (let ((__tmp134047
                                            (lambda (_%g132259132263%_
                                                     _%g132260132265%_
                                                     _%g132261132267%_)
                                              (cons (cons _%g132260132265%_
                                                          (cons _%g132259132263%_
                                                                '()))
                                                    _%g132261132267%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134047
                                        '()
                                        _%L132223%_
                                        _%L132158%_)))
                                   _%L132249%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134046 _%stx132056%_)))
              _%g132238132247%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134048
                                                   (map (lambda (_%g132272132274%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132055%_
                                                             _%g132272132274%_)))
                                                        _%L132156%_)))
                                             (declare (not safe))
                                             (_%g132236132270%_ __tmp134048))))
                                        (__tmp134042
                                         (let ((__tmp134043
                                                (let ((__tmp134044
                                                       (lambda (_%g132276132279%_
                                                                _%g132277132281%_)
                                                         (cons _%g132276132279%_
                                                               _%g132277132281%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134044
                                                   '()
                                                   _%L132158%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134043))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134045
                                     gxc#current-compile-local-env
                                     __tmp134042)))
                                _%expr132189132220%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132184132204%_ _%target132181132199%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132178132194%_
                                                        _%g132179132197%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132178132194%_
                                              _%g132179132197%_)))))
                                    (__tmp134049
                                     (map (lambda (_%g132286132288%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132055%_
                                               _%g132286132288%_)))
                                          (let ((__tmp134050
                                                 (lambda (_%g132290132293%_
                                                          _%g132291132295%_)
                                                   (cons _%g132290132293%_
                                                         _%g132291132295%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134050
                                             '()
                                             _%L132157%_)))))
                               (declare (not safe))
                               (_%g132177132284%_ __tmp134049)))
                           _%tl132067132109%_
                           _%expr132079132151%_
                           _%hd132080132153%_
                           _%hd132065132099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132073132117%_
                                                     _%target132070132112%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132058132091%_
                                                   _%g132059132094%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132058132091%_
                                         _%g132059132094%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132058132091%_ _%g132059132094%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132058132091%_ _%g132059132094%_))))))
          (declare (not safe))
          (_%g132057132298%_ _%stx132056%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131809%_ _%stx131810%_)
        (let* ((_%g131812131845%_
                (lambda (_%g131813131842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131813131842%_))))
               (_%g131811132052%_
                (lambda (_%g131813131848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131813131848%_))
                      (let ((_%e131820131850%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131813131848%_))))
                        (let ((_%hd131819131853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131820131850%_)))
                              (_%tl131818131855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131820131850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131818131855%_))
                              (let ((_%e131823131858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131818131855%_))))
                                (let ((_%hd131822131861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131823131858%_)))
                                      (_%tl131821131863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131823131858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131822131861%_))
                                      (let ((_g134051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131822131861%_
                                                '0))))
                                        (begin
                                          (let ((_g134052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134051_)
                                                       (##vector-length
                                                        _g134051_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134052_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134052_)))
                                          (let ((_%target131824131866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134051_ 0)))
                                                (_%tl131826131868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134051_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131826131868%_))
                                                (letrec ((_%loop131827131871%_
                                                          (lambda (_%hd131825131874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131831131876%_
                           _%hd131832131878%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131825131874%_))
                        (let ((_%e131828131881%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131825131874%_))))
                          (let ((_%lp-hd131829131884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131828131881%_)))
                                (_%lp-tl131830131886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131828131881%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131829131884%_))
                                (let ((_%e131837131889%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131829131884%_))))
                                  (let ((_%hd131836131892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131837131889%_)))
                                        (_%tl131835131894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131837131889%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131835131894%_))
                                        (let ((_%e131840131897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131835131894%_))))
                                          (let ((_%hd131839131900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131840131897%_)))
                                                (_%tl131838131902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131840131897%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131838131902%_))
                                                (let ((__tmp134054
                                                       (cons _%hd131839131900%_
                                                             _%expr131831131876%_))
                                                      (__tmp134053
                                                       (cons _%hd131836131892%_
                                                             _%hd131832131878%_)))
                                                  (declare (not safe))
                                                  (_%loop131827131871%_
                                                   _%lp-tl131830131886%_
                                                   __tmp134054
                                                   __tmp134053))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131812131845%_
                                                   _%g131813131848%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131812131845%_
                                           _%g131813131848%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131812131845%_ _%g131813131848%_)))))
                        (let ((_%expr131833131905%_
                               (reverse _%expr131831131876%_))
                              (_%hd131834131907%_
                               (reverse _%hd131832131878%_)))
                          ((lambda (_%L131910%_
                                    _%L131911%_
                                    _%L131912%_
                                    _%L131913%_)
                             (let ((__tmp134058
                                    (lambda ()
                                      (let* ((_%g131933131949%_
                                              (lambda (_%g131934131946%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131934131946%_))))
                                             (_%g131932132031%_
                                              (lambda (_%g131934131952%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131934131952%_))
                                                    (let ((_g134059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131934131952%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134060_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134059_)
                             (##vector-length _g134059_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134060_ 2)))
                      (error "Context expects 2 values" _g134060_)))
                (let ((_%target131936131954%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134059_ 0)))
                      (_%tl131938131956%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134059_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131938131956%_))
                      (letrec ((_%loop131939131959%_
                                (lambda (_%hd131937131962%_
                                         _%expr131943131964%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131937131962%_))
                                      (let ((_%e131940131967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131937131962%_))))
                                        (let ((_%lp-hd131941131970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131940131967%_)))
                                              (_%lp-tl131942131972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131940131967%_))))
                                          (let ((__tmp134061
                                                 (cons _%lp-hd131941131970%_
                                                       _%expr131943131964%_)))
                                            (declare (not safe))
                                            (_%loop131939131959%_
                                             _%lp-tl131942131972%_
                                             __tmp134061))))
                                      (let ((_%expr131944131975%_
                                             (reverse _%expr131943131964%_)))
                                        ((lambda (_%L131978%_)
                                           (let ()
                                             (let* ((_%g131992131999%_
                                                     (lambda (_%g131993131996%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g131993131996%_))))
                                                    (_%g131991132024%_
                                                     (lambda (_%g131993132002%_)
                                                       ((lambda (_%L132004%_)
                                                          (let ((__tmp134062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L131913%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L131978%_
                                          _%L131912%_))
                                       (let ((__tmp134063
                                              (lambda (_%g132013132017%_
                                                       _%g132014132019%_
                                                       _%g132015132021%_)
                                                (cons (cons _%g132014132019%_
                                                            (cons _%g132013132017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132015132021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134063
                                          '()
                                          _%L131978%_
                                          _%L131912%_)))
                                     _%L132004%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134062 _%stx131810%_)))
                _%g131993132002%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134064
                                                     (map (lambda (_%g132026132028%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131809%_
                                                               _%g132026132028%_)))
                                                          _%L131910%_)))
                                               (declare (not safe))
                                               (_%g131991132024%_
                                                __tmp134064))))
                                         _%expr131944131975%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop131939131959%_ _%target131936131954%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g131933131949%_ _%g131934131952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g131933131949%_
                                                       _%g131934131952%_)))))
                                             (__tmp134065
                                              (map (lambda (_%g132033132035%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self131809%_
                                                        _%g132033132035%_)))
                                                   (let ((__tmp134066
                                                          (lambda (_%g132037132040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132038132042%_)
                    (cons _%g132037132040%_ _%g132038132042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134066
                                                      '()
                                                      _%L131911%_)))))
                                        (declare (not safe))
                                        (_%g131932132031%_ __tmp134065))))
                                   (__tmp134055
                                    (let ((__tmp134056
                                           (let ((__tmp134057
                                                  (lambda (_%g132044132047%_
                                                           _%g132045132049%_)
                                                    (cons _%g132044132047%_
                                                          _%g132045132049%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134057
                                              '()
                                              _%L131912%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134056))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134058
                                gxc#current-compile-local-env
                                __tmp134055)))
                           _%tl131821131863%_
                           _%expr131833131905%_
                           _%hd131834131907%_
                           _%hd131819131853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131827131871%_
                                                     _%target131824131866%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131812131845%_
                                                   _%g131813131848%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131812131845%_
                                         _%g131813131848%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131812131845%_ _%g131813131848%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131812131845%_ _%g131813131848%_))))))
          (declare (not safe))
          (_%g131811132052%_ _%stx131810%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131713%_)
        (let _%loop131715%_ ((_%rest131717%_ _%bindings131713%_)
                             (_%locals131718%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131719131727%_ _%rest131717%_)
                 (_%else131721131735%_ (lambda () _%locals131718%_))
                 (_%K131723131797%_
                  (lambda (_%rest131738%_ _%bind131739%_)
                    (let _%loop-bind131741%_ ((_%bind131743%_ _%bind131739%_)
                                              (_%locals131744%_
                                               _%locals131718%_))
                      (let* ((_%bind131745131756%_ _%bind131743%_)
                             (_%E131749131760%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131745131756%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131752131785%_
                               (lambda (_%bind-rest131782%_ _%id131783%_)
                                 (let ((__tmp134067
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131783%_))
                                              _%locals131744%_)))
                                   (declare (not safe))
                                   (_%loop-bind131741%_
                                    _%bind-rest131782%_
                                    __tmp134067))))
                              (_%K131751131774%_
                               (lambda (_%id131772%_)
                                 (let ((__tmp134068
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131772%_))
                                              _%locals131744%_)))
                                   (declare (not safe))
                                   (_%loop131715%_
                                    _%rest131738%_
                                    __tmp134068))))
                              (_%K131750131765%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop131715%_
                                    _%rest131738%_
                                    _%locals131744%_)))))
                          (let ((_%try-match131747131779%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131745131756%_))
                                       (let ((_%id131777%_
                                              _%bind131745131756%_))
                                         (declare (not safe))
                                         (_%K131751131774%_ _%id131777%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K131750131765%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131745131756%_))
                                (let ((_%tl131754131790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131745131756%_)))
                                      (_%hd131753131788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131745131756%_))))
                                  (let ((_%id131793%_ _%hd131753131788%_)
                                        (_%bind-rest131795%_
                                         _%tl131754131790%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K131752131785%_
                                       _%bind-rest131795%_
                                       _%id131793%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match131747131779%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131719131727%_))
                (let ((_%hd131724131800%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131719131727%_)))
                      (_%tl131725131802%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131719131727%_))))
                  (let* ((_%bind131805%_ _%hd131724131800%_)
                         (_%rest131807%_ _%tl131725131802%_))
                    (declare (not safe))
                    (_%K131723131797%_ _%rest131807%_ _%bind131805%_)))
                (let () (declare (not safe)) (_%else131721131735%_)))))))
    (define gxc#xform-operands
      (lambda (_%self131665%_ _%stx131666%_)
        (let* ((_%g131668131679%_
                (lambda (_%g131669131676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131669131676%_))))
               (_%g131667131710%_
                (lambda (_%g131669131682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131669131682%_))
                      (let ((_%e131674131684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131669131682%_))))
                        (let ((_%hd131673131687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131674131684%_)))
                              (_%tl131672131689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131674131684%_))))
                          ((lambda (_%L131692%_ _%L131693%_)
                             (let* ((_%rands131708%_
                                     (map (lambda (_%g131703131705%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131665%_
                                               _%g131703131705%_)))
                                          _%L131692%_))
                                    (__tmp134069
                                     (cons _%L131693%_ _%rands131708%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134069
                                _%stx131666%_)))
                           _%tl131672131689%_
                           _%hd131673131687%_)))
                      (let ()
                        (declare (not safe))
                        (_%g131668131679%_ _%g131669131682%_))))))
          (declare (not safe))
          (_%g131667131710%_ _%stx131666%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131595%_ _%stx131596%_)
        (let* ((_%g131598131615%_
                (lambda (_%g131599131612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131599131612%_))))
               (_%g131597131662%_
                (lambda (_%g131599131618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131599131618%_))
                      (let ((_%e131604131620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131599131618%_))))
                        (let ((_%hd131603131623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131604131620%_)))
                              (_%tl131602131625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131604131620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131602131625%_))
                              (let ((_%e131607131628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131602131625%_))))
                                (let ((_%hd131606131631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131607131628%_)))
                                      (_%tl131605131633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131607131628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131605131633%_))
                                      (let ((_%e131610131636%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131605131633%_))))
                                        (let ((_%hd131609131639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131610131636%_)))
                                              (_%tl131608131641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131610131636%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131608131641%_))
                                              ((lambda (_%L131644%_
                                                        _%L131645%_)
                                                 (let* ((_%expr131660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self131595%_
                                                            _%L131644%_)))
                                                        (__tmp134070
                                                         (cons '%#set!
                                                               (cons _%L131645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr131660%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134070
                                                    _%stx131596%_)))
                                               _%hd131609131639%_
                                               _%hd131606131631%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g131598131615%_
                                                 _%g131599131618%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131598131615%_
                                         _%g131599131618%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131598131615%_ _%g131599131618%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131598131615%_ _%g131599131618%_))))))
          (declare (not safe))
          (_%g131597131662%_ _%stx131596%_))))))
