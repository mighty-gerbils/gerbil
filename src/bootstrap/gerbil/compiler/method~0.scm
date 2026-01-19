(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1768865824)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx149739%_)
        (let* ((_%self149741%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e149743%_
                (let ((__tmp149961 (gxc#stx-car-e _%stx149739%_)))
                  (declare (not safe))
                  (method-ref _%self149741%_ __tmp149961))))
          (if _%$e149743%_
              ((lambda (_%method149746%_)
                 (declare (not safe))
                 (let ((_%$e149749%_ (gx#stx-source _%stx149739%_)))
                   (if _%$e149749%_
                       ((lambda (_%source149752%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149746%_ _%self149741%_ _%stx149739%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149752%_ '()))
                                 (let ((_%$e149756%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149756%_ _%$e149756%_ '())))))
                        _%$e149749%_)
                       (_%method149746%_ _%self149741%_ _%stx149739%_))))
               _%$e149743%_)
              (let ((__tmp149963 (gxc#stx-car-e _%stx149739%_))
                    (__tmp149962
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149739%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149741%_
                       __tmp149963
                       __tmp149962))))))
    (define gxc#compile-e__1
      (lambda (_%self149761%_ _%stx149762%_)
        (let ((_%$e149764%_
               (let ((__tmp149964 (gxc#stx-car-e _%stx149762%_)))
                 (declare (not safe))
                 (method-ref _%self149761%_ __tmp149964))))
          (if _%$e149764%_
              ((lambda (_%method149767%_)
                 (declare (not safe))
                 (let ((_%$e149770%_ (gx#stx-source _%stx149762%_)))
                   (if _%$e149770%_
                       ((lambda (_%source149773%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149767%_ _%self149761%_ _%stx149762%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149773%_ '()))
                                 (let ((_%$e149777%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149777%_ _%$e149777%_ '())))))
                        _%$e149770%_)
                       (_%method149767%_ _%self149761%_ _%stx149762%_))))
               _%$e149764%_)
              (let ((__tmp149966 (gxc#stx-car-e _%stx149762%_))
                    (__tmp149965
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149762%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149761%_
                       __tmp149966
                       __tmp149965))))))
    (define gxc#compile-e
      (lambda _g149967_
        (let ((_g149968_ (let () (declare (not safe)) (##length _g149967_))))
          (cond ((let () (declare (not safe)) (##fx= _g149968_ 1))
                 (apply gxc#compile-e__0 _g149967_))
                ((let () (declare (not safe)) (##fx= _g149968_ 2))
                 (apply gxc#compile-e__1 _g149967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g149967_))))))
    (define gxc#stx-car-e
      (lambda (_%stx149737%_)
        (let ((__tmp149969
               (car (let () (declare (not safe)) (gx#stx-e _%stx149737%_)))))
          (declare (not safe))
          (gx#stx-e __tmp149969))))
    (define gxc#void-method (lambda (_%self149734%_ _%stx149735%_) '#!void))
    (define gxc#false-method (lambda (_%self149731%_ _%stx149732%_) '#f))
    (define gxc#true-method (lambda (_%self149728%_ _%stx149729%_) '#t))
    (define gxc#identity-method
      (lambda (_%self149725%_ _%stx149726%_) _%stx149726%_))
    (define gxc#::void-expression::t
      (let ((__tmp149970 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp149970
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args149722%_
        (apply make-instance gxc#::void-expression::t _%$args149722%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp149971
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
        (__make-atomic-promise __tmp149971)))
    (define gxc#::void-special-form::t
      (let ((__tmp149972 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp149972
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args149718%_
        (apply make-instance gxc#::void-special-form::t _%$args149718%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp149973
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
        (__make-atomic-promise __tmp149973)))
    (define gxc#::void::t
      (let ((__tmp149974
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp149974 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args149714%_
        (apply make-instance gxc#::void::t _%$args149714%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp149975
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149975)))
    (define gxc#::false-expression::t
      (let ((__tmp149976 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp149976
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args149710%_
        (apply make-instance gxc#::false-expression::t _%$args149710%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp149977
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
        (__make-atomic-promise __tmp149977)))
    (define gxc#::false-special-form::t
      (let ((__tmp149978 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp149978
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args149706%_
        (apply make-instance gxc#::false-special-form::t _%$args149706%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp149979
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
        (__make-atomic-promise __tmp149979)))
    (define gxc#::false::t
      (let ((__tmp149980
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp149980 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args149702%_
        (apply make-instance gxc#::false::t _%$args149702%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp149981
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149981)))
    (define gxc#::identity-expression::t
      (let ((__tmp149982 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp149982
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args149698%_
        (apply make-instance gxc#::identity-expression::t _%$args149698%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp149983
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
        (__make-atomic-promise __tmp149983)))
    (define gxc#::identity-special-form::t
      (let ((__tmp149984 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp149984
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args149694%_
        (apply make-instance gxc#::identity-special-form::t _%$args149694%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp149985
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
        (__make-atomic-promise __tmp149985)))
    (define gxc#::identity::t
      (let ((__tmp149986
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp149986
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args149690%_
        (apply make-instance gxc#::identity::t _%$args149690%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp149987
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149987)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp149988 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp149988
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args149686%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args149686%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp149989
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
        (__make-atomic-promise __tmp149989)))
    (define gxc#::basic-xform::t
      (let ((__tmp149990
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp149990
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args149682%_
        (apply make-instance gxc#::basic-xform::t _%$args149682%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp149991
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
        (__make-atomic-promise __tmp149991)))
    (define gxc#apply-begin%
      (lambda (_%self149638%_ _%stx149639%_)
        (let* ((_%g149641149651%_
                (lambda (_%g149642149648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149642149648%_))))
               (_%g149640149678%_
                (lambda (_%g149642149654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149642149654%_))
                      (let ((_%e149644149656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149642149654%_))))
                        (let ((_%hd149645149659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149644149656%_)))
                              (_%tl149646149661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149644149656%_))))
                          ((lambda (_%L149664%_)
                             (for-each
                              (lambda (_%g149673149675%_)
                                (gxc#compile-e__1
                                 _%self149638%_
                                 _%g149673149675%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L149664%_))))
                           _%tl149646149661%_)))
                      (_%g149641149651%_ _%g149642149654%_)))))
          (_%g149640149678%_ _%stx149639%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self149599%_ _%stx149600%_)
        (let* ((_%g149602149612%_
                (lambda (_%g149603149609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149603149609%_))))
               (_%g149601149635%_
                (lambda (_%g149603149615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149603149615%_))
                      (let ((_%e149605149617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149603149615%_))))
                        (let ((_%hd149606149620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149605149617%_)))
                              (_%tl149607149622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149605149617%_))))
                          ((lambda (_%L149625%_)
                             (gxc#compile-e__1
                              _%self149599%_
                              (last _%L149625%_)))
                           _%tl149607149622%_)))
                      (_%g149602149612%_ _%g149603149615%_)))))
          (_%g149601149635%_ _%stx149600%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self149595%_ _%stx149596%_)
        (let ((__tmp149994
               (lambda () (gxc#apply-begin% _%self149595%_ _%stx149596%_)))
              (__tmp149992
               (let ((__tmp149993
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp149993 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp149994
           gx#current-expander-phi
           __tmp149992))))
    (define gxc#apply-module%
      (lambda (_%self149534%_ _%stx149535%_)
        (let* ((_%g149537149551%_
                (lambda (_%g149538149548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149538149548%_))))
               (_%g149536149592%_
                (lambda (_%g149538149554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149538149554%_))
                      (let ((_%e149541149556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149538149554%_))))
                        (let ((_%hd149542149559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149541149556%_)))
                              (_%tl149543149561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149541149556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149543149561%_))
                              (let ((_%e149544149564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149543149561%_))))
                                (let ((_%hd149545149567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149544149564%_)))
                                      (_%tl149546149569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149544149564%_))))
                                  ((lambda (_%L149572%_ _%L149573%_)
                                     (let* ((_%ctx149586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L149573%_)))
                                            (_%ctx-stx149588%_
                                             (##structure-ref
                                              _%ctx149586%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp149995
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self149534%_
                                                _%ctx-stx149588%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp149995
                                        gx#current-expander-context
                                        _%ctx149586%_)))
                                   _%tl149546149569%_
                                   _%hd149545149567%_)))
                              (_%g149537149551%_ _%g149538149554%_))))
                      (_%g149537149551%_ _%g149538149554%_)))))
          (_%g149536149592%_ _%stx149535%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self149466%_ _%stx149467%_)
        (let* ((_%g149469149486%_
                (lambda (_%g149470149483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149470149483%_))))
               (_%g149468149531%_
                (lambda (_%g149470149489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149470149489%_))
                      (let ((_%e149473149491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149470149489%_))))
                        (let ((_%hd149474149494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149473149491%_)))
                              (_%tl149475149496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149473149491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149475149496%_))
                              (let ((_%e149476149499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149475149496%_))))
                                (let ((_%hd149477149502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149476149499%_)))
                                      (_%tl149478149504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149476149499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149478149504%_))
                                      (let ((_%e149479149507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149478149504%_))))
                                        (let ((_%hd149480149510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149479149507%_)))
                                              (_%tl149481149512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149479149507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149481149512%_))
                                              ((lambda (_%L149515%_
                                                        _%L149516%_)
                                                 (gxc#compile-e__1
                                                  _%self149466%_
                                                  _%L149515%_))
                                               _%hd149480149510%_
                                               _%hd149477149502%_)
                                              (_%g149469149486%_
                                               _%g149470149489%_))))
                                      (_%g149469149486%_ _%g149470149489%_))))
                              (_%g149469149486%_ _%g149470149489%_))))
                      (_%g149469149486%_ _%g149470149489%_)))))
          (_%g149468149531%_ _%stx149467%_))))
    (define gxc#apply-define-values%
      (lambda (_%self149398%_ _%stx149399%_)
        (let* ((_%g149401149418%_
                (lambda (_%g149402149415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149402149415%_))))
               (_%g149400149463%_
                (lambda (_%g149402149421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149402149421%_))
                      (let ((_%e149405149423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149402149421%_))))
                        (let ((_%hd149406149426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149405149423%_)))
                              (_%tl149407149428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149405149423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149407149428%_))
                              (let ((_%e149408149431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149407149428%_))))
                                (let ((_%hd149409149434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149408149431%_)))
                                      (_%tl149410149436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149408149431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149410149436%_))
                                      (let ((_%e149411149439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149410149436%_))))
                                        (let ((_%hd149412149442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149411149439%_)))
                                              (_%tl149413149444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149411149439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149413149444%_))
                                              ((lambda (_%L149447%_
                                                        _%L149448%_)
                                                 (gxc#compile-e__1
                                                  _%self149398%_
                                                  _%L149447%_))
                                               _%hd149412149442%_
                                               _%hd149409149434%_)
                                              (_%g149401149418%_
                                               _%g149402149421%_))))
                                      (_%g149401149418%_ _%g149402149421%_))))
                              (_%g149401149418%_ _%g149402149421%_))))
                      (_%g149401149418%_ _%g149402149421%_)))))
          (_%g149400149463%_ _%stx149399%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self149329%_ _%stx149330%_)
        (let* ((_%g149332149349%_
                (lambda (_%g149333149346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149333149346%_))))
               (_%g149331149395%_
                (lambda (_%g149333149352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149333149352%_))
                      (let ((_%e149336149354%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149333149352%_))))
                        (let ((_%hd149337149357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149336149354%_)))
                              (_%tl149338149359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149336149354%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149338149359%_))
                              (let ((_%e149339149362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149338149359%_))))
                                (let ((_%hd149340149365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149339149362%_)))
                                      (_%tl149341149367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149339149362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149341149367%_))
                                      (let ((_%e149342149370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149341149367%_))))
                                        (let ((_%hd149343149373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149342149370%_)))
                                              (_%tl149344149375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149342149370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149344149375%_))
                                              ((lambda (_%L149378%_
                                                        _%L149379%_)
                                                 (let ((__tmp149998
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self149329%_
                                                           _%L149378%_)))
                                                       (__tmp149996
                                                        (let ((__tmp149997
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp149997 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp149998
                                                    gx#current-expander-phi
                                                    __tmp149996)))
                                               _%hd149343149373%_
                                               _%hd149340149365%_)
                                              (_%g149332149349%_
                                               _%g149333149352%_))))
                                      (_%g149332149349%_ _%g149333149352%_))))
                              (_%g149332149349%_ _%g149333149352%_))))
                      (_%g149332149349%_ _%g149333149352%_)))))
          (_%g149331149395%_ _%stx149330%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self149261%_ _%stx149262%_)
        (let* ((_%g149264149281%_
                (lambda (_%g149265149278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149265149278%_))))
               (_%g149263149326%_
                (lambda (_%g149265149284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149265149284%_))
                      (let ((_%e149268149286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149265149284%_))))
                        (let ((_%hd149269149289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149268149286%_)))
                              (_%tl149270149291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149268149286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149270149291%_))
                              (let ((_%e149271149294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149270149291%_))))
                                (let ((_%hd149272149297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149271149294%_)))
                                      (_%tl149273149299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149271149294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149273149299%_))
                                      (let ((_%e149274149302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149273149299%_))))
                                        (let ((_%hd149275149305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149274149302%_)))
                                              (_%tl149276149307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149274149302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149276149307%_))
                                              ((lambda (_%L149310%_
                                                        _%L149311%_)
                                                 (gxc#compile-e__1
                                                  _%self149261%_
                                                  _%L149310%_))
                                               _%hd149275149305%_
                                               _%hd149272149297%_)
                                              (_%g149264149281%_
                                               _%g149265149284%_))))
                                      (_%g149264149281%_ _%g149265149284%_))))
                              (_%g149264149281%_ _%g149265149284%_))))
                      (_%g149264149281%_ _%g149265149284%_)))))
          (_%g149263149326%_ _%stx149262%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self149143%_ _%stx149144%_)
        (let* ((_%g149146149174%_
                (lambda (_%g149147149171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149147149171%_))))
               (_%g149145149258%_
                (lambda (_%g149147149177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149147149177%_))
                      (let ((_%e149150149179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149147149177%_))))
                        (let ((_%hd149151149182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149150149179%_)))
                              (_%tl149152149184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149150149179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149152149184%_))
                              (let ((_g149999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149152149184%_
                                        '0))))
                                (begin
                                  (let ((_g150000_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149999_)
                                               (##values-length _g149999_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150000_ 2)))
                                        (error "Context expects 2 values"
                                               _g150000_)))
                                  (let ((_%target149153149187%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149999_ 0)))
                                        (_%tl149155149189%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149999_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149155149189%_))
                                        (letrec ((_%loop149156149192%_
                                                  (lambda (_%hd149154149195%_
                                                           _%body149160149197%_
                                                           _%hd149161149199%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149154149195%_))
                                                        (let ((_%e149157149202%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149154149195%_))))
                  (let ((_%lp-hd149158149205%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149157149202%_)))
                        (_%lp-tl149159149207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149157149202%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd149158149205%_))
                        (let ((_%e149164149210%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd149158149205%_))))
                          (let ((_%hd149165149213%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149164149210%_)))
                                (_%tl149166149215%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149164149210%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149166149215%_))
                                (let ((_%e149167149218%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149166149215%_))))
                                  (let ((_%hd149168149221%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149167149218%_)))
                                        (_%tl149169149223%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149167149218%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149169149223%_))
                                        (_%loop149156149192%_
                                         _%lp-tl149159149207%_
                                         (cons _%hd149168149221%_
                                               _%body149160149197%_)
                                         (cons _%hd149165149213%_
                                               _%hd149161149199%_))
                                        (_%g149146149174%_
                                         _%g149147149177%_))))
                                (_%g149146149174%_ _%g149147149177%_))))
                        (_%g149146149174%_ _%g149147149177%_))))
                (let ((_%body149162149226%_ (reverse _%body149160149197%_))
                      (_%hd149163149228%_ (reverse _%hd149161149199%_)))
                  ((lambda (_%L149231%_ _%L149232%_)
                     (for-each
                      (lambda (_%g149246149248%_)
                        (gxc#compile-e__1 _%self149143%_ _%g149246149248%_))
                      (let ((__tmp150001
                             (lambda (_%g149250149253%_ _%g149251149255%_)
                               (cons _%g149250149253%_ _%g149251149255%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150001 '() _%L149231%_))))
                   _%body149162149226%_
                   _%hd149163149228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149156149192%_
                                           _%target149153149187%_
                                           '()
                                           '()))
                                        (_%g149146149174%_
                                         _%g149147149177%_)))))
                              (_%g149146149174%_ _%g149147149177%_))))
                      (_%g149146149174%_ _%g149147149177%_)))))
          (_%g149145149258%_ _%stx149144%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self148996%_ _%stx148997%_)
        (let* ((_%g148999149034%_
                (lambda (_%g149000149031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149000149031%_))))
               (_%g148998149140%_
                (lambda (_%g149000149037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149000149037%_))
                      (let ((_%e149004149039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149000149037%_))))
                        (let ((_%hd149005149042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149004149039%_)))
                              (_%tl149006149044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149004149039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149006149044%_))
                              (let ((_%e149007149047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149006149044%_))))
                                (let ((_%hd149008149050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149007149047%_)))
                                      (_%tl149009149052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149007149047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149008149050%_))
                                      (let ((_g150002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149008149050%_
                                                '0))))
                                        (begin
                                          (let ((_g150003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150002_)
                                                       (##values-length
                                                        _g150002_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150003_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150003_)))
                                          (let ((_%target149010149055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150002_ 0)))
                                                (_%tl149012149057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150002_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149012149057%_))
                                                (letrec ((_%loop149013149060%_
                                                          (lambda (_%hd149011149063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149017149065%_
                           _%hd149018149067%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149011149063%_))
                        (let ((_%e149014149070%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149011149063%_))))
                          (let ((_%lp-hd149015149073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149014149070%_)))
                                (_%lp-tl149016149075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149014149070%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149015149073%_))
                                (let ((_%e149021149078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149015149073%_))))
                                  (let ((_%hd149022149081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149021149078%_)))
                                        (_%tl149023149083%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149021149078%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149023149083%_))
                                        (let ((_%e149024149086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149023149083%_))))
                                          (let ((_%hd149025149089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149024149086%_)))
                                                (_%tl149026149091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149024149086%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149026149091%_))
                                                (_%loop149013149060%_
                                                 _%lp-tl149016149075%_
                                                 (cons _%hd149025149089%_
                                                       _%expr149017149065%_)
                                                 (cons _%hd149022149081%_
                                                       _%hd149018149067%_))
                                                (_%g148999149034%_
                                                 _%g149000149037%_))))
                                        (_%g148999149034%_
                                         _%g149000149037%_))))
                                (_%g148999149034%_ _%g149000149037%_))))
                        (let ((_%expr149019149094%_
                               (reverse _%expr149017149065%_))
                              (_%hd149020149096%_
                               (reverse _%hd149018149067%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149009149052%_))
                              (let ((_%e149027149099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149009149052%_))))
                                (let ((_%hd149028149102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149027149099%_)))
                                      (_%tl149029149104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149027149099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149029149104%_))
                                      ((lambda (_%L149107%_
                                                _%L149108%_
                                                _%L149109%_)
                                         (for-each
                                          (lambda (_%g149128149130%_)
                                            (gxc#compile-e__1
                                             _%self148996%_
                                             _%g149128149130%_))
                                          (let ((__tmp150005
                                                 (lambda (_%g149132149135%_
                                                          _%g149133149137%_)
                                                   (cons _%g149132149135%_
                                                         _%g149133149137%_)))
                                                (__tmp150004
                                                 (cons _%L149107%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150005
                                             __tmp150004
                                             _%L149108%_))))
                                       _%hd149028149102%_
                                       _%expr149019149094%_
                                       _%hd149020149096%_)
                                      (_%g148999149034%_ _%g149000149037%_))))
                              (_%g148999149034%_ _%g149000149037%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop149013149060%_
                                                   _%target149010149055%_
                                                   '()
                                                   '()))
                                                (_%g148999149034%_
                                                 _%g149000149037%_)))))
                                      (_%g148999149034%_ _%g149000149037%_))))
                              (_%g148999149034%_ _%g149000149037%_))))
                      (_%g148999149034%_ _%g149000149037%_)))))
          (_%g148998149140%_ _%stx148997%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self148941%_ _%stx148942%_)
        (let* ((_%g148944148958%_
                (lambda (_%g148945148955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148945148955%_))))
               (_%g148943148993%_
                (lambda (_%g148945148961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148945148961%_))
                      (let ((_%e148948148963%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148945148961%_))))
                        (let ((_%hd148949148966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148948148963%_)))
                              (_%tl148950148968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148948148963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148950148968%_))
                              (let ((_%e148951148971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148950148968%_))))
                                (let ((_%hd148952148974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148951148971%_)))
                                      (_%tl148953148976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148951148971%_))))
                                  ((lambda (_%L148979%_ _%L148980%_)
                                     (gxc#compile-e__1
                                      _%self148941%_
                                      (last _%L148979%_)))
                                   _%tl148953148976%_
                                   _%hd148952148974%_)))
                              (_%g148944148958%_ _%g148945148961%_))))
                      (_%g148944148958%_ _%g148945148961%_)))))
          (_%g148943148993%_ _%stx148942%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self148873%_ _%stx148874%_)
        (let* ((_%g148876148893%_
                (lambda (_%g148877148890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148877148890%_))))
               (_%g148875148938%_
                (lambda (_%g148877148896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148877148896%_))
                      (let ((_%e148880148898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148877148896%_))))
                        (let ((_%hd148881148901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148880148898%_)))
                              (_%tl148882148903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148880148898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148882148903%_))
                              (let ((_%e148883148906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148882148903%_))))
                                (let ((_%hd148884148909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148883148906%_)))
                                      (_%tl148885148911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148883148906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148885148911%_))
                                      (let ((_%e148886148914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148885148911%_))))
                                        (let ((_%hd148887148917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148886148914%_)))
                                              (_%tl148888148919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148886148914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148888148919%_))
                                              ((lambda (_%L148922%_
                                                        _%L148923%_)
                                                 (gxc#compile-e__1
                                                  _%self148873%_
                                                  _%L148922%_))
                                               _%hd148887148917%_
                                               _%hd148884148909%_)
                                              (_%g148876148893%_
                                               _%g148877148896%_))))
                                      (_%g148876148893%_ _%g148877148896%_))))
                              (_%g148876148893%_ _%g148877148896%_))))
                      (_%g148876148893%_ _%g148877148896%_)))))
          (_%g148875148938%_ _%stx148874%_))))
    (define gxc#apply-operands
      (lambda (_%self148786%_ _%stx148787%_)
        (let* ((_%g148789148808%_
                (lambda (_%g148790148805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148790148805%_))))
               (_%g148788148870%_
                (lambda (_%g148790148811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148790148811%_))
                      (let ((_%e148792148813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148790148811%_))))
                        (let ((_%hd148793148816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148792148813%_)))
                              (_%tl148794148818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148792148813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148794148818%_))
                              (let ((_g150006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148794148818%_
                                        '0))))
                                (begin
                                  (let ((_g150007_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150006_)
                                               (##values-length _g150006_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150007_ 2)))
                                        (error "Context expects 2 values"
                                               _g150007_)))
                                  (let ((_%target148795148821%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150006_ 0)))
                                        (_%tl148797148823%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g150006_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148797148823%_))
                                        (letrec ((_%loop148798148826%_
                                                  (lambda (_%hd148796148829%_
                                                           _%rands148802148831%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148796148829%_))
                                                        (let ((_%e148799148834%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148796148829%_))))
                  (let ((_%lp-hd148800148837%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148799148834%_)))
                        (_%lp-tl148801148839%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148799148834%_))))
                    (_%loop148798148826%_
                     _%lp-tl148801148839%_
                     (cons _%lp-hd148800148837%_ _%rands148802148831%_))))
                (let ((_%rands148803148842%_ (reverse _%rands148802148831%_)))
                  ((lambda (_%L148845%_)
                     (for-each
                      (lambda (_%g148858148860%_)
                        (gxc#compile-e__1 _%self148786%_ _%g148858148860%_))
                      (let ((__tmp150008
                             (lambda (_%g148862148865%_ _%g148863148867%_)
                               (cons _%g148862148865%_ _%g148863148867%_))))
                        (declare (not safe))
                        (__foldr1 __tmp150008 '() _%L148845%_))))
                   _%rands148803148842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148798148826%_
                                           _%target148795148821%_
                                           '()))
                                        (_%g148789148808%_
                                         _%g148790148811%_)))))
                              (_%g148789148808%_ _%g148790148811%_))))
                      (_%g148789148808%_ _%g148790148811%_)))))
          (_%g148788148870%_ _%stx148787%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx148783%_ _%src-stx148784%_)
        (let ((__tmp150009
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx148784%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx148783%_ __tmp150009))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx148779%_ _%src-stx148780%_ _%ctx148781%_)
        (gxc#compile-e__1
         _%ctx148781%_
         (gxc#xform-wrap-source _%stx148779%_ _%src-stx148780%_))))
    (define gxc#xform-begin%
      (lambda (_%self148734%_ _%stx148735%_)
        (let* ((_%g148737148747%_
                (lambda (_%g148738148744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148738148744%_))))
               (_%g148736148776%_
                (lambda (_%g148738148750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148738148750%_))
                      (let ((_%e148740148752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148738148750%_))))
                        (let ((_%hd148741148755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148740148752%_)))
                              (_%tl148742148757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148740148752%_))))
                          ((lambda (_%L148760%_)
                             (let ((_%forms148774%_
                                    (map (lambda (_%g148769148771%_)
                                           (gxc#compile-e__1
                                            _%self148734%_
                                            _%g148769148771%_))
                                         _%L148760%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms148774%_)
                                _%stx148735%_)))
                           _%tl148742148757%_)))
                      (_%g148737148747%_ _%g148738148750%_)))))
          (_%g148736148776%_ _%stx148735%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self148688%_ _%stx148689%_)
        (let* ((_%g148691148701%_
                (lambda (_%g148692148698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148692148698%_))))
               (_%g148690148731%_
                (lambda (_%g148692148704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148692148704%_))
                      (let ((_%e148694148706%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148692148704%_))))
                        (let ((_%hd148695148709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148694148706%_)))
                              (_%tl148696148711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148694148706%_))))
                          ((lambda (_%L148714%_)
                             (let ((__tmp150012
                                    (lambda ()
                                      (let ((_%forms148729%_
                                             (map (lambda (_%g148724148726%_)
                                                    (gxc#compile-e__1
                                                     _%self148688%_
                                                     _%g148724148726%_))
                                                  _%L148714%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms148729%_)
                                         _%stx148689%_))))
                                   (__tmp150010
                                    (let ((__tmp150011
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp150011 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150012
                                gx#current-expander-phi
                                __tmp150010)))
                           _%tl148696148711%_)))
                      (_%g148691148701%_ _%g148692148704%_)))))
          (_%g148690148731%_ _%stx148689%_))))
    (define gxc#xform-module%
      (lambda (_%self148625%_ _%stx148626%_)
        (let* ((_%g148628148642%_
                (lambda (_%g148629148639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148629148639%_))))
               (_%g148627148685%_
                (lambda (_%g148629148645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148629148645%_))
                      (let ((_%e148632148647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148629148645%_))))
                        (let ((_%hd148633148650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148632148647%_)))
                              (_%tl148634148652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148632148647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148634148652%_))
                              (let ((_%e148635148655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148634148652%_))))
                                (let ((_%hd148636148658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148635148655%_)))
                                      (_%tl148637148660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148635148655%_))))
                                  ((lambda (_%L148663%_ _%L148664%_)
                                     (let* ((_%ctx148677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L148664%_)))
                                            (_%code148679%_
                                             (##structure-ref
                                              _%ctx148677%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code148682%_
                                             (let ((__tmp150013
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self148625%_
                                                       _%code148679%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp150013
                                                gx#current-expander-context
                                                _%ctx148677%_))))
                                       (##structure-set!
                                        _%ctx148677%_
                                        _%code148682%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L148664%_
                                                    (cons _%code148682%_ '())))
                                        _%stx148626%_)))
                                   _%tl148637148660%_
                                   _%hd148636148658%_)))
                              (_%g148628148642%_ _%g148629148645%_))))
                      (_%g148628148642%_ _%g148629148645%_)))))
          (_%g148627148685%_ _%stx148626%_))))
    (define gxc#xform-define-values%
      (lambda (_%self148555%_ _%stx148556%_)
        (let* ((_%g148558148575%_
                (lambda (_%g148559148572%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148559148572%_))))
               (_%g148557148622%_
                (lambda (_%g148559148578%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148559148578%_))
                      (let ((_%e148562148580%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148559148578%_))))
                        (let ((_%hd148563148583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148562148580%_)))
                              (_%tl148564148585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148562148580%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148564148585%_))
                              (let ((_%e148565148588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148564148585%_))))
                                (let ((_%hd148566148591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148565148588%_)))
                                      (_%tl148567148593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148565148588%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148567148593%_))
                                      (let ((_%e148568148596%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148567148593%_))))
                                        (let ((_%hd148569148599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148568148596%_)))
                                              (_%tl148570148601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148568148596%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148570148601%_))
                                              ((lambda (_%L148604%_
                                                        _%L148605%_)
                                                 (let ((_%expr148620%_
                                                        (gxc#compile-e__1
                                                         _%self148555%_
                                                         _%L148604%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L148605%_
                                                                (cons _%expr148620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148556%_)))
                                               _%hd148569148599%_
                                               _%hd148566148591%_)
                                              (_%g148558148575%_
                                               _%g148559148578%_))))
                                      (_%g148558148575%_ _%g148559148578%_))))
                              (_%g148558148575%_ _%g148559148578%_))))
                      (_%g148558148575%_ _%g148559148578%_)))))
          (_%g148557148622%_ _%stx148556%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self148484%_ _%stx148485%_)
        (let* ((_%g148487148504%_
                (lambda (_%g148488148501%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148488148501%_))))
               (_%g148486148552%_
                (lambda (_%g148488148507%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148488148507%_))
                      (let ((_%e148491148509%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148488148507%_))))
                        (let ((_%hd148492148512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148491148509%_)))
                              (_%tl148493148514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148491148509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148493148514%_))
                              (let ((_%e148494148517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148493148514%_))))
                                (let ((_%hd148495148520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148494148517%_)))
                                      (_%tl148496148522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148494148517%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148496148522%_))
                                      (let ((_%e148497148525%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148496148522%_))))
                                        (let ((_%hd148498148528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148497148525%_)))
                                              (_%tl148499148530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148497148525%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148499148530%_))
                                              ((lambda (_%L148533%_
                                                        _%L148534%_)
                                                 (let ((__tmp150016
                                                        (lambda ()
                                                          (let ((_%expr148550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self148484%_ _%L148533%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L148534%_ (cons _%expr148550%_ '())))
                     _%stx148485%_))))
               (__tmp150014
                (let ((__tmp150015
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150015 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150016
                                                    gx#current-expander-phi
                                                    __tmp150014)))
                                               _%hd148498148528%_
                                               _%hd148495148520%_)
                                              (_%g148487148504%_
                                               _%g148488148507%_))))
                                      (_%g148487148504%_ _%g148488148507%_))))
                              (_%g148487148504%_ _%g148488148507%_))))
                      (_%g148487148504%_ _%g148488148507%_)))))
          (_%g148486148552%_ _%stx148485%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self148414%_ _%stx148415%_)
        (let* ((_%g148417148434%_
                (lambda (_%g148418148431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148418148431%_))))
               (_%g148416148481%_
                (lambda (_%g148418148437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148418148437%_))
                      (let ((_%e148421148439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148418148437%_))))
                        (let ((_%hd148422148442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148421148439%_)))
                              (_%tl148423148444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148421148439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148423148444%_))
                              (let ((_%e148424148447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148423148444%_))))
                                (let ((_%hd148425148450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148424148447%_)))
                                      (_%tl148426148452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148424148447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148426148452%_))
                                      (let ((_%e148427148455%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148426148452%_))))
                                        (let ((_%hd148428148458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148427148455%_)))
                                              (_%tl148429148460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148427148455%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148429148460%_))
                                              ((lambda (_%L148463%_
                                                        _%L148464%_)
                                                 (let ((_%expr148479%_
                                                        (gxc#compile-e__1
                                                         _%self148414%_
                                                         _%L148463%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L148464%_
                                                                (cons _%expr148479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148415%_)))
                                               _%hd148428148458%_
                                               _%hd148425148450%_)
                                              (_%g148417148434%_
                                               _%g148418148437%_))))
                                      (_%g148417148434%_ _%g148418148437%_))))
                              (_%g148417148434%_ _%g148418148437%_))))
                      (_%g148417148434%_ _%g148418148437%_)))))
          (_%g148416148481%_ _%stx148415%_))))
    (define gxc#xform-lambda%
      (lambda (_%self148352%_ _%stx148353%_)
        (let* ((_%g148355148369%_
                (lambda (_%g148356148366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148356148366%_))))
               (_%g148354148411%_
                (lambda (_%g148356148372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148356148372%_))
                      (let ((_%e148359148374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148356148372%_))))
                        (let ((_%hd148360148377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148359148374%_)))
                              (_%tl148361148379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148359148374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148361148379%_))
                              (let ((_%e148362148382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148361148379%_))))
                                (let ((_%hd148363148385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148362148382%_)))
                                      (_%tl148364148387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148362148382%_))))
                                  ((lambda (_%L148390%_ _%L148391%_)
                                     (let ((__tmp150018
                                            (lambda ()
                                              (let ((_%body148409%_
                                                     (map (lambda (_%g148404148406%_)
                                                            (gxc#compile-e__1
                                                             _%self148352%_
                                                             _%g148404148406%_))
                                                          _%L148390%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L148391%_
                                                             _%body148409%_))
                                                 _%stx148353%_))))
                                           (__tmp150017
                                            (gxc#xform-let-locals
                                             _%L148391%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150018
                                        gxc#current-compile-local-env
                                        __tmp150017)))
                                   _%tl148364148387%_
                                   _%hd148363148385%_)))
                              (_%g148355148369%_ _%g148356148372%_))))
                      (_%g148355148369%_ _%g148356148372%_)))))
          (_%g148354148411%_ _%stx148353%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self148260%_ _%stx148261%_)
        (letrec ((_%clause-e148263%_
                  (lambda (_%clause148304%_)
                    (let* ((_%g148306148317%_
                            (lambda (_%g148307148314%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g148307148314%_))))
                           (_%g148305148349%_
                            (lambda (_%g148307148320%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g148307148320%_))
                                  (let ((_%e148310148322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g148307148320%_))))
                                    (let ((_%hd148311148325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148310148322%_)))
                                          (_%tl148312148327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148310148322%_))))
                                      ((lambda (_%L148330%_ _%L148331%_)
                                         (let ((__tmp150020
                                                (lambda ()
                                                  (let ((_%body148347%_
                                                         (map (lambda (_%g148342148344%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self148260%_
                         _%g148342148344%_))
                      _%L148330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L148331%_
                                                          _%body148347%_))))
                                               (__tmp150019
                                                (gxc#xform-let-locals
                                                 _%L148331%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp150020
                                            gxc#current-compile-local-env
                                            __tmp150019)))
                                       _%tl148312148327%_
                                       _%hd148311148325%_)))
                                  (_%g148306148317%_ _%g148307148320%_)))))
                      (_%g148305148349%_ _%clause148304%_)))))
          (let* ((_%g148265148275%_
                  (lambda (_%g148266148272%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148266148272%_))))
                 (_%g148264148301%_
                  (lambda (_%g148266148278%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148266148278%_))
                        (let ((_%e148268148280%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148266148278%_))))
                          (let ((_%hd148269148283%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148268148280%_)))
                                (_%tl148270148285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148268148280%_))))
                            ((lambda (_%L148288%_)
                               (let ((_%clauses148299%_
                                      (map _%clause-e148263%_ _%L148288%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses148299%_)
                                  _%stx148261%_)))
                             _%tl148270148285%_)))
                        (_%g148265148275%_ _%g148266148278%_)))))
            (_%g148264148301%_ _%stx148261%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self148014%_ _%stx148015%_)
        (let* ((_%g148017148050%_
                (lambda (_%g148018148047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148018148047%_))))
               (_%g148016148257%_
                (lambda (_%g148018148053%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148018148053%_))
                      (let ((_%e148023148055%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148018148053%_))))
                        (let ((_%hd148024148058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148023148055%_)))
                              (_%tl148025148060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148023148055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148025148060%_))
                              (let ((_%e148026148063%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148025148060%_))))
                                (let ((_%hd148027148066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148026148063%_)))
                                      (_%tl148028148068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148026148063%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148027148066%_))
                                      (let ((_g150021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148027148066%_
                                                '0))))
                                        (begin
                                          (let ((_g150022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150021_)
                                                       (##values-length
                                                        _g150021_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150022_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150022_)))
                                          (let ((_%target148029148071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150021_ 0)))
                                                (_%tl148031148073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150021_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148031148073%_))
                                                (letrec ((_%loop148032148076%_
                                                          (lambda (_%hd148030148079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148036148081%_
                           _%hd148037148083%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148030148079%_))
                        (let ((_%e148033148086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148030148079%_))))
                          (let ((_%lp-hd148034148089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148033148086%_)))
                                (_%lp-tl148035148091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148033148086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148034148089%_))
                                (let ((_%e148040148094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148034148089%_))))
                                  (let ((_%hd148041148097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148040148094%_)))
                                        (_%tl148042148099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148040148094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148042148099%_))
                                        (let ((_%e148043148102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148042148099%_))))
                                          (let ((_%hd148044148105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148043148102%_)))
                                                (_%tl148045148107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148043148102%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148045148107%_))
                                                (_%loop148032148076%_
                                                 _%lp-tl148035148091%_
                                                 (cons _%hd148044148105%_
                                                       _%expr148036148081%_)
                                                 (cons _%hd148041148097%_
                                                       _%hd148037148083%_))
                                                (_%g148017148050%_
                                                 _%g148018148053%_))))
                                        (_%g148017148050%_
                                         _%g148018148053%_))))
                                (_%g148017148050%_ _%g148018148053%_))))
                        (let ((_%expr148038148110%_
                               (reverse _%expr148036148081%_))
                              (_%hd148039148112%_
                               (reverse _%hd148037148083%_)))
                          ((lambda (_%L148115%_
                                    _%L148116%_
                                    _%L148117%_
                                    _%L148118%_)
                             (let* ((_%g148137148153%_
                                     (lambda (_%g148138148150%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148138148150%_))))
                                    (_%g148136148243%_
                                     (lambda (_%g148138148156%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g148138148156%_))
                                           (let ((_g150023_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g148138148156%_
                                                     '0))))
                                             (begin
                                               (let ((_g150024_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g150023_)
                                                            (##values-length
                                                             _g150023_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g150024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g150024_)))
                                               (let ((_%target148140148158%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150023_
                                                         0)))
                                                     (_%tl148142148160%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150023_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl148142148160%_))
                                                     (letrec ((_%loop148143148163%_
                                                               (lambda (_%hd148141148166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr148147148168%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd148141148166%_))
                             (let ((_%e148144148171%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd148141148166%_))))
                               (let ((_%lp-hd148145148174%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148144148171%_)))
                                     (_%lp-tl148146148176%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148144148171%_))))
                                 (_%loop148143148163%_
                                  _%lp-tl148146148176%_
                                  (cons _%lp-hd148145148174%_
                                        _%expr148147148168%_))))
                             (let ((_%expr148148148179%_
                                    (reverse _%expr148147148168%_)))
                               ((lambda (_%L148182%_)
                                  (let ((__tmp150027
                                         (lambda ()
                                           (let* ((_%g148196148203%_
                                                   (lambda (_%g148197148200%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148197148200%_))))
                                                  (_%g148195148229%_
                                                   (lambda (_%g148197148206%_)
                                                     ((lambda (_%L148208%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L148118%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L148182%_
                                  _%L148117%_))
                               (let ((__tmp150028
                                      (lambda (_%g148218148222%_
                                               _%g148219148224%_
                                               _%g148220148226%_)
                                        (cons (cons _%g148219148224%_
                                                    (cons _%g148218148222%_
                                                          '()))
                                              _%g148220148226%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150028
                                  '()
                                  _%L148182%_
                                  _%L148117%_)))
                             _%L148208%_))
                 _%stx148015%_))
              _%g148197148206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148195148229%_
                                              (map (lambda (_%g148231148233%_)
                                                     (gxc#compile-e__1
                                                      _%self148014%_
                                                      _%g148231148233%_))
                                                   _%L148115%_)))))
                                        (__tmp150025
                                         (gxc#xform-let-locals
                                          (let ((__tmp150026
                                                 (lambda (_%g148235148238%_
                                                          _%g148236148240%_)
                                                   (cons _%g148235148238%_
                                                         _%g148236148240%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150026
                                             '()
                                             _%L148117%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp150027
                                     gxc#current-compile-local-env
                                     __tmp150025)))
                                _%expr148148148179%_))))))
               (_%loop148143148163%_ _%target148140148158%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g148137148153%_
                                                      _%g148138148156%_)))))
                                           (_%g148137148153%_
                                            _%g148138148156%_)))))
                               (_%g148136148243%_
                                (map (lambda (_%g148245148247%_)
                                       (gxc#compile-e__1
                                        _%self148014%_
                                        _%g148245148247%_))
                                     (let ((__tmp150029
                                            (lambda (_%g148249148252%_
                                                     _%g148250148254%_)
                                              (cons _%g148249148252%_
                                                    _%g148250148254%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150029
                                        '()
                                        _%L148116%_))))))
                           _%tl148028148068%_
                           _%expr148038148110%_
                           _%hd148039148112%_
                           _%hd148024148058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148032148076%_
                                                   _%target148029148071%_
                                                   '()
                                                   '()))
                                                (_%g148017148050%_
                                                 _%g148018148053%_)))))
                                      (_%g148017148050%_ _%g148018148053%_))))
                              (_%g148017148050%_ _%g148018148053%_))))
                      (_%g148017148050%_ _%g148018148053%_)))))
          (_%g148016148257%_ _%stx148015%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self147768%_ _%stx147769%_)
        (let* ((_%g147771147804%_
                (lambda (_%g147772147801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147772147801%_))))
               (_%g147770148011%_
                (lambda (_%g147772147807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147772147807%_))
                      (let ((_%e147777147809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147772147807%_))))
                        (let ((_%hd147778147812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147777147809%_)))
                              (_%tl147779147814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147777147809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147779147814%_))
                              (let ((_%e147780147817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147779147814%_))))
                                (let ((_%hd147781147820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147780147817%_)))
                                      (_%tl147782147822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147780147817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd147781147820%_))
                                      (let ((_g150030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd147781147820%_
                                                '0))))
                                        (begin
                                          (let ((_g150031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150030_)
                                                       (##values-length
                                                        _g150030_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150031_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150031_)))
                                          (let ((_%target147783147825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150030_ 0)))
                                                (_%tl147785147827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150030_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147785147827%_))
                                                (letrec ((_%loop147786147830%_
                                                          (lambda (_%hd147784147833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr147790147835%_
                           _%hd147791147837%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd147784147833%_))
                        (let ((_%e147787147840%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd147784147833%_))))
                          (let ((_%lp-hd147788147843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147787147840%_)))
                                (_%lp-tl147789147845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147787147840%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd147788147843%_))
                                (let ((_%e147794147848%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd147788147843%_))))
                                  (let ((_%hd147795147851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147794147848%_)))
                                        (_%tl147796147853%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147794147848%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147796147853%_))
                                        (let ((_%e147797147856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147796147853%_))))
                                          (let ((_%hd147798147859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147797147856%_)))
                                                (_%tl147799147861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147797147856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147799147861%_))
                                                (_%loop147786147830%_
                                                 _%lp-tl147789147845%_
                                                 (cons _%hd147798147859%_
                                                       _%expr147790147835%_)
                                                 (cons _%hd147795147851%_
                                                       _%hd147791147837%_))
                                                (_%g147771147804%_
                                                 _%g147772147807%_))))
                                        (_%g147771147804%_
                                         _%g147772147807%_))))
                                (_%g147771147804%_ _%g147772147807%_))))
                        (let ((_%expr147792147864%_
                               (reverse _%expr147790147835%_))
                              (_%hd147793147866%_
                               (reverse _%hd147791147837%_)))
                          ((lambda (_%L147869%_
                                    _%L147870%_
                                    _%L147871%_
                                    _%L147872%_)
                             (let ((__tmp150034
                                    (lambda ()
                                      (let* ((_%g147892147908%_
                                              (lambda (_%g147893147905%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g147893147905%_))))
                                             (_%g147891147990%_
                                              (lambda (_%g147893147911%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g147893147911%_))
                                                    (let ((_g150035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g147893147911%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g150036_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g150035_)
                             (##values-length _g150035_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g150036_ 2)))
                      (error "Context expects 2 values" _g150036_)))
                (let ((_%target147895147913%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150035_ 0)))
                      (_%tl147897147915%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150035_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147897147915%_))
                      (letrec ((_%loop147898147918%_
                                (lambda (_%hd147896147921%_
                                         _%expr147902147923%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147896147921%_))
                                      (let ((_%e147899147926%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd147896147921%_))))
                                        (let ((_%lp-hd147900147929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147899147926%_)))
                                              (_%lp-tl147901147931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147899147926%_))))
                                          (_%loop147898147918%_
                                           _%lp-tl147901147931%_
                                           (cons _%lp-hd147900147929%_
                                                 _%expr147902147923%_))))
                                      (let ((_%expr147903147934%_
                                             (reverse _%expr147902147923%_)))
                                        ((lambda (_%L147937%_)
                                           (let* ((_%g147951147958%_
                                                   (lambda (_%g147952147955%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g147952147955%_))))
                                                  (_%g147950147983%_
                                                   (lambda (_%g147952147961%_)
                                                     ((lambda (_%L147963%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L147872%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L147937%_
                                  _%L147871%_))
                               (let ((__tmp150037
                                      (lambda (_%g147972147976%_
                                               _%g147973147978%_
                                               _%g147974147980%_)
                                        (cons (cons _%g147973147978%_
                                                    (cons _%g147972147976%_
                                                          '()))
                                              _%g147974147980%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150037
                                  '()
                                  _%L147937%_
                                  _%L147871%_)))
                             _%L147963%_))
                 _%stx147769%_))
              _%g147952147961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g147950147983%_
                                              (map (lambda (_%g147985147987%_)
                                                     (gxc#compile-e__1
                                                      _%self147768%_
                                                      _%g147985147987%_))
                                                   _%L147869%_))))
                                         _%expr147903147934%_))))))
                        (_%loop147898147918%_ _%target147895147913%_ '()))
                      (_%g147892147908%_ _%g147893147911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g147892147908%_
                                                     _%g147893147911%_)))))
                                        (_%g147891147990%_
                                         (map (lambda (_%g147992147994%_)
                                                (gxc#compile-e__1
                                                 _%self147768%_
                                                 _%g147992147994%_))
                                              (let ((__tmp150038
                                                     (lambda (_%g147996147999%_
                                                              _%g147997148001%_)
                                                       (cons _%g147996147999%_
                                                             _%g147997148001%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp150038
                                                 '()
                                                 _%L147870%_)))))))
                                   (__tmp150032
                                    (gxc#xform-let-locals
                                     (let ((__tmp150033
                                            (lambda (_%g148003148006%_
                                                     _%g148004148008%_)
                                              (cons _%g148003148006%_
                                                    _%g148004148008%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150033
                                        '()
                                        _%L147871%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150034
                                gxc#current-compile-local-env
                                __tmp150032)))
                           _%tl147782147822%_
                           _%expr147792147864%_
                           _%hd147793147866%_
                           _%hd147778147812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop147786147830%_
                                                   _%target147783147825%_
                                                   '()
                                                   '()))
                                                (_%g147771147804%_
                                                 _%g147772147807%_)))))
                                      (_%g147771147804%_ _%g147772147807%_))))
                              (_%g147771147804%_ _%g147772147807%_))))
                      (_%g147771147804%_ _%g147772147807%_)))))
          (_%g147770148011%_ _%stx147769%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings147635%_)
        (letrec ((_%flatten147637%_
                  (lambda (_%maybe-lst147695%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst147695%_))
                        (cons _%maybe-lst147695%_ '())
                        (let _%loop147697%_ ((_%rest147699%_
                                              _%maybe-lst147695%_)
                                             (_%result147700%_ '()))
                          (let* ((_%__stx149926149927%_ _%rest147699%_)
                                 (_%g147704147716%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx149926149927%_)))))
                            (let ((_%__kont149928149929%_
                                   (lambda (_%L147754%_ _%L147755%_)
                                     (_%loop147697%_
                                      _%L147754%_
                                      (let ((__tmp150039
                                             (_%flatten147637%_ _%L147755%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result147700%_
                                         __tmp150039)))))
                                  (_%__kont149930149931%_
                                   (lambda (_%L147728%_)
                                     (cons _%L147728%_ _%result147700%_)))
                                  (_%__kont149932149933%_
                                   (lambda () _%result147700%_)))
                              (let ((_%g147702147741%_
                                     (lambda ()
                                       (let ((_%L147728%_
                                              _%__stx149926149927%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L147728%_))
                                             (_%__kont149930149931%_
                                              _%L147728%_)
                                             (_%__kont149932149933%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx149926149927%_))
                                    (let ((_%e147708147746%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx149926149927%_))))
                                      (let ((_%tl147710147751%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e147708147746%_)))
                                            (_%hd147709147749%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e147708147746%_))))
                                        (_%__kont149928149929%_
                                         _%tl147710147751%_
                                         _%hd147709147749%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g147702147741%_)))))))))))
          (let _%loop147639%_ ((_%rest147641%_
                                (_%flatten147637%_ _%bindings147635%_))
                               (_%locals147642%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest147643147654%_ _%rest147641%_)
                   (_%E147647147658%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest147643147654%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K147650147683%_
                     (lambda (_%rest147680%_ _%id147681%_)
                       (_%loop147639%_
                        _%rest147680%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id147681%_))
                              _%locals147642%_))))
                    (_%K147649147672%_
                     (lambda (_%id147670%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id147670%_))
                             _%locals147642%_)))
                    (_%K147648147663%_ (lambda () _%locals147642%_)))
                (let ((_%try-match147645147677%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest147643147654%_))
                             (let ((_%id147675%_ _%rest147643147654%_))
                               (_%K147649147672%_ _%id147675%_))
                             (_%K147648147663%_)))))
                  (if (pair? _%rest147643147654%_)
                      (let ((_%tl147652147688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147643147654%_)))
                            (_%hd147651147686%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147643147654%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd147651147686%_))
                            (let ((_%id147691%_ _%hd147651147686%_)
                                  (_%rest147693%_ _%tl147652147688%_))
                              (_%K147650147683%_ _%rest147693%_ _%id147691%_))
                            (_%K147648147663%_)))
                      (_%try-match147645147677%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self147587%_ _%stx147588%_)
        (let* ((_%g147590147601%_
                (lambda (_%g147591147598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147591147598%_))))
               (_%g147589147632%_
                (lambda (_%g147591147604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147591147604%_))
                      (let ((_%e147594147606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147591147604%_))))
                        (let ((_%hd147595147609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147594147606%_)))
                              (_%tl147596147611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147594147606%_))))
                          ((lambda (_%L147614%_ _%L147615%_)
                             (let ((_%rands147630%_
                                    (map (lambda (_%g147625147627%_)
                                           (gxc#compile-e__1
                                            _%self147587%_
                                            _%g147625147627%_))
                                         _%L147614%_)))
                               (gxc#xform-wrap-source
                                (cons _%L147615%_ _%rands147630%_)
                                _%stx147588%_)))
                           _%tl147596147611%_
                           _%hd147595147609%_)))
                      (_%g147590147601%_ _%g147591147604%_)))))
          (_%g147589147632%_ _%stx147588%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self147517%_ _%stx147518%_)
        (let* ((_%g147520147537%_
                (lambda (_%g147521147534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147521147534%_))))
               (_%g147519147584%_
                (lambda (_%g147521147540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147521147540%_))
                      (let ((_%e147524147542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147521147540%_))))
                        (let ((_%hd147525147545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147524147542%_)))
                              (_%tl147526147547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147524147542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147526147547%_))
                              (let ((_%e147527147550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147526147547%_))))
                                (let ((_%hd147528147553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147527147550%_)))
                                      (_%tl147529147555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147527147550%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147529147555%_))
                                      (let ((_%e147530147558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147529147555%_))))
                                        (let ((_%hd147531147561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147530147558%_)))
                                              (_%tl147532147563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147530147558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147532147563%_))
                                              ((lambda (_%L147566%_
                                                        _%L147567%_)
                                                 (let ((_%expr147582%_
                                                        (gxc#compile-e__1
                                                         _%self147517%_
                                                         _%L147566%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L147567%_
                                                                (cons _%expr147582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx147518%_)))
                                               _%hd147531147561%_
                                               _%hd147528147553%_)
                                              (_%g147520147537%_
                                               _%g147521147540%_))))
                                      (_%g147520147537%_ _%g147521147540%_))))
                              (_%g147520147537%_ _%g147521147540%_))))
                      (_%g147520147537%_ _%g147521147540%_)))))
          (_%g147519147584%_ _%stx147518%_))))))
