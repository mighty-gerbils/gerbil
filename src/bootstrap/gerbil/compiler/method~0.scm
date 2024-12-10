(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1733868036)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137731%_)
        (let* ((_%self137733%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137735%_
                (let ((__tmp137931 (gxc#stx-car-e _%stx137731%_)))
                  (declare (not safe))
                  (method-ref _%self137733%_ __tmp137931))))
          (if _%$e137735%_
              ((lambda (_%method137738%_)
                 (declare (not safe))
                 (_%method137738%_ _%self137733%_ _%stx137731%_))
               _%$e137735%_)
              (let ((__tmp137933 (gxc#stx-car-e _%stx137731%_))
                    (__tmp137932
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137731%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137733%_
                       __tmp137933
                       __tmp137932))))))
    (define gxc#compile-e__1
      (lambda (_%self137742%_ _%stx137743%_)
        (let ((_%$e137745%_
               (let ((__tmp137934 (gxc#stx-car-e _%stx137743%_)))
                 (declare (not safe))
                 (method-ref _%self137742%_ __tmp137934))))
          (if _%$e137745%_
              ((lambda (_%method137748%_)
                 (declare (not safe))
                 (_%method137748%_ _%self137742%_ _%stx137743%_))
               _%$e137745%_)
              (let ((__tmp137936 (gxc#stx-car-e _%stx137743%_))
                    (__tmp137935
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137743%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137742%_
                       __tmp137936
                       __tmp137935))))))
    (define gxc#compile-e
      (lambda _g137938_
        (let ((_g137937_ (let () (declare (not safe)) (##length _g137938_))))
          (cond ((let () (declare (not safe)) (##fx= _g137937_ 1))
                 (apply gxc#compile-e__0 _g137938_))
                ((let () (declare (not safe)) (##fx= _g137937_ 2))
                 (apply gxc#compile-e__1 _g137938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g137938_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137729%_)
        (let ((__tmp137939
               (car (let () (declare (not safe)) (gx#stx-e _%stx137729%_)))))
          (declare (not safe))
          (gx#stx-e __tmp137939))))
    (define gxc#void-method (lambda (_%self137726%_ _%stx137727%_) '#!void))
    (define gxc#false-method (lambda (_%self137723%_ _%stx137724%_) '#f))
    (define gxc#true-method (lambda (_%self137720%_ _%stx137721%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137717%_ _%stx137718%_) _%stx137718%_))
    (define gxc#::void-expression::t
      (let ((__tmp137940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp137940
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137714%_
        (apply make-instance gxc#::void-expression::t _%$args137714%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp137941
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
        (__make-promise __tmp137941)))
    (define gxc#::void-special-form::t
      (let ((__tmp137942 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp137942
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137710%_
        (apply make-instance gxc#::void-special-form::t _%$args137710%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp137943
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
        (__make-promise __tmp137943)))
    (define gxc#::void::t
      (let ((__tmp137944
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp137944 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137706%_
        (apply make-instance gxc#::void::t _%$args137706%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp137945
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137945)))
    (define gxc#::false-expression::t
      (let ((__tmp137946 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp137946
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137702%_
        (apply make-instance gxc#::false-expression::t _%$args137702%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp137947
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
        (__make-promise __tmp137947)))
    (define gxc#::false-special-form::t
      (let ((__tmp137948 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp137948
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137698%_
        (apply make-instance gxc#::false-special-form::t _%$args137698%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp137949
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
        (__make-promise __tmp137949)))
    (define gxc#::false::t
      (let ((__tmp137950
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp137950 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137694%_
        (apply make-instance gxc#::false::t _%$args137694%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp137951
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137951)))
    (define gxc#::identity-expression::t
      (let ((__tmp137952 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp137952
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137690%_
        (apply make-instance gxc#::identity-expression::t _%$args137690%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp137953
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
        (__make-promise __tmp137953)))
    (define gxc#::identity-special-form::t
      (let ((__tmp137954 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp137954
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137686%_
        (apply make-instance gxc#::identity-special-form::t _%$args137686%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp137955
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
        (__make-promise __tmp137955)))
    (define gxc#::identity::t
      (let ((__tmp137956
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp137956
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137682%_
        (apply make-instance gxc#::identity::t _%$args137682%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp137957
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137957)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp137958 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp137958
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137678%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137678%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp137959
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
        (__make-promise __tmp137959)))
    (define gxc#::basic-xform::t
      (let ((__tmp137960
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp137960
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137674%_
        (apply make-instance gxc#::basic-xform::t _%$args137674%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp137961
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
        (__make-promise __tmp137961)))
    (define gxc#apply-begin%
      (lambda (_%self137630%_ _%stx137631%_)
        (let* ((_%g137633137643%_
                (lambda (_%g137634137640%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137634137640%_))))
               (_%g137632137670%_
                (lambda (_%g137634137646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137634137646%_))
                      (let ((_%e137636137648%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137634137646%_))))
                        (let ((_%hd137637137651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137636137648%_)))
                              (_%tl137638137653%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137636137648%_))))
                          ((lambda (_%L137656%_)
                             (for-each
                              (lambda (_%g137665137667%_)
                                (gxc#compile-e__1
                                 _%self137630%_
                                 _%g137665137667%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137656%_))))
                           _%tl137638137653%_)))
                      (_%g137633137643%_ _%g137634137646%_)))))
          (_%g137632137670%_ _%stx137631%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self137591%_ _%stx137592%_)
        (let* ((_%g137594137604%_
                (lambda (_%g137595137601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137595137601%_))))
               (_%g137593137627%_
                (lambda (_%g137595137607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137595137607%_))
                      (let ((_%e137597137609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137595137607%_))))
                        (let ((_%hd137598137612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137597137609%_)))
                              (_%tl137599137614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137597137609%_))))
                          ((lambda (_%L137617%_)
                             (gxc#compile-e__1
                              _%self137591%_
                              (last _%L137617%_)))
                           _%tl137599137614%_)))
                      (_%g137594137604%_ _%g137595137607%_)))))
          (_%g137593137627%_ _%stx137592%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self137587%_ _%stx137588%_)
        (let ((__tmp137964
               (lambda () (gxc#apply-begin% _%self137587%_ _%stx137588%_)))
              (__tmp137962
               (let ((__tmp137963
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp137963 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp137964
           gx#current-expander-phi
           __tmp137962))))
    (define gxc#apply-module%
      (lambda (_%self137526%_ _%stx137527%_)
        (let* ((_%g137529137543%_
                (lambda (_%g137530137540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137530137540%_))))
               (_%g137528137584%_
                (lambda (_%g137530137546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137530137546%_))
                      (let ((_%e137533137548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137530137546%_))))
                        (let ((_%hd137534137551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137533137548%_)))
                              (_%tl137535137553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137533137548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137535137553%_))
                              (let ((_%e137536137556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137535137553%_))))
                                (let ((_%hd137537137559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137536137556%_)))
                                      (_%tl137538137561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137536137556%_))))
                                  ((lambda (_%L137564%_ _%L137565%_)
                                     (let* ((_%ctx137578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137565%_)))
                                            (_%ctx-stx137580%_
                                             (##structure-ref
                                              _%ctx137578%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp137965
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self137526%_
                                                _%ctx-stx137580%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137965
                                        gx#current-expander-context
                                        _%ctx137578%_)))
                                   _%tl137538137561%_
                                   _%hd137537137559%_)))
                              (_%g137529137543%_ _%g137530137546%_))))
                      (_%g137529137543%_ _%g137530137546%_)))))
          (_%g137528137584%_ _%stx137527%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self137458%_ _%stx137459%_)
        (let* ((_%g137461137478%_
                (lambda (_%g137462137475%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137462137475%_))))
               (_%g137460137523%_
                (lambda (_%g137462137481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137462137481%_))
                      (let ((_%e137465137483%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137462137481%_))))
                        (let ((_%hd137466137486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137465137483%_)))
                              (_%tl137467137488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137465137483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137467137488%_))
                              (let ((_%e137468137491%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137467137488%_))))
                                (let ((_%hd137469137494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137468137491%_)))
                                      (_%tl137470137496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137468137491%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137470137496%_))
                                      (let ((_%e137471137499%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137470137496%_))))
                                        (let ((_%hd137472137502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137471137499%_)))
                                              (_%tl137473137504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137471137499%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137473137504%_))
                                              ((lambda (_%L137507%_
                                                        _%L137508%_)
                                                 (gxc#compile-e__1
                                                  _%self137458%_
                                                  _%L137507%_))
                                               _%hd137472137502%_
                                               _%hd137469137494%_)
                                              (_%g137461137478%_
                                               _%g137462137481%_))))
                                      (_%g137461137478%_ _%g137462137481%_))))
                              (_%g137461137478%_ _%g137462137481%_))))
                      (_%g137461137478%_ _%g137462137481%_)))))
          (_%g137460137523%_ _%stx137459%_))))
    (define gxc#apply-define-values%
      (lambda (_%self137390%_ _%stx137391%_)
        (let* ((_%g137393137410%_
                (lambda (_%g137394137407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137394137407%_))))
               (_%g137392137455%_
                (lambda (_%g137394137413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137394137413%_))
                      (let ((_%e137397137415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137394137413%_))))
                        (let ((_%hd137398137418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137397137415%_)))
                              (_%tl137399137420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137397137415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137399137420%_))
                              (let ((_%e137400137423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137399137420%_))))
                                (let ((_%hd137401137426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137400137423%_)))
                                      (_%tl137402137428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137400137423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137402137428%_))
                                      (let ((_%e137403137431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137402137428%_))))
                                        (let ((_%hd137404137434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137403137431%_)))
                                              (_%tl137405137436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137403137431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137405137436%_))
                                              ((lambda (_%L137439%_
                                                        _%L137440%_)
                                                 (gxc#compile-e__1
                                                  _%self137390%_
                                                  _%L137439%_))
                                               _%hd137404137434%_
                                               _%hd137401137426%_)
                                              (_%g137393137410%_
                                               _%g137394137413%_))))
                                      (_%g137393137410%_ _%g137394137413%_))))
                              (_%g137393137410%_ _%g137394137413%_))))
                      (_%g137393137410%_ _%g137394137413%_)))))
          (_%g137392137455%_ _%stx137391%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self137321%_ _%stx137322%_)
        (let* ((_%g137324137341%_
                (lambda (_%g137325137338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137325137338%_))))
               (_%g137323137387%_
                (lambda (_%g137325137344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137325137344%_))
                      (let ((_%e137328137346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137325137344%_))))
                        (let ((_%hd137329137349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137328137346%_)))
                              (_%tl137330137351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137328137346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137330137351%_))
                              (let ((_%e137331137354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137330137351%_))))
                                (let ((_%hd137332137357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137331137354%_)))
                                      (_%tl137333137359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137331137354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137333137359%_))
                                      (let ((_%e137334137362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137333137359%_))))
                                        (let ((_%hd137335137365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137334137362%_)))
                                              (_%tl137336137367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137334137362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137336137367%_))
                                              ((lambda (_%L137370%_
                                                        _%L137371%_)
                                                 (let ((__tmp137968
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self137321%_
                                                           _%L137370%_)))
                                                       (__tmp137966
                                                        (let ((__tmp137967
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137967 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137968
                                                    gx#current-expander-phi
                                                    __tmp137966)))
                                               _%hd137335137365%_
                                               _%hd137332137357%_)
                                              (_%g137324137341%_
                                               _%g137325137344%_))))
                                      (_%g137324137341%_ _%g137325137344%_))))
                              (_%g137324137341%_ _%g137325137344%_))))
                      (_%g137324137341%_ _%g137325137344%_)))))
          (_%g137323137387%_ _%stx137322%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self137253%_ _%stx137254%_)
        (let* ((_%g137256137273%_
                (lambda (_%g137257137270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137257137270%_))))
               (_%g137255137318%_
                (lambda (_%g137257137276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137257137276%_))
                      (let ((_%e137260137278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137257137276%_))))
                        (let ((_%hd137261137281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137260137278%_)))
                              (_%tl137262137283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137260137278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137262137283%_))
                              (let ((_%e137263137286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137262137283%_))))
                                (let ((_%hd137264137289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137263137286%_)))
                                      (_%tl137265137291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137263137286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137265137291%_))
                                      (let ((_%e137266137294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137265137291%_))))
                                        (let ((_%hd137267137297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137266137294%_)))
                                              (_%tl137268137299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137266137294%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137268137299%_))
                                              ((lambda (_%L137302%_
                                                        _%L137303%_)
                                                 (gxc#compile-e__1
                                                  _%self137253%_
                                                  _%L137302%_))
                                               _%hd137267137297%_
                                               _%hd137264137289%_)
                                              (_%g137256137273%_
                                               _%g137257137276%_))))
                                      (_%g137256137273%_ _%g137257137276%_))))
                              (_%g137256137273%_ _%g137257137276%_))))
                      (_%g137256137273%_ _%g137257137276%_)))))
          (_%g137255137318%_ _%stx137254%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self137135%_ _%stx137136%_)
        (let* ((_%g137138137166%_
                (lambda (_%g137139137163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137139137163%_))))
               (_%g137137137250%_
                (lambda (_%g137139137169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137139137169%_))
                      (let ((_%e137142137171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137139137169%_))))
                        (let ((_%hd137143137174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137142137171%_)))
                              (_%tl137144137176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137142137171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137144137176%_))
                              (let ((_g137969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137144137176%_
                                        '0))))
                                (begin
                                  (let ((_g137970_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137969_)
                                               (##vector-length _g137969_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137970_ 2)))
                                        (error "Context expects 2 values"
                                               _g137970_)))
                                  (let ((_%target137145137179%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137969_ 0)))
                                        (_%tl137147137181%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137969_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137147137181%_))
                                        (letrec ((_%loop137148137184%_
                                                  (lambda (_%hd137146137187%_
                                                           _%body137152137189%_
                                                           _%hd137153137191%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137146137187%_))
                                                        (let ((_%e137149137194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137146137187%_))))
                  (let ((_%lp-hd137150137197%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137149137194%_)))
                        (_%lp-tl137151137199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137149137194%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd137150137197%_))
                        (let ((_%e137156137202%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd137150137197%_))))
                          (let ((_%hd137157137205%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137156137202%_)))
                                (_%tl137158137207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137156137202%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137158137207%_))
                                (let ((_%e137159137210%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137158137207%_))))
                                  (let ((_%hd137160137213%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137159137210%_)))
                                        (_%tl137161137215%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137159137210%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137161137215%_))
                                        (_%loop137148137184%_
                                         _%lp-tl137151137199%_
                                         (cons _%hd137160137213%_
                                               _%body137152137189%_)
                                         (cons _%hd137157137205%_
                                               _%hd137153137191%_))
                                        (_%g137138137166%_
                                         _%g137139137169%_))))
                                (_%g137138137166%_ _%g137139137169%_))))
                        (_%g137138137166%_ _%g137139137169%_))))
                (let ((_%body137154137218%_ (reverse _%body137152137189%_))
                      (_%hd137155137220%_ (reverse _%hd137153137191%_)))
                  ((lambda (_%L137223%_ _%L137224%_)
                     (for-each
                      (lambda (_%g137238137240%_)
                        (gxc#compile-e__1 _%self137135%_ _%g137238137240%_))
                      (let ((__tmp137971
                             (lambda (_%g137242137245%_ _%g137243137247%_)
                               (cons _%g137242137245%_ _%g137243137247%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137971 '() _%L137223%_))))
                   _%body137154137218%_
                   _%hd137155137220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137148137184%_
                                           _%target137145137179%_
                                           '()
                                           '()))
                                        (_%g137138137166%_
                                         _%g137139137169%_)))))
                              (_%g137138137166%_ _%g137139137169%_))))
                      (_%g137138137166%_ _%g137139137169%_)))))
          (_%g137137137250%_ _%stx137136%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self136988%_ _%stx136989%_)
        (let* ((_%g136991137026%_
                (lambda (_%g136992137023%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136992137023%_))))
               (_%g136990137132%_
                (lambda (_%g136992137029%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136992137029%_))
                      (let ((_%e136996137031%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136992137029%_))))
                        (let ((_%hd136997137034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136996137031%_)))
                              (_%tl136998137036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136996137031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136998137036%_))
                              (let ((_%e136999137039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136998137036%_))))
                                (let ((_%hd137000137042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136999137039%_)))
                                      (_%tl137001137044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136999137039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137000137042%_))
                                      (let ((_g137972_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137000137042%_
                                                '0))))
                                        (begin
                                          (let ((_g137973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137972_)
                                                       (##vector-length
                                                        _g137972_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137973_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137973_)))
                                          (let ((_%target137002137047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137972_ 0)))
                                                (_%tl137004137049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137972_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137004137049%_))
                                                (letrec ((_%loop137005137052%_
                                                          (lambda (_%hd137003137055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137009137057%_
                           _%hd137010137059%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137003137055%_))
                        (let ((_%e137006137062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137003137055%_))))
                          (let ((_%lp-hd137007137065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137006137062%_)))
                                (_%lp-tl137008137067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137006137062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137007137065%_))
                                (let ((_%e137016137070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137007137065%_))))
                                  (let ((_%hd137017137073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137016137070%_)))
                                        (_%tl137018137075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137016137070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137018137075%_))
                                        (let ((_%e137019137078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137018137075%_))))
                                          (let ((_%hd137020137081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137019137078%_)))
                                                (_%tl137021137083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137019137078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137021137083%_))
                                                (_%loop137005137052%_
                                                 _%lp-tl137008137067%_
                                                 (cons _%hd137020137081%_
                                                       _%expr137009137057%_)
                                                 (cons _%hd137017137073%_
                                                       _%hd137010137059%_))
                                                (_%g136991137026%_
                                                 _%g136992137029%_))))
                                        (_%g136991137026%_
                                         _%g136992137029%_))))
                                (_%g136991137026%_ _%g136992137029%_))))
                        (let ((_%expr137011137086%_
                               (reverse _%expr137009137057%_))
                              (_%hd137012137088%_
                               (reverse _%hd137010137059%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137001137044%_))
                              (let ((_%e137013137091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137001137044%_))))
                                (let ((_%hd137014137094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137013137091%_)))
                                      (_%tl137015137096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137013137091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137015137096%_))
                                      ((lambda (_%L137099%_
                                                _%L137100%_
                                                _%L137101%_)
                                         (for-each
                                          (lambda (_%g137120137122%_)
                                            (gxc#compile-e__1
                                             _%self136988%_
                                             _%g137120137122%_))
                                          (let ((__tmp137975
                                                 (lambda (_%g137124137127%_
                                                          _%g137125137129%_)
                                                   (cons _%g137124137127%_
                                                         _%g137125137129%_)))
                                                (__tmp137974
                                                 (cons _%L137099%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137975
                                             __tmp137974
                                             _%L137100%_))))
                                       _%hd137014137094%_
                                       _%expr137011137086%_
                                       _%hd137012137088%_)
                                      (_%g136991137026%_ _%g136992137029%_))))
                              (_%g136991137026%_ _%g136992137029%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137005137052%_
                                                   _%target137002137047%_
                                                   '()
                                                   '()))
                                                (_%g136991137026%_
                                                 _%g136992137029%_)))))
                                      (_%g136991137026%_ _%g136992137029%_))))
                              (_%g136991137026%_ _%g136992137029%_))))
                      (_%g136991137026%_ _%g136992137029%_)))))
          (_%g136990137132%_ _%stx136989%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self136933%_ _%stx136934%_)
        (let* ((_%g136936136950%_
                (lambda (_%g136937136947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136937136947%_))))
               (_%g136935136985%_
                (lambda (_%g136937136953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136937136953%_))
                      (let ((_%e136940136955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136937136953%_))))
                        (let ((_%hd136941136958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136940136955%_)))
                              (_%tl136942136960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136940136955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136942136960%_))
                              (let ((_%e136943136963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136942136960%_))))
                                (let ((_%hd136944136966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136943136963%_)))
                                      (_%tl136945136968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136943136963%_))))
                                  ((lambda (_%L136971%_ _%L136972%_)
                                     (gxc#compile-e__1
                                      _%self136933%_
                                      (last _%L136971%_)))
                                   _%tl136945136968%_
                                   _%hd136944136966%_)))
                              (_%g136936136950%_ _%g136937136953%_))))
                      (_%g136936136950%_ _%g136937136953%_)))))
          (_%g136935136985%_ _%stx136934%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self136865%_ _%stx136866%_)
        (let* ((_%g136868136885%_
                (lambda (_%g136869136882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136869136882%_))))
               (_%g136867136930%_
                (lambda (_%g136869136888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136869136888%_))
                      (let ((_%e136872136890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136869136888%_))))
                        (let ((_%hd136873136893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136872136890%_)))
                              (_%tl136874136895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136872136890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136874136895%_))
                              (let ((_%e136875136898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136874136895%_))))
                                (let ((_%hd136876136901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136875136898%_)))
                                      (_%tl136877136903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136875136898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136877136903%_))
                                      (let ((_%e136878136906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136877136903%_))))
                                        (let ((_%hd136879136909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136878136906%_)))
                                              (_%tl136880136911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136878136906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136880136911%_))
                                              ((lambda (_%L136914%_
                                                        _%L136915%_)
                                                 (gxc#compile-e__1
                                                  _%self136865%_
                                                  _%L136914%_))
                                               _%hd136879136909%_
                                               _%hd136876136901%_)
                                              (_%g136868136885%_
                                               _%g136869136888%_))))
                                      (_%g136868136885%_ _%g136869136888%_))))
                              (_%g136868136885%_ _%g136869136888%_))))
                      (_%g136868136885%_ _%g136869136888%_)))))
          (_%g136867136930%_ _%stx136866%_))))
    (define gxc#apply-operands
      (lambda (_%self136778%_ _%stx136779%_)
        (let* ((_%g136781136800%_
                (lambda (_%g136782136797%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136782136797%_))))
               (_%g136780136862%_
                (lambda (_%g136782136803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136782136803%_))
                      (let ((_%e136784136805%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136782136803%_))))
                        (let ((_%hd136785136808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136784136805%_)))
                              (_%tl136786136810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136784136805%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136786136810%_))
                              (let ((_g137976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136786136810%_
                                        '0))))
                                (begin
                                  (let ((_g137977_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137976_)
                                               (##vector-length _g137976_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137977_ 2)))
                                        (error "Context expects 2 values"
                                               _g137977_)))
                                  (let ((_%target136787136813%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137976_ 0)))
                                        (_%tl136789136815%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137976_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136789136815%_))
                                        (letrec ((_%loop136790136818%_
                                                  (lambda (_%hd136788136821%_
                                                           _%rands136794136823%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136788136821%_))
                                                        (let ((_%e136791136826%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136788136821%_))))
                  (let ((_%lp-hd136792136829%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136791136826%_)))
                        (_%lp-tl136793136831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136791136826%_))))
                    (_%loop136790136818%_
                     _%lp-tl136793136831%_
                     (cons _%lp-hd136792136829%_ _%rands136794136823%_))))
                (let ((_%rands136795136834%_ (reverse _%rands136794136823%_)))
                  ((lambda (_%L136837%_)
                     (for-each
                      (lambda (_%g136850136852%_)
                        (gxc#compile-e__1 _%self136778%_ _%g136850136852%_))
                      (let ((__tmp137978
                             (lambda (_%g136854136857%_ _%g136855136859%_)
                               (cons _%g136854136857%_ _%g136855136859%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137978 '() _%L136837%_))))
                   _%rands136795136834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136790136818%_
                                           _%target136787136813%_
                                           '()))
                                        (_%g136781136800%_
                                         _%g136782136803%_)))))
                              (_%g136781136800%_ _%g136782136803%_))))
                      (_%g136781136800%_ _%g136782136803%_)))))
          (_%g136780136862%_ _%stx136779%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136775%_ _%src-stx136776%_)
        (let ((__tmp137979
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136776%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136775%_ __tmp137979))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136771%_ _%src-stx136772%_ _%ctx136773%_)
        (gxc#compile-e__1
         _%ctx136773%_
         (gxc#xform-wrap-source _%stx136771%_ _%src-stx136772%_))))
    (define gxc#xform-begin%
      (lambda (_%self136726%_ _%stx136727%_)
        (let* ((_%g136729136739%_
                (lambda (_%g136730136736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136730136736%_))))
               (_%g136728136768%_
                (lambda (_%g136730136742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136730136742%_))
                      (let ((_%e136732136744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136730136742%_))))
                        (let ((_%hd136733136747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136732136744%_)))
                              (_%tl136734136749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136732136744%_))))
                          ((lambda (_%L136752%_)
                             (let ((_%forms136766%_
                                    (map (lambda (_%g136761136763%_)
                                           (gxc#compile-e__1
                                            _%self136726%_
                                            _%g136761136763%_))
                                         _%L136752%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136766%_)
                                _%stx136727%_)))
                           _%tl136734136749%_)))
                      (_%g136729136739%_ _%g136730136742%_)))))
          (_%g136728136768%_ _%stx136727%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136680%_ _%stx136681%_)
        (let* ((_%g136683136693%_
                (lambda (_%g136684136690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136684136690%_))))
               (_%g136682136723%_
                (lambda (_%g136684136696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136684136696%_))
                      (let ((_%e136686136698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136684136696%_))))
                        (let ((_%hd136687136701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136686136698%_)))
                              (_%tl136688136703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136686136698%_))))
                          ((lambda (_%L136706%_)
                             (let ((__tmp137982
                                    (lambda ()
                                      (let ((_%forms136721%_
                                             (map (lambda (_%g136716136718%_)
                                                    (gxc#compile-e__1
                                                     _%self136680%_
                                                     _%g136716136718%_))
                                                  _%L136706%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136721%_)
                                         _%stx136681%_))))
                                   (__tmp137980
                                    (let ((__tmp137981
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp137981 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137982
                                gx#current-expander-phi
                                __tmp137980)))
                           _%tl136688136703%_)))
                      (_%g136683136693%_ _%g136684136696%_)))))
          (_%g136682136723%_ _%stx136681%_))))
    (define gxc#xform-module%
      (lambda (_%self136617%_ _%stx136618%_)
        (let* ((_%g136620136634%_
                (lambda (_%g136621136631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136621136631%_))))
               (_%g136619136677%_
                (lambda (_%g136621136637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136621136637%_))
                      (let ((_%e136624136639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136621136637%_))))
                        (let ((_%hd136625136642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136624136639%_)))
                              (_%tl136626136644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136624136639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136626136644%_))
                              (let ((_%e136627136647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136626136644%_))))
                                (let ((_%hd136628136650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136627136647%_)))
                                      (_%tl136629136652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136627136647%_))))
                                  ((lambda (_%L136655%_ _%L136656%_)
                                     (let* ((_%ctx136669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136656%_)))
                                            (_%code136671%_
                                             (##structure-ref
                                              _%ctx136669%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136674%_
                                             (let ((__tmp137983
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self136617%_
                                                       _%code136671%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp137983
                                                gx#current-expander-context
                                                _%ctx136669%_))))
                                       (##structure-set!
                                        _%ctx136669%_
                                        _%code136674%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136656%_
                                                    (cons _%code136674%_ '())))
                                        _%stx136618%_)))
                                   _%tl136629136652%_
                                   _%hd136628136650%_)))
                              (_%g136620136634%_ _%g136621136637%_))))
                      (_%g136620136634%_ _%g136621136637%_)))))
          (_%g136619136677%_ _%stx136618%_))))
    (define gxc#xform-define-values%
      (lambda (_%self136547%_ _%stx136548%_)
        (let* ((_%g136550136567%_
                (lambda (_%g136551136564%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136551136564%_))))
               (_%g136549136614%_
                (lambda (_%g136551136570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136551136570%_))
                      (let ((_%e136554136572%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136551136570%_))))
                        (let ((_%hd136555136575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136554136572%_)))
                              (_%tl136556136577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136554136572%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136556136577%_))
                              (let ((_%e136557136580%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136556136577%_))))
                                (let ((_%hd136558136583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136557136580%_)))
                                      (_%tl136559136585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136557136580%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136559136585%_))
                                      (let ((_%e136560136588%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136559136585%_))))
                                        (let ((_%hd136561136591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136560136588%_)))
                                              (_%tl136562136593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136560136588%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136562136593%_))
                                              ((lambda (_%L136596%_
                                                        _%L136597%_)
                                                 (let ((_%expr136612%_
                                                        (gxc#compile-e__1
                                                         _%self136547%_
                                                         _%L136596%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L136597%_
                                                                (cons _%expr136612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136548%_)))
                                               _%hd136561136591%_
                                               _%hd136558136583%_)
                                              (_%g136550136567%_
                                               _%g136551136570%_))))
                                      (_%g136550136567%_ _%g136551136570%_))))
                              (_%g136550136567%_ _%g136551136570%_))))
                      (_%g136550136567%_ _%g136551136570%_)))))
          (_%g136549136614%_ _%stx136548%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self136476%_ _%stx136477%_)
        (let* ((_%g136479136496%_
                (lambda (_%g136480136493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136480136493%_))))
               (_%g136478136544%_
                (lambda (_%g136480136499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136480136499%_))
                      (let ((_%e136483136501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136480136499%_))))
                        (let ((_%hd136484136504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136483136501%_)))
                              (_%tl136485136506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136483136501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136485136506%_))
                              (let ((_%e136486136509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136485136506%_))))
                                (let ((_%hd136487136512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136486136509%_)))
                                      (_%tl136488136514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136486136509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136488136514%_))
                                      (let ((_%e136489136517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136488136514%_))))
                                        (let ((_%hd136490136520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136489136517%_)))
                                              (_%tl136491136522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136489136517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136491136522%_))
                                              ((lambda (_%L136525%_
                                                        _%L136526%_)
                                                 (let ((__tmp137986
                                                        (lambda ()
                                                          (let ((_%expr136542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self136476%_ _%L136525%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L136526%_ (cons _%expr136542%_ '())))
                     _%stx136477%_))))
               (__tmp137984
                (let ((__tmp137985
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137985 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137986
                                                    gx#current-expander-phi
                                                    __tmp137984)))
                                               _%hd136490136520%_
                                               _%hd136487136512%_)
                                              (_%g136479136496%_
                                               _%g136480136499%_))))
                                      (_%g136479136496%_ _%g136480136499%_))))
                              (_%g136479136496%_ _%g136480136499%_))))
                      (_%g136479136496%_ _%g136480136499%_)))))
          (_%g136478136544%_ _%stx136477%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self136406%_ _%stx136407%_)
        (let* ((_%g136409136426%_
                (lambda (_%g136410136423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136410136423%_))))
               (_%g136408136473%_
                (lambda (_%g136410136429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136410136429%_))
                      (let ((_%e136413136431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136410136429%_))))
                        (let ((_%hd136414136434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136413136431%_)))
                              (_%tl136415136436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136413136431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136415136436%_))
                              (let ((_%e136416136439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136415136436%_))))
                                (let ((_%hd136417136442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136416136439%_)))
                                      (_%tl136418136444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136416136439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136418136444%_))
                                      (let ((_%e136419136447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136418136444%_))))
                                        (let ((_%hd136420136450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136419136447%_)))
                                              (_%tl136421136452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136419136447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136421136452%_))
                                              ((lambda (_%L136455%_
                                                        _%L136456%_)
                                                 (let ((_%expr136471%_
                                                        (gxc#compile-e__1
                                                         _%self136406%_
                                                         _%L136455%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L136456%_
                                                                (cons _%expr136471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136407%_)))
                                               _%hd136420136450%_
                                               _%hd136417136442%_)
                                              (_%g136409136426%_
                                               _%g136410136429%_))))
                                      (_%g136409136426%_ _%g136410136429%_))))
                              (_%g136409136426%_ _%g136410136429%_))))
                      (_%g136409136426%_ _%g136410136429%_)))))
          (_%g136408136473%_ _%stx136407%_))))
    (define gxc#xform-lambda%
      (lambda (_%self136344%_ _%stx136345%_)
        (let* ((_%g136347136361%_
                (lambda (_%g136348136358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136348136358%_))))
               (_%g136346136403%_
                (lambda (_%g136348136364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136348136364%_))
                      (let ((_%e136351136366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136348136364%_))))
                        (let ((_%hd136352136369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136351136366%_)))
                              (_%tl136353136371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136351136366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136353136371%_))
                              (let ((_%e136354136374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136353136371%_))))
                                (let ((_%hd136355136377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136354136374%_)))
                                      (_%tl136356136379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136354136374%_))))
                                  ((lambda (_%L136382%_ _%L136383%_)
                                     (let ((__tmp137988
                                            (lambda ()
                                              (let ((_%body136401%_
                                                     (map (lambda (_%g136396136398%_)
                                                            (gxc#compile-e__1
                                                             _%self136344%_
                                                             _%g136396136398%_))
                                                          _%L136382%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L136383%_
                                                             _%body136401%_))
                                                 _%stx136345%_))))
                                           (__tmp137987
                                            (gxc#xform-let-locals
                                             _%L136383%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137988
                                        gxc#current-compile-local-env
                                        __tmp137987)))
                                   _%tl136356136379%_
                                   _%hd136355136377%_)))
                              (_%g136347136361%_ _%g136348136364%_))))
                      (_%g136347136361%_ _%g136348136364%_)))))
          (_%g136346136403%_ _%stx136345%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self136252%_ _%stx136253%_)
        (letrec ((_%clause-e136255%_
                  (lambda (_%clause136296%_)
                    (let* ((_%g136298136309%_
                            (lambda (_%g136299136306%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g136299136306%_))))
                           (_%g136297136341%_
                            (lambda (_%g136299136312%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g136299136312%_))
                                  (let ((_%e136302136314%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g136299136312%_))))
                                    (let ((_%hd136303136317%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136302136314%_)))
                                          (_%tl136304136319%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136302136314%_))))
                                      ((lambda (_%L136322%_ _%L136323%_)
                                         (let ((__tmp137990
                                                (lambda ()
                                                  (let ((_%body136339%_
                                                         (map (lambda (_%g136334136336%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self136252%_
                         _%g136334136336%_))
                      _%L136322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L136323%_
                                                          _%body136339%_))))
                                               (__tmp137989
                                                (gxc#xform-let-locals
                                                 _%L136323%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp137990
                                            gxc#current-compile-local-env
                                            __tmp137989)))
                                       _%tl136304136319%_
                                       _%hd136303136317%_)))
                                  (_%g136298136309%_ _%g136299136312%_)))))
                      (_%g136297136341%_ _%clause136296%_)))))
          (let* ((_%g136257136267%_
                  (lambda (_%g136258136264%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136258136264%_))))
                 (_%g136256136293%_
                  (lambda (_%g136258136270%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136258136270%_))
                        (let ((_%e136260136272%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136258136270%_))))
                          (let ((_%hd136261136275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136260136272%_)))
                                (_%tl136262136277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136260136272%_))))
                            ((lambda (_%L136280%_)
                               (let ((_%clauses136291%_
                                      (map _%clause-e136255%_ _%L136280%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses136291%_)
                                  _%stx136253%_)))
                             _%tl136262136277%_)))
                        (_%g136257136267%_ _%g136258136270%_)))))
            (_%g136256136293%_ _%stx136253%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self136006%_ _%stx136007%_)
        (let* ((_%g136009136042%_
                (lambda (_%g136010136039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136010136039%_))))
               (_%g136008136249%_
                (lambda (_%g136010136045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136010136045%_))
                      (let ((_%e136015136047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136010136045%_))))
                        (let ((_%hd136016136050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136015136047%_)))
                              (_%tl136017136052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136015136047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136017136052%_))
                              (let ((_%e136018136055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136017136052%_))))
                                (let ((_%hd136019136058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136018136055%_)))
                                      (_%tl136020136060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136018136055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136019136058%_))
                                      (let ((_g137991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136019136058%_
                                                '0))))
                                        (begin
                                          (let ((_g137992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137991_)
                                                       (##vector-length
                                                        _g137991_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137992_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137992_)))
                                          (let ((_%target136021136063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137991_ 0)))
                                                (_%tl136023136065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137991_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136023136065%_))
                                                (letrec ((_%loop136024136068%_
                                                          (lambda (_%hd136022136071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136028136073%_
                           _%hd136029136075%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136022136071%_))
                        (let ((_%e136025136078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136022136071%_))))
                          (let ((_%lp-hd136026136081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136025136078%_)))
                                (_%lp-tl136027136083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136025136078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136026136081%_))
                                (let ((_%e136032136086%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136026136081%_))))
                                  (let ((_%hd136033136089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136032136086%_)))
                                        (_%tl136034136091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136032136086%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136034136091%_))
                                        (let ((_%e136035136094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136034136091%_))))
                                          (let ((_%hd136036136097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136035136094%_)))
                                                (_%tl136037136099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136035136094%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136037136099%_))
                                                (_%loop136024136068%_
                                                 _%lp-tl136027136083%_
                                                 (cons _%hd136036136097%_
                                                       _%expr136028136073%_)
                                                 (cons _%hd136033136089%_
                                                       _%hd136029136075%_))
                                                (_%g136009136042%_
                                                 _%g136010136045%_))))
                                        (_%g136009136042%_
                                         _%g136010136045%_))))
                                (_%g136009136042%_ _%g136010136045%_))))
                        (let ((_%expr136030136102%_
                               (reverse _%expr136028136073%_))
                              (_%hd136031136104%_
                               (reverse _%hd136029136075%_)))
                          ((lambda (_%L136107%_
                                    _%L136108%_
                                    _%L136109%_
                                    _%L136110%_)
                             (let* ((_%g136129136145%_
                                     (lambda (_%g136130136142%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136130136142%_))))
                                    (_%g136128136235%_
                                     (lambda (_%g136130136148%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g136130136148%_))
                                           (let ((_g137993_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g136130136148%_
                                                     '0))))
                                             (begin
                                               (let ((_g137994_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g137993_)
                                                            (##vector-length
                                                             _g137993_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g137994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g137994_)))
                                               (let ((_%target136132136150%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137993_
                                                         0)))
                                                     (_%tl136134136152%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137993_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl136134136152%_))
                                                     (letrec ((_%loop136135136155%_
                                                               (lambda (_%hd136133136158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr136139136160%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd136133136158%_))
                             (let ((_%e136136136163%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd136133136158%_))))
                               (let ((_%lp-hd136137136166%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136136136163%_)))
                                     (_%lp-tl136138136168%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136136136163%_))))
                                 (_%loop136135136155%_
                                  _%lp-tl136138136168%_
                                  (cons _%lp-hd136137136166%_
                                        _%expr136139136160%_))))
                             (let ((_%expr136140136171%_
                                    (reverse _%expr136139136160%_)))
                               ((lambda (_%L136174%_)
                                  (let ((__tmp137997
                                         (lambda ()
                                           (let* ((_%g136188136195%_
                                                   (lambda (_%g136189136192%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136189136192%_))))
                                                  (_%g136187136221%_
                                                   (lambda (_%g136189136198%_)
                                                     ((lambda (_%L136200%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136110%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136174%_
                                  _%L136109%_))
                               (let ((__tmp137998
                                      (lambda (_%g136210136214%_
                                               _%g136211136216%_
                                               _%g136212136218%_)
                                        (cons (cons _%g136211136216%_
                                                    (cons _%g136210136214%_
                                                          '()))
                                              _%g136212136218%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137998
                                  '()
                                  _%L136174%_
                                  _%L136109%_)))
                             _%L136200%_))
                 _%stx136007%_))
              _%g136189136198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136187136221%_
                                              (map (lambda (_%g136223136225%_)
                                                     (gxc#compile-e__1
                                                      _%self136006%_
                                                      _%g136223136225%_))
                                                   _%L136107%_)))))
                                        (__tmp137995
                                         (gxc#xform-let-locals
                                          (let ((__tmp137996
                                                 (lambda (_%g136227136230%_
                                                          _%g136228136232%_)
                                                   (cons _%g136227136230%_
                                                         _%g136228136232%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137996
                                             '()
                                             _%L136109%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp137997
                                     gxc#current-compile-local-env
                                     __tmp137995)))
                                _%expr136140136171%_))))))
               (_%loop136135136155%_ _%target136132136150%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136129136145%_
                                                      _%g136130136148%_)))))
                                           (_%g136129136145%_
                                            _%g136130136148%_)))))
                               (_%g136128136235%_
                                (map (lambda (_%g136237136239%_)
                                       (gxc#compile-e__1
                                        _%self136006%_
                                        _%g136237136239%_))
                                     (let ((__tmp137999
                                            (lambda (_%g136241136244%_
                                                     _%g136242136246%_)
                                              (cons _%g136241136244%_
                                                    _%g136242136246%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137999
                                        '()
                                        _%L136108%_))))))
                           _%tl136020136060%_
                           _%expr136030136102%_
                           _%hd136031136104%_
                           _%hd136016136050%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136024136068%_
                                                   _%target136021136063%_
                                                   '()
                                                   '()))
                                                (_%g136009136042%_
                                                 _%g136010136045%_)))))
                                      (_%g136009136042%_ _%g136010136045%_))))
                              (_%g136009136042%_ _%g136010136045%_))))
                      (_%g136009136042%_ _%g136010136045%_)))))
          (_%g136008136249%_ _%stx136007%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135760%_ _%stx135761%_)
        (let* ((_%g135763135796%_
                (lambda (_%g135764135793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135764135793%_))))
               (_%g135762136003%_
                (lambda (_%g135764135799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135764135799%_))
                      (let ((_%e135769135801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135764135799%_))))
                        (let ((_%hd135770135804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135769135801%_)))
                              (_%tl135771135806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135769135801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135771135806%_))
                              (let ((_%e135772135809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135771135806%_))))
                                (let ((_%hd135773135812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135772135809%_)))
                                      (_%tl135774135814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135772135809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135773135812%_))
                                      (let ((_g138000_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135773135812%_
                                                '0))))
                                        (begin
                                          (let ((_g138001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138000_)
                                                       (##vector-length
                                                        _g138000_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138001_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138001_)))
                                          (let ((_%target135775135817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g138000_ 0)))
                                                (_%tl135777135819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g138000_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135777135819%_))
                                                (letrec ((_%loop135778135822%_
                                                          (lambda (_%hd135776135825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135782135827%_
                           _%hd135783135829%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135776135825%_))
                        (let ((_%e135779135832%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135776135825%_))))
                          (let ((_%lp-hd135780135835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135779135832%_)))
                                (_%lp-tl135781135837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135779135832%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135780135835%_))
                                (let ((_%e135786135840%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135780135835%_))))
                                  (let ((_%hd135787135843%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135786135840%_)))
                                        (_%tl135788135845%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135786135840%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135788135845%_))
                                        (let ((_%e135789135848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135788135845%_))))
                                          (let ((_%hd135790135851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135789135848%_)))
                                                (_%tl135791135853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135789135848%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135791135853%_))
                                                (_%loop135778135822%_
                                                 _%lp-tl135781135837%_
                                                 (cons _%hd135790135851%_
                                                       _%expr135782135827%_)
                                                 (cons _%hd135787135843%_
                                                       _%hd135783135829%_))
                                                (_%g135763135796%_
                                                 _%g135764135799%_))))
                                        (_%g135763135796%_
                                         _%g135764135799%_))))
                                (_%g135763135796%_ _%g135764135799%_))))
                        (let ((_%expr135784135856%_
                               (reverse _%expr135782135827%_))
                              (_%hd135785135858%_
                               (reverse _%hd135783135829%_)))
                          ((lambda (_%L135861%_
                                    _%L135862%_
                                    _%L135863%_
                                    _%L135864%_)
                             (let ((__tmp138004
                                    (lambda ()
                                      (let* ((_%g135884135900%_
                                              (lambda (_%g135885135897%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g135885135897%_))))
                                             (_%g135883135982%_
                                              (lambda (_%g135885135903%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g135885135903%_))
                                                    (let ((_g138005_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g135885135903%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g138006_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g138005_)
                             (##vector-length _g138005_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g138006_ 2)))
                      (error "Context expects 2 values" _g138006_)))
                (let ((_%target135887135905%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g138005_ 0)))
                      (_%tl135889135907%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g138005_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl135889135907%_))
                      (letrec ((_%loop135890135910%_
                                (lambda (_%hd135888135913%_
                                         _%expr135894135915%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd135888135913%_))
                                      (let ((_%e135891135918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd135888135913%_))))
                                        (let ((_%lp-hd135892135921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135891135918%_)))
                                              (_%lp-tl135893135923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135891135918%_))))
                                          (_%loop135890135910%_
                                           _%lp-tl135893135923%_
                                           (cons _%lp-hd135892135921%_
                                                 _%expr135894135915%_))))
                                      (let ((_%expr135895135926%_
                                             (reverse _%expr135894135915%_)))
                                        ((lambda (_%L135929%_)
                                           (let* ((_%g135943135950%_
                                                   (lambda (_%g135944135947%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135944135947%_))))
                                                  (_%g135942135975%_
                                                   (lambda (_%g135944135953%_)
                                                     ((lambda (_%L135955%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135864%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135929%_
                                  _%L135863%_))
                               (let ((__tmp138007
                                      (lambda (_%g135964135968%_
                                               _%g135965135970%_
                                               _%g135966135972%_)
                                        (cons (cons _%g135965135970%_
                                                    (cons _%g135964135968%_
                                                          '()))
                                              _%g135966135972%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138007
                                  '()
                                  _%L135929%_
                                  _%L135863%_)))
                             _%L135955%_))
                 _%stx135761%_))
              _%g135944135953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135942135975%_
                                              (map (lambda (_%g135977135979%_)
                                                     (gxc#compile-e__1
                                                      _%self135760%_
                                                      _%g135977135979%_))
                                                   _%L135861%_))))
                                         _%expr135895135926%_))))))
                        (_%loop135890135910%_ _%target135887135905%_ '()))
                      (_%g135884135900%_ _%g135885135903%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g135884135900%_
                                                     _%g135885135903%_)))))
                                        (_%g135883135982%_
                                         (map (lambda (_%g135984135986%_)
                                                (gxc#compile-e__1
                                                 _%self135760%_
                                                 _%g135984135986%_))
                                              (let ((__tmp138008
                                                     (lambda (_%g135988135991%_
                                                              _%g135989135993%_)
                                                       (cons _%g135988135991%_
                                                             _%g135989135993%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp138008
                                                 '()
                                                 _%L135862%_)))))))
                                   (__tmp138002
                                    (gxc#xform-let-locals
                                     (let ((__tmp138003
                                            (lambda (_%g135995135998%_
                                                     _%g135996136000%_)
                                              (cons _%g135995135998%_
                                                    _%g135996136000%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138003
                                        '()
                                        _%L135863%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138004
                                gxc#current-compile-local-env
                                __tmp138002)))
                           _%tl135774135814%_
                           _%expr135784135856%_
                           _%hd135785135858%_
                           _%hd135770135804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135778135822%_
                                                   _%target135775135817%_
                                                   '()
                                                   '()))
                                                (_%g135763135796%_
                                                 _%g135764135799%_)))))
                                      (_%g135763135796%_ _%g135764135799%_))))
                              (_%g135763135796%_ _%g135764135799%_))))
                      (_%g135763135796%_ _%g135764135799%_)))))
          (_%g135762136003%_ _%stx135761%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings135627%_)
        (letrec ((_%flatten135629%_
                  (lambda (_%maybe-lst135687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135687%_))
                        (cons _%maybe-lst135687%_ '())
                        (let _%loop135689%_ ((_%rest135691%_
                                              _%maybe-lst135687%_)
                                             (_%result135692%_ '()))
                          (let* ((_%__stx137896137897%_ _%rest135691%_)
                                 (_%g135696135708%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx137896137897%_)))))
                            (let ((_%__kont137898137899%_
                                   (lambda (_%L135746%_ _%L135747%_)
                                     (_%loop135689%_
                                      _%L135746%_
                                      (let ((__tmp138009
                                             (_%flatten135629%_ _%L135747%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135692%_
                                         __tmp138009)))))
                                  (_%__kont137900137901%_
                                   (lambda (_%L135720%_)
                                     (cons _%L135720%_ _%result135692%_)))
                                  (_%__kont137902137903%_
                                   (lambda () _%result135692%_)))
                              (let ((_%g135694135733%_
                                     (lambda ()
                                       (let ((_%L135720%_
                                              _%__stx137896137897%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135720%_))
                                             (_%__kont137900137901%_
                                              _%L135720%_)
                                             (_%__kont137902137903%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx137896137897%_))
                                    (let ((_%e135700135738%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx137896137897%_))))
                                      (let ((_%tl135702135743%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135700135738%_)))
                                            (_%hd135701135741%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135700135738%_))))
                                        (_%__kont137898137899%_
                                         _%tl135702135743%_
                                         _%hd135701135741%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135694135733%_)))))))))))
          (let _%loop135631%_ ((_%rest135633%_
                                (_%flatten135629%_ _%bindings135627%_))
                               (_%locals135634%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135635135646%_ _%rest135633%_)
                   (_%E135639135650%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135635135646%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135642135675%_
                     (lambda (_%rest135672%_ _%id135673%_)
                       (_%loop135631%_
                        _%rest135672%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135673%_))
                              _%locals135634%_))))
                    (_%K135641135664%_
                     (lambda (_%id135662%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135662%_))
                             _%locals135634%_)))
                    (_%K135640135655%_ (lambda () _%locals135634%_)))
                (let ((_%try-match135637135669%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135635135646%_))
                             (let ((_%id135667%_ _%rest135635135646%_))
                               (_%K135641135664%_ _%id135667%_))
                             (_%K135640135655%_)))))
                  (if (pair? _%rest135635135646%_)
                      (let ((_%tl135644135680%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135635135646%_)))
                            (_%hd135643135678%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135635135646%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135643135678%_))
                            (let ((_%id135683%_ _%hd135643135678%_)
                                  (_%rest135685%_ _%tl135644135680%_))
                              (_%K135642135675%_ _%rest135685%_ _%id135683%_))
                            (_%K135640135655%_)))
                      (_%try-match135637135669%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self135579%_ _%stx135580%_)
        (let* ((_%g135582135593%_
                (lambda (_%g135583135590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135583135590%_))))
               (_%g135581135624%_
                (lambda (_%g135583135596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135583135596%_))
                      (let ((_%e135586135598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135583135596%_))))
                        (let ((_%hd135587135601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135586135598%_)))
                              (_%tl135588135603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135586135598%_))))
                          ((lambda (_%L135606%_ _%L135607%_)
                             (let ((_%rands135622%_
                                    (map (lambda (_%g135617135619%_)
                                           (gxc#compile-e__1
                                            _%self135579%_
                                            _%g135617135619%_))
                                         _%L135606%_)))
                               (gxc#xform-wrap-source
                                (cons _%L135607%_ _%rands135622%_)
                                _%stx135580%_)))
                           _%tl135588135603%_
                           _%hd135587135601%_)))
                      (_%g135582135593%_ _%g135583135596%_)))))
          (_%g135581135624%_ _%stx135580%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self135509%_ _%stx135510%_)
        (let* ((_%g135512135529%_
                (lambda (_%g135513135526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135513135526%_))))
               (_%g135511135576%_
                (lambda (_%g135513135532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135513135532%_))
                      (let ((_%e135516135534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135513135532%_))))
                        (let ((_%hd135517135537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135516135534%_)))
                              (_%tl135518135539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135516135534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135518135539%_))
                              (let ((_%e135519135542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135518135539%_))))
                                (let ((_%hd135520135545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135519135542%_)))
                                      (_%tl135521135547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135519135542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135521135547%_))
                                      (let ((_%e135522135550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135521135547%_))))
                                        (let ((_%hd135523135553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135522135550%_)))
                                              (_%tl135524135555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135522135550%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135524135555%_))
                                              ((lambda (_%L135558%_
                                                        _%L135559%_)
                                                 (let ((_%expr135574%_
                                                        (gxc#compile-e__1
                                                         _%self135509%_
                                                         _%L135558%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L135559%_
                                                                (cons _%expr135574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135510%_)))
                                               _%hd135523135553%_
                                               _%hd135520135545%_)
                                              (_%g135512135529%_
                                               _%g135513135532%_))))
                                      (_%g135512135529%_ _%g135513135532%_))))
                              (_%g135512135529%_ _%g135513135532%_))))
                      (_%g135512135529%_ _%g135513135532%_)))))
          (_%g135511135576%_ _%stx135510%_))))))
