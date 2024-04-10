(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712786279)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx135720%_)
        (let* ((_%self135722%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e135724%_
                (let ((__tmp135920 (gxc#stx-car-e _%stx135720%_)))
                  (declare (not safe))
                  (method-ref _%self135722%_ __tmp135920))))
          (if _%$e135724%_
              ((lambda (_%method135727%_)
                 (declare (not safe))
                 (_%method135727%_ _%self135722%_ _%stx135720%_))
               _%$e135724%_)
              (let ((__tmp135922 (gxc#stx-car-e _%stx135720%_))
                    (__tmp135921
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135720%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135722%_
                       __tmp135922
                       __tmp135921))))))
    (define gxc#compile-e__1
      (lambda (_%self135731%_ _%stx135732%_)
        (let ((_%$e135734%_
               (let ((__tmp135923 (gxc#stx-car-e _%stx135732%_)))
                 (declare (not safe))
                 (method-ref _%self135731%_ __tmp135923))))
          (if _%$e135734%_
              ((lambda (_%method135737%_)
                 (declare (not safe))
                 (_%method135737%_ _%self135731%_ _%stx135732%_))
               _%$e135734%_)
              (let ((__tmp135925 (gxc#stx-car-e _%stx135732%_))
                    (__tmp135924
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135732%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135731%_
                       __tmp135925
                       __tmp135924))))))
    (define gxc#compile-e
      (lambda _g135927_
        (let ((_g135926_ (let () (declare (not safe)) (##length _g135927_))))
          (cond ((let () (declare (not safe)) (##fx= _g135926_ 1))
                 (apply gxc#compile-e__0 _g135927_))
                ((let () (declare (not safe)) (##fx= _g135926_ 2))
                 (apply gxc#compile-e__1 _g135927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g135927_))))))
    (define gxc#stx-car-e
      (lambda (_%stx135718%_)
        (let ((__tmp135928
               (car (let () (declare (not safe)) (gx#stx-e _%stx135718%_)))))
          (declare (not safe))
          (gx#stx-e __tmp135928))))
    (define gxc#void-method (lambda (_%self135715%_ _%stx135716%_) '#!void))
    (define gxc#false-method (lambda (_%self135712%_ _%stx135713%_) '#f))
    (define gxc#true-method (lambda (_%self135709%_ _%stx135710%_) '#t))
    (define gxc#identity-method
      (lambda (_%self135706%_ _%stx135707%_) _%stx135707%_))
    (define gxc#::void-expression::t
      (let ((__tmp135929 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp135929
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args135703%_
        (apply make-instance gxc#::void-expression::t _%$args135703%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp135930
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
        (__make-promise __tmp135930)))
    (define gxc#::void-special-form::t
      (let ((__tmp135931 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp135931
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args135699%_
        (apply make-instance gxc#::void-special-form::t _%$args135699%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp135932
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
        (__make-promise __tmp135932)))
    (define gxc#::void::t
      (let ((__tmp135933
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp135933 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args135695%_
        (apply make-instance gxc#::void::t _%$args135695%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp135934
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135934)))
    (define gxc#::false-expression::t
      (let ((__tmp135935 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp135935
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args135691%_
        (apply make-instance gxc#::false-expression::t _%$args135691%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp135936
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
        (__make-promise __tmp135936)))
    (define gxc#::false-special-form::t
      (let ((__tmp135937 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp135937
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args135687%_
        (apply make-instance gxc#::false-special-form::t _%$args135687%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp135938
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
        (__make-promise __tmp135938)))
    (define gxc#::false::t
      (let ((__tmp135939
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp135939 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args135683%_
        (apply make-instance gxc#::false::t _%$args135683%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp135940
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135940)))
    (define gxc#::identity-expression::t
      (let ((__tmp135941 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp135941
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args135679%_
        (apply make-instance gxc#::identity-expression::t _%$args135679%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp135942
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
        (__make-promise __tmp135942)))
    (define gxc#::identity-special-form::t
      (let ((__tmp135943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp135943
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args135675%_
        (apply make-instance gxc#::identity-special-form::t _%$args135675%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp135944
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
        (__make-promise __tmp135944)))
    (define gxc#::identity::t
      (let ((__tmp135945
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp135945
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args135671%_
        (apply make-instance gxc#::identity::t _%$args135671%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp135946
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135946)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp135947 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp135947
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args135667%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args135667%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp135948
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
        (__make-promise __tmp135948)))
    (define gxc#::basic-xform::t
      (let ((__tmp135949
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp135949
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args135663%_
        (apply make-instance gxc#::basic-xform::t _%$args135663%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp135950
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
        (__make-promise __tmp135950)))
    (define gxc#apply-begin%
      (lambda (_%self135619%_ _%stx135620%_)
        (let* ((_%g135622135632%_
                (lambda (_%g135623135629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135623135629%_))))
               (_%g135621135659%_
                (lambda (_%g135623135635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135623135635%_))
                      (let ((_%e135625135637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135623135635%_))))
                        (let ((_%hd135626135640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135625135637%_)))
                              (_%tl135627135642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135625135637%_))))
                          ((lambda (_%L135645%_)
                             (for-each
                              (lambda (_%g135654135656%_)
                                (gxc#compile-e__1
                                 _%self135619%_
                                 _%g135654135656%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L135645%_))))
                           _%tl135627135642%_)))
                      (_%g135622135632%_ _%g135623135635%_)))))
          (_%g135621135659%_ _%stx135620%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135580%_ _%stx135581%_)
        (let* ((_%g135583135593%_
                (lambda (_%g135584135590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135584135590%_))))
               (_%g135582135616%_
                (lambda (_%g135584135596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135584135596%_))
                      (let ((_%e135586135598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135584135596%_))))
                        (let ((_%hd135587135601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135586135598%_)))
                              (_%tl135588135603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135586135598%_))))
                          ((lambda (_%L135606%_)
                             (gxc#compile-e__1
                              _%self135580%_
                              (last _%L135606%_)))
                           _%tl135588135603%_)))
                      (_%g135583135593%_ _%g135584135596%_)))))
          (_%g135582135616%_ _%stx135581%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135576%_ _%stx135577%_)
        (let ((__tmp135953
               (lambda () (gxc#apply-begin% _%self135576%_ _%stx135577%_)))
              (__tmp135951
               (let ((__tmp135952
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp135952 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp135953
           gx#current-expander-phi
           __tmp135951))))
    (define gxc#apply-module%
      (lambda (_%self135515%_ _%stx135516%_)
        (let* ((_%g135518135532%_
                (lambda (_%g135519135529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135519135529%_))))
               (_%g135517135573%_
                (lambda (_%g135519135535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135519135535%_))
                      (let ((_%e135522135537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135519135535%_))))
                        (let ((_%hd135523135540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135522135537%_)))
                              (_%tl135524135542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135522135537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135524135542%_))
                              (let ((_%e135525135545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135524135542%_))))
                                (let ((_%hd135526135548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135525135545%_)))
                                      (_%tl135527135550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135525135545%_))))
                                  ((lambda (_%L135553%_ _%L135554%_)
                                     (let* ((_%ctx135567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135554%_)))
                                            (_%ctx-stx135569%_
                                             (##structure-ref
                                              _%ctx135567%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp135954
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135515%_
                                                _%ctx-stx135569%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135954
                                        gx#current-expander-context
                                        _%ctx135567%_)))
                                   _%tl135527135550%_
                                   _%hd135526135548%_)))
                              (_%g135518135532%_ _%g135519135535%_))))
                      (_%g135518135532%_ _%g135519135535%_)))))
          (_%g135517135573%_ _%stx135516%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135447%_ _%stx135448%_)
        (let* ((_%g135450135467%_
                (lambda (_%g135451135464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135451135464%_))))
               (_%g135449135512%_
                (lambda (_%g135451135470%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135451135470%_))
                      (let ((_%e135454135472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135451135470%_))))
                        (let ((_%hd135455135475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135454135472%_)))
                              (_%tl135456135477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135454135472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135456135477%_))
                              (let ((_%e135457135480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135456135477%_))))
                                (let ((_%hd135458135483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135457135480%_)))
                                      (_%tl135459135485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135457135480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135459135485%_))
                                      (let ((_%e135460135488%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135459135485%_))))
                                        (let ((_%hd135461135491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135460135488%_)))
                                              (_%tl135462135493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135460135488%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135462135493%_))
                                              ((lambda (_%L135496%_
                                                        _%L135497%_)
                                                 (gxc#compile-e__1
                                                  _%self135447%_
                                                  _%L135496%_))
                                               _%hd135461135491%_
                                               _%hd135458135483%_)
                                              (_%g135450135467%_
                                               _%g135451135470%_))))
                                      (_%g135450135467%_ _%g135451135470%_))))
                              (_%g135450135467%_ _%g135451135470%_))))
                      (_%g135450135467%_ _%g135451135470%_)))))
          (_%g135449135512%_ _%stx135448%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135379%_ _%stx135380%_)
        (let* ((_%g135382135399%_
                (lambda (_%g135383135396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135383135396%_))))
               (_%g135381135444%_
                (lambda (_%g135383135402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135383135402%_))
                      (let ((_%e135386135404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135383135402%_))))
                        (let ((_%hd135387135407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135386135404%_)))
                              (_%tl135388135409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135386135404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135388135409%_))
                              (let ((_%e135389135412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135388135409%_))))
                                (let ((_%hd135390135415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135389135412%_)))
                                      (_%tl135391135417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135389135412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135391135417%_))
                                      (let ((_%e135392135420%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135391135417%_))))
                                        (let ((_%hd135393135423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135392135420%_)))
                                              (_%tl135394135425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135392135420%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135394135425%_))
                                              ((lambda (_%L135428%_
                                                        _%L135429%_)
                                                 (gxc#compile-e__1
                                                  _%self135379%_
                                                  _%L135428%_))
                                               _%hd135393135423%_
                                               _%hd135390135415%_)
                                              (_%g135382135399%_
                                               _%g135383135402%_))))
                                      (_%g135382135399%_ _%g135383135402%_))))
                              (_%g135382135399%_ _%g135383135402%_))))
                      (_%g135382135399%_ _%g135383135402%_)))))
          (_%g135381135444%_ _%stx135380%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135310%_ _%stx135311%_)
        (let* ((_%g135313135330%_
                (lambda (_%g135314135327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135314135327%_))))
               (_%g135312135376%_
                (lambda (_%g135314135333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135314135333%_))
                      (let ((_%e135317135335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135314135333%_))))
                        (let ((_%hd135318135338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135317135335%_)))
                              (_%tl135319135340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135317135335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135319135340%_))
                              (let ((_%e135320135343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135319135340%_))))
                                (let ((_%hd135321135346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135320135343%_)))
                                      (_%tl135322135348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135320135343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135322135348%_))
                                      (let ((_%e135323135351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135322135348%_))))
                                        (let ((_%hd135324135354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135323135351%_)))
                                              (_%tl135325135356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135323135351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135325135356%_))
                                              ((lambda (_%L135359%_
                                                        _%L135360%_)
                                                 (let ((__tmp135957
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135310%_
                                                           _%L135359%_)))
                                                       (__tmp135955
                                                        (let ((__tmp135956
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135956 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135957
                                                    gx#current-expander-phi
                                                    __tmp135955)))
                                               _%hd135324135354%_
                                               _%hd135321135346%_)
                                              (_%g135313135330%_
                                               _%g135314135333%_))))
                                      (_%g135313135330%_ _%g135314135333%_))))
                              (_%g135313135330%_ _%g135314135333%_))))
                      (_%g135313135330%_ _%g135314135333%_)))))
          (_%g135312135376%_ _%stx135311%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135242%_ _%stx135243%_)
        (let* ((_%g135245135262%_
                (lambda (_%g135246135259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135246135259%_))))
               (_%g135244135307%_
                (lambda (_%g135246135265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135246135265%_))
                      (let ((_%e135249135267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135246135265%_))))
                        (let ((_%hd135250135270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135249135267%_)))
                              (_%tl135251135272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135249135267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135251135272%_))
                              (let ((_%e135252135275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135251135272%_))))
                                (let ((_%hd135253135278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135252135275%_)))
                                      (_%tl135254135280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135252135275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135254135280%_))
                                      (let ((_%e135255135283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135254135280%_))))
                                        (let ((_%hd135256135286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135255135283%_)))
                                              (_%tl135257135288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135255135283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135257135288%_))
                                              ((lambda (_%L135291%_
                                                        _%L135292%_)
                                                 (gxc#compile-e__1
                                                  _%self135242%_
                                                  _%L135291%_))
                                               _%hd135256135286%_
                                               _%hd135253135278%_)
                                              (_%g135245135262%_
                                               _%g135246135265%_))))
                                      (_%g135245135262%_ _%g135246135265%_))))
                              (_%g135245135262%_ _%g135246135265%_))))
                      (_%g135245135262%_ _%g135246135265%_)))))
          (_%g135244135307%_ _%stx135243%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135124%_ _%stx135125%_)
        (let* ((_%g135127135155%_
                (lambda (_%g135128135152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135128135152%_))))
               (_%g135126135239%_
                (lambda (_%g135128135158%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135128135158%_))
                      (let ((_%e135131135160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135128135158%_))))
                        (let ((_%hd135132135163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135131135160%_)))
                              (_%tl135133135165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135131135160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135133135165%_))
                              (let ((_g135958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135133135165%_
                                        '0))))
                                (begin
                                  (let ((_g135959_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135958_)
                                               (##vector-length _g135958_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135959_ 2)))
                                        (error "Context expects 2 values"
                                               _g135959_)))
                                  (let ((_%target135134135168%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135958_ 0)))
                                        (_%tl135136135170%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135958_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135136135170%_))
                                        (letrec ((_%loop135137135173%_
                                                  (lambda (_%hd135135135176%_
                                                           _%body135141135178%_
                                                           _%hd135142135180%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135135135176%_))
                                                        (let ((_%e135138135183%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135135135176%_))))
                  (let ((_%lp-hd135139135186%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135138135183%_)))
                        (_%lp-tl135140135188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135138135183%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135139135186%_))
                        (let ((_%e135145135191%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135139135186%_))))
                          (let ((_%hd135146135194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135145135191%_)))
                                (_%tl135147135196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135145135191%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135147135196%_))
                                (let ((_%e135148135199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135147135196%_))))
                                  (let ((_%hd135149135202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135148135199%_)))
                                        (_%tl135150135204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135148135199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135150135204%_))
                                        (_%loop135137135173%_
                                         _%lp-tl135140135188%_
                                         (cons _%hd135149135202%_
                                               _%body135141135178%_)
                                         (cons _%hd135146135194%_
                                               _%hd135142135180%_))
                                        (_%g135127135155%_
                                         _%g135128135158%_))))
                                (_%g135127135155%_ _%g135128135158%_))))
                        (_%g135127135155%_ _%g135128135158%_))))
                (let ((_%body135143135207%_ (reverse _%body135141135178%_))
                      (_%hd135144135209%_ (reverse _%hd135142135180%_)))
                  ((lambda (_%L135212%_ _%L135213%_)
                     (for-each
                      (lambda (_%g135227135229%_)
                        (gxc#compile-e__1 _%self135124%_ _%g135227135229%_))
                      (let ((__tmp135960
                             (lambda (_%g135231135234%_ _%g135232135236%_)
                               (cons _%g135231135234%_ _%g135232135236%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135960 '() _%L135212%_))))
                   _%body135143135207%_
                   _%hd135144135209%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135137135173%_
                                           _%target135134135168%_
                                           '()
                                           '()))
                                        (_%g135127135155%_
                                         _%g135128135158%_)))))
                              (_%g135127135155%_ _%g135128135158%_))))
                      (_%g135127135155%_ _%g135128135158%_)))))
          (_%g135126135239%_ _%stx135125%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self134977%_ _%stx134978%_)
        (let* ((_%g134980135015%_
                (lambda (_%g134981135012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134981135012%_))))
               (_%g134979135121%_
                (lambda (_%g134981135018%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134981135018%_))
                      (let ((_%e134985135020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134981135018%_))))
                        (let ((_%hd134986135023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134985135020%_)))
                              (_%tl134987135025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134985135020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134987135025%_))
                              (let ((_%e134988135028%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134987135025%_))))
                                (let ((_%hd134989135031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134988135028%_)))
                                      (_%tl134990135033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134988135028%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134989135031%_))
                                      (let ((_g135961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134989135031%_
                                                '0))))
                                        (begin
                                          (let ((_g135962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135961_)
                                                       (##vector-length
                                                        _g135961_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135962_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135962_)))
                                          (let ((_%target134991135036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135961_ 0)))
                                                (_%tl134993135038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135961_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134993135038%_))
                                                (letrec ((_%loop134994135041%_
                                                          (lambda (_%hd134992135044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134998135046%_
                           _%hd134999135048%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134992135044%_))
                        (let ((_%e134995135051%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134992135044%_))))
                          (let ((_%lp-hd134996135054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134995135051%_)))
                                (_%lp-tl134997135056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134995135051%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134996135054%_))
                                (let ((_%e135005135059%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134996135054%_))))
                                  (let ((_%hd135006135062%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135005135059%_)))
                                        (_%tl135007135064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135005135059%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135007135064%_))
                                        (let ((_%e135008135067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135007135064%_))))
                                          (let ((_%hd135009135070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135008135067%_)))
                                                (_%tl135010135072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135008135067%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135010135072%_))
                                                (_%loop134994135041%_
                                                 _%lp-tl134997135056%_
                                                 (cons _%hd135009135070%_
                                                       _%expr134998135046%_)
                                                 (cons _%hd135006135062%_
                                                       _%hd134999135048%_))
                                                (_%g134980135015%_
                                                 _%g134981135018%_))))
                                        (_%g134980135015%_
                                         _%g134981135018%_))))
                                (_%g134980135015%_ _%g134981135018%_))))
                        (let ((_%expr135000135075%_
                               (reverse _%expr134998135046%_))
                              (_%hd135001135077%_
                               (reverse _%hd134999135048%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134990135033%_))
                              (let ((_%e135002135080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134990135033%_))))
                                (let ((_%hd135003135083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135002135080%_)))
                                      (_%tl135004135085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135002135080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135004135085%_))
                                      ((lambda (_%L135088%_
                                                _%L135089%_
                                                _%L135090%_)
                                         (for-each
                                          (lambda (_%g135109135111%_)
                                            (gxc#compile-e__1
                                             _%self134977%_
                                             _%g135109135111%_))
                                          (let ((__tmp135964
                                                 (lambda (_%g135113135116%_
                                                          _%g135114135118%_)
                                                   (cons _%g135113135116%_
                                                         _%g135114135118%_)))
                                                (__tmp135963
                                                 (cons _%L135088%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135964
                                             __tmp135963
                                             _%L135089%_))))
                                       _%hd135003135083%_
                                       _%expr135000135075%_
                                       _%hd135001135077%_)
                                      (_%g134980135015%_ _%g134981135018%_))))
                              (_%g134980135015%_ _%g134981135018%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134994135041%_
                                                   _%target134991135036%_
                                                   '()
                                                   '()))
                                                (_%g134980135015%_
                                                 _%g134981135018%_)))))
                                      (_%g134980135015%_ _%g134981135018%_))))
                              (_%g134980135015%_ _%g134981135018%_))))
                      (_%g134980135015%_ _%g134981135018%_)))))
          (_%g134979135121%_ _%stx134978%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self134922%_ _%stx134923%_)
        (let* ((_%g134925134939%_
                (lambda (_%g134926134936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134926134936%_))))
               (_%g134924134974%_
                (lambda (_%g134926134942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134926134942%_))
                      (let ((_%e134929134944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134926134942%_))))
                        (let ((_%hd134930134947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134929134944%_)))
                              (_%tl134931134949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134929134944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134931134949%_))
                              (let ((_%e134932134952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134931134949%_))))
                                (let ((_%hd134933134955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134932134952%_)))
                                      (_%tl134934134957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134932134952%_))))
                                  ((lambda (_%L134960%_ _%L134961%_)
                                     (gxc#compile-e__1
                                      _%self134922%_
                                      (last _%L134960%_)))
                                   _%tl134934134957%_
                                   _%hd134933134955%_)))
                              (_%g134925134939%_ _%g134926134942%_))))
                      (_%g134925134939%_ _%g134926134942%_)))))
          (_%g134924134974%_ _%stx134923%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self134854%_ _%stx134855%_)
        (let* ((_%g134857134874%_
                (lambda (_%g134858134871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134858134871%_))))
               (_%g134856134919%_
                (lambda (_%g134858134877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134858134877%_))
                      (let ((_%e134861134879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134858134877%_))))
                        (let ((_%hd134862134882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134861134879%_)))
                              (_%tl134863134884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134861134879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134863134884%_))
                              (let ((_%e134864134887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134863134884%_))))
                                (let ((_%hd134865134890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134864134887%_)))
                                      (_%tl134866134892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134864134887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134866134892%_))
                                      (let ((_%e134867134895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134866134892%_))))
                                        (let ((_%hd134868134898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134867134895%_)))
                                              (_%tl134869134900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134867134895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134869134900%_))
                                              ((lambda (_%L134903%_
                                                        _%L134904%_)
                                                 (gxc#compile-e__1
                                                  _%self134854%_
                                                  _%L134903%_))
                                               _%hd134868134898%_
                                               _%hd134865134890%_)
                                              (_%g134857134874%_
                                               _%g134858134877%_))))
                                      (_%g134857134874%_ _%g134858134877%_))))
                              (_%g134857134874%_ _%g134858134877%_))))
                      (_%g134857134874%_ _%g134858134877%_)))))
          (_%g134856134919%_ _%stx134855%_))))
    (define gxc#apply-operands
      (lambda (_%self134767%_ _%stx134768%_)
        (let* ((_%g134770134789%_
                (lambda (_%g134771134786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134771134786%_))))
               (_%g134769134851%_
                (lambda (_%g134771134792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134771134792%_))
                      (let ((_%e134773134794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134771134792%_))))
                        (let ((_%hd134774134797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134773134794%_)))
                              (_%tl134775134799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134773134794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134775134799%_))
                              (let ((_g135965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134775134799%_
                                        '0))))
                                (begin
                                  (let ((_g135966_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135965_)
                                               (##vector-length _g135965_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135966_ 2)))
                                        (error "Context expects 2 values"
                                               _g135966_)))
                                  (let ((_%target134776134802%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135965_ 0)))
                                        (_%tl134778134804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135965_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134778134804%_))
                                        (letrec ((_%loop134779134807%_
                                                  (lambda (_%hd134777134810%_
                                                           _%rands134783134812%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134777134810%_))
                                                        (let ((_%e134780134815%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134777134810%_))))
                  (let ((_%lp-hd134781134818%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134780134815%_)))
                        (_%lp-tl134782134820%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134780134815%_))))
                    (_%loop134779134807%_
                     _%lp-tl134782134820%_
                     (cons _%lp-hd134781134818%_ _%rands134783134812%_))))
                (let ((_%rands134784134823%_ (reverse _%rands134783134812%_)))
                  ((lambda (_%L134826%_)
                     (for-each
                      (lambda (_%g134839134841%_)
                        (gxc#compile-e__1 _%self134767%_ _%g134839134841%_))
                      (let ((__tmp135967
                             (lambda (_%g134843134846%_ _%g134844134848%_)
                               (cons _%g134843134846%_ _%g134844134848%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135967 '() _%L134826%_))))
                   _%rands134784134823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134779134807%_
                                           _%target134776134802%_
                                           '()))
                                        (_%g134770134789%_
                                         _%g134771134792%_)))))
                              (_%g134770134789%_ _%g134771134792%_))))
                      (_%g134770134789%_ _%g134771134792%_)))))
          (_%g134769134851%_ _%stx134768%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx134764%_ _%src-stx134765%_)
        (let ((__tmp135968
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx134765%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx134764%_ __tmp135968))))
    (define gxc#xform-begin%
      (lambda (_%self134719%_ _%stx134720%_)
        (let* ((_%g134722134732%_
                (lambda (_%g134723134729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134723134729%_))))
               (_%g134721134761%_
                (lambda (_%g134723134735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134723134735%_))
                      (let ((_%e134725134737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134723134735%_))))
                        (let ((_%hd134726134740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134725134737%_)))
                              (_%tl134727134742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134725134737%_))))
                          ((lambda (_%L134745%_)
                             (let ((_%forms134759%_
                                    (map (lambda (_%g134754134756%_)
                                           (gxc#compile-e__1
                                            _%self134719%_
                                            _%g134754134756%_))
                                         _%L134745%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms134759%_)
                                _%stx134720%_)))
                           _%tl134727134742%_)))
                      (_%g134722134732%_ _%g134723134735%_)))))
          (_%g134721134761%_ _%stx134720%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self134673%_ _%stx134674%_)
        (let* ((_%g134676134686%_
                (lambda (_%g134677134683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134677134683%_))))
               (_%g134675134716%_
                (lambda (_%g134677134689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134677134689%_))
                      (let ((_%e134679134691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134677134689%_))))
                        (let ((_%hd134680134694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134679134691%_)))
                              (_%tl134681134696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134679134691%_))))
                          ((lambda (_%L134699%_)
                             (let ((__tmp135971
                                    (lambda ()
                                      (let ((_%forms134714%_
                                             (map (lambda (_%g134709134711%_)
                                                    (gxc#compile-e__1
                                                     _%self134673%_
                                                     _%g134709134711%_))
                                                  _%L134699%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms134714%_)
                                         _%stx134674%_))))
                                   (__tmp135969
                                    (let ((__tmp135970
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp135970 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135971
                                gx#current-expander-phi
                                __tmp135969)))
                           _%tl134681134696%_)))
                      (_%g134676134686%_ _%g134677134689%_)))))
          (_%g134675134716%_ _%stx134674%_))))
    (define gxc#xform-module%
      (lambda (_%self134610%_ _%stx134611%_)
        (let* ((_%g134613134627%_
                (lambda (_%g134614134624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134614134624%_))))
               (_%g134612134670%_
                (lambda (_%g134614134630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134614134630%_))
                      (let ((_%e134617134632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134614134630%_))))
                        (let ((_%hd134618134635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134617134632%_)))
                              (_%tl134619134637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134617134632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134619134637%_))
                              (let ((_%e134620134640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134619134637%_))))
                                (let ((_%hd134621134643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134620134640%_)))
                                      (_%tl134622134645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134620134640%_))))
                                  ((lambda (_%L134648%_ _%L134649%_)
                                     (let* ((_%ctx134662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134649%_)))
                                            (_%code134664%_
                                             (##structure-ref
                                              _%ctx134662%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code134667%_
                                             (let ((__tmp135972
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self134610%_
                                                       _%code134664%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp135972
                                                gx#current-expander-context
                                                _%ctx134662%_))))
                                       (##structure-set!
                                        _%ctx134662%_
                                        _%code134667%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L134649%_
                                                    (cons _%code134667%_ '())))
                                        _%stx134611%_)))
                                   _%tl134622134645%_
                                   _%hd134621134643%_)))
                              (_%g134613134627%_ _%g134614134630%_))))
                      (_%g134613134627%_ _%g134614134630%_)))))
          (_%g134612134670%_ _%stx134611%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134540%_ _%stx134541%_)
        (let* ((_%g134543134560%_
                (lambda (_%g134544134557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134544134557%_))))
               (_%g134542134607%_
                (lambda (_%g134544134563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134544134563%_))
                      (let ((_%e134547134565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134544134563%_))))
                        (let ((_%hd134548134568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134547134565%_)))
                              (_%tl134549134570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134547134565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134549134570%_))
                              (let ((_%e134550134573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134549134570%_))))
                                (let ((_%hd134551134576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134550134573%_)))
                                      (_%tl134552134578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134550134573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134552134578%_))
                                      (let ((_%e134553134581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134552134578%_))))
                                        (let ((_%hd134554134584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134553134581%_)))
                                              (_%tl134555134586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134553134581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134555134586%_))
                                              ((lambda (_%L134589%_
                                                        _%L134590%_)
                                                 (let ((_%expr134605%_
                                                        (gxc#compile-e__1
                                                         _%self134540%_
                                                         _%L134589%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134590%_
                                                                (cons _%expr134605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134541%_)))
                                               _%hd134554134584%_
                                               _%hd134551134576%_)
                                              (_%g134543134560%_
                                               _%g134544134563%_))))
                                      (_%g134543134560%_ _%g134544134563%_))))
                              (_%g134543134560%_ _%g134544134563%_))))
                      (_%g134543134560%_ _%g134544134563%_)))))
          (_%g134542134607%_ _%stx134541%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134469%_ _%stx134470%_)
        (let* ((_%g134472134489%_
                (lambda (_%g134473134486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134473134486%_))))
               (_%g134471134537%_
                (lambda (_%g134473134492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134473134492%_))
                      (let ((_%e134476134494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134473134492%_))))
                        (let ((_%hd134477134497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134476134494%_)))
                              (_%tl134478134499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134476134494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134478134499%_))
                              (let ((_%e134479134502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134478134499%_))))
                                (let ((_%hd134480134505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134479134502%_)))
                                      (_%tl134481134507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134479134502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134481134507%_))
                                      (let ((_%e134482134510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134481134507%_))))
                                        (let ((_%hd134483134513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134482134510%_)))
                                              (_%tl134484134515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134482134510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134484134515%_))
                                              ((lambda (_%L134518%_
                                                        _%L134519%_)
                                                 (let ((__tmp135975
                                                        (lambda ()
                                                          (let ((_%expr134535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134469%_ _%L134518%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134519%_ (cons _%expr134535%_ '())))
                     _%stx134470%_))))
               (__tmp135973
                (let ((__tmp135974
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135974 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135975
                                                    gx#current-expander-phi
                                                    __tmp135973)))
                                               _%hd134483134513%_
                                               _%hd134480134505%_)
                                              (_%g134472134489%_
                                               _%g134473134492%_))))
                                      (_%g134472134489%_ _%g134473134492%_))))
                              (_%g134472134489%_ _%g134473134492%_))))
                      (_%g134472134489%_ _%g134473134492%_)))))
          (_%g134471134537%_ _%stx134470%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134399%_ _%stx134400%_)
        (let* ((_%g134402134419%_
                (lambda (_%g134403134416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134403134416%_))))
               (_%g134401134466%_
                (lambda (_%g134403134422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134403134422%_))
                      (let ((_%e134406134424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134403134422%_))))
                        (let ((_%hd134407134427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134406134424%_)))
                              (_%tl134408134429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134406134424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134408134429%_))
                              (let ((_%e134409134432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134408134429%_))))
                                (let ((_%hd134410134435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134409134432%_)))
                                      (_%tl134411134437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134409134432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134411134437%_))
                                      (let ((_%e134412134440%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134411134437%_))))
                                        (let ((_%hd134413134443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134412134440%_)))
                                              (_%tl134414134445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134412134440%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134414134445%_))
                                              ((lambda (_%L134448%_
                                                        _%L134449%_)
                                                 (let ((_%expr134464%_
                                                        (gxc#compile-e__1
                                                         _%self134399%_
                                                         _%L134448%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134449%_
                                                                (cons _%expr134464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134400%_)))
                                               _%hd134413134443%_
                                               _%hd134410134435%_)
                                              (_%g134402134419%_
                                               _%g134403134422%_))))
                                      (_%g134402134419%_ _%g134403134422%_))))
                              (_%g134402134419%_ _%g134403134422%_))))
                      (_%g134402134419%_ _%g134403134422%_)))))
          (_%g134401134466%_ _%stx134400%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134337%_ _%stx134338%_)
        (let* ((_%g134340134354%_
                (lambda (_%g134341134351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134341134351%_))))
               (_%g134339134396%_
                (lambda (_%g134341134357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134341134357%_))
                      (let ((_%e134344134359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134341134357%_))))
                        (let ((_%hd134345134362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134344134359%_)))
                              (_%tl134346134364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134344134359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134346134364%_))
                              (let ((_%e134347134367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134346134364%_))))
                                (let ((_%hd134348134370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134347134367%_)))
                                      (_%tl134349134372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134347134367%_))))
                                  ((lambda (_%L134375%_ _%L134376%_)
                                     (let ((__tmp135977
                                            (lambda ()
                                              (let ((_%body134394%_
                                                     (map (lambda (_%g134389134391%_)
                                                            (gxc#compile-e__1
                                                             _%self134337%_
                                                             _%g134389134391%_))
                                                          _%L134375%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134376%_
                                                             _%body134394%_))
                                                 _%stx134338%_))))
                                           (__tmp135976
                                            (gxc#xform-let-locals
                                             _%L134376%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135977
                                        gxc#current-compile-local-env
                                        __tmp135976)))
                                   _%tl134349134372%_
                                   _%hd134348134370%_)))
                              (_%g134340134354%_ _%g134341134357%_))))
                      (_%g134340134354%_ _%g134341134357%_)))))
          (_%g134339134396%_ _%stx134338%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134245%_ _%stx134246%_)
        (letrec ((_%clause-e134248%_
                  (lambda (_%clause134289%_)
                    (let* ((_%g134291134302%_
                            (lambda (_%g134292134299%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134292134299%_))))
                           (_%g134290134334%_
                            (lambda (_%g134292134305%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134292134305%_))
                                  (let ((_%e134295134307%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134292134305%_))))
                                    (let ((_%hd134296134310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134295134307%_)))
                                          (_%tl134297134312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134295134307%_))))
                                      ((lambda (_%L134315%_ _%L134316%_)
                                         (let ((__tmp135979
                                                (lambda ()
                                                  (let ((_%body134332%_
                                                         (map (lambda (_%g134327134329%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134245%_
                         _%g134327134329%_))
                      _%L134315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134316%_
                                                          _%body134332%_))))
                                               (__tmp135978
                                                (gxc#xform-let-locals
                                                 _%L134316%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp135979
                                            gxc#current-compile-local-env
                                            __tmp135978)))
                                       _%tl134297134312%_
                                       _%hd134296134310%_)))
                                  (_%g134291134302%_ _%g134292134305%_)))))
                      (_%g134290134334%_ _%clause134289%_)))))
          (let* ((_%g134250134260%_
                  (lambda (_%g134251134257%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134251134257%_))))
                 (_%g134249134286%_
                  (lambda (_%g134251134263%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134251134263%_))
                        (let ((_%e134253134265%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134251134263%_))))
                          (let ((_%hd134254134268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134253134265%_)))
                                (_%tl134255134270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134253134265%_))))
                            ((lambda (_%L134273%_)
                               (let ((_%clauses134284%_
                                      (map _%clause-e134248%_ _%L134273%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134284%_)
                                  _%stx134246%_)))
                             _%tl134255134270%_)))
                        (_%g134250134260%_ _%g134251134263%_)))))
            (_%g134249134286%_ _%stx134246%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self133999%_ _%stx134000%_)
        (let* ((_%g134002134035%_
                (lambda (_%g134003134032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134003134032%_))))
               (_%g134001134242%_
                (lambda (_%g134003134038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134003134038%_))
                      (let ((_%e134008134040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134003134038%_))))
                        (let ((_%hd134009134043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134008134040%_)))
                              (_%tl134010134045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134008134040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134010134045%_))
                              (let ((_%e134011134048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134010134045%_))))
                                (let ((_%hd134012134051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134011134048%_)))
                                      (_%tl134013134053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134011134048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134012134051%_))
                                      (let ((_g135980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134012134051%_
                                                '0))))
                                        (begin
                                          (let ((_g135981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135980_)
                                                       (##vector-length
                                                        _g135980_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135981_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135981_)))
                                          (let ((_%target134014134056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135980_ 0)))
                                                (_%tl134016134058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135980_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134016134058%_))
                                                (letrec ((_%loop134017134061%_
                                                          (lambda (_%hd134015134064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134021134066%_
                           _%hd134022134068%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134015134064%_))
                        (let ((_%e134018134071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134015134064%_))))
                          (let ((_%lp-hd134019134074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134018134071%_)))
                                (_%lp-tl134020134076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134018134071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134019134074%_))
                                (let ((_%e134025134079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134019134074%_))))
                                  (let ((_%hd134026134082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134025134079%_)))
                                        (_%tl134027134084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134025134079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134027134084%_))
                                        (let ((_%e134028134087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134027134084%_))))
                                          (let ((_%hd134029134090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134028134087%_)))
                                                (_%tl134030134092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134028134087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134030134092%_))
                                                (_%loop134017134061%_
                                                 _%lp-tl134020134076%_
                                                 (cons _%hd134029134090%_
                                                       _%expr134021134066%_)
                                                 (cons _%hd134026134082%_
                                                       _%hd134022134068%_))
                                                (_%g134002134035%_
                                                 _%g134003134038%_))))
                                        (_%g134002134035%_
                                         _%g134003134038%_))))
                                (_%g134002134035%_ _%g134003134038%_))))
                        (let ((_%expr134023134095%_
                               (reverse _%expr134021134066%_))
                              (_%hd134024134097%_
                               (reverse _%hd134022134068%_)))
                          ((lambda (_%L134100%_
                                    _%L134101%_
                                    _%L134102%_
                                    _%L134103%_)
                             (let* ((_%g134122134138%_
                                     (lambda (_%g134123134135%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134123134135%_))))
                                    (_%g134121134228%_
                                     (lambda (_%g134123134141%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134123134141%_))
                                           (let ((_g135982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134123134141%_
                                                     '0))))
                                             (begin
                                               (let ((_g135983_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g135982_)
                                                            (##vector-length
                                                             _g135982_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g135983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g135983_)))
                                               (let ((_%target134125134143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135982_
                                                         0)))
                                                     (_%tl134127134145%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135982_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134127134145%_))
                                                     (letrec ((_%loop134128134148%_
                                                               (lambda (_%hd134126134151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134132134153%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134126134151%_))
                             (let ((_%e134129134156%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134126134151%_))))
                               (let ((_%lp-hd134130134159%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134129134156%_)))
                                     (_%lp-tl134131134161%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134129134156%_))))
                                 (_%loop134128134148%_
                                  _%lp-tl134131134161%_
                                  (cons _%lp-hd134130134159%_
                                        _%expr134132134153%_))))
                             (let ((_%expr134133134164%_
                                    (reverse _%expr134132134153%_)))
                               ((lambda (_%L134167%_)
                                  (let ((__tmp135986
                                         (lambda ()
                                           (let* ((_%g134181134188%_
                                                   (lambda (_%g134182134185%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134182134185%_))))
                                                  (_%g134180134214%_
                                                   (lambda (_%g134182134191%_)
                                                     ((lambda (_%L134193%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134103%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134167%_
                                  _%L134102%_))
                               (let ((__tmp135987
                                      (lambda (_%g134203134207%_
                                               _%g134204134209%_
                                               _%g134205134211%_)
                                        (cons (cons _%g134204134209%_
                                                    (cons _%g134203134207%_
                                                          '()))
                                              _%g134205134211%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135987
                                  '()
                                  _%L134167%_
                                  _%L134102%_)))
                             _%L134193%_))
                 _%stx134000%_))
              _%g134182134191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134180134214%_
                                              (map (lambda (_%g134216134218%_)
                                                     (gxc#compile-e__1
                                                      _%self133999%_
                                                      _%g134216134218%_))
                                                   _%L134100%_)))))
                                        (__tmp135984
                                         (gxc#xform-let-locals
                                          (let ((__tmp135985
                                                 (lambda (_%g134220134223%_
                                                          _%g134221134225%_)
                                                   (cons _%g134220134223%_
                                                         _%g134221134225%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135985
                                             '()
                                             _%L134102%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp135986
                                     gxc#current-compile-local-env
                                     __tmp135984)))
                                _%expr134133134164%_))))))
               (_%loop134128134148%_ _%target134125134143%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134122134138%_
                                                      _%g134123134141%_)))))
                                           (_%g134122134138%_
                                            _%g134123134141%_)))))
                               (_%g134121134228%_
                                (map (lambda (_%g134230134232%_)
                                       (gxc#compile-e__1
                                        _%self133999%_
                                        _%g134230134232%_))
                                     (let ((__tmp135988
                                            (lambda (_%g134234134237%_
                                                     _%g134235134239%_)
                                              (cons _%g134234134237%_
                                                    _%g134235134239%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135988
                                        '()
                                        _%L134101%_))))))
                           _%tl134013134053%_
                           _%expr134023134095%_
                           _%hd134024134097%_
                           _%hd134009134043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134017134061%_
                                                   _%target134014134056%_
                                                   '()
                                                   '()))
                                                (_%g134002134035%_
                                                 _%g134003134038%_)))))
                                      (_%g134002134035%_ _%g134003134038%_))))
                              (_%g134002134035%_ _%g134003134038%_))))
                      (_%g134002134035%_ _%g134003134038%_)))))
          (_%g134001134242%_ _%stx134000%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self133753%_ _%stx133754%_)
        (let* ((_%g133756133789%_
                (lambda (_%g133757133786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133757133786%_))))
               (_%g133755133996%_
                (lambda (_%g133757133792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133757133792%_))
                      (let ((_%e133762133794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133757133792%_))))
                        (let ((_%hd133763133797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133762133794%_)))
                              (_%tl133764133799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133762133794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133764133799%_))
                              (let ((_%e133765133802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133764133799%_))))
                                (let ((_%hd133766133805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133765133802%_)))
                                      (_%tl133767133807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133765133802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133766133805%_))
                                      (let ((_g135989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133766133805%_
                                                '0))))
                                        (begin
                                          (let ((_g135990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135989_)
                                                       (##vector-length
                                                        _g135989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135990_)))
                                          (let ((_%target133768133810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135989_ 0)))
                                                (_%tl133770133812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135989_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133770133812%_))
                                                (letrec ((_%loop133771133815%_
                                                          (lambda (_%hd133769133818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133775133820%_
                           _%hd133776133822%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133769133818%_))
                        (let ((_%e133772133825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133769133818%_))))
                          (let ((_%lp-hd133773133828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133772133825%_)))
                                (_%lp-tl133774133830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133772133825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133773133828%_))
                                (let ((_%e133779133833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133773133828%_))))
                                  (let ((_%hd133780133836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133779133833%_)))
                                        (_%tl133781133838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133779133833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133781133838%_))
                                        (let ((_%e133782133841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133781133838%_))))
                                          (let ((_%hd133783133844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133782133841%_)))
                                                (_%tl133784133846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133782133841%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133784133846%_))
                                                (_%loop133771133815%_
                                                 _%lp-tl133774133830%_
                                                 (cons _%hd133783133844%_
                                                       _%expr133775133820%_)
                                                 (cons _%hd133780133836%_
                                                       _%hd133776133822%_))
                                                (_%g133756133789%_
                                                 _%g133757133792%_))))
                                        (_%g133756133789%_
                                         _%g133757133792%_))))
                                (_%g133756133789%_ _%g133757133792%_))))
                        (let ((_%expr133777133849%_
                               (reverse _%expr133775133820%_))
                              (_%hd133778133851%_
                               (reverse _%hd133776133822%_)))
                          ((lambda (_%L133854%_
                                    _%L133855%_
                                    _%L133856%_
                                    _%L133857%_)
                             (let ((__tmp135993
                                    (lambda ()
                                      (let* ((_%g133877133893%_
                                              (lambda (_%g133878133890%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g133878133890%_))))
                                             (_%g133876133975%_
                                              (lambda (_%g133878133896%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g133878133896%_))
                                                    (let ((_g135994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g133878133896%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g135995_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g135994_)
                             (##vector-length _g135994_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g135995_ 2)))
                      (error "Context expects 2 values" _g135995_)))
                (let ((_%target133880133898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135994_ 0)))
                      (_%tl133882133900%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135994_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl133882133900%_))
                      (letrec ((_%loop133883133903%_
                                (lambda (_%hd133881133906%_
                                         _%expr133887133908%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd133881133906%_))
                                      (let ((_%e133884133911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd133881133906%_))))
                                        (let ((_%lp-hd133885133914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133884133911%_)))
                                              (_%lp-tl133886133916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133884133911%_))))
                                          (_%loop133883133903%_
                                           _%lp-tl133886133916%_
                                           (cons _%lp-hd133885133914%_
                                                 _%expr133887133908%_))))
                                      (let ((_%expr133888133919%_
                                             (reverse _%expr133887133908%_)))
                                        ((lambda (_%L133922%_)
                                           (let* ((_%g133936133943%_
                                                   (lambda (_%g133937133940%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133937133940%_))))
                                                  (_%g133935133968%_
                                                   (lambda (_%g133937133946%_)
                                                     ((lambda (_%L133948%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133857%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133922%_
                                  _%L133856%_))
                               (let ((__tmp135996
                                      (lambda (_%g133957133961%_
                                               _%g133958133963%_
                                               _%g133959133965%_)
                                        (cons (cons _%g133958133963%_
                                                    (cons _%g133957133961%_
                                                          '()))
                                              _%g133959133965%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135996
                                  '()
                                  _%L133922%_
                                  _%L133856%_)))
                             _%L133948%_))
                 _%stx133754%_))
              _%g133937133946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133935133968%_
                                              (map (lambda (_%g133970133972%_)
                                                     (gxc#compile-e__1
                                                      _%self133753%_
                                                      _%g133970133972%_))
                                                   _%L133854%_))))
                                         _%expr133888133919%_))))))
                        (_%loop133883133903%_ _%target133880133898%_ '()))
                      (_%g133877133893%_ _%g133878133896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133877133893%_
                                                     _%g133878133896%_)))))
                                        (_%g133876133975%_
                                         (map (lambda (_%g133977133979%_)
                                                (gxc#compile-e__1
                                                 _%self133753%_
                                                 _%g133977133979%_))
                                              (let ((__tmp135997
                                                     (lambda (_%g133981133984%_
                                                              _%g133982133986%_)
                                                       (cons _%g133981133984%_
                                                             _%g133982133986%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp135997
                                                 '()
                                                 _%L133855%_)))))))
                                   (__tmp135991
                                    (gxc#xform-let-locals
                                     (let ((__tmp135992
                                            (lambda (_%g133988133991%_
                                                     _%g133989133993%_)
                                              (cons _%g133988133991%_
                                                    _%g133989133993%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135992
                                        '()
                                        _%L133856%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135993
                                gxc#current-compile-local-env
                                __tmp135991)))
                           _%tl133767133807%_
                           _%expr133777133849%_
                           _%hd133778133851%_
                           _%hd133763133797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133771133815%_
                                                   _%target133768133810%_
                                                   '()
                                                   '()))
                                                (_%g133756133789%_
                                                 _%g133757133792%_)))))
                                      (_%g133756133789%_ _%g133757133792%_))))
                              (_%g133756133789%_ _%g133757133792%_))))
                      (_%g133756133789%_ _%g133757133792%_)))))
          (_%g133755133996%_ _%stx133754%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings133620%_)
        (letrec ((_%flatten133622%_
                  (lambda (_%maybe-lst133680%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst133680%_))
                        (cons _%maybe-lst133680%_ '())
                        (let _%loop133682%_ ((_%rest133684%_
                                              _%maybe-lst133680%_)
                                             (_%result133685%_ '()))
                          (let* ((_%__stx135885135886%_ _%rest133684%_)
                                 (_%g133689133701%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx135885135886%_)))))
                            (let ((_%__kont135887135888%_
                                   (lambda (_%L133739%_ _%L133740%_)
                                     (_%loop133682%_
                                      _%L133739%_
                                      (let ((__tmp135998
                                             (_%flatten133622%_ _%L133740%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result133685%_
                                         __tmp135998)))))
                                  (_%__kont135889135890%_
                                   (lambda (_%L133713%_)
                                     (cons _%L133713%_ _%result133685%_)))
                                  (_%__kont135891135892%_
                                   (lambda () _%result133685%_)))
                              (let ((_%g133687133726%_
                                     (lambda ()
                                       (let ((_%L133713%_
                                              _%__stx135885135886%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L133713%_))
                                             (_%__kont135889135890%_
                                              _%L133713%_)
                                             (_%__kont135891135892%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx135885135886%_))
                                    (let ((_%e133693133731%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx135885135886%_))))
                                      (let ((_%tl133695133736%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133693133731%_)))
                                            (_%hd133694133734%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133693133731%_))))
                                        (_%__kont135887135888%_
                                         _%tl133695133736%_
                                         _%hd133694133734%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g133687133726%_)))))))))))
          (let _%loop133624%_ ((_%rest133626%_
                                (_%flatten133622%_ _%bindings133620%_))
                               (_%locals133627%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest133628133639%_ _%rest133626%_)
                   (_%E133632133643%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest133628133639%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K133635133668%_
                     (lambda (_%rest133665%_ _%id133666%_)
                       (_%loop133624%_
                        _%rest133665%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id133666%_))
                              _%locals133627%_))))
                    (_%K133634133657%_
                     (lambda (_%id133655%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id133655%_))
                             _%locals133627%_)))
                    (_%K133633133648%_ (lambda () _%locals133627%_)))
                (let ((_%try-match133630133662%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest133628133639%_))
                             (let ((_%id133660%_ _%rest133628133639%_))
                               (_%K133634133657%_ _%id133660%_))
                             (_%K133633133648%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest133628133639%_))
                      (let ((_%tl133637133673%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest133628133639%_)))
                            (_%hd133636133671%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest133628133639%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd133636133671%_))
                            (let ((_%id133676%_ _%hd133636133671%_)
                                  (_%rest133678%_ _%tl133637133673%_))
                              (_%K133635133668%_ _%rest133678%_ _%id133676%_))
                            (_%K133633133648%_)))
                      (_%try-match133630133662%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133572%_ _%stx133573%_)
        (let* ((_%g133575133586%_
                (lambda (_%g133576133583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133576133583%_))))
               (_%g133574133617%_
                (lambda (_%g133576133589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133576133589%_))
                      (let ((_%e133579133591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133576133589%_))))
                        (let ((_%hd133580133594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133579133591%_)))
                              (_%tl133581133596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133579133591%_))))
                          ((lambda (_%L133599%_ _%L133600%_)
                             (let ((_%rands133615%_
                                    (map (lambda (_%g133610133612%_)
                                           (gxc#compile-e__1
                                            _%self133572%_
                                            _%g133610133612%_))
                                         _%L133599%_)))
                               (gxc#xform-wrap-source
                                (cons _%L133600%_ _%rands133615%_)
                                _%stx133573%_)))
                           _%tl133581133596%_
                           _%hd133580133594%_)))
                      (_%g133575133586%_ _%g133576133589%_)))))
          (_%g133574133617%_ _%stx133573%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133502%_ _%stx133503%_)
        (let* ((_%g133505133522%_
                (lambda (_%g133506133519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133506133519%_))))
               (_%g133504133569%_
                (lambda (_%g133506133525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133506133525%_))
                      (let ((_%e133509133527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133506133525%_))))
                        (let ((_%hd133510133530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133509133527%_)))
                              (_%tl133511133532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133509133527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133511133532%_))
                              (let ((_%e133512133535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133511133532%_))))
                                (let ((_%hd133513133538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133512133535%_)))
                                      (_%tl133514133540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133512133535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133514133540%_))
                                      (let ((_%e133515133543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133514133540%_))))
                                        (let ((_%hd133516133546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133515133543%_)))
                                              (_%tl133517133548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133515133543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133517133548%_))
                                              ((lambda (_%L133551%_
                                                        _%L133552%_)
                                                 (let ((_%expr133567%_
                                                        (gxc#compile-e__1
                                                         _%self133502%_
                                                         _%L133551%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133552%_
                                                                (cons _%expr133567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133503%_)))
                                               _%hd133516133546%_
                                               _%hd133513133538%_)
                                              (_%g133505133522%_
                                               _%g133506133525%_))))
                                      (_%g133505133522%_ _%g133506133525%_))))
                              (_%g133505133522%_ _%g133506133525%_))))
                      (_%g133505133522%_ _%g133506133525%_)))))
          (_%g133504133569%_ _%stx133503%_))))))
