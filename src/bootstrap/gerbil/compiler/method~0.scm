(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712124235)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx133783%_)
        (let* ((_%self133785%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e133787%_
                (let ((__tmp133965
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133783%_))))
                  (declare (not safe))
                  (method-ref _%self133785%_ __tmp133965))))
          (if _%$e133787%_
              ((lambda (_%method133790%_)
                 (declare (not safe))
                 (_%method133790%_ _%self133785%_ _%stx133783%_))
               _%$e133787%_)
              (let ()
                (let ((__tmp133967
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133783%_)))
                      (__tmp133966
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133783%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133785%_
                         __tmp133967
                         __tmp133966)))))))
    (define gxc#compile-e__1
      (lambda (_%self133794%_ _%stx133795%_)
        (let ((_%$e133797%_
               (let ((__tmp133968
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx133795%_))))
                 (declare (not safe))
                 (method-ref _%self133794%_ __tmp133968))))
          (if _%$e133797%_
              ((lambda (_%method133800%_)
                 (declare (not safe))
                 (_%method133800%_ _%self133794%_ _%stx133795%_))
               _%$e133797%_)
              (let ()
                (let ((__tmp133970
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx133795%_)))
                      (__tmp133969
                       (let ()
                         (declare (not safe))
                         (gx#syntax->datum _%stx133795%_))))
                  (declare (not safe))
                  (error '"missing method"
                         _%self133794%_
                         __tmp133970
                         __tmp133969)))))))
    (define gxc#compile-e
      (lambda _g133972_
        (let ((_g133971_ (let () (declare (not safe)) (##length _g133972_))))
          (cond ((let () (declare (not safe)) (##fx= _g133971_ 1))
                 (apply (lambda (_%stx133783%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx133783%_)))
                        _g133972_))
                ((let () (declare (not safe)) (##fx= _g133971_ 2))
                 (apply (lambda (_%self133794%_ _%stx133795%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133794%_ _%stx133795%_)))
                        _g133972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g133972_))))))
    (define gxc#stx-car-e
      (lambda (_%stx133781%_)
        (let ((__tmp133973
               (car (let () (declare (not safe)) (gx#stx-e _%stx133781%_)))))
          (declare (not safe))
          (gx#stx-e __tmp133973))))
    (define gxc#void-method (lambda (_%self133778%_ _%stx133779%_) '#!void))
    (define gxc#false-method (lambda (_%self133775%_ _%stx133776%_) '#f))
    (define gxc#true-method (lambda (_%self133772%_ _%stx133773%_) '#t))
    (define gxc#identity-method
      (lambda (_%self133769%_ _%stx133770%_) _%stx133770%_))
    (define gxc#::void-expression::t
      (let ((__tmp133974 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp133974
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args133766%_
        (apply make-instance gxc#::void-expression::t _%$args133766%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp133975
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
        (__make-promise __tmp133975)))
    (define gxc#::void-special-form::t
      (let ((__tmp133976 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp133976
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args133762%_
        (apply make-instance gxc#::void-special-form::t _%$args133762%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp133977
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
        (__make-promise __tmp133977)))
    (define gxc#::void::t
      (let ((__tmp133978
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp133978 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args133758%_
        (apply make-instance gxc#::void::t _%$args133758%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp133979
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133979)))
    (define gxc#::false-expression::t
      (let ((__tmp133980 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp133980
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args133754%_
        (apply make-instance gxc#::false-expression::t _%$args133754%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp133981
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
        (__make-promise __tmp133981)))
    (define gxc#::false-special-form::t
      (let ((__tmp133982 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp133982
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args133750%_
        (apply make-instance gxc#::false-special-form::t _%$args133750%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp133983
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
        (__make-promise __tmp133983)))
    (define gxc#::false::t
      (let ((__tmp133984
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp133984 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args133746%_
        (apply make-instance gxc#::false::t _%$args133746%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp133985
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133985)))
    (define gxc#::identity-expression::t
      (let ((__tmp133986 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp133986
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args133742%_
        (apply make-instance gxc#::identity-expression::t _%$args133742%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp133987
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
        (__make-promise __tmp133987)))
    (define gxc#::identity-special-form::t
      (let ((__tmp133988 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp133988
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args133738%_
        (apply make-instance gxc#::identity-special-form::t _%$args133738%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp133989
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
        (__make-promise __tmp133989)))
    (define gxc#::identity::t
      (let ((__tmp133990
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp133990
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args133734%_
        (apply make-instance gxc#::identity::t _%$args133734%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp133991
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp133991)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp133992 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp133992
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args133730%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args133730%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp133993
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
        (__make-promise __tmp133993)))
    (define gxc#::basic-xform::t
      (let ((__tmp133994
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp133994
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args133726%_
        (apply make-instance gxc#::basic-xform::t _%$args133726%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp133995
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
        (__make-promise __tmp133995)))
    (define gxc#apply-begin%
      (lambda (_%self133682%_ _%stx133683%_)
        (let* ((_%g133685133695%_
                (lambda (_%g133686133692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133686133692%_))))
               (_%g133684133722%_
                (lambda (_%g133686133698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133686133698%_))
                      (let ((_%e133690133700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133686133698%_))))
                        (let ((_%hd133689133703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133690133700%_)))
                              (_%tl133688133705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133690133700%_))))
                          ((lambda (_%L133708%_)
                             (for-each
                              (lambda (_%g133717133719%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self133682%_
                                   _%g133717133719%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L133708%_))))
                           _%tl133688133705%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133685133695%_ _%g133686133698%_))))))
          (declare (not safe))
          (_%g133684133722%_ _%stx133683%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self133643%_ _%stx133644%_)
        (let* ((_%g133646133656%_
                (lambda (_%g133647133653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133647133653%_))))
               (_%g133645133679%_
                (lambda (_%g133647133659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133647133659%_))
                      (let ((_%e133651133661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133647133659%_))))
                        (let ((_%hd133650133664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133651133661%_)))
                              (_%tl133649133666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133651133661%_))))
                          ((lambda (_%L133669%_)
                             (let ((__tmp133996 (last _%L133669%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self133643%_ __tmp133996)))
                           _%tl133649133666%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133646133656%_ _%g133647133659%_))))))
          (declare (not safe))
          (_%g133645133679%_ _%stx133644%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self133639%_ _%stx133640%_)
        (let ((__tmp133999
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self133639%_ _%stx133640%_))))
              (__tmp133997
               (let ((__tmp133998
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp133998 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp133999
           gx#current-expander-phi
           __tmp133997))))
    (define gxc#apply-module%
      (lambda (_%self133578%_ _%stx133579%_)
        (let* ((_%g133581133595%_
                (lambda (_%g133582133592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133582133592%_))))
               (_%g133580133636%_
                (lambda (_%g133582133598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133582133598%_))
                      (let ((_%e133587133600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133582133598%_))))
                        (let ((_%hd133586133603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133587133600%_)))
                              (_%tl133585133605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133587133600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133585133605%_))
                              (let ((_%e133590133608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133585133605%_))))
                                (let ((_%hd133589133611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133590133608%_)))
                                      (_%tl133588133613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133590133608%_))))
                                  ((lambda (_%L133616%_ _%L133617%_)
                                     (let* ((_%ctx133630%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133617%_)))
                                            (_%ctx-stx133632%_
                                             (##structure-ref
                                              _%ctx133630%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp134000
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self133578%_
                                                   _%ctx-stx133632%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp134000
                                          gx#current-expander-context
                                          _%ctx133630%_))))
                                   _%tl133588133613%_
                                   _%hd133589133611%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133581133595%_ _%g133582133598%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133581133595%_ _%g133582133598%_))))))
          (declare (not safe))
          (_%g133580133636%_ _%stx133579%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self133510%_ _%stx133511%_)
        (let* ((_%g133513133530%_
                (lambda (_%g133514133527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133514133527%_))))
               (_%g133512133575%_
                (lambda (_%g133514133533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133514133533%_))
                      (let ((_%e133519133535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133514133533%_))))
                        (let ((_%hd133518133538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133519133535%_)))
                              (_%tl133517133540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133519133535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133517133540%_))
                              (let ((_%e133522133543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133517133540%_))))
                                (let ((_%hd133521133546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133522133543%_)))
                                      (_%tl133520133548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133522133543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133520133548%_))
                                      (let ((_%e133525133551%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133520133548%_))))
                                        (let ((_%hd133524133554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133525133551%_)))
                                              (_%tl133523133556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133525133551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133523133556%_))
                                              ((lambda (_%L133559%_
                                                        _%L133560%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133510%_
                                                    _%L133559%_)))
                                               _%hd133524133554%_
                                               _%hd133521133546%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133513133530%_
                                                 _%g133514133533%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133513133530%_
                                         _%g133514133533%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133513133530%_ _%g133514133533%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133513133530%_ _%g133514133533%_))))))
          (declare (not safe))
          (_%g133512133575%_ _%stx133511%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133442%_ _%stx133443%_)
        (let* ((_%g133445133462%_
                (lambda (_%g133446133459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133446133459%_))))
               (_%g133444133507%_
                (lambda (_%g133446133465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133446133465%_))
                      (let ((_%e133451133467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133446133465%_))))
                        (let ((_%hd133450133470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133451133467%_)))
                              (_%tl133449133472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133451133467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133449133472%_))
                              (let ((_%e133454133475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133449133472%_))))
                                (let ((_%hd133453133478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133454133475%_)))
                                      (_%tl133452133480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133454133475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133452133480%_))
                                      (let ((_%e133457133483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133452133480%_))))
                                        (let ((_%hd133456133486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133457133483%_)))
                                              (_%tl133455133488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133457133483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133455133488%_))
                                              ((lambda (_%L133491%_
                                                        _%L133492%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133442%_
                                                    _%L133491%_)))
                                               _%hd133456133486%_
                                               _%hd133453133478%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133445133462%_
                                                 _%g133446133465%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133445133462%_
                                         _%g133446133465%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133445133462%_ _%g133446133465%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133445133462%_ _%g133446133465%_))))))
          (declare (not safe))
          (_%g133444133507%_ _%stx133443%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133373%_ _%stx133374%_)
        (let* ((_%g133376133393%_
                (lambda (_%g133377133390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133377133390%_))))
               (_%g133375133439%_
                (lambda (_%g133377133396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133377133396%_))
                      (let ((_%e133382133398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133377133396%_))))
                        (let ((_%hd133381133401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133382133398%_)))
                              (_%tl133380133403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133382133398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133380133403%_))
                              (let ((_%e133385133406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133380133403%_))))
                                (let ((_%hd133384133409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133385133406%_)))
                                      (_%tl133383133411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133385133406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133383133411%_))
                                      (let ((_%e133388133414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133383133411%_))))
                                        (let ((_%hd133387133417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133388133414%_)))
                                              (_%tl133386133419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133388133414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133386133419%_))
                                              ((lambda (_%L133422%_
                                                        _%L133423%_)
                                                 (let ((__tmp134003
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133373%_
                                                             _%L133422%_))))
                                                       (__tmp134001
                                                        (let ((__tmp134002
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134002 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134003
                                                    gx#current-expander-phi
                                                    __tmp134001)))
                                               _%hd133387133417%_
                                               _%hd133384133409%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133376133393%_
                                                 _%g133377133396%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133376133393%_
                                         _%g133377133396%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133376133393%_ _%g133377133396%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133376133393%_ _%g133377133396%_))))))
          (declare (not safe))
          (_%g133375133439%_ _%stx133374%_))))
    (define gxc#apply-body-lambda%
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
                      (let ((_%e133314133330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133309133328%_))))
                        (let ((_%hd133313133333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133314133330%_)))
                              (_%tl133312133335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133314133330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133312133335%_))
                              (let ((_%e133317133338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133312133335%_))))
                                (let ((_%hd133316133341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133317133338%_)))
                                      (_%tl133315133343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133317133338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133315133343%_))
                                      (let ((_%e133320133346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133315133343%_))))
                                        (let ((_%hd133319133349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133320133346%_)))
                                              (_%tl133318133351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133320133346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133318133351%_))
                                              ((lambda (_%L133354%_
                                                        _%L133355%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133305%_
                                                    _%L133354%_)))
                                               _%hd133319133349%_
                                               _%hd133316133341%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133308133325%_
                                                 _%g133309133328%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133308133325%_
                                         _%g133309133328%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133308133325%_ _%g133309133328%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133308133325%_ _%g133309133328%_))))))
          (declare (not safe))
          (_%g133307133370%_ _%stx133306%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133187%_ _%stx133188%_)
        (let* ((_%g133190133218%_
                (lambda (_%g133191133215%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133191133215%_))))
               (_%g133189133302%_
                (lambda (_%g133191133221%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133191133221%_))
                      (let ((_%e133196133223%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133191133221%_))))
                        (let ((_%hd133195133226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133196133223%_)))
                              (_%tl133194133228%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133196133223%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133194133228%_))
                              (let ((_g134004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133194133228%_
                                        '0))))
                                (begin
                                  (let ((_g134005_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134004_)
                                               (##vector-length _g134004_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134005_ 2)))
                                        (error "Context expects 2 values"
                                               _g134005_)))
                                  (let ((_%target133197133231%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134004_ 0)))
                                        (_%tl133199133233%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134004_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133199133233%_))
                                        (letrec ((_%loop133200133236%_
                                                  (lambda (_%hd133198133239%_
                                                           _%body133204133241%_
                                                           _%hd133205133243%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133198133239%_))
                                                        (let ((_%e133201133246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133198133239%_))))
                  (let ((_%lp-hd133202133249%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133201133246%_)))
                        (_%lp-tl133203133251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133201133246%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133202133249%_))
                        (let ((_%e133210133254%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133202133249%_))))
                          (let ((_%hd133209133257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133210133254%_)))
                                (_%tl133208133259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133210133254%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133208133259%_))
                                (let ((_%e133213133262%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133208133259%_))))
                                  (let ((_%hd133212133265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133213133262%_)))
                                        (_%tl133211133267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133213133262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133211133267%_))
                                        (let ((__tmp134007
                                               (cons _%hd133212133265%_
                                                     _%body133204133241%_))
                                              (__tmp134006
                                               (cons _%hd133209133257%_
                                                     _%hd133205133243%_)))
                                          (declare (not safe))
                                          (_%loop133200133236%_
                                           _%lp-tl133203133251%_
                                           __tmp134007
                                           __tmp134006))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133190133218%_
                                           _%g133191133221%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133190133218%_ _%g133191133221%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133190133218%_ _%g133191133221%_)))))
                (let ((_%body133206133270%_ (reverse _%body133204133241%_))
                      (_%hd133207133272%_ (reverse _%hd133205133243%_)))
                  ((lambda (_%L133275%_ _%L133276%_)
                     (for-each
                      (lambda (_%g133290133292%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133187%_ _%g133290133292%_)))
                      (let ((__tmp134008
                             (lambda (_%g133294133297%_ _%g133295133299%_)
                               (cons _%g133294133297%_ _%g133295133299%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134008 '() _%L133275%_))))
                   _%body133206133270%_
                   _%hd133207133272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133200133236%_
                                             _%target133197133231%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133190133218%_
                                           _%g133191133221%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133190133218%_ _%g133191133221%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133190133218%_ _%g133191133221%_))))))
          (declare (not safe))
          (_%g133189133302%_ _%stx133188%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133040%_ _%stx133041%_)
        (let* ((_%g133043133078%_
                (lambda (_%g133044133075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133044133075%_))))
               (_%g133042133184%_
                (lambda (_%g133044133081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133044133081%_))
                      (let ((_%e133050133083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133044133081%_))))
                        (let ((_%hd133049133086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133050133083%_)))
                              (_%tl133048133088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133050133083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133048133088%_))
                              (let ((_%e133053133091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133048133088%_))))
                                (let ((_%hd133052133094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133053133091%_)))
                                      (_%tl133051133096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133053133091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133052133094%_))
                                      (let ((_g134009_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133052133094%_
                                                '0))))
                                        (begin
                                          (let ((_g134010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134009_)
                                                       (##vector-length
                                                        _g134009_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134010_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134010_)))
                                          (let ((_%target133054133099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134009_ 0)))
                                                (_%tl133056133101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134009_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133056133101%_))
                                                (letrec ((_%loop133057133104%_
                                                          (lambda (_%hd133055133107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133061133109%_
                           _%hd133062133111%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133055133107%_))
                        (let ((_%e133058133114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133055133107%_))))
                          (let ((_%lp-hd133059133117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133058133114%_)))
                                (_%lp-tl133060133119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133058133114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133059133117%_))
                                (let ((_%e133067133122%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133059133117%_))))
                                  (let ((_%hd133066133125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133067133122%_)))
                                        (_%tl133065133127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133067133122%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133065133127%_))
                                        (let ((_%e133070133130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133065133127%_))))
                                          (let ((_%hd133069133133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133070133130%_)))
                                                (_%tl133068133135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133070133130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133068133135%_))
                                                (let ((__tmp134012
                                                       (cons _%hd133069133133%_
                                                             _%expr133061133109%_))
                                                      (__tmp134011
                                                       (cons _%hd133066133125%_
                                                             _%hd133062133111%_)))
                                                  (declare (not safe))
                                                  (_%loop133057133104%_
                                                   _%lp-tl133060133119%_
                                                   __tmp134012
                                                   __tmp134011))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133043133078%_
                                                   _%g133044133081%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133043133078%_
                                           _%g133044133081%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133043133078%_ _%g133044133081%_)))))
                        (let ((_%expr133063133138%_
                               (reverse _%expr133061133109%_))
                              (_%hd133064133140%_
                               (reverse _%hd133062133111%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133051133096%_))
                              (let ((_%e133073133143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133051133096%_))))
                                (let ((_%hd133072133146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133073133143%_)))
                                      (_%tl133071133148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133073133143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133071133148%_))
                                      ((lambda (_%L133151%_
                                                _%L133152%_
                                                _%L133153%_)
                                         (for-each
                                          (lambda (_%g133172133174%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133040%_
                                               _%g133172133174%_)))
                                          (let ((__tmp134014
                                                 (lambda (_%g133176133179%_
                                                          _%g133177133181%_)
                                                   (cons _%g133176133179%_
                                                         _%g133177133181%_)))
                                                (__tmp134013
                                                 (cons _%L133151%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134014
                                             __tmp134013
                                             _%L133152%_))))
                                       _%hd133072133146%_
                                       _%expr133063133138%_
                                       _%hd133064133140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133043133078%_
                                         _%g133044133081%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133043133078%_ _%g133044133081%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133057133104%_
                                                     _%target133054133099%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133043133078%_
                                                   _%g133044133081%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133043133078%_
                                         _%g133044133081%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133043133078%_ _%g133044133081%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133043133078%_ _%g133044133081%_))))))
          (declare (not safe))
          (_%g133042133184%_ _%stx133041%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self132985%_ _%stx132986%_)
        (let* ((_%g132988133002%_
                (lambda (_%g132989132999%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132989132999%_))))
               (_%g132987133037%_
                (lambda (_%g132989133005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132989133005%_))
                      (let ((_%e132994133007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132989133005%_))))
                        (let ((_%hd132993133010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132994133007%_)))
                              (_%tl132992133012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132994133007%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132992133012%_))
                              (let ((_%e132997133015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132992133012%_))))
                                (let ((_%hd132996133018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132997133015%_)))
                                      (_%tl132995133020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132997133015%_))))
                                  ((lambda (_%L133023%_ _%L133024%_)
                                     (let ((__tmp134015 (last _%L133023%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self132985%_
                                        __tmp134015)))
                                   _%tl132995133020%_
                                   _%hd132996133018%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132988133002%_ _%g132989133005%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132988133002%_ _%g132989133005%_))))))
          (declare (not safe))
          (_%g132987133037%_ _%stx132986%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self132917%_ _%stx132918%_)
        (let* ((_%g132920132937%_
                (lambda (_%g132921132934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132921132934%_))))
               (_%g132919132982%_
                (lambda (_%g132921132940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132921132940%_))
                      (let ((_%e132926132942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132921132940%_))))
                        (let ((_%hd132925132945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132926132942%_)))
                              (_%tl132924132947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132926132942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132924132947%_))
                              (let ((_%e132929132950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132924132947%_))))
                                (let ((_%hd132928132953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132929132950%_)))
                                      (_%tl132927132955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132929132950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132927132955%_))
                                      (let ((_%e132932132958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132927132955%_))))
                                        (let ((_%hd132931132961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132932132958%_)))
                                              (_%tl132930132963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132932132958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132930132963%_))
                                              ((lambda (_%L132966%_
                                                        _%L132967%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self132917%_
                                                    _%L132966%_)))
                                               _%hd132931132961%_
                                               _%hd132928132953%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132920132937%_
                                                 _%g132921132940%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132920132937%_
                                         _%g132921132940%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132920132937%_ _%g132921132940%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132920132937%_ _%g132921132940%_))))))
          (declare (not safe))
          (_%g132919132982%_ _%stx132918%_))))
    (define gxc#apply-operands
      (lambda (_%self132830%_ _%stx132831%_)
        (let* ((_%g132833132852%_
                (lambda (_%g132834132849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132834132849%_))))
               (_%g132832132914%_
                (lambda (_%g132834132855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132834132855%_))
                      (let ((_%e132838132857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132834132855%_))))
                        (let ((_%hd132837132860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132838132857%_)))
                              (_%tl132836132862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132838132857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl132836132862%_))
                              (let ((_g134016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl132836132862%_
                                        '0))))
                                (begin
                                  (let ((_g134017_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134016_)
                                               (##vector-length _g134016_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134017_ 2)))
                                        (error "Context expects 2 values"
                                               _g134017_)))
                                  (let ((_%target132839132865%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134016_ 0)))
                                        (_%tl132841132867%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134016_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl132841132867%_))
                                        (letrec ((_%loop132842132870%_
                                                  (lambda (_%hd132840132873%_
                                                           _%rands132846132875%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd132840132873%_))
                                                        (let ((_%e132843132878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd132840132873%_))))
                  (let ((_%lp-hd132844132881%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132843132878%_)))
                        (_%lp-tl132845132883%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132843132878%_))))
                    (let ((__tmp134018
                           (cons _%lp-hd132844132881%_ _%rands132846132875%_)))
                      (declare (not safe))
                      (_%loop132842132870%_
                       _%lp-tl132845132883%_
                       __tmp134018))))
                (let ((_%rands132847132886%_ (reverse _%rands132846132875%_)))
                  ((lambda (_%L132889%_)
                     (for-each
                      (lambda (_%g132902132904%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132830%_ _%g132902132904%_)))
                      (let ((__tmp134019
                             (lambda (_%g132906132909%_ _%g132907132911%_)
                               (cons _%g132906132909%_ _%g132907132911%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134019 '() _%L132889%_))))
                   _%rands132847132886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop132842132870%_
                                             _%target132839132865%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132833132852%_
                                           _%g132834132855%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g132833132852%_ _%g132834132855%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132833132852%_ _%g132834132855%_))))))
          (declare (not safe))
          (_%g132832132914%_ _%stx132831%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx132827%_ _%src-stx132828%_)
        (let ((__tmp134020
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx132828%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx132827%_ __tmp134020))))
    (define gxc#xform-begin%
      (lambda (_%self132782%_ _%stx132783%_)
        (let* ((_%g132785132795%_
                (lambda (_%g132786132792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132786132792%_))))
               (_%g132784132824%_
                (lambda (_%g132786132798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132786132798%_))
                      (let ((_%e132790132800%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132786132798%_))))
                        (let ((_%hd132789132803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132790132800%_)))
                              (_%tl132788132805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132790132800%_))))
                          ((lambda (_%L132808%_)
                             (let* ((_%forms132822%_
                                     (map (lambda (_%g132817132819%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132782%_
                                               _%g132817132819%_)))
                                          _%L132808%_))
                                    (__tmp134021
                                     (cons '%#begin _%forms132822%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134021
                                _%stx132783%_)))
                           _%tl132788132805%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132785132795%_ _%g132786132798%_))))))
          (declare (not safe))
          (_%g132784132824%_ _%stx132783%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self132736%_ _%stx132737%_)
        (let* ((_%g132739132749%_
                (lambda (_%g132740132746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132740132746%_))))
               (_%g132738132779%_
                (lambda (_%g132740132752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132740132752%_))
                      (let ((_%e132744132754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132740132752%_))))
                        (let ((_%hd132743132757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132744132754%_)))
                              (_%tl132742132759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132744132754%_))))
                          ((lambda (_%L132762%_)
                             (let ((__tmp134024
                                    (lambda ()
                                      (let* ((_%forms132777%_
                                              (map (lambda (_%g132772132774%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132736%_
                                                        _%g132772132774%_)))
                                                   _%L132762%_))
                                             (__tmp134025
                                              (cons '%#begin-syntax
                                                    _%forms132777%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134025
                                         _%stx132737%_))))
                                   (__tmp134022
                                    (let ((__tmp134023
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134023 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134024
                                gx#current-expander-phi
                                __tmp134022)))
                           _%tl132742132759%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132739132749%_ _%g132740132752%_))))))
          (declare (not safe))
          (_%g132738132779%_ _%stx132737%_))))
    (define gxc#xform-module%
      (lambda (_%self132673%_ _%stx132674%_)
        (let* ((_%g132676132690%_
                (lambda (_%g132677132687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132677132687%_))))
               (_%g132675132733%_
                (lambda (_%g132677132693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132677132693%_))
                      (let ((_%e132682132695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132677132693%_))))
                        (let ((_%hd132681132698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132682132695%_)))
                              (_%tl132680132700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132682132695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132680132700%_))
                              (let ((_%e132685132703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132680132700%_))))
                                (let ((_%hd132684132706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132685132703%_)))
                                      (_%tl132683132708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132685132703%_))))
                                  ((lambda (_%L132711%_ _%L132712%_)
                                     (let* ((_%ctx132725%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L132712%_)))
                                            (_%code132727%_
                                             (##structure-ref
                                              _%ctx132725%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code132730%_
                                             (let ((__tmp134026
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self132673%_
                                                         _%code132727%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134026
                                                gx#current-expander-context
                                                _%ctx132725%_))))
                                       (##structure-set!
                                        _%ctx132725%_
                                        _%code132730%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134027
                                              (cons '%#module
                                                    (cons _%L132712%_
                                                          (cons _%code132730%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134027
                                          _%stx132674%_))))
                                   _%tl132683132708%_
                                   _%hd132684132706%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132676132690%_ _%g132677132693%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132676132690%_ _%g132677132693%_))))))
          (declare (not safe))
          (_%g132675132733%_ _%stx132674%_))))
    (define gxc#xform-define-values%
      (lambda (_%self132603%_ _%stx132604%_)
        (let* ((_%g132606132623%_
                (lambda (_%g132607132620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132607132620%_))))
               (_%g132605132670%_
                (lambda (_%g132607132626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132607132626%_))
                      (let ((_%e132612132628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132607132626%_))))
                        (let ((_%hd132611132631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132612132628%_)))
                              (_%tl132610132633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132612132628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132610132633%_))
                              (let ((_%e132615132636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132610132633%_))))
                                (let ((_%hd132614132639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132615132636%_)))
                                      (_%tl132613132641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132615132636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132613132641%_))
                                      (let ((_%e132618132644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132613132641%_))))
                                        (let ((_%hd132617132647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132618132644%_)))
                                              (_%tl132616132649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132618132644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132616132649%_))
                                              ((lambda (_%L132652%_
                                                        _%L132653%_)
                                                 (let* ((_%expr132668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132603%_
                                                            _%L132652%_)))
                                                        (__tmp134028
                                                         (cons '%#define-values
                                                               (cons _%L132653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132668%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134028
                                                    _%stx132604%_)))
                                               _%hd132617132647%_
                                               _%hd132614132639%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132606132623%_
                                                 _%g132607132626%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132606132623%_
                                         _%g132607132626%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132606132623%_ _%g132607132626%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132606132623%_ _%g132607132626%_))))))
          (declare (not safe))
          (_%g132605132670%_ _%stx132604%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self132532%_ _%stx132533%_)
        (let* ((_%g132535132552%_
                (lambda (_%g132536132549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132536132549%_))))
               (_%g132534132600%_
                (lambda (_%g132536132555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132536132555%_))
                      (let ((_%e132541132557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132536132555%_))))
                        (let ((_%hd132540132560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132541132557%_)))
                              (_%tl132539132562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132541132557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132539132562%_))
                              (let ((_%e132544132565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132539132562%_))))
                                (let ((_%hd132543132568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132544132565%_)))
                                      (_%tl132542132570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132544132565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132542132570%_))
                                      (let ((_%e132547132573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132542132570%_))))
                                        (let ((_%hd132546132576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132547132573%_)))
                                              (_%tl132545132578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132547132573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132545132578%_))
                                              ((lambda (_%L132581%_
                                                        _%L132582%_)
                                                 (let ((__tmp134031
                                                        (lambda ()
                                                          (let* ((_%expr132598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self132532%_ _%L132581%_)))
                         (__tmp134032
                          (cons '%#define-syntax
                                (cons _%L132582%_ (cons _%expr132598%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134032 _%stx132533%_))))
               (__tmp134029
                (let ((__tmp134030
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134030 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134031
                                                    gx#current-expander-phi
                                                    __tmp134029)))
                                               _%hd132546132576%_
                                               _%hd132543132568%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132535132552%_
                                                 _%g132536132555%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132535132552%_
                                         _%g132536132555%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132535132552%_ _%g132536132555%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132535132552%_ _%g132536132555%_))))))
          (declare (not safe))
          (_%g132534132600%_ _%stx132533%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132462%_ _%stx132463%_)
        (let* ((_%g132465132482%_
                (lambda (_%g132466132479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132466132479%_))))
               (_%g132464132529%_
                (lambda (_%g132466132485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132466132485%_))
                      (let ((_%e132471132487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132466132485%_))))
                        (let ((_%hd132470132490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132471132487%_)))
                              (_%tl132469132492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132471132487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132469132492%_))
                              (let ((_%e132474132495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132469132492%_))))
                                (let ((_%hd132473132498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132474132495%_)))
                                      (_%tl132472132500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132474132495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132472132500%_))
                                      (let ((_%e132477132503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132472132500%_))))
                                        (let ((_%hd132476132506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132477132503%_)))
                                              (_%tl132475132508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132477132503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132475132508%_))
                                              ((lambda (_%L132511%_
                                                        _%L132512%_)
                                                 (let* ((_%expr132527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132462%_
                                                            _%L132511%_)))
                                                        (__tmp134033
                                                         (cons '%#begin-annotation
                                                               (cons _%L132512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132527%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134033
                                                    _%stx132463%_)))
                                               _%hd132476132506%_
                                               _%hd132473132498%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132465132482%_
                                                 _%g132466132485%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132465132482%_
                                         _%g132466132485%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132465132482%_ _%g132466132485%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132465132482%_ _%g132466132485%_))))))
          (declare (not safe))
          (_%g132464132529%_ _%stx132463%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132400%_ _%stx132401%_)
        (let* ((_%g132403132417%_
                (lambda (_%g132404132414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132404132414%_))))
               (_%g132402132459%_
                (lambda (_%g132404132420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132404132420%_))
                      (let ((_%e132409132422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132404132420%_))))
                        (let ((_%hd132408132425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132409132422%_)))
                              (_%tl132407132427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132409132422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132407132427%_))
                              (let ((_%e132412132430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132407132427%_))))
                                (let ((_%hd132411132433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132412132430%_)))
                                      (_%tl132410132435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132412132430%_))))
                                  ((lambda (_%L132438%_ _%L132439%_)
                                     (let ((__tmp134036
                                            (lambda ()
                                              (let* ((_%body132457%_
                                                      (map (lambda (_%g132452132454%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132400%_ _%g132452132454%_)))
                   _%L132438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134037
                                                      (cons '%#lambda
                                                            (cons _%L132439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134037
                                                 _%stx132401%_))))
                                           (__tmp134034
                                            (let ((__tmp134035
                                                   (cons _%L132439%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134035))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134036
                                        gxc#current-compile-local-env
                                        __tmp134034)))
                                   _%tl132410132435%_
                                   _%hd132411132433%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132403132417%_ _%g132404132420%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132403132417%_ _%g132404132420%_))))))
          (declare (not safe))
          (_%g132402132459%_ _%stx132401%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132308%_ _%stx132309%_)
        (letrec ((_%clause-e132311%_
                  (lambda (_%clause132352%_)
                    (let* ((_%g132354132365%_
                            (lambda (_%g132355132362%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132355132362%_))))
                           (_%g132353132397%_
                            (lambda (_%g132355132368%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132355132368%_))
                                  (let ((_%e132360132370%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132355132368%_))))
                                    (let ((_%hd132359132373%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132360132370%_)))
                                          (_%tl132358132375%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132360132370%_))))
                                      ((lambda (_%L132378%_ _%L132379%_)
                                         (let ((__tmp134040
                                                (lambda ()
                                                  (let ((_%body132395%_
                                                         (map (lambda (_%g132390132392%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132308%_ _%g132390132392%_)))
                      _%L132378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132379%_
                                                          _%body132395%_))))
                                               (__tmp134038
                                                (let ((__tmp134039
                                                       (cons _%L132379%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134039))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134040
                                            gxc#current-compile-local-env
                                            __tmp134038)))
                                       _%tl132358132375%_
                                       _%hd132359132373%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132354132365%_ _%g132355132368%_))))))
                      (declare (not safe))
                      (_%g132353132397%_ _%clause132352%_)))))
          (let* ((_%g132313132323%_
                  (lambda (_%g132314132320%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132314132320%_))))
                 (_%g132312132349%_
                  (lambda (_%g132314132326%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132314132326%_))
                        (let ((_%e132318132328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132314132326%_))))
                          (let ((_%hd132317132331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132318132328%_)))
                                (_%tl132316132333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132318132328%_))))
                            ((lambda (_%L132336%_)
                               (let* ((_%clauses132347%_
                                       (map _%clause-e132311%_ _%L132336%_))
                                      (__tmp134041
                                       (cons '%#case-lambda
                                             _%clauses132347%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134041
                                  _%stx132309%_)))
                             _%tl132316132333%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132313132323%_ _%g132314132326%_))))))
            (declare (not safe))
            (_%g132312132349%_ _%stx132309%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132062%_ _%stx132063%_)
        (let* ((_%g132065132098%_
                (lambda (_%g132066132095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132066132095%_))))
               (_%g132064132305%_
                (lambda (_%g132066132101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132066132101%_))
                      (let ((_%e132073132103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132066132101%_))))
                        (let ((_%hd132072132106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132073132103%_)))
                              (_%tl132071132108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132073132103%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132071132108%_))
                              (let ((_%e132076132111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132071132108%_))))
                                (let ((_%hd132075132114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132076132111%_)))
                                      (_%tl132074132116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132076132111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132075132114%_))
                                      (let ((_g134042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132075132114%_
                                                '0))))
                                        (begin
                                          (let ((_g134043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134042_)
                                                       (##vector-length
                                                        _g134042_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134043_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134043_)))
                                          (let ((_%target132077132119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134042_ 0)))
                                                (_%tl132079132121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134042_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132079132121%_))
                                                (letrec ((_%loop132080132124%_
                                                          (lambda (_%hd132078132127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132084132129%_
                           _%hd132085132131%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132078132127%_))
                        (let ((_%e132081132134%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132078132127%_))))
                          (let ((_%lp-hd132082132137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132081132134%_)))
                                (_%lp-tl132083132139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132081132134%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132082132137%_))
                                (let ((_%e132090132142%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132082132137%_))))
                                  (let ((_%hd132089132145%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132090132142%_)))
                                        (_%tl132088132147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132090132142%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132088132147%_))
                                        (let ((_%e132093132150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132088132147%_))))
                                          (let ((_%hd132092132153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132093132150%_)))
                                                (_%tl132091132155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132093132150%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132091132155%_))
                                                (let ((__tmp134045
                                                       (cons _%hd132092132153%_
                                                             _%expr132084132129%_))
                                                      (__tmp134044
                                                       (cons _%hd132089132145%_
                                                             _%hd132085132131%_)))
                                                  (declare (not safe))
                                                  (_%loop132080132124%_
                                                   _%lp-tl132083132139%_
                                                   __tmp134045
                                                   __tmp134044))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132065132098%_
                                                   _%g132066132101%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132065132098%_
                                           _%g132066132101%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132065132098%_ _%g132066132101%_)))))
                        (let ((_%expr132086132158%_
                               (reverse _%expr132084132129%_))
                              (_%hd132087132160%_
                               (reverse _%hd132085132131%_)))
                          ((lambda (_%L132163%_
                                    _%L132164%_
                                    _%L132165%_
                                    _%L132166%_)
                             (let* ((_%g132185132201%_
                                     (lambda (_%g132186132198%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132186132198%_))))
                                    (_%g132184132291%_
                                     (lambda (_%g132186132204%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132186132204%_))
                                           (let ((_g134046_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132186132204%_
                                                     '0))))
                                             (begin
                                               (let ((_g134047_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134046_)
                                                            (##vector-length
                                                             _g134046_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134047_)))
                                               (let ((_%target132188132206%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134046_
                                                         0)))
                                                     (_%tl132190132208%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134046_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132190132208%_))
                                                     (letrec ((_%loop132191132211%_
                                                               (lambda (_%hd132189132214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132195132216%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132189132214%_))
                             (let ((_%e132192132219%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132189132214%_))))
                               (let ((_%lp-hd132193132222%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132192132219%_)))
                                     (_%lp-tl132194132224%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132192132219%_))))
                                 (let ((__tmp134048
                                        (cons _%lp-hd132193132222%_
                                              _%expr132195132216%_)))
                                   (declare (not safe))
                                   (_%loop132191132211%_
                                    _%lp-tl132194132224%_
                                    __tmp134048))))
                             (let ((_%expr132196132227%_
                                    (reverse _%expr132195132216%_)))
                               ((lambda (_%L132230%_)
                                  (let ()
                                    (let ((__tmp134052
                                           (lambda ()
                                             (let* ((_%g132244132251%_
                                                     (lambda (_%g132245132248%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132245132248%_))))
                                                    (_%g132243132277%_
                                                     (lambda (_%g132245132254%_)
                                                       ((lambda (_%L132256%_)
                                                          (let ()
                                                            (let ((__tmp134053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L132166%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L132230%_
                                            _%L132165%_))
                                         (let ((__tmp134054
                                                (lambda (_%g132266132270%_
                                                         _%g132267132272%_
                                                         _%g132268132274%_)
                                                  (cons (cons _%g132267132272%_
                                                              (cons _%g132266132270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132268132274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134054
                                            '()
                                            _%L132230%_
                                            _%L132165%_)))
                                       _%L132256%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134053 _%stx132063%_))))
                _%g132245132254%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134055
                                                     (map (lambda (_%g132279132281%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132062%_
                                                               _%g132279132281%_)))
                                                          _%L132163%_)))
                                               (declare (not safe))
                                               (_%g132243132277%_
                                                __tmp134055))))
                                          (__tmp134049
                                           (let ((__tmp134050
                                                  (let ((__tmp134051
                                                         (lambda (_%g132283132286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g132284132288%_)
                   (cons _%g132283132286%_ _%g132284132288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp134051
                                                     '()
                                                     _%L132165%_))))
                                             (declare (not safe))
                                             (gxc#xform-let-locals
                                              __tmp134050))))
                                      (declare (not safe))
                                      (__call-with-parameters
                                       __tmp134052
                                       gxc#current-compile-local-env
                                       __tmp134049))))
                                _%expr132196132227%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132191132211%_ _%target132188132206%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132185132201%_
                                                        _%g132186132204%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132185132201%_
                                              _%g132186132204%_)))))
                                    (__tmp134056
                                     (map (lambda (_%g132293132295%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132062%_
                                               _%g132293132295%_)))
                                          (let ((__tmp134057
                                                 (lambda (_%g132297132300%_
                                                          _%g132298132302%_)
                                                   (cons _%g132297132300%_
                                                         _%g132298132302%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134057
                                             '()
                                             _%L132164%_)))))
                               (declare (not safe))
                               (_%g132184132291%_ __tmp134056)))
                           _%tl132074132116%_
                           _%expr132086132158%_
                           _%hd132087132160%_
                           _%hd132072132106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132080132124%_
                                                     _%target132077132119%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132065132098%_
                                                   _%g132066132101%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132065132098%_
                                         _%g132066132101%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132065132098%_ _%g132066132101%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132065132098%_ _%g132066132101%_))))))
          (declare (not safe))
          (_%g132064132305%_ _%stx132063%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self131816%_ _%stx131817%_)
        (let* ((_%g131819131852%_
                (lambda (_%g131820131849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131820131849%_))))
               (_%g131818132059%_
                (lambda (_%g131820131855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131820131855%_))
                      (let ((_%e131827131857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131820131855%_))))
                        (let ((_%hd131826131860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131827131857%_)))
                              (_%tl131825131862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131827131857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131825131862%_))
                              (let ((_%e131830131865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131825131862%_))))
                                (let ((_%hd131829131868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131830131865%_)))
                                      (_%tl131828131870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131830131865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd131829131868%_))
                                      (let ((_g134058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd131829131868%_
                                                '0))))
                                        (begin
                                          (let ((_g134059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134058_)
                                                       (##vector-length
                                                        _g134058_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134059_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134059_)))
                                          (let ((_%target131831131873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134058_ 0)))
                                                (_%tl131833131875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134058_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131833131875%_))
                                                (letrec ((_%loop131834131878%_
                                                          (lambda (_%hd131832131881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr131838131883%_
                           _%hd131839131885%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131832131881%_))
                        (let ((_%e131835131888%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd131832131881%_))))
                          (let ((_%lp-hd131836131891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131835131888%_)))
                                (_%lp-tl131837131893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131835131888%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd131836131891%_))
                                (let ((_%e131844131896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd131836131891%_))))
                                  (let ((_%hd131843131899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131844131896%_)))
                                        (_%tl131842131901%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131844131896%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl131842131901%_))
                                        (let ((_%e131847131904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl131842131901%_))))
                                          (let ((_%hd131846131907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e131847131904%_)))
                                                (_%tl131845131909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e131847131904%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131845131909%_))
                                                (let ((__tmp134061
                                                       (cons _%hd131846131907%_
                                                             _%expr131838131883%_))
                                                      (__tmp134060
                                                       (cons _%hd131843131899%_
                                                             _%hd131839131885%_)))
                                                  (declare (not safe))
                                                  (_%loop131834131878%_
                                                   _%lp-tl131837131893%_
                                                   __tmp134061
                                                   __tmp134060))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131819131852%_
                                                   _%g131820131855%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g131819131852%_
                                           _%g131820131855%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g131819131852%_ _%g131820131855%_)))))
                        (let ((_%expr131840131912%_
                               (reverse _%expr131838131883%_))
                              (_%hd131841131914%_
                               (reverse _%hd131839131885%_)))
                          ((lambda (_%L131917%_
                                    _%L131918%_
                                    _%L131919%_
                                    _%L131920%_)
                             (let ((__tmp134065
                                    (lambda ()
                                      (let* ((_%g131940131956%_
                                              (lambda (_%g131941131953%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g131941131953%_))))
                                             (_%g131939132038%_
                                              (lambda (_%g131941131959%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g131941131959%_))
                                                    (let ((_g134066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g131941131959%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134067_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134066_)
                             (##vector-length _g134066_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134067_ 2)))
                      (error "Context expects 2 values" _g134067_)))
                (let ((_%target131943131961%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134066_ 0)))
                      (_%tl131945131963%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134066_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl131945131963%_))
                      (letrec ((_%loop131946131966%_
                                (lambda (_%hd131944131969%_
                                         _%expr131950131971%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd131944131969%_))
                                      (let ((_%e131947131974%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd131944131969%_))))
                                        (let ((_%lp-hd131948131977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131947131974%_)))
                                              (_%lp-tl131949131979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131947131974%_))))
                                          (let ((__tmp134068
                                                 (cons _%lp-hd131948131977%_
                                                       _%expr131950131971%_)))
                                            (declare (not safe))
                                            (_%loop131946131966%_
                                             _%lp-tl131949131979%_
                                             __tmp134068))))
                                      (let ((_%expr131951131982%_
                                             (reverse _%expr131950131971%_)))
                                        ((lambda (_%L131985%_)
                                           (let ()
                                             (let* ((_%g131999132006%_
                                                     (lambda (_%g132000132003%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132000132003%_))))
                                                    (_%g131998132031%_
                                                     (lambda (_%g132000132009%_)
                                                       ((lambda (_%L132011%_)
                                                          (let ()
                                                            (let ((__tmp134069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L131920%_
                                 (cons (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L131985%_
                                            _%L131919%_))
                                         (let ((__tmp134070
                                                (lambda (_%g132020132024%_
                                                         _%g132021132026%_
                                                         _%g132022132028%_)
                                                  (cons (cons _%g132021132026%_
                                                              (cons _%g132020132024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%g132022132028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp134070
                                            '()
                                            _%L131985%_
                                            _%L131919%_)))
                                       _%L132011%_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134069 _%stx131817%_))))
                _%g132000132009%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134071
                                                     (map (lambda (_%g132033132035%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self131816%_
                                                               _%g132033132035%_)))
                                                          _%L131917%_)))
                                               (declare (not safe))
                                               (_%g131998132031%_
                                                __tmp134071))))
                                         _%expr131951131982%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop131946131966%_ _%target131943131961%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g131940131956%_ _%g131941131959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g131940131956%_
                                                       _%g131941131959%_)))))
                                             (__tmp134072
                                              (map (lambda (_%g132040132042%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self131816%_
                                                        _%g132040132042%_)))
                                                   (let ((__tmp134073
                                                          (lambda (_%g132044132047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132045132049%_)
                    (cons _%g132044132047%_ _%g132045132049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134073
                                                      '()
                                                      _%L131918%_)))))
                                        (declare (not safe))
                                        (_%g131939132038%_ __tmp134072))))
                                   (__tmp134062
                                    (let ((__tmp134063
                                           (let ((__tmp134064
                                                  (lambda (_%g132051132054%_
                                                           _%g132052132056%_)
                                                    (cons _%g132051132054%_
                                                          _%g132052132056%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134064
                                              '()
                                              _%L131919%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134063))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134065
                                gxc#current-compile-local-env
                                __tmp134062)))
                           _%tl131828131870%_
                           _%expr131840131912%_
                           _%hd131841131914%_
                           _%hd131826131860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop131834131878%_
                                                     _%target131831131873%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g131819131852%_
                                                   _%g131820131855%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131819131852%_
                                         _%g131820131855%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131819131852%_ _%g131820131855%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131819131852%_ _%g131820131855%_))))))
          (declare (not safe))
          (_%g131818132059%_ _%stx131817%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings131720%_)
        (let _%loop131722%_ ((_%rest131724%_ _%bindings131720%_)
                             (_%locals131725%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest131726131734%_ _%rest131724%_)
                 (_%else131728131742%_ (lambda () _%locals131725%_))
                 (_%K131730131804%_
                  (lambda (_%rest131745%_ _%bind131746%_)
                    (let _%loop-bind131748%_ ((_%bind131750%_ _%bind131746%_)
                                              (_%locals131751%_
                                               _%locals131725%_))
                      (let* ((_%bind131752131763%_ _%bind131750%_)
                             (_%E131756131767%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind131752131763%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K131759131792%_
                               (lambda (_%bind-rest131789%_ _%id131790%_)
                                 (let ((__tmp134074
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131790%_))
                                              _%locals131751%_)))
                                   (declare (not safe))
                                   (_%loop-bind131748%_
                                    _%bind-rest131789%_
                                    __tmp134074))))
                              (_%K131758131781%_
                               (lambda (_%id131779%_)
                                 (let ((__tmp134075
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id131779%_))
                                              _%locals131751%_)))
                                   (declare (not safe))
                                   (_%loop131722%_
                                    _%rest131745%_
                                    __tmp134075))))
                              (_%K131757131772%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop131722%_
                                    _%rest131745%_
                                    _%locals131751%_)))))
                          (let ((_%try-match131754131786%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind131752131763%_))
                                       (let ((_%id131784%_
                                              _%bind131752131763%_))
                                         (declare (not safe))
                                         (_%K131758131781%_ _%id131784%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K131757131772%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind131752131763%_))
                                (let ((_%tl131761131797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind131752131763%_)))
                                      (_%hd131760131795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind131752131763%_))))
                                  (let ((_%id131800%_ _%hd131760131795%_)
                                        (_%bind-rest131802%_
                                         _%tl131761131797%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K131759131792%_
                                       _%bind-rest131802%_
                                       _%id131800%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match131754131786%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest131726131734%_))
                (let ((_%hd131731131807%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131726131734%_)))
                      (_%tl131732131809%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131726131734%_))))
                  (let* ((_%bind131812%_ _%hd131731131807%_)
                         (_%rest131814%_ _%tl131732131809%_))
                    (declare (not safe))
                    (_%K131730131804%_ _%rest131814%_ _%bind131812%_)))
                (let () (declare (not safe)) (_%else131728131742%_)))))))
    (define gxc#xform-operands
      (lambda (_%self131672%_ _%stx131673%_)
        (let* ((_%g131675131686%_
                (lambda (_%g131676131683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131676131683%_))))
               (_%g131674131717%_
                (lambda (_%g131676131689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131676131689%_))
                      (let ((_%e131681131691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131676131689%_))))
                        (let ((_%hd131680131694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131681131691%_)))
                              (_%tl131679131696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131681131691%_))))
                          ((lambda (_%L131699%_ _%L131700%_)
                             (let* ((_%rands131715%_
                                     (map (lambda (_%g131710131712%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self131672%_
                                               _%g131710131712%_)))
                                          _%L131699%_))
                                    (__tmp134076
                                     (cons _%L131700%_ _%rands131715%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134076
                                _%stx131673%_)))
                           _%tl131679131696%_
                           _%hd131680131694%_)))
                      (let ()
                        (declare (not safe))
                        (_%g131675131686%_ _%g131676131689%_))))))
          (declare (not safe))
          (_%g131674131717%_ _%stx131673%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self131602%_ _%stx131603%_)
        (let* ((_%g131605131622%_
                (lambda (_%g131606131619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131606131619%_))))
               (_%g131604131669%_
                (lambda (_%g131606131625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131606131625%_))
                      (let ((_%e131611131627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g131606131625%_))))
                        (let ((_%hd131610131630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131611131627%_)))
                              (_%tl131609131632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131611131627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131609131632%_))
                              (let ((_%e131614131635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl131609131632%_))))
                                (let ((_%hd131613131638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131614131635%_)))
                                      (_%tl131612131640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131614131635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl131612131640%_))
                                      (let ((_%e131617131643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl131612131640%_))))
                                        (let ((_%hd131616131646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131617131643%_)))
                                              (_%tl131615131648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131617131643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl131615131648%_))
                                              ((lambda (_%L131651%_
                                                        _%L131652%_)
                                                 (let* ((_%expr131667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self131602%_
                                                            _%L131651%_)))
                                                        (__tmp134077
                                                         (cons '%#set!
                                                               (cons _%L131652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr131667%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134077
                                                    _%stx131603%_)))
                                               _%hd131616131646%_
                                               _%hd131613131638%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g131605131622%_
                                                 _%g131606131625%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g131605131622%_
                                         _%g131606131625%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g131605131622%_ _%g131606131625%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g131605131622%_ _%g131606131625%_))))))
          (declare (not safe))
          (_%g131604131669%_ _%stx131603%_))))))
