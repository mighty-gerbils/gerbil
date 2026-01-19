(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1768864949)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx149724%_)
        (let* ((_%self149726%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e149728%_
                (let ((__tmp149946 (gxc#stx-car-e _%stx149724%_)))
                  (declare (not safe))
                  (method-ref _%self149726%_ __tmp149946))))
          (if _%$e149728%_
              ((lambda (_%method149731%_)
                 (declare (not safe))
                 (let ((_%$e149734%_ (gx#stx-source _%stx149724%_)))
                   (if _%$e149734%_
                       ((lambda (_%source149737%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149731%_ _%self149726%_ _%stx149724%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149737%_ '()))
                                 (let ((_%$e149741%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149741%_ _%$e149741%_ '())))))
                        _%$e149734%_)
                       (_%method149731%_ _%self149726%_ _%stx149724%_))))
               _%$e149728%_)
              (let ((__tmp149948 (gxc#stx-car-e _%stx149724%_))
                    (__tmp149947
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149724%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149726%_
                       __tmp149948
                       __tmp149947))))))
    (define gxc#compile-e__1
      (lambda (_%self149746%_ _%stx149747%_)
        (let ((_%$e149749%_
               (let ((__tmp149949 (gxc#stx-car-e _%stx149747%_)))
                 (declare (not safe))
                 (method-ref _%self149746%_ __tmp149949))))
          (if _%$e149749%_
              ((lambda (_%method149752%_)
                 (declare (not safe))
                 (let ((_%$e149755%_ (gx#stx-source _%stx149747%_)))
                   (if _%$e149755%_
                       ((lambda (_%source149758%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149752%_ _%self149746%_ _%stx149747%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149758%_ '()))
                                 (let ((_%$e149762%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149762%_ _%$e149762%_ '())))))
                        _%$e149755%_)
                       (_%method149752%_ _%self149746%_ _%stx149747%_))))
               _%$e149749%_)
              (let ((__tmp149951 (gxc#stx-car-e _%stx149747%_))
                    (__tmp149950
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149747%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149746%_
                       __tmp149951
                       __tmp149950))))))
    (define gxc#compile-e
      (lambda _g149952_
        (let ((_g149953_ (let () (declare (not safe)) (##length _g149952_))))
          (cond ((let () (declare (not safe)) (##fx= _g149953_ 1))
                 (apply gxc#compile-e__0 _g149952_))
                ((let () (declare (not safe)) (##fx= _g149953_ 2))
                 (apply gxc#compile-e__1 _g149952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g149952_))))))
    (define gxc#stx-car-e
      (lambda (_%stx149722%_)
        (let ((__tmp149954
               (car (let () (declare (not safe)) (gx#stx-e _%stx149722%_)))))
          (declare (not safe))
          (gx#stx-e __tmp149954))))
    (define gxc#void-method (lambda (_%self149719%_ _%stx149720%_) '#!void))
    (define gxc#false-method (lambda (_%self149716%_ _%stx149717%_) '#f))
    (define gxc#true-method (lambda (_%self149713%_ _%stx149714%_) '#t))
    (define gxc#identity-method
      (lambda (_%self149710%_ _%stx149711%_) _%stx149711%_))
    (define gxc#::void-expression::t
      (let ((__tmp149955 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp149955
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args149707%_
        (apply make-instance gxc#::void-expression::t _%$args149707%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp149956
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
        (__make-atomic-promise __tmp149956)))
    (define gxc#::void-special-form::t
      (let ((__tmp149957 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp149957
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args149703%_
        (apply make-instance gxc#::void-special-form::t _%$args149703%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp149958
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
        (__make-atomic-promise __tmp149958)))
    (define gxc#::void::t
      (let ((__tmp149959
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp149959 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args149699%_
        (apply make-instance gxc#::void::t _%$args149699%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp149960
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149960)))
    (define gxc#::false-expression::t
      (let ((__tmp149961 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp149961
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args149695%_
        (apply make-instance gxc#::false-expression::t _%$args149695%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp149962
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
        (__make-atomic-promise __tmp149962)))
    (define gxc#::false-special-form::t
      (let ((__tmp149963 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp149963
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args149691%_
        (apply make-instance gxc#::false-special-form::t _%$args149691%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp149964
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
        (__make-atomic-promise __tmp149964)))
    (define gxc#::false::t
      (let ((__tmp149965
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp149965 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args149687%_
        (apply make-instance gxc#::false::t _%$args149687%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp149966
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149966)))
    (define gxc#::identity-expression::t
      (let ((__tmp149967 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp149967
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args149683%_
        (apply make-instance gxc#::identity-expression::t _%$args149683%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp149968
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
        (__make-atomic-promise __tmp149968)))
    (define gxc#::identity-special-form::t
      (let ((__tmp149969 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp149969
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args149679%_
        (apply make-instance gxc#::identity-special-form::t _%$args149679%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp149970
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
        (__make-atomic-promise __tmp149970)))
    (define gxc#::identity::t
      (let ((__tmp149971
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp149971
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args149675%_
        (apply make-instance gxc#::identity::t _%$args149675%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp149972
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149972)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp149973 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp149973
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args149671%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args149671%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp149974
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
        (__make-atomic-promise __tmp149974)))
    (define gxc#::basic-xform::t
      (let ((__tmp149975
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp149975
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args149667%_
        (apply make-instance gxc#::basic-xform::t _%$args149667%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp149976
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
        (__make-atomic-promise __tmp149976)))
    (define gxc#apply-begin%
      (lambda (_%self149623%_ _%stx149624%_)
        (let* ((_%g149626149636%_
                (lambda (_%g149627149633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149627149633%_))))
               (_%g149625149663%_
                (lambda (_%g149627149639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149627149639%_))
                      (let ((_%e149629149641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149627149639%_))))
                        (let ((_%hd149630149644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149629149641%_)))
                              (_%tl149631149646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149629149641%_))))
                          ((lambda (_%L149649%_)
                             (for-each
                              (lambda (_%g149658149660%_)
                                (gxc#compile-e__1
                                 _%self149623%_
                                 _%g149658149660%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L149649%_))))
                           _%tl149631149646%_)))
                      (_%g149626149636%_ _%g149627149639%_)))))
          (_%g149625149663%_ _%stx149624%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self149584%_ _%stx149585%_)
        (let* ((_%g149587149597%_
                (lambda (_%g149588149594%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149588149594%_))))
               (_%g149586149620%_
                (lambda (_%g149588149600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149588149600%_))
                      (let ((_%e149590149602%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149588149600%_))))
                        (let ((_%hd149591149605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149590149602%_)))
                              (_%tl149592149607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149590149602%_))))
                          ((lambda (_%L149610%_)
                             (gxc#compile-e__1
                              _%self149584%_
                              (last _%L149610%_)))
                           _%tl149592149607%_)))
                      (_%g149587149597%_ _%g149588149600%_)))))
          (_%g149586149620%_ _%stx149585%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self149580%_ _%stx149581%_)
        (let ((__tmp149979
               (lambda () (gxc#apply-begin% _%self149580%_ _%stx149581%_)))
              (__tmp149977
               (let ((__tmp149978
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp149978 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp149979
           gx#current-expander-phi
           __tmp149977))))
    (define gxc#apply-module%
      (lambda (_%self149519%_ _%stx149520%_)
        (let* ((_%g149522149536%_
                (lambda (_%g149523149533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149523149533%_))))
               (_%g149521149577%_
                (lambda (_%g149523149539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149523149539%_))
                      (let ((_%e149526149541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149523149539%_))))
                        (let ((_%hd149527149544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149526149541%_)))
                              (_%tl149528149546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149526149541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149528149546%_))
                              (let ((_%e149529149549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149528149546%_))))
                                (let ((_%hd149530149552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149529149549%_)))
                                      (_%tl149531149554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149529149549%_))))
                                  ((lambda (_%L149557%_ _%L149558%_)
                                     (let* ((_%ctx149571%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L149558%_)))
                                            (_%ctx-stx149573%_
                                             (##structure-ref
                                              _%ctx149571%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp149980
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self149519%_
                                                _%ctx-stx149573%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp149980
                                        gx#current-expander-context
                                        _%ctx149571%_)))
                                   _%tl149531149554%_
                                   _%hd149530149552%_)))
                              (_%g149522149536%_ _%g149523149539%_))))
                      (_%g149522149536%_ _%g149523149539%_)))))
          (_%g149521149577%_ _%stx149520%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self149451%_ _%stx149452%_)
        (let* ((_%g149454149471%_
                (lambda (_%g149455149468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149455149468%_))))
               (_%g149453149516%_
                (lambda (_%g149455149474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149455149474%_))
                      (let ((_%e149458149476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149455149474%_))))
                        (let ((_%hd149459149479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149458149476%_)))
                              (_%tl149460149481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149458149476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149460149481%_))
                              (let ((_%e149461149484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149460149481%_))))
                                (let ((_%hd149462149487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149461149484%_)))
                                      (_%tl149463149489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149461149484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149463149489%_))
                                      (let ((_%e149464149492%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149463149489%_))))
                                        (let ((_%hd149465149495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149464149492%_)))
                                              (_%tl149466149497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149464149492%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149466149497%_))
                                              ((lambda (_%L149500%_
                                                        _%L149501%_)
                                                 (gxc#compile-e__1
                                                  _%self149451%_
                                                  _%L149500%_))
                                               _%hd149465149495%_
                                               _%hd149462149487%_)
                                              (_%g149454149471%_
                                               _%g149455149474%_))))
                                      (_%g149454149471%_ _%g149455149474%_))))
                              (_%g149454149471%_ _%g149455149474%_))))
                      (_%g149454149471%_ _%g149455149474%_)))))
          (_%g149453149516%_ _%stx149452%_))))
    (define gxc#apply-define-values%
      (lambda (_%self149383%_ _%stx149384%_)
        (let* ((_%g149386149403%_
                (lambda (_%g149387149400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149387149400%_))))
               (_%g149385149448%_
                (lambda (_%g149387149406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149387149406%_))
                      (let ((_%e149390149408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149387149406%_))))
                        (let ((_%hd149391149411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149390149408%_)))
                              (_%tl149392149413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149390149408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149392149413%_))
                              (let ((_%e149393149416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149392149413%_))))
                                (let ((_%hd149394149419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149393149416%_)))
                                      (_%tl149395149421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149393149416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149395149421%_))
                                      (let ((_%e149396149424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149395149421%_))))
                                        (let ((_%hd149397149427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149396149424%_)))
                                              (_%tl149398149429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149396149424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149398149429%_))
                                              ((lambda (_%L149432%_
                                                        _%L149433%_)
                                                 (gxc#compile-e__1
                                                  _%self149383%_
                                                  _%L149432%_))
                                               _%hd149397149427%_
                                               _%hd149394149419%_)
                                              (_%g149386149403%_
                                               _%g149387149406%_))))
                                      (_%g149386149403%_ _%g149387149406%_))))
                              (_%g149386149403%_ _%g149387149406%_))))
                      (_%g149386149403%_ _%g149387149406%_)))))
          (_%g149385149448%_ _%stx149384%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self149314%_ _%stx149315%_)
        (let* ((_%g149317149334%_
                (lambda (_%g149318149331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149318149331%_))))
               (_%g149316149380%_
                (lambda (_%g149318149337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149318149337%_))
                      (let ((_%e149321149339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149318149337%_))))
                        (let ((_%hd149322149342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149321149339%_)))
                              (_%tl149323149344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149321149339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149323149344%_))
                              (let ((_%e149324149347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149323149344%_))))
                                (let ((_%hd149325149350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149324149347%_)))
                                      (_%tl149326149352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149324149347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149326149352%_))
                                      (let ((_%e149327149355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149326149352%_))))
                                        (let ((_%hd149328149358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149327149355%_)))
                                              (_%tl149329149360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149327149355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149329149360%_))
                                              ((lambda (_%L149363%_
                                                        _%L149364%_)
                                                 (let ((__tmp149983
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self149314%_
                                                           _%L149363%_)))
                                                       (__tmp149981
                                                        (let ((__tmp149982
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp149982 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp149983
                                                    gx#current-expander-phi
                                                    __tmp149981)))
                                               _%hd149328149358%_
                                               _%hd149325149350%_)
                                              (_%g149317149334%_
                                               _%g149318149337%_))))
                                      (_%g149317149334%_ _%g149318149337%_))))
                              (_%g149317149334%_ _%g149318149337%_))))
                      (_%g149317149334%_ _%g149318149337%_)))))
          (_%g149316149380%_ _%stx149315%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self149246%_ _%stx149247%_)
        (let* ((_%g149249149266%_
                (lambda (_%g149250149263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149250149263%_))))
               (_%g149248149311%_
                (lambda (_%g149250149269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149250149269%_))
                      (let ((_%e149253149271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149250149269%_))))
                        (let ((_%hd149254149274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149253149271%_)))
                              (_%tl149255149276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149253149271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149255149276%_))
                              (let ((_%e149256149279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149255149276%_))))
                                (let ((_%hd149257149282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149256149279%_)))
                                      (_%tl149258149284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149256149279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149258149284%_))
                                      (let ((_%e149259149287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149258149284%_))))
                                        (let ((_%hd149260149290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149259149287%_)))
                                              (_%tl149261149292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149259149287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149261149292%_))
                                              ((lambda (_%L149295%_
                                                        _%L149296%_)
                                                 (gxc#compile-e__1
                                                  _%self149246%_
                                                  _%L149295%_))
                                               _%hd149260149290%_
                                               _%hd149257149282%_)
                                              (_%g149249149266%_
                                               _%g149250149269%_))))
                                      (_%g149249149266%_ _%g149250149269%_))))
                              (_%g149249149266%_ _%g149250149269%_))))
                      (_%g149249149266%_ _%g149250149269%_)))))
          (_%g149248149311%_ _%stx149247%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self149128%_ _%stx149129%_)
        (let* ((_%g149131149159%_
                (lambda (_%g149132149156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149132149156%_))))
               (_%g149130149243%_
                (lambda (_%g149132149162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149132149162%_))
                      (let ((_%e149135149164%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149132149162%_))))
                        (let ((_%hd149136149167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149135149164%_)))
                              (_%tl149137149169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149135149164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149137149169%_))
                              (let ((_g149984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149137149169%_
                                        '0))))
                                (begin
                                  (let ((_g149985_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149984_)
                                               (##values-length _g149984_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149985_ 2)))
                                        (error "Context expects 2 values"
                                               _g149985_)))
                                  (let ((_%target149138149172%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149984_ 0)))
                                        (_%tl149140149174%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149984_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149140149174%_))
                                        (letrec ((_%loop149141149177%_
                                                  (lambda (_%hd149139149180%_
                                                           _%body149145149182%_
                                                           _%hd149146149184%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149139149180%_))
                                                        (let ((_%e149142149187%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149139149180%_))))
                  (let ((_%lp-hd149143149190%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149142149187%_)))
                        (_%lp-tl149144149192%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149142149187%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd149143149190%_))
                        (let ((_%e149149149195%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd149143149190%_))))
                          (let ((_%hd149150149198%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149149149195%_)))
                                (_%tl149151149200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149149149195%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149151149200%_))
                                (let ((_%e149152149203%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149151149200%_))))
                                  (let ((_%hd149153149206%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149152149203%_)))
                                        (_%tl149154149208%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149152149203%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149154149208%_))
                                        (_%loop149141149177%_
                                         _%lp-tl149144149192%_
                                         (cons _%hd149153149206%_
                                               _%body149145149182%_)
                                         (cons _%hd149150149198%_
                                               _%hd149146149184%_))
                                        (_%g149131149159%_
                                         _%g149132149162%_))))
                                (_%g149131149159%_ _%g149132149162%_))))
                        (_%g149131149159%_ _%g149132149162%_))))
                (let ((_%body149147149211%_ (reverse _%body149145149182%_))
                      (_%hd149148149213%_ (reverse _%hd149146149184%_)))
                  ((lambda (_%L149216%_ _%L149217%_)
                     (for-each
                      (lambda (_%g149231149233%_)
                        (gxc#compile-e__1 _%self149128%_ _%g149231149233%_))
                      (let ((__tmp149986
                             (lambda (_%g149235149238%_ _%g149236149240%_)
                               (cons _%g149235149238%_ _%g149236149240%_))))
                        (declare (not safe))
                        (__foldr1 __tmp149986 '() _%L149216%_))))
                   _%body149147149211%_
                   _%hd149148149213%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149141149177%_
                                           _%target149138149172%_
                                           '()
                                           '()))
                                        (_%g149131149159%_
                                         _%g149132149162%_)))))
                              (_%g149131149159%_ _%g149132149162%_))))
                      (_%g149131149159%_ _%g149132149162%_)))))
          (_%g149130149243%_ _%stx149129%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self148981%_ _%stx148982%_)
        (let* ((_%g148984149019%_
                (lambda (_%g148985149016%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148985149016%_))))
               (_%g148983149125%_
                (lambda (_%g148985149022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148985149022%_))
                      (let ((_%e148989149024%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148985149022%_))))
                        (let ((_%hd148990149027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148989149024%_)))
                              (_%tl148991149029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148989149024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148991149029%_))
                              (let ((_%e148992149032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148991149029%_))))
                                (let ((_%hd148993149035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148992149032%_)))
                                      (_%tl148994149037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148992149032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148993149035%_))
                                      (let ((_g149987_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148993149035%_
                                                '0))))
                                        (begin
                                          (let ((_g149988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g149987_)
                                                       (##values-length
                                                        _g149987_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g149988_ 2)))
                                                (error "Context expects 2 values"
                                                       _g149988_)))
                                          (let ((_%target148995149040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g149987_ 0)))
                                                (_%tl148997149042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g149987_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148997149042%_))
                                                (letrec ((_%loop148998149045%_
                                                          (lambda (_%hd148996149048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149002149050%_
                           _%hd149003149052%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148996149048%_))
                        (let ((_%e148999149055%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148996149048%_))))
                          (let ((_%lp-hd149000149058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148999149055%_)))
                                (_%lp-tl149001149060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148999149055%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149000149058%_))
                                (let ((_%e149006149063%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149000149058%_))))
                                  (let ((_%hd149007149066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149006149063%_)))
                                        (_%tl149008149068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149006149063%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149008149068%_))
                                        (let ((_%e149009149071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149008149068%_))))
                                          (let ((_%hd149010149074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149009149071%_)))
                                                (_%tl149011149076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149009149071%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149011149076%_))
                                                (_%loop148998149045%_
                                                 _%lp-tl149001149060%_
                                                 (cons _%hd149010149074%_
                                                       _%expr149002149050%_)
                                                 (cons _%hd149007149066%_
                                                       _%hd149003149052%_))
                                                (_%g148984149019%_
                                                 _%g148985149022%_))))
                                        (_%g148984149019%_
                                         _%g148985149022%_))))
                                (_%g148984149019%_ _%g148985149022%_))))
                        (let ((_%expr149004149079%_
                               (reverse _%expr149002149050%_))
                              (_%hd149005149081%_
                               (reverse _%hd149003149052%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148994149037%_))
                              (let ((_%e149012149084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148994149037%_))))
                                (let ((_%hd149013149087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149012149084%_)))
                                      (_%tl149014149089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149012149084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149014149089%_))
                                      ((lambda (_%L149092%_
                                                _%L149093%_
                                                _%L149094%_)
                                         (for-each
                                          (lambda (_%g149113149115%_)
                                            (gxc#compile-e__1
                                             _%self148981%_
                                             _%g149113149115%_))
                                          (let ((__tmp149990
                                                 (lambda (_%g149117149120%_
                                                          _%g149118149122%_)
                                                   (cons _%g149117149120%_
                                                         _%g149118149122%_)))
                                                (__tmp149989
                                                 (cons _%L149092%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp149990
                                             __tmp149989
                                             _%L149093%_))))
                                       _%hd149013149087%_
                                       _%expr149004149079%_
                                       _%hd149005149081%_)
                                      (_%g148984149019%_ _%g148985149022%_))))
                              (_%g148984149019%_ _%g148985149022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148998149045%_
                                                   _%target148995149040%_
                                                   '()
                                                   '()))
                                                (_%g148984149019%_
                                                 _%g148985149022%_)))))
                                      (_%g148984149019%_ _%g148985149022%_))))
                              (_%g148984149019%_ _%g148985149022%_))))
                      (_%g148984149019%_ _%g148985149022%_)))))
          (_%g148983149125%_ _%stx148982%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self148926%_ _%stx148927%_)
        (let* ((_%g148929148943%_
                (lambda (_%g148930148940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148930148940%_))))
               (_%g148928148978%_
                (lambda (_%g148930148946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148930148946%_))
                      (let ((_%e148933148948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148930148946%_))))
                        (let ((_%hd148934148951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148933148948%_)))
                              (_%tl148935148953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148933148948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148935148953%_))
                              (let ((_%e148936148956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148935148953%_))))
                                (let ((_%hd148937148959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148936148956%_)))
                                      (_%tl148938148961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148936148956%_))))
                                  ((lambda (_%L148964%_ _%L148965%_)
                                     (gxc#compile-e__1
                                      _%self148926%_
                                      (last _%L148964%_)))
                                   _%tl148938148961%_
                                   _%hd148937148959%_)))
                              (_%g148929148943%_ _%g148930148946%_))))
                      (_%g148929148943%_ _%g148930148946%_)))))
          (_%g148928148978%_ _%stx148927%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self148858%_ _%stx148859%_)
        (let* ((_%g148861148878%_
                (lambda (_%g148862148875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148862148875%_))))
               (_%g148860148923%_
                (lambda (_%g148862148881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148862148881%_))
                      (let ((_%e148865148883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148862148881%_))))
                        (let ((_%hd148866148886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148865148883%_)))
                              (_%tl148867148888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148865148883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148867148888%_))
                              (let ((_%e148868148891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148867148888%_))))
                                (let ((_%hd148869148894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148868148891%_)))
                                      (_%tl148870148896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148868148891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148870148896%_))
                                      (let ((_%e148871148899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148870148896%_))))
                                        (let ((_%hd148872148902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148871148899%_)))
                                              (_%tl148873148904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148871148899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148873148904%_))
                                              ((lambda (_%L148907%_
                                                        _%L148908%_)
                                                 (gxc#compile-e__1
                                                  _%self148858%_
                                                  _%L148907%_))
                                               _%hd148872148902%_
                                               _%hd148869148894%_)
                                              (_%g148861148878%_
                                               _%g148862148881%_))))
                                      (_%g148861148878%_ _%g148862148881%_))))
                              (_%g148861148878%_ _%g148862148881%_))))
                      (_%g148861148878%_ _%g148862148881%_)))))
          (_%g148860148923%_ _%stx148859%_))))
    (define gxc#apply-operands
      (lambda (_%self148771%_ _%stx148772%_)
        (let* ((_%g148774148793%_
                (lambda (_%g148775148790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148775148790%_))))
               (_%g148773148855%_
                (lambda (_%g148775148796%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148775148796%_))
                      (let ((_%e148777148798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148775148796%_))))
                        (let ((_%hd148778148801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148777148798%_)))
                              (_%tl148779148803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148777148798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148779148803%_))
                              (let ((_g149991_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148779148803%_
                                        '0))))
                                (begin
                                  (let ((_g149992_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149991_)
                                               (##values-length _g149991_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149992_ 2)))
                                        (error "Context expects 2 values"
                                               _g149992_)))
                                  (let ((_%target148780148806%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149991_ 0)))
                                        (_%tl148782148808%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149991_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148782148808%_))
                                        (letrec ((_%loop148783148811%_
                                                  (lambda (_%hd148781148814%_
                                                           _%rands148787148816%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148781148814%_))
                                                        (let ((_%e148784148819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148781148814%_))))
                  (let ((_%lp-hd148785148822%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148784148819%_)))
                        (_%lp-tl148786148824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148784148819%_))))
                    (_%loop148783148811%_
                     _%lp-tl148786148824%_
                     (cons _%lp-hd148785148822%_ _%rands148787148816%_))))
                (let ((_%rands148788148827%_ (reverse _%rands148787148816%_)))
                  ((lambda (_%L148830%_)
                     (for-each
                      (lambda (_%g148843148845%_)
                        (gxc#compile-e__1 _%self148771%_ _%g148843148845%_))
                      (let ((__tmp149993
                             (lambda (_%g148847148850%_ _%g148848148852%_)
                               (cons _%g148847148850%_ _%g148848148852%_))))
                        (declare (not safe))
                        (__foldr1 __tmp149993 '() _%L148830%_))))
                   _%rands148788148827%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148783148811%_
                                           _%target148780148806%_
                                           '()))
                                        (_%g148774148793%_
                                         _%g148775148796%_)))))
                              (_%g148774148793%_ _%g148775148796%_))))
                      (_%g148774148793%_ _%g148775148796%_)))))
          (_%g148773148855%_ _%stx148772%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx148768%_ _%src-stx148769%_)
        (let ((__tmp149994
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx148769%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx148768%_ __tmp149994))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx148764%_ _%src-stx148765%_ _%ctx148766%_)
        (gxc#compile-e__1
         _%ctx148766%_
         (gxc#xform-wrap-source _%stx148764%_ _%src-stx148765%_))))
    (define gxc#xform-begin%
      (lambda (_%self148719%_ _%stx148720%_)
        (let* ((_%g148722148732%_
                (lambda (_%g148723148729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148723148729%_))))
               (_%g148721148761%_
                (lambda (_%g148723148735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148723148735%_))
                      (let ((_%e148725148737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148723148735%_))))
                        (let ((_%hd148726148740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148725148737%_)))
                              (_%tl148727148742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148725148737%_))))
                          ((lambda (_%L148745%_)
                             (let ((_%forms148759%_
                                    (map (lambda (_%g148754148756%_)
                                           (gxc#compile-e__1
                                            _%self148719%_
                                            _%g148754148756%_))
                                         _%L148745%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms148759%_)
                                _%stx148720%_)))
                           _%tl148727148742%_)))
                      (_%g148722148732%_ _%g148723148735%_)))))
          (_%g148721148761%_ _%stx148720%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self148673%_ _%stx148674%_)
        (let* ((_%g148676148686%_
                (lambda (_%g148677148683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148677148683%_))))
               (_%g148675148716%_
                (lambda (_%g148677148689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148677148689%_))
                      (let ((_%e148679148691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148677148689%_))))
                        (let ((_%hd148680148694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148679148691%_)))
                              (_%tl148681148696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148679148691%_))))
                          ((lambda (_%L148699%_)
                             (let ((__tmp149997
                                    (lambda ()
                                      (let ((_%forms148714%_
                                             (map (lambda (_%g148709148711%_)
                                                    (gxc#compile-e__1
                                                     _%self148673%_
                                                     _%g148709148711%_))
                                                  _%L148699%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms148714%_)
                                         _%stx148674%_))))
                                   (__tmp149995
                                    (let ((__tmp149996
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp149996 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp149997
                                gx#current-expander-phi
                                __tmp149995)))
                           _%tl148681148696%_)))
                      (_%g148676148686%_ _%g148677148689%_)))))
          (_%g148675148716%_ _%stx148674%_))))
    (define gxc#xform-module%
      (lambda (_%self148610%_ _%stx148611%_)
        (let* ((_%g148613148627%_
                (lambda (_%g148614148624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148614148624%_))))
               (_%g148612148670%_
                (lambda (_%g148614148630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148614148630%_))
                      (let ((_%e148617148632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148614148630%_))))
                        (let ((_%hd148618148635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148617148632%_)))
                              (_%tl148619148637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148617148632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148619148637%_))
                              (let ((_%e148620148640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148619148637%_))))
                                (let ((_%hd148621148643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148620148640%_)))
                                      (_%tl148622148645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148620148640%_))))
                                  ((lambda (_%L148648%_ _%L148649%_)
                                     (let* ((_%ctx148662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L148649%_)))
                                            (_%code148664%_
                                             (##structure-ref
                                              _%ctx148662%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code148667%_
                                             (let ((__tmp149998
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self148610%_
                                                       _%code148664%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp149998
                                                gx#current-expander-context
                                                _%ctx148662%_))))
                                       (##structure-set!
                                        _%ctx148662%_
                                        _%code148667%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L148649%_
                                                    (cons _%code148667%_ '())))
                                        _%stx148611%_)))
                                   _%tl148622148645%_
                                   _%hd148621148643%_)))
                              (_%g148613148627%_ _%g148614148630%_))))
                      (_%g148613148627%_ _%g148614148630%_)))))
          (_%g148612148670%_ _%stx148611%_))))
    (define gxc#xform-define-values%
      (lambda (_%self148540%_ _%stx148541%_)
        (let* ((_%g148543148560%_
                (lambda (_%g148544148557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148544148557%_))))
               (_%g148542148607%_
                (lambda (_%g148544148563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148544148563%_))
                      (let ((_%e148547148565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148544148563%_))))
                        (let ((_%hd148548148568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148547148565%_)))
                              (_%tl148549148570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148547148565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148549148570%_))
                              (let ((_%e148550148573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148549148570%_))))
                                (let ((_%hd148551148576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148550148573%_)))
                                      (_%tl148552148578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148550148573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148552148578%_))
                                      (let ((_%e148553148581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148552148578%_))))
                                        (let ((_%hd148554148584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148553148581%_)))
                                              (_%tl148555148586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148553148581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148555148586%_))
                                              ((lambda (_%L148589%_
                                                        _%L148590%_)
                                                 (let ((_%expr148605%_
                                                        (gxc#compile-e__1
                                                         _%self148540%_
                                                         _%L148589%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L148590%_
                                                                (cons _%expr148605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148541%_)))
                                               _%hd148554148584%_
                                               _%hd148551148576%_)
                                              (_%g148543148560%_
                                               _%g148544148563%_))))
                                      (_%g148543148560%_ _%g148544148563%_))))
                              (_%g148543148560%_ _%g148544148563%_))))
                      (_%g148543148560%_ _%g148544148563%_)))))
          (_%g148542148607%_ _%stx148541%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self148469%_ _%stx148470%_)
        (let* ((_%g148472148489%_
                (lambda (_%g148473148486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148473148486%_))))
               (_%g148471148537%_
                (lambda (_%g148473148492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148473148492%_))
                      (let ((_%e148476148494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148473148492%_))))
                        (let ((_%hd148477148497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148476148494%_)))
                              (_%tl148478148499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148476148494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148478148499%_))
                              (let ((_%e148479148502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148478148499%_))))
                                (let ((_%hd148480148505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148479148502%_)))
                                      (_%tl148481148507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148479148502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148481148507%_))
                                      (let ((_%e148482148510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148481148507%_))))
                                        (let ((_%hd148483148513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148482148510%_)))
                                              (_%tl148484148515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148482148510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148484148515%_))
                                              ((lambda (_%L148518%_
                                                        _%L148519%_)
                                                 (let ((__tmp150001
                                                        (lambda ()
                                                          (let ((_%expr148535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self148469%_ _%L148518%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L148519%_ (cons _%expr148535%_ '())))
                     _%stx148470%_))))
               (__tmp149999
                (let ((__tmp150000
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp150000 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp150001
                                                    gx#current-expander-phi
                                                    __tmp149999)))
                                               _%hd148483148513%_
                                               _%hd148480148505%_)
                                              (_%g148472148489%_
                                               _%g148473148492%_))))
                                      (_%g148472148489%_ _%g148473148492%_))))
                              (_%g148472148489%_ _%g148473148492%_))))
                      (_%g148472148489%_ _%g148473148492%_)))))
          (_%g148471148537%_ _%stx148470%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self148399%_ _%stx148400%_)
        (let* ((_%g148402148419%_
                (lambda (_%g148403148416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148403148416%_))))
               (_%g148401148466%_
                (lambda (_%g148403148422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148403148422%_))
                      (let ((_%e148406148424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148403148422%_))))
                        (let ((_%hd148407148427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148406148424%_)))
                              (_%tl148408148429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148406148424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148408148429%_))
                              (let ((_%e148409148432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148408148429%_))))
                                (let ((_%hd148410148435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148409148432%_)))
                                      (_%tl148411148437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148409148432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148411148437%_))
                                      (let ((_%e148412148440%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148411148437%_))))
                                        (let ((_%hd148413148443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148412148440%_)))
                                              (_%tl148414148445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148412148440%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148414148445%_))
                                              ((lambda (_%L148448%_
                                                        _%L148449%_)
                                                 (let ((_%expr148464%_
                                                        (gxc#compile-e__1
                                                         _%self148399%_
                                                         _%L148448%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L148449%_
                                                                (cons _%expr148464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148400%_)))
                                               _%hd148413148443%_
                                               _%hd148410148435%_)
                                              (_%g148402148419%_
                                               _%g148403148422%_))))
                                      (_%g148402148419%_ _%g148403148422%_))))
                              (_%g148402148419%_ _%g148403148422%_))))
                      (_%g148402148419%_ _%g148403148422%_)))))
          (_%g148401148466%_ _%stx148400%_))))
    (define gxc#xform-lambda%
      (lambda (_%self148337%_ _%stx148338%_)
        (let* ((_%g148340148354%_
                (lambda (_%g148341148351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148341148351%_))))
               (_%g148339148396%_
                (lambda (_%g148341148357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148341148357%_))
                      (let ((_%e148344148359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148341148357%_))))
                        (let ((_%hd148345148362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148344148359%_)))
                              (_%tl148346148364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148344148359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148346148364%_))
                              (let ((_%e148347148367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148346148364%_))))
                                (let ((_%hd148348148370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148347148367%_)))
                                      (_%tl148349148372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148347148367%_))))
                                  ((lambda (_%L148375%_ _%L148376%_)
                                     (let ((__tmp150003
                                            (lambda ()
                                              (let ((_%body148394%_
                                                     (map (lambda (_%g148389148391%_)
                                                            (gxc#compile-e__1
                                                             _%self148337%_
                                                             _%g148389148391%_))
                                                          _%L148375%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L148376%_
                                                             _%body148394%_))
                                                 _%stx148338%_))))
                                           (__tmp150002
                                            (gxc#xform-let-locals
                                             _%L148376%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp150003
                                        gxc#current-compile-local-env
                                        __tmp150002)))
                                   _%tl148349148372%_
                                   _%hd148348148370%_)))
                              (_%g148340148354%_ _%g148341148357%_))))
                      (_%g148340148354%_ _%g148341148357%_)))))
          (_%g148339148396%_ _%stx148338%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self148245%_ _%stx148246%_)
        (letrec ((_%clause-e148248%_
                  (lambda (_%clause148289%_)
                    (let* ((_%g148291148302%_
                            (lambda (_%g148292148299%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g148292148299%_))))
                           (_%g148290148334%_
                            (lambda (_%g148292148305%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g148292148305%_))
                                  (let ((_%e148295148307%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g148292148305%_))))
                                    (let ((_%hd148296148310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148295148307%_)))
                                          (_%tl148297148312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148295148307%_))))
                                      ((lambda (_%L148315%_ _%L148316%_)
                                         (let ((__tmp150005
                                                (lambda ()
                                                  (let ((_%body148332%_
                                                         (map (lambda (_%g148327148329%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self148245%_
                         _%g148327148329%_))
                      _%L148315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L148316%_
                                                          _%body148332%_))))
                                               (__tmp150004
                                                (gxc#xform-let-locals
                                                 _%L148316%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp150005
                                            gxc#current-compile-local-env
                                            __tmp150004)))
                                       _%tl148297148312%_
                                       _%hd148296148310%_)))
                                  (_%g148291148302%_ _%g148292148305%_)))))
                      (_%g148290148334%_ _%clause148289%_)))))
          (let* ((_%g148250148260%_
                  (lambda (_%g148251148257%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148251148257%_))))
                 (_%g148249148286%_
                  (lambda (_%g148251148263%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148251148263%_))
                        (let ((_%e148253148265%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148251148263%_))))
                          (let ((_%hd148254148268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148253148265%_)))
                                (_%tl148255148270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148253148265%_))))
                            ((lambda (_%L148273%_)
                               (let ((_%clauses148284%_
                                      (map _%clause-e148248%_ _%L148273%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses148284%_)
                                  _%stx148246%_)))
                             _%tl148255148270%_)))
                        (_%g148250148260%_ _%g148251148263%_)))))
            (_%g148249148286%_ _%stx148246%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self147999%_ _%stx148000%_)
        (let* ((_%g148002148035%_
                (lambda (_%g148003148032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148003148032%_))))
               (_%g148001148242%_
                (lambda (_%g148003148038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148003148038%_))
                      (let ((_%e148008148040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148003148038%_))))
                        (let ((_%hd148009148043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148008148040%_)))
                              (_%tl148010148045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148008148040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148010148045%_))
                              (let ((_%e148011148048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148010148045%_))))
                                (let ((_%hd148012148051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148011148048%_)))
                                      (_%tl148013148053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148011148048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148012148051%_))
                                      (let ((_g150006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148012148051%_
                                                '0))))
                                        (begin
                                          (let ((_g150007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150006_)
                                                       (##values-length
                                                        _g150006_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150007_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150007_)))
                                          (let ((_%target148014148056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150006_ 0)))
                                                (_%tl148016148058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150006_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148016148058%_))
                                                (letrec ((_%loop148017148061%_
                                                          (lambda (_%hd148015148064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148021148066%_
                           _%hd148022148068%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148015148064%_))
                        (let ((_%e148018148071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148015148064%_))))
                          (let ((_%lp-hd148019148074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148018148071%_)))
                                (_%lp-tl148020148076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148018148071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148019148074%_))
                                (let ((_%e148025148079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148019148074%_))))
                                  (let ((_%hd148026148082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148025148079%_)))
                                        (_%tl148027148084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148025148079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148027148084%_))
                                        (let ((_%e148028148087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148027148084%_))))
                                          (let ((_%hd148029148090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148028148087%_)))
                                                (_%tl148030148092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148028148087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148030148092%_))
                                                (_%loop148017148061%_
                                                 _%lp-tl148020148076%_
                                                 (cons _%hd148029148090%_
                                                       _%expr148021148066%_)
                                                 (cons _%hd148026148082%_
                                                       _%hd148022148068%_))
                                                (_%g148002148035%_
                                                 _%g148003148038%_))))
                                        (_%g148002148035%_
                                         _%g148003148038%_))))
                                (_%g148002148035%_ _%g148003148038%_))))
                        (let ((_%expr148023148095%_
                               (reverse _%expr148021148066%_))
                              (_%hd148024148097%_
                               (reverse _%hd148022148068%_)))
                          ((lambda (_%L148100%_
                                    _%L148101%_
                                    _%L148102%_
                                    _%L148103%_)
                             (let* ((_%g148122148138%_
                                     (lambda (_%g148123148135%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148123148135%_))))
                                    (_%g148121148228%_
                                     (lambda (_%g148123148141%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g148123148141%_))
                                           (let ((_g150008_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g148123148141%_
                                                     '0))))
                                             (begin
                                               (let ((_g150009_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g150008_)
                                                            (##values-length
                                                             _g150008_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g150009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g150009_)))
                                               (let ((_%target148125148143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150008_
                                                         0)))
                                                     (_%tl148127148145%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g150008_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl148127148145%_))
                                                     (letrec ((_%loop148128148148%_
                                                               (lambda (_%hd148126148151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr148132148153%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd148126148151%_))
                             (let ((_%e148129148156%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd148126148151%_))))
                               (let ((_%lp-hd148130148159%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148129148156%_)))
                                     (_%lp-tl148131148161%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148129148156%_))))
                                 (_%loop148128148148%_
                                  _%lp-tl148131148161%_
                                  (cons _%lp-hd148130148159%_
                                        _%expr148132148153%_))))
                             (let ((_%expr148133148164%_
                                    (reverse _%expr148132148153%_)))
                               ((lambda (_%L148167%_)
                                  (let ((__tmp150012
                                         (lambda ()
                                           (let* ((_%g148181148188%_
                                                   (lambda (_%g148182148185%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148182148185%_))))
                                                  (_%g148180148214%_
                                                   (lambda (_%g148182148191%_)
                                                     ((lambda (_%L148193%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L148103%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L148167%_
                                  _%L148102%_))
                               (let ((__tmp150013
                                      (lambda (_%g148203148207%_
                                               _%g148204148209%_
                                               _%g148205148211%_)
                                        (cons (cons _%g148204148209%_
                                                    (cons _%g148203148207%_
                                                          '()))
                                              _%g148205148211%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150013
                                  '()
                                  _%L148167%_
                                  _%L148102%_)))
                             _%L148193%_))
                 _%stx148000%_))
              _%g148182148191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148180148214%_
                                              (map (lambda (_%g148216148218%_)
                                                     (gxc#compile-e__1
                                                      _%self147999%_
                                                      _%g148216148218%_))
                                                   _%L148100%_)))))
                                        (__tmp150010
                                         (gxc#xform-let-locals
                                          (let ((__tmp150011
                                                 (lambda (_%g148220148223%_
                                                          _%g148221148225%_)
                                                   (cons _%g148220148223%_
                                                         _%g148221148225%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp150011
                                             '()
                                             _%L148102%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp150012
                                     gxc#current-compile-local-env
                                     __tmp150010)))
                                _%expr148133148164%_))))))
               (_%loop148128148148%_ _%target148125148143%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g148122148138%_
                                                      _%g148123148141%_)))))
                                           (_%g148122148138%_
                                            _%g148123148141%_)))))
                               (_%g148121148228%_
                                (map (lambda (_%g148230148232%_)
                                       (gxc#compile-e__1
                                        _%self147999%_
                                        _%g148230148232%_))
                                     (let ((__tmp150014
                                            (lambda (_%g148234148237%_
                                                     _%g148235148239%_)
                                              (cons _%g148234148237%_
                                                    _%g148235148239%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150014
                                        '()
                                        _%L148101%_))))))
                           _%tl148013148053%_
                           _%expr148023148095%_
                           _%hd148024148097%_
                           _%hd148009148043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148017148061%_
                                                   _%target148014148056%_
                                                   '()
                                                   '()))
                                                (_%g148002148035%_
                                                 _%g148003148038%_)))))
                                      (_%g148002148035%_ _%g148003148038%_))))
                              (_%g148002148035%_ _%g148003148038%_))))
                      (_%g148002148035%_ _%g148003148038%_)))))
          (_%g148001148242%_ _%stx148000%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self147753%_ _%stx147754%_)
        (let* ((_%g147756147789%_
                (lambda (_%g147757147786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147757147786%_))))
               (_%g147755147996%_
                (lambda (_%g147757147792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147757147792%_))
                      (let ((_%e147762147794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147757147792%_))))
                        (let ((_%hd147763147797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147762147794%_)))
                              (_%tl147764147799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147762147794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147764147799%_))
                              (let ((_%e147765147802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147764147799%_))))
                                (let ((_%hd147766147805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147765147802%_)))
                                      (_%tl147767147807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147765147802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd147766147805%_))
                                      (let ((_g150015_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd147766147805%_
                                                '0))))
                                        (begin
                                          (let ((_g150016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150015_)
                                                       (##values-length
                                                        _g150015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150016_)))
                                          (let ((_%target147768147810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g150015_ 0)))
                                                (_%tl147770147812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g150015_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147770147812%_))
                                                (letrec ((_%loop147771147815%_
                                                          (lambda (_%hd147769147818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr147775147820%_
                           _%hd147776147822%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd147769147818%_))
                        (let ((_%e147772147825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd147769147818%_))))
                          (let ((_%lp-hd147773147828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147772147825%_)))
                                (_%lp-tl147774147830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147772147825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd147773147828%_))
                                (let ((_%e147779147833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd147773147828%_))))
                                  (let ((_%hd147780147836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147779147833%_)))
                                        (_%tl147781147838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147779147833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147781147838%_))
                                        (let ((_%e147782147841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147781147838%_))))
                                          (let ((_%hd147783147844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147782147841%_)))
                                                (_%tl147784147846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147782147841%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147784147846%_))
                                                (_%loop147771147815%_
                                                 _%lp-tl147774147830%_
                                                 (cons _%hd147783147844%_
                                                       _%expr147775147820%_)
                                                 (cons _%hd147780147836%_
                                                       _%hd147776147822%_))
                                                (_%g147756147789%_
                                                 _%g147757147792%_))))
                                        (_%g147756147789%_
                                         _%g147757147792%_))))
                                (_%g147756147789%_ _%g147757147792%_))))
                        (let ((_%expr147777147849%_
                               (reverse _%expr147775147820%_))
                              (_%hd147778147851%_
                               (reverse _%hd147776147822%_)))
                          ((lambda (_%L147854%_
                                    _%L147855%_
                                    _%L147856%_
                                    _%L147857%_)
                             (let ((__tmp150019
                                    (lambda ()
                                      (let* ((_%g147877147893%_
                                              (lambda (_%g147878147890%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g147878147890%_))))
                                             (_%g147876147975%_
                                              (lambda (_%g147878147896%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g147878147896%_))
                                                    (let ((_g150020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g147878147896%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g150021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g150020_)
                             (##values-length _g150020_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g150021_ 2)))
                      (error "Context expects 2 values" _g150021_)))
                (let ((_%target147880147898%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150020_ 0)))
                      (_%tl147882147900%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g150020_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147882147900%_))
                      (letrec ((_%loop147883147903%_
                                (lambda (_%hd147881147906%_
                                         _%expr147887147908%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147881147906%_))
                                      (let ((_%e147884147911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd147881147906%_))))
                                        (let ((_%lp-hd147885147914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147884147911%_)))
                                              (_%lp-tl147886147916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147884147911%_))))
                                          (_%loop147883147903%_
                                           _%lp-tl147886147916%_
                                           (cons _%lp-hd147885147914%_
                                                 _%expr147887147908%_))))
                                      (let ((_%expr147888147919%_
                                             (reverse _%expr147887147908%_)))
                                        ((lambda (_%L147922%_)
                                           (let* ((_%g147936147943%_
                                                   (lambda (_%g147937147940%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g147937147940%_))))
                                                  (_%g147935147968%_
                                                   (lambda (_%g147937147946%_)
                                                     ((lambda (_%L147948%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L147857%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L147922%_
                                  _%L147856%_))
                               (let ((__tmp150022
                                      (lambda (_%g147957147961%_
                                               _%g147958147963%_
                                               _%g147959147965%_)
                                        (cons (cons _%g147958147963%_
                                                    (cons _%g147957147961%_
                                                          '()))
                                              _%g147959147965%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp150022
                                  '()
                                  _%L147922%_
                                  _%L147856%_)))
                             _%L147948%_))
                 _%stx147754%_))
              _%g147937147946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g147935147968%_
                                              (map (lambda (_%g147970147972%_)
                                                     (gxc#compile-e__1
                                                      _%self147753%_
                                                      _%g147970147972%_))
                                                   _%L147854%_))))
                                         _%expr147888147919%_))))))
                        (_%loop147883147903%_ _%target147880147898%_ '()))
                      (_%g147877147893%_ _%g147878147896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g147877147893%_
                                                     _%g147878147896%_)))))
                                        (_%g147876147975%_
                                         (map (lambda (_%g147977147979%_)
                                                (gxc#compile-e__1
                                                 _%self147753%_
                                                 _%g147977147979%_))
                                              (let ((__tmp150023
                                                     (lambda (_%g147981147984%_
                                                              _%g147982147986%_)
                                                       (cons _%g147981147984%_
                                                             _%g147982147986%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp150023
                                                 '()
                                                 _%L147855%_)))))))
                                   (__tmp150017
                                    (gxc#xform-let-locals
                                     (let ((__tmp150018
                                            (lambda (_%g147988147991%_
                                                     _%g147989147993%_)
                                              (cons _%g147988147991%_
                                                    _%g147989147993%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp150018
                                        '()
                                        _%L147856%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp150019
                                gxc#current-compile-local-env
                                __tmp150017)))
                           _%tl147767147807%_
                           _%expr147777147849%_
                           _%hd147778147851%_
                           _%hd147763147797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop147771147815%_
                                                   _%target147768147810%_
                                                   '()
                                                   '()))
                                                (_%g147756147789%_
                                                 _%g147757147792%_)))))
                                      (_%g147756147789%_ _%g147757147792%_))))
                              (_%g147756147789%_ _%g147757147792%_))))
                      (_%g147756147789%_ _%g147757147792%_)))))
          (_%g147755147996%_ _%stx147754%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings147620%_)
        (letrec ((_%flatten147622%_
                  (lambda (_%maybe-lst147680%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst147680%_))
                        (cons _%maybe-lst147680%_ '())
                        (let _%loop147682%_ ((_%rest147684%_
                                              _%maybe-lst147680%_)
                                             (_%result147685%_ '()))
                          (let* ((_%__stx149911149912%_ _%rest147684%_)
                                 (_%g147689147701%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx149911149912%_)))))
                            (let ((_%__kont149913149914%_
                                   (lambda (_%L147739%_ _%L147740%_)
                                     (_%loop147682%_
                                      _%L147739%_
                                      (let ((__tmp150024
                                             (_%flatten147622%_ _%L147740%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result147685%_
                                         __tmp150024)))))
                                  (_%__kont149915149916%_
                                   (lambda (_%L147713%_)
                                     (cons _%L147713%_ _%result147685%_)))
                                  (_%__kont149917149918%_
                                   (lambda () _%result147685%_)))
                              (let ((_%g147687147726%_
                                     (lambda ()
                                       (let ((_%L147713%_
                                              _%__stx149911149912%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L147713%_))
                                             (_%__kont149915149916%_
                                              _%L147713%_)
                                             (_%__kont149917149918%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx149911149912%_))
                                    (let ((_%e147693147731%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx149911149912%_))))
                                      (let ((_%tl147695147736%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e147693147731%_)))
                                            (_%hd147694147734%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e147693147731%_))))
                                        (_%__kont149913149914%_
                                         _%tl147695147736%_
                                         _%hd147694147734%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g147687147726%_)))))))))))
          (let _%loop147624%_ ((_%rest147626%_
                                (_%flatten147622%_ _%bindings147620%_))
                               (_%locals147627%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest147628147639%_ _%rest147626%_)
                   (_%E147632147643%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest147628147639%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K147635147668%_
                     (lambda (_%rest147665%_ _%id147666%_)
                       (_%loop147624%_
                        _%rest147665%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id147666%_))
                              _%locals147627%_))))
                    (_%K147634147657%_
                     (lambda (_%id147655%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id147655%_))
                             _%locals147627%_)))
                    (_%K147633147648%_ (lambda () _%locals147627%_)))
                (let ((_%try-match147630147662%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest147628147639%_))
                             (let ((_%id147660%_ _%rest147628147639%_))
                               (_%K147634147657%_ _%id147660%_))
                             (_%K147633147648%_)))))
                  (if (pair? _%rest147628147639%_)
                      (let ((_%tl147637147673%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147628147639%_)))
                            (_%hd147636147671%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147628147639%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd147636147671%_))
                            (let ((_%id147676%_ _%hd147636147671%_)
                                  (_%rest147678%_ _%tl147637147673%_))
                              (_%K147635147668%_ _%rest147678%_ _%id147676%_))
                            (_%K147633147648%_)))
                      (_%try-match147630147662%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self147572%_ _%stx147573%_)
        (let* ((_%g147575147586%_
                (lambda (_%g147576147583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147576147583%_))))
               (_%g147574147617%_
                (lambda (_%g147576147589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147576147589%_))
                      (let ((_%e147579147591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147576147589%_))))
                        (let ((_%hd147580147594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147579147591%_)))
                              (_%tl147581147596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147579147591%_))))
                          ((lambda (_%L147599%_ _%L147600%_)
                             (let ((_%rands147615%_
                                    (map (lambda (_%g147610147612%_)
                                           (gxc#compile-e__1
                                            _%self147572%_
                                            _%g147610147612%_))
                                         _%L147599%_)))
                               (gxc#xform-wrap-source
                                (cons _%L147600%_ _%rands147615%_)
                                _%stx147573%_)))
                           _%tl147581147596%_
                           _%hd147580147594%_)))
                      (_%g147575147586%_ _%g147576147589%_)))))
          (_%g147574147617%_ _%stx147573%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self147502%_ _%stx147503%_)
        (let* ((_%g147505147522%_
                (lambda (_%g147506147519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147506147519%_))))
               (_%g147504147569%_
                (lambda (_%g147506147525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147506147525%_))
                      (let ((_%e147509147527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147506147525%_))))
                        (let ((_%hd147510147530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147509147527%_)))
                              (_%tl147511147532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147509147527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147511147532%_))
                              (let ((_%e147512147535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147511147532%_))))
                                (let ((_%hd147513147538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147512147535%_)))
                                      (_%tl147514147540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147512147535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147514147540%_))
                                      (let ((_%e147515147543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147514147540%_))))
                                        (let ((_%hd147516147546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147515147543%_)))
                                              (_%tl147517147548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147515147543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147517147548%_))
                                              ((lambda (_%L147551%_
                                                        _%L147552%_)
                                                 (let ((_%expr147567%_
                                                        (gxc#compile-e__1
                                                         _%self147502%_
                                                         _%L147551%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L147552%_
                                                                (cons _%expr147567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx147503%_)))
                                               _%hd147516147546%_
                                               _%hd147513147538%_)
                                              (_%g147505147522%_
                                               _%g147506147525%_))))
                                      (_%g147505147522%_ _%g147506147525%_))))
                              (_%g147505147522%_ _%g147506147525%_))))
                      (_%g147505147522%_ _%g147506147525%_)))))
          (_%g147504147569%_ _%stx147503%_))))))
