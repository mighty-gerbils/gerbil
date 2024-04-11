(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712823027)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx135722%_)
        (let* ((_%self135724%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e135726%_
                (let ((__tmp135922 (gxc#stx-car-e _%stx135722%_)))
                  (declare (not safe))
                  (method-ref _%self135724%_ __tmp135922))))
          (if _%$e135726%_
              ((lambda (_%method135729%_)
                 (declare (not safe))
                 (_%method135729%_ _%self135724%_ _%stx135722%_))
               _%$e135726%_)
              (let ((__tmp135924 (gxc#stx-car-e _%stx135722%_))
                    (__tmp135923
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135722%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135724%_
                       __tmp135924
                       __tmp135923))))))
    (define gxc#compile-e__1
      (lambda (_%self135733%_ _%stx135734%_)
        (let ((_%$e135736%_
               (let ((__tmp135925 (gxc#stx-car-e _%stx135734%_)))
                 (declare (not safe))
                 (method-ref _%self135733%_ __tmp135925))))
          (if _%$e135736%_
              ((lambda (_%method135739%_)
                 (declare (not safe))
                 (_%method135739%_ _%self135733%_ _%stx135734%_))
               _%$e135736%_)
              (let ((__tmp135927 (gxc#stx-car-e _%stx135734%_))
                    (__tmp135926
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135734%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135733%_
                       __tmp135927
                       __tmp135926))))))
    (define gxc#compile-e
      (lambda _g135929_
        (let ((_g135928_ (let () (declare (not safe)) (##length _g135929_))))
          (cond ((let () (declare (not safe)) (##fx= _g135928_ 1))
                 (apply gxc#compile-e__0 _g135929_))
                ((let () (declare (not safe)) (##fx= _g135928_ 2))
                 (apply gxc#compile-e__1 _g135929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g135929_))))))
    (define gxc#stx-car-e
      (lambda (_%stx135720%_)
        (let ((__tmp135930
               (car (let () (declare (not safe)) (gx#stx-e _%stx135720%_)))))
          (declare (not safe))
          (gx#stx-e __tmp135930))))
    (define gxc#void-method (lambda (_%self135717%_ _%stx135718%_) '#!void))
    (define gxc#false-method (lambda (_%self135714%_ _%stx135715%_) '#f))
    (define gxc#true-method (lambda (_%self135711%_ _%stx135712%_) '#t))
    (define gxc#identity-method
      (lambda (_%self135708%_ _%stx135709%_) _%stx135709%_))
    (define gxc#::void-expression::t
      (let ((__tmp135931 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp135931
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args135705%_
        (apply make-instance gxc#::void-expression::t _%$args135705%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp135932
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
        (__make-promise __tmp135932)))
    (define gxc#::void-special-form::t
      (let ((__tmp135933 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp135933
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args135701%_
        (apply make-instance gxc#::void-special-form::t _%$args135701%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp135934
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
        (__make-promise __tmp135934)))
    (define gxc#::void::t
      (let ((__tmp135935
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp135935 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args135697%_
        (apply make-instance gxc#::void::t _%$args135697%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp135936
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135936)))
    (define gxc#::false-expression::t
      (let ((__tmp135937 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp135937
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args135693%_
        (apply make-instance gxc#::false-expression::t _%$args135693%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp135938
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
        (__make-promise __tmp135938)))
    (define gxc#::false-special-form::t
      (let ((__tmp135939 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp135939
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args135689%_
        (apply make-instance gxc#::false-special-form::t _%$args135689%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp135940
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
        (__make-promise __tmp135940)))
    (define gxc#::false::t
      (let ((__tmp135941
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp135941 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args135685%_
        (apply make-instance gxc#::false::t _%$args135685%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp135942
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135942)))
    (define gxc#::identity-expression::t
      (let ((__tmp135943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp135943
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args135681%_
        (apply make-instance gxc#::identity-expression::t _%$args135681%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp135944
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
        (__make-promise __tmp135944)))
    (define gxc#::identity-special-form::t
      (let ((__tmp135945 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp135945
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args135677%_
        (apply make-instance gxc#::identity-special-form::t _%$args135677%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp135946
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
        (__make-promise __tmp135946)))
    (define gxc#::identity::t
      (let ((__tmp135947
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp135947
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args135673%_
        (apply make-instance gxc#::identity::t _%$args135673%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp135948
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135948)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp135949 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp135949
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args135669%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args135669%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp135950
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
        (__make-promise __tmp135950)))
    (define gxc#::basic-xform::t
      (let ((__tmp135951
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp135951
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args135665%_
        (apply make-instance gxc#::basic-xform::t _%$args135665%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp135952
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
        (__make-promise __tmp135952)))
    (define gxc#apply-begin%
      (lambda (_%self135621%_ _%stx135622%_)
        (let* ((_%g135624135634%_
                (lambda (_%g135625135631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135625135631%_))))
               (_%g135623135661%_
                (lambda (_%g135625135637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135625135637%_))
                      (let ((_%e135627135639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135625135637%_))))
                        (let ((_%hd135628135642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135627135639%_)))
                              (_%tl135629135644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135627135639%_))))
                          ((lambda (_%L135647%_)
                             (for-each
                              (lambda (_%g135656135658%_)
                                (gxc#compile-e__1
                                 _%self135621%_
                                 _%g135656135658%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L135647%_))))
                           _%tl135629135644%_)))
                      (_%g135624135634%_ _%g135625135637%_)))))
          (_%g135623135661%_ _%stx135622%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135582%_ _%stx135583%_)
        (let* ((_%g135585135595%_
                (lambda (_%g135586135592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135586135592%_))))
               (_%g135584135618%_
                (lambda (_%g135586135598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135586135598%_))
                      (let ((_%e135588135600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135586135598%_))))
                        (let ((_%hd135589135603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135588135600%_)))
                              (_%tl135590135605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135588135600%_))))
                          ((lambda (_%L135608%_)
                             (gxc#compile-e__1
                              _%self135582%_
                              (last _%L135608%_)))
                           _%tl135590135605%_)))
                      (_%g135585135595%_ _%g135586135598%_)))))
          (_%g135584135618%_ _%stx135583%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135578%_ _%stx135579%_)
        (let ((__tmp135955
               (lambda () (gxc#apply-begin% _%self135578%_ _%stx135579%_)))
              (__tmp135953
               (let ((__tmp135954
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp135954 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp135955
           gx#current-expander-phi
           __tmp135953))))
    (define gxc#apply-module%
      (lambda (_%self135517%_ _%stx135518%_)
        (let* ((_%g135520135534%_
                (lambda (_%g135521135531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135521135531%_))))
               (_%g135519135575%_
                (lambda (_%g135521135537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135521135537%_))
                      (let ((_%e135524135539%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135521135537%_))))
                        (let ((_%hd135525135542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135524135539%_)))
                              (_%tl135526135544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135524135539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135526135544%_))
                              (let ((_%e135527135547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135526135544%_))))
                                (let ((_%hd135528135550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135527135547%_)))
                                      (_%tl135529135552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135527135547%_))))
                                  ((lambda (_%L135555%_ _%L135556%_)
                                     (let* ((_%ctx135569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135556%_)))
                                            (_%ctx-stx135571%_
                                             (##structure-ref
                                              _%ctx135569%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp135956
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135517%_
                                                _%ctx-stx135571%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135956
                                        gx#current-expander-context
                                        _%ctx135569%_)))
                                   _%tl135529135552%_
                                   _%hd135528135550%_)))
                              (_%g135520135534%_ _%g135521135537%_))))
                      (_%g135520135534%_ _%g135521135537%_)))))
          (_%g135519135575%_ _%stx135518%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135449%_ _%stx135450%_)
        (let* ((_%g135452135469%_
                (lambda (_%g135453135466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135453135466%_))))
               (_%g135451135514%_
                (lambda (_%g135453135472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135453135472%_))
                      (let ((_%e135456135474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135453135472%_))))
                        (let ((_%hd135457135477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135456135474%_)))
                              (_%tl135458135479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135456135474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135458135479%_))
                              (let ((_%e135459135482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135458135479%_))))
                                (let ((_%hd135460135485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135459135482%_)))
                                      (_%tl135461135487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135459135482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135461135487%_))
                                      (let ((_%e135462135490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135461135487%_))))
                                        (let ((_%hd135463135493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135462135490%_)))
                                              (_%tl135464135495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135462135490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135464135495%_))
                                              ((lambda (_%L135498%_
                                                        _%L135499%_)
                                                 (gxc#compile-e__1
                                                  _%self135449%_
                                                  _%L135498%_))
                                               _%hd135463135493%_
                                               _%hd135460135485%_)
                                              (_%g135452135469%_
                                               _%g135453135472%_))))
                                      (_%g135452135469%_ _%g135453135472%_))))
                              (_%g135452135469%_ _%g135453135472%_))))
                      (_%g135452135469%_ _%g135453135472%_)))))
          (_%g135451135514%_ _%stx135450%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135381%_ _%stx135382%_)
        (let* ((_%g135384135401%_
                (lambda (_%g135385135398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135385135398%_))))
               (_%g135383135446%_
                (lambda (_%g135385135404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135385135404%_))
                      (let ((_%e135388135406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135385135404%_))))
                        (let ((_%hd135389135409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135388135406%_)))
                              (_%tl135390135411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135388135406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135390135411%_))
                              (let ((_%e135391135414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135390135411%_))))
                                (let ((_%hd135392135417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135391135414%_)))
                                      (_%tl135393135419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135391135414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135393135419%_))
                                      (let ((_%e135394135422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135393135419%_))))
                                        (let ((_%hd135395135425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135394135422%_)))
                                              (_%tl135396135427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135394135422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135396135427%_))
                                              ((lambda (_%L135430%_
                                                        _%L135431%_)
                                                 (gxc#compile-e__1
                                                  _%self135381%_
                                                  _%L135430%_))
                                               _%hd135395135425%_
                                               _%hd135392135417%_)
                                              (_%g135384135401%_
                                               _%g135385135404%_))))
                                      (_%g135384135401%_ _%g135385135404%_))))
                              (_%g135384135401%_ _%g135385135404%_))))
                      (_%g135384135401%_ _%g135385135404%_)))))
          (_%g135383135446%_ _%stx135382%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135312%_ _%stx135313%_)
        (let* ((_%g135315135332%_
                (lambda (_%g135316135329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135316135329%_))))
               (_%g135314135378%_
                (lambda (_%g135316135335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135316135335%_))
                      (let ((_%e135319135337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135316135335%_))))
                        (let ((_%hd135320135340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135319135337%_)))
                              (_%tl135321135342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135319135337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135321135342%_))
                              (let ((_%e135322135345%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135321135342%_))))
                                (let ((_%hd135323135348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135322135345%_)))
                                      (_%tl135324135350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135322135345%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135324135350%_))
                                      (let ((_%e135325135353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135324135350%_))))
                                        (let ((_%hd135326135356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135325135353%_)))
                                              (_%tl135327135358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135325135353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135327135358%_))
                                              ((lambda (_%L135361%_
                                                        _%L135362%_)
                                                 (let ((__tmp135959
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135312%_
                                                           _%L135361%_)))
                                                       (__tmp135957
                                                        (let ((__tmp135958
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135958 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135959
                                                    gx#current-expander-phi
                                                    __tmp135957)))
                                               _%hd135326135356%_
                                               _%hd135323135348%_)
                                              (_%g135315135332%_
                                               _%g135316135335%_))))
                                      (_%g135315135332%_ _%g135316135335%_))))
                              (_%g135315135332%_ _%g135316135335%_))))
                      (_%g135315135332%_ _%g135316135335%_)))))
          (_%g135314135378%_ _%stx135313%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135244%_ _%stx135245%_)
        (let* ((_%g135247135264%_
                (lambda (_%g135248135261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135248135261%_))))
               (_%g135246135309%_
                (lambda (_%g135248135267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135248135267%_))
                      (let ((_%e135251135269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135248135267%_))))
                        (let ((_%hd135252135272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135251135269%_)))
                              (_%tl135253135274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135251135269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135253135274%_))
                              (let ((_%e135254135277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135253135274%_))))
                                (let ((_%hd135255135280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135254135277%_)))
                                      (_%tl135256135282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135254135277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135256135282%_))
                                      (let ((_%e135257135285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135256135282%_))))
                                        (let ((_%hd135258135288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135257135285%_)))
                                              (_%tl135259135290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135257135285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135259135290%_))
                                              ((lambda (_%L135293%_
                                                        _%L135294%_)
                                                 (gxc#compile-e__1
                                                  _%self135244%_
                                                  _%L135293%_))
                                               _%hd135258135288%_
                                               _%hd135255135280%_)
                                              (_%g135247135264%_
                                               _%g135248135267%_))))
                                      (_%g135247135264%_ _%g135248135267%_))))
                              (_%g135247135264%_ _%g135248135267%_))))
                      (_%g135247135264%_ _%g135248135267%_)))))
          (_%g135246135309%_ _%stx135245%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135126%_ _%stx135127%_)
        (let* ((_%g135129135157%_
                (lambda (_%g135130135154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135130135154%_))))
               (_%g135128135241%_
                (lambda (_%g135130135160%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135130135160%_))
                      (let ((_%e135133135162%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135130135160%_))))
                        (let ((_%hd135134135165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135133135162%_)))
                              (_%tl135135135167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135133135162%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135135135167%_))
                              (let ((_g135960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135135135167%_
                                        '0))))
                                (begin
                                  (let ((_g135961_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135960_)
                                               (##vector-length _g135960_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135961_ 2)))
                                        (error "Context expects 2 values"
                                               _g135961_)))
                                  (let ((_%target135136135170%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135960_ 0)))
                                        (_%tl135138135172%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135960_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135138135172%_))
                                        (letrec ((_%loop135139135175%_
                                                  (lambda (_%hd135137135178%_
                                                           _%body135143135180%_
                                                           _%hd135144135182%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135137135178%_))
                                                        (let ((_%e135140135185%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135137135178%_))))
                  (let ((_%lp-hd135141135188%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135140135185%_)))
                        (_%lp-tl135142135190%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135140135185%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135141135188%_))
                        (let ((_%e135147135193%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135141135188%_))))
                          (let ((_%hd135148135196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135147135193%_)))
                                (_%tl135149135198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135147135193%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135149135198%_))
                                (let ((_%e135150135201%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135149135198%_))))
                                  (let ((_%hd135151135204%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135150135201%_)))
                                        (_%tl135152135206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135150135201%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135152135206%_))
                                        (_%loop135139135175%_
                                         _%lp-tl135142135190%_
                                         (cons _%hd135151135204%_
                                               _%body135143135180%_)
                                         (cons _%hd135148135196%_
                                               _%hd135144135182%_))
                                        (_%g135129135157%_
                                         _%g135130135160%_))))
                                (_%g135129135157%_ _%g135130135160%_))))
                        (_%g135129135157%_ _%g135130135160%_))))
                (let ((_%body135145135209%_ (reverse _%body135143135180%_))
                      (_%hd135146135211%_ (reverse _%hd135144135182%_)))
                  ((lambda (_%L135214%_ _%L135215%_)
                     (for-each
                      (lambda (_%g135229135231%_)
                        (gxc#compile-e__1 _%self135126%_ _%g135229135231%_))
                      (let ((__tmp135962
                             (lambda (_%g135233135236%_ _%g135234135238%_)
                               (cons _%g135233135236%_ _%g135234135238%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135962 '() _%L135214%_))))
                   _%body135145135209%_
                   _%hd135146135211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135139135175%_
                                           _%target135136135170%_
                                           '()
                                           '()))
                                        (_%g135129135157%_
                                         _%g135130135160%_)))))
                              (_%g135129135157%_ _%g135130135160%_))))
                      (_%g135129135157%_ _%g135130135160%_)))))
          (_%g135128135241%_ _%stx135127%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self134979%_ _%stx134980%_)
        (let* ((_%g134982135017%_
                (lambda (_%g134983135014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134983135014%_))))
               (_%g134981135123%_
                (lambda (_%g134983135020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134983135020%_))
                      (let ((_%e134987135022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134983135020%_))))
                        (let ((_%hd134988135025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134987135022%_)))
                              (_%tl134989135027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134987135022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134989135027%_))
                              (let ((_%e134990135030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134989135027%_))))
                                (let ((_%hd134991135033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134990135030%_)))
                                      (_%tl134992135035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134990135030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134991135033%_))
                                      (let ((_g135963_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134991135033%_
                                                '0))))
                                        (begin
                                          (let ((_g135964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135963_)
                                                       (##vector-length
                                                        _g135963_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135964_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135964_)))
                                          (let ((_%target134993135038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135963_ 0)))
                                                (_%tl134995135040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135963_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134995135040%_))
                                                (letrec ((_%loop134996135043%_
                                                          (lambda (_%hd134994135046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135000135048%_
                           _%hd135001135050%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134994135046%_))
                        (let ((_%e134997135053%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134994135046%_))))
                          (let ((_%lp-hd134998135056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134997135053%_)))
                                (_%lp-tl134999135058%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134997135053%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134998135056%_))
                                (let ((_%e135007135061%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134998135056%_))))
                                  (let ((_%hd135008135064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135007135061%_)))
                                        (_%tl135009135066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135007135061%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135009135066%_))
                                        (let ((_%e135010135069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135009135066%_))))
                                          (let ((_%hd135011135072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135010135069%_)))
                                                (_%tl135012135074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135010135069%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135012135074%_))
                                                (_%loop134996135043%_
                                                 _%lp-tl134999135058%_
                                                 (cons _%hd135011135072%_
                                                       _%expr135000135048%_)
                                                 (cons _%hd135008135064%_
                                                       _%hd135001135050%_))
                                                (_%g134982135017%_
                                                 _%g134983135020%_))))
                                        (_%g134982135017%_
                                         _%g134983135020%_))))
                                (_%g134982135017%_ _%g134983135020%_))))
                        (let ((_%expr135002135077%_
                               (reverse _%expr135000135048%_))
                              (_%hd135003135079%_
                               (reverse _%hd135001135050%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134992135035%_))
                              (let ((_%e135004135082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134992135035%_))))
                                (let ((_%hd135005135085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135004135082%_)))
                                      (_%tl135006135087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135004135082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135006135087%_))
                                      ((lambda (_%L135090%_
                                                _%L135091%_
                                                _%L135092%_)
                                         (for-each
                                          (lambda (_%g135111135113%_)
                                            (gxc#compile-e__1
                                             _%self134979%_
                                             _%g135111135113%_))
                                          (let ((__tmp135966
                                                 (lambda (_%g135115135118%_
                                                          _%g135116135120%_)
                                                   (cons _%g135115135118%_
                                                         _%g135116135120%_)))
                                                (__tmp135965
                                                 (cons _%L135090%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135966
                                             __tmp135965
                                             _%L135091%_))))
                                       _%hd135005135085%_
                                       _%expr135002135077%_
                                       _%hd135003135079%_)
                                      (_%g134982135017%_ _%g134983135020%_))))
                              (_%g134982135017%_ _%g134983135020%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134996135043%_
                                                   _%target134993135038%_
                                                   '()
                                                   '()))
                                                (_%g134982135017%_
                                                 _%g134983135020%_)))))
                                      (_%g134982135017%_ _%g134983135020%_))))
                              (_%g134982135017%_ _%g134983135020%_))))
                      (_%g134982135017%_ _%g134983135020%_)))))
          (_%g134981135123%_ _%stx134980%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self134924%_ _%stx134925%_)
        (let* ((_%g134927134941%_
                (lambda (_%g134928134938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134928134938%_))))
               (_%g134926134976%_
                (lambda (_%g134928134944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134928134944%_))
                      (let ((_%e134931134946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134928134944%_))))
                        (let ((_%hd134932134949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134931134946%_)))
                              (_%tl134933134951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134931134946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134933134951%_))
                              (let ((_%e134934134954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134933134951%_))))
                                (let ((_%hd134935134957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134934134954%_)))
                                      (_%tl134936134959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134934134954%_))))
                                  ((lambda (_%L134962%_ _%L134963%_)
                                     (gxc#compile-e__1
                                      _%self134924%_
                                      (last _%L134962%_)))
                                   _%tl134936134959%_
                                   _%hd134935134957%_)))
                              (_%g134927134941%_ _%g134928134944%_))))
                      (_%g134927134941%_ _%g134928134944%_)))))
          (_%g134926134976%_ _%stx134925%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self134856%_ _%stx134857%_)
        (let* ((_%g134859134876%_
                (lambda (_%g134860134873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134860134873%_))))
               (_%g134858134921%_
                (lambda (_%g134860134879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134860134879%_))
                      (let ((_%e134863134881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134860134879%_))))
                        (let ((_%hd134864134884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134863134881%_)))
                              (_%tl134865134886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134863134881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134865134886%_))
                              (let ((_%e134866134889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134865134886%_))))
                                (let ((_%hd134867134892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134866134889%_)))
                                      (_%tl134868134894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134866134889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134868134894%_))
                                      (let ((_%e134869134897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134868134894%_))))
                                        (let ((_%hd134870134900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134869134897%_)))
                                              (_%tl134871134902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134869134897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134871134902%_))
                                              ((lambda (_%L134905%_
                                                        _%L134906%_)
                                                 (gxc#compile-e__1
                                                  _%self134856%_
                                                  _%L134905%_))
                                               _%hd134870134900%_
                                               _%hd134867134892%_)
                                              (_%g134859134876%_
                                               _%g134860134879%_))))
                                      (_%g134859134876%_ _%g134860134879%_))))
                              (_%g134859134876%_ _%g134860134879%_))))
                      (_%g134859134876%_ _%g134860134879%_)))))
          (_%g134858134921%_ _%stx134857%_))))
    (define gxc#apply-operands
      (lambda (_%self134769%_ _%stx134770%_)
        (let* ((_%g134772134791%_
                (lambda (_%g134773134788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134773134788%_))))
               (_%g134771134853%_
                (lambda (_%g134773134794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134773134794%_))
                      (let ((_%e134775134796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134773134794%_))))
                        (let ((_%hd134776134799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134775134796%_)))
                              (_%tl134777134801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134775134796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134777134801%_))
                              (let ((_g135967_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134777134801%_
                                        '0))))
                                (begin
                                  (let ((_g135968_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135967_)
                                               (##vector-length _g135967_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135968_ 2)))
                                        (error "Context expects 2 values"
                                               _g135968_)))
                                  (let ((_%target134778134804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135967_ 0)))
                                        (_%tl134780134806%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135967_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134780134806%_))
                                        (letrec ((_%loop134781134809%_
                                                  (lambda (_%hd134779134812%_
                                                           _%rands134785134814%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134779134812%_))
                                                        (let ((_%e134782134817%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134779134812%_))))
                  (let ((_%lp-hd134783134820%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134782134817%_)))
                        (_%lp-tl134784134822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134782134817%_))))
                    (_%loop134781134809%_
                     _%lp-tl134784134822%_
                     (cons _%lp-hd134783134820%_ _%rands134785134814%_))))
                (let ((_%rands134786134825%_ (reverse _%rands134785134814%_)))
                  ((lambda (_%L134828%_)
                     (for-each
                      (lambda (_%g134841134843%_)
                        (gxc#compile-e__1 _%self134769%_ _%g134841134843%_))
                      (let ((__tmp135969
                             (lambda (_%g134845134848%_ _%g134846134850%_)
                               (cons _%g134845134848%_ _%g134846134850%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135969 '() _%L134828%_))))
                   _%rands134786134825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134781134809%_
                                           _%target134778134804%_
                                           '()))
                                        (_%g134772134791%_
                                         _%g134773134794%_)))))
                              (_%g134772134791%_ _%g134773134794%_))))
                      (_%g134772134791%_ _%g134773134794%_)))))
          (_%g134771134853%_ _%stx134770%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx134766%_ _%src-stx134767%_)
        (let ((__tmp135970
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx134767%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx134766%_ __tmp135970))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx134762%_ _%src-stx134763%_ _%ctx134764%_)
        (gxc#compile-e__1
         _%ctx134764%_
         (gxc#xform-wrap-source _%stx134762%_ _%src-stx134763%_))))
    (define gxc#xform-begin%
      (lambda (_%self134717%_ _%stx134718%_)
        (let* ((_%g134720134730%_
                (lambda (_%g134721134727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134721134727%_))))
               (_%g134719134759%_
                (lambda (_%g134721134733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134721134733%_))
                      (let ((_%e134723134735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134721134733%_))))
                        (let ((_%hd134724134738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134723134735%_)))
                              (_%tl134725134740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134723134735%_))))
                          ((lambda (_%L134743%_)
                             (let ((_%forms134757%_
                                    (map (lambda (_%g134752134754%_)
                                           (gxc#compile-e__1
                                            _%self134717%_
                                            _%g134752134754%_))
                                         _%L134743%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms134757%_)
                                _%stx134718%_)))
                           _%tl134725134740%_)))
                      (_%g134720134730%_ _%g134721134733%_)))))
          (_%g134719134759%_ _%stx134718%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self134671%_ _%stx134672%_)
        (let* ((_%g134674134684%_
                (lambda (_%g134675134681%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134675134681%_))))
               (_%g134673134714%_
                (lambda (_%g134675134687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134675134687%_))
                      (let ((_%e134677134689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134675134687%_))))
                        (let ((_%hd134678134692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134677134689%_)))
                              (_%tl134679134694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134677134689%_))))
                          ((lambda (_%L134697%_)
                             (let ((__tmp135973
                                    (lambda ()
                                      (let ((_%forms134712%_
                                             (map (lambda (_%g134707134709%_)
                                                    (gxc#compile-e__1
                                                     _%self134671%_
                                                     _%g134707134709%_))
                                                  _%L134697%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms134712%_)
                                         _%stx134672%_))))
                                   (__tmp135971
                                    (let ((__tmp135972
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp135972 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135973
                                gx#current-expander-phi
                                __tmp135971)))
                           _%tl134679134694%_)))
                      (_%g134674134684%_ _%g134675134687%_)))))
          (_%g134673134714%_ _%stx134672%_))))
    (define gxc#xform-module%
      (lambda (_%self134608%_ _%stx134609%_)
        (let* ((_%g134611134625%_
                (lambda (_%g134612134622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134612134622%_))))
               (_%g134610134668%_
                (lambda (_%g134612134628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134612134628%_))
                      (let ((_%e134615134630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134612134628%_))))
                        (let ((_%hd134616134633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134615134630%_)))
                              (_%tl134617134635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134615134630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134617134635%_))
                              (let ((_%e134618134638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134617134635%_))))
                                (let ((_%hd134619134641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134618134638%_)))
                                      (_%tl134620134643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134618134638%_))))
                                  ((lambda (_%L134646%_ _%L134647%_)
                                     (let* ((_%ctx134660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134647%_)))
                                            (_%code134662%_
                                             (##structure-ref
                                              _%ctx134660%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code134665%_
                                             (let ((__tmp135974
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self134608%_
                                                       _%code134662%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp135974
                                                gx#current-expander-context
                                                _%ctx134660%_))))
                                       (##structure-set!
                                        _%ctx134660%_
                                        _%code134665%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L134647%_
                                                    (cons _%code134665%_ '())))
                                        _%stx134609%_)))
                                   _%tl134620134643%_
                                   _%hd134619134641%_)))
                              (_%g134611134625%_ _%g134612134628%_))))
                      (_%g134611134625%_ _%g134612134628%_)))))
          (_%g134610134668%_ _%stx134609%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134538%_ _%stx134539%_)
        (let* ((_%g134541134558%_
                (lambda (_%g134542134555%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134542134555%_))))
               (_%g134540134605%_
                (lambda (_%g134542134561%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134542134561%_))
                      (let ((_%e134545134563%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134542134561%_))))
                        (let ((_%hd134546134566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134545134563%_)))
                              (_%tl134547134568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134545134563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134547134568%_))
                              (let ((_%e134548134571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134547134568%_))))
                                (let ((_%hd134549134574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134548134571%_)))
                                      (_%tl134550134576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134548134571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134550134576%_))
                                      (let ((_%e134551134579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134550134576%_))))
                                        (let ((_%hd134552134582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134551134579%_)))
                                              (_%tl134553134584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134551134579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134553134584%_))
                                              ((lambda (_%L134587%_
                                                        _%L134588%_)
                                                 (let ((_%expr134603%_
                                                        (gxc#compile-e__1
                                                         _%self134538%_
                                                         _%L134587%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134588%_
                                                                (cons _%expr134603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134539%_)))
                                               _%hd134552134582%_
                                               _%hd134549134574%_)
                                              (_%g134541134558%_
                                               _%g134542134561%_))))
                                      (_%g134541134558%_ _%g134542134561%_))))
                              (_%g134541134558%_ _%g134542134561%_))))
                      (_%g134541134558%_ _%g134542134561%_)))))
          (_%g134540134605%_ _%stx134539%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134467%_ _%stx134468%_)
        (let* ((_%g134470134487%_
                (lambda (_%g134471134484%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134471134484%_))))
               (_%g134469134535%_
                (lambda (_%g134471134490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134471134490%_))
                      (let ((_%e134474134492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134471134490%_))))
                        (let ((_%hd134475134495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134474134492%_)))
                              (_%tl134476134497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134474134492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134476134497%_))
                              (let ((_%e134477134500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134476134497%_))))
                                (let ((_%hd134478134503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134477134500%_)))
                                      (_%tl134479134505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134477134500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134479134505%_))
                                      (let ((_%e134480134508%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134479134505%_))))
                                        (let ((_%hd134481134511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134480134508%_)))
                                              (_%tl134482134513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134480134508%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134482134513%_))
                                              ((lambda (_%L134516%_
                                                        _%L134517%_)
                                                 (let ((__tmp135977
                                                        (lambda ()
                                                          (let ((_%expr134533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134467%_ _%L134516%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134517%_ (cons _%expr134533%_ '())))
                     _%stx134468%_))))
               (__tmp135975
                (let ((__tmp135976
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135976 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135977
                                                    gx#current-expander-phi
                                                    __tmp135975)))
                                               _%hd134481134511%_
                                               _%hd134478134503%_)
                                              (_%g134470134487%_
                                               _%g134471134490%_))))
                                      (_%g134470134487%_ _%g134471134490%_))))
                              (_%g134470134487%_ _%g134471134490%_))))
                      (_%g134470134487%_ _%g134471134490%_)))))
          (_%g134469134535%_ _%stx134468%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134397%_ _%stx134398%_)
        (let* ((_%g134400134417%_
                (lambda (_%g134401134414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134401134414%_))))
               (_%g134399134464%_
                (lambda (_%g134401134420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134401134420%_))
                      (let ((_%e134404134422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134401134420%_))))
                        (let ((_%hd134405134425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134404134422%_)))
                              (_%tl134406134427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134404134422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134406134427%_))
                              (let ((_%e134407134430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134406134427%_))))
                                (let ((_%hd134408134433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134407134430%_)))
                                      (_%tl134409134435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134407134430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134409134435%_))
                                      (let ((_%e134410134438%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134409134435%_))))
                                        (let ((_%hd134411134441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134410134438%_)))
                                              (_%tl134412134443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134410134438%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134412134443%_))
                                              ((lambda (_%L134446%_
                                                        _%L134447%_)
                                                 (let ((_%expr134462%_
                                                        (gxc#compile-e__1
                                                         _%self134397%_
                                                         _%L134446%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134447%_
                                                                (cons _%expr134462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134398%_)))
                                               _%hd134411134441%_
                                               _%hd134408134433%_)
                                              (_%g134400134417%_
                                               _%g134401134420%_))))
                                      (_%g134400134417%_ _%g134401134420%_))))
                              (_%g134400134417%_ _%g134401134420%_))))
                      (_%g134400134417%_ _%g134401134420%_)))))
          (_%g134399134464%_ _%stx134398%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134335%_ _%stx134336%_)
        (let* ((_%g134338134352%_
                (lambda (_%g134339134349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134339134349%_))))
               (_%g134337134394%_
                (lambda (_%g134339134355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134339134355%_))
                      (let ((_%e134342134357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134339134355%_))))
                        (let ((_%hd134343134360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134342134357%_)))
                              (_%tl134344134362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134342134357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134344134362%_))
                              (let ((_%e134345134365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134344134362%_))))
                                (let ((_%hd134346134368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134345134365%_)))
                                      (_%tl134347134370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134345134365%_))))
                                  ((lambda (_%L134373%_ _%L134374%_)
                                     (let ((__tmp135979
                                            (lambda ()
                                              (let ((_%body134392%_
                                                     (map (lambda (_%g134387134389%_)
                                                            (gxc#compile-e__1
                                                             _%self134335%_
                                                             _%g134387134389%_))
                                                          _%L134373%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134374%_
                                                             _%body134392%_))
                                                 _%stx134336%_))))
                                           (__tmp135978
                                            (gxc#xform-let-locals
                                             _%L134374%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135979
                                        gxc#current-compile-local-env
                                        __tmp135978)))
                                   _%tl134347134370%_
                                   _%hd134346134368%_)))
                              (_%g134338134352%_ _%g134339134355%_))))
                      (_%g134338134352%_ _%g134339134355%_)))))
          (_%g134337134394%_ _%stx134336%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134243%_ _%stx134244%_)
        (letrec ((_%clause-e134246%_
                  (lambda (_%clause134287%_)
                    (let* ((_%g134289134300%_
                            (lambda (_%g134290134297%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134290134297%_))))
                           (_%g134288134332%_
                            (lambda (_%g134290134303%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134290134303%_))
                                  (let ((_%e134293134305%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134290134303%_))))
                                    (let ((_%hd134294134308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134293134305%_)))
                                          (_%tl134295134310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134293134305%_))))
                                      ((lambda (_%L134313%_ _%L134314%_)
                                         (let ((__tmp135981
                                                (lambda ()
                                                  (let ((_%body134330%_
                                                         (map (lambda (_%g134325134327%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134243%_
                         _%g134325134327%_))
                      _%L134313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134314%_
                                                          _%body134330%_))))
                                               (__tmp135980
                                                (gxc#xform-let-locals
                                                 _%L134314%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp135981
                                            gxc#current-compile-local-env
                                            __tmp135980)))
                                       _%tl134295134310%_
                                       _%hd134294134308%_)))
                                  (_%g134289134300%_ _%g134290134303%_)))))
                      (_%g134288134332%_ _%clause134287%_)))))
          (let* ((_%g134248134258%_
                  (lambda (_%g134249134255%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134249134255%_))))
                 (_%g134247134284%_
                  (lambda (_%g134249134261%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134249134261%_))
                        (let ((_%e134251134263%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134249134261%_))))
                          (let ((_%hd134252134266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134251134263%_)))
                                (_%tl134253134268%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134251134263%_))))
                            ((lambda (_%L134271%_)
                               (let ((_%clauses134282%_
                                      (map _%clause-e134246%_ _%L134271%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134282%_)
                                  _%stx134244%_)))
                             _%tl134253134268%_)))
                        (_%g134248134258%_ _%g134249134261%_)))))
            (_%g134247134284%_ _%stx134244%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self133997%_ _%stx133998%_)
        (let* ((_%g134000134033%_
                (lambda (_%g134001134030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134001134030%_))))
               (_%g133999134240%_
                (lambda (_%g134001134036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134001134036%_))
                      (let ((_%e134006134038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134001134036%_))))
                        (let ((_%hd134007134041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134006134038%_)))
                              (_%tl134008134043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134006134038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134008134043%_))
                              (let ((_%e134009134046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134008134043%_))))
                                (let ((_%hd134010134049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134009134046%_)))
                                      (_%tl134011134051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134009134046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134010134049%_))
                                      (let ((_g135982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134010134049%_
                                                '0))))
                                        (begin
                                          (let ((_g135983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135982_)
                                                       (##vector-length
                                                        _g135982_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135983_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135983_)))
                                          (let ((_%target134012134054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135982_ 0)))
                                                (_%tl134014134056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135982_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134014134056%_))
                                                (letrec ((_%loop134015134059%_
                                                          (lambda (_%hd134013134062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134019134064%_
                           _%hd134020134066%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134013134062%_))
                        (let ((_%e134016134069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134013134062%_))))
                          (let ((_%lp-hd134017134072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134016134069%_)))
                                (_%lp-tl134018134074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134016134069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134017134072%_))
                                (let ((_%e134023134077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134017134072%_))))
                                  (let ((_%hd134024134080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134023134077%_)))
                                        (_%tl134025134082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134023134077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134025134082%_))
                                        (let ((_%e134026134085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134025134082%_))))
                                          (let ((_%hd134027134088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134026134085%_)))
                                                (_%tl134028134090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134026134085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134028134090%_))
                                                (_%loop134015134059%_
                                                 _%lp-tl134018134074%_
                                                 (cons _%hd134027134088%_
                                                       _%expr134019134064%_)
                                                 (cons _%hd134024134080%_
                                                       _%hd134020134066%_))
                                                (_%g134000134033%_
                                                 _%g134001134036%_))))
                                        (_%g134000134033%_
                                         _%g134001134036%_))))
                                (_%g134000134033%_ _%g134001134036%_))))
                        (let ((_%expr134021134093%_
                               (reverse _%expr134019134064%_))
                              (_%hd134022134095%_
                               (reverse _%hd134020134066%_)))
                          ((lambda (_%L134098%_
                                    _%L134099%_
                                    _%L134100%_
                                    _%L134101%_)
                             (let* ((_%g134120134136%_
                                     (lambda (_%g134121134133%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134121134133%_))))
                                    (_%g134119134226%_
                                     (lambda (_%g134121134139%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134121134139%_))
                                           (let ((_g135984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134121134139%_
                                                     '0))))
                                             (begin
                                               (let ((_g135985_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g135984_)
                                                            (##vector-length
                                                             _g135984_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g135985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g135985_)))
                                               (let ((_%target134123134141%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135984_
                                                         0)))
                                                     (_%tl134125134143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135984_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134125134143%_))
                                                     (letrec ((_%loop134126134146%_
                                                               (lambda (_%hd134124134149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134130134151%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134124134149%_))
                             (let ((_%e134127134154%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134124134149%_))))
                               (let ((_%lp-hd134128134157%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134127134154%_)))
                                     (_%lp-tl134129134159%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134127134154%_))))
                                 (_%loop134126134146%_
                                  _%lp-tl134129134159%_
                                  (cons _%lp-hd134128134157%_
                                        _%expr134130134151%_))))
                             (let ((_%expr134131134162%_
                                    (reverse _%expr134130134151%_)))
                               ((lambda (_%L134165%_)
                                  (let ((__tmp135988
                                         (lambda ()
                                           (let* ((_%g134179134186%_
                                                   (lambda (_%g134180134183%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134180134183%_))))
                                                  (_%g134178134212%_
                                                   (lambda (_%g134180134189%_)
                                                     ((lambda (_%L134191%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134101%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134165%_
                                  _%L134100%_))
                               (let ((__tmp135989
                                      (lambda (_%g134201134205%_
                                               _%g134202134207%_
                                               _%g134203134209%_)
                                        (cons (cons _%g134202134207%_
                                                    (cons _%g134201134205%_
                                                          '()))
                                              _%g134203134209%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135989
                                  '()
                                  _%L134165%_
                                  _%L134100%_)))
                             _%L134191%_))
                 _%stx133998%_))
              _%g134180134189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134178134212%_
                                              (map (lambda (_%g134214134216%_)
                                                     (gxc#compile-e__1
                                                      _%self133997%_
                                                      _%g134214134216%_))
                                                   _%L134098%_)))))
                                        (__tmp135986
                                         (gxc#xform-let-locals
                                          (let ((__tmp135987
                                                 (lambda (_%g134218134221%_
                                                          _%g134219134223%_)
                                                   (cons _%g134218134221%_
                                                         _%g134219134223%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135987
                                             '()
                                             _%L134100%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp135988
                                     gxc#current-compile-local-env
                                     __tmp135986)))
                                _%expr134131134162%_))))))
               (_%loop134126134146%_ _%target134123134141%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134120134136%_
                                                      _%g134121134139%_)))))
                                           (_%g134120134136%_
                                            _%g134121134139%_)))))
                               (_%g134119134226%_
                                (map (lambda (_%g134228134230%_)
                                       (gxc#compile-e__1
                                        _%self133997%_
                                        _%g134228134230%_))
                                     (let ((__tmp135990
                                            (lambda (_%g134232134235%_
                                                     _%g134233134237%_)
                                              (cons _%g134232134235%_
                                                    _%g134233134237%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135990
                                        '()
                                        _%L134099%_))))))
                           _%tl134011134051%_
                           _%expr134021134093%_
                           _%hd134022134095%_
                           _%hd134007134041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134015134059%_
                                                   _%target134012134054%_
                                                   '()
                                                   '()))
                                                (_%g134000134033%_
                                                 _%g134001134036%_)))))
                                      (_%g134000134033%_ _%g134001134036%_))))
                              (_%g134000134033%_ _%g134001134036%_))))
                      (_%g134000134033%_ _%g134001134036%_)))))
          (_%g133999134240%_ _%stx133998%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self133751%_ _%stx133752%_)
        (let* ((_%g133754133787%_
                (lambda (_%g133755133784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133755133784%_))))
               (_%g133753133994%_
                (lambda (_%g133755133790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133755133790%_))
                      (let ((_%e133760133792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133755133790%_))))
                        (let ((_%hd133761133795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133760133792%_)))
                              (_%tl133762133797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133760133792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133762133797%_))
                              (let ((_%e133763133800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133762133797%_))))
                                (let ((_%hd133764133803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133763133800%_)))
                                      (_%tl133765133805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133763133800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133764133803%_))
                                      (let ((_g135991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133764133803%_
                                                '0))))
                                        (begin
                                          (let ((_g135992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135991_)
                                                       (##vector-length
                                                        _g135991_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135992_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135992_)))
                                          (let ((_%target133766133808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135991_ 0)))
                                                (_%tl133768133810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135991_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133768133810%_))
                                                (letrec ((_%loop133769133813%_
                                                          (lambda (_%hd133767133816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133773133818%_
                           _%hd133774133820%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133767133816%_))
                        (let ((_%e133770133823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133767133816%_))))
                          (let ((_%lp-hd133771133826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133770133823%_)))
                                (_%lp-tl133772133828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133770133823%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133771133826%_))
                                (let ((_%e133777133831%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133771133826%_))))
                                  (let ((_%hd133778133834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133777133831%_)))
                                        (_%tl133779133836%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133777133831%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133779133836%_))
                                        (let ((_%e133780133839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133779133836%_))))
                                          (let ((_%hd133781133842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133780133839%_)))
                                                (_%tl133782133844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133780133839%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133782133844%_))
                                                (_%loop133769133813%_
                                                 _%lp-tl133772133828%_
                                                 (cons _%hd133781133842%_
                                                       _%expr133773133818%_)
                                                 (cons _%hd133778133834%_
                                                       _%hd133774133820%_))
                                                (_%g133754133787%_
                                                 _%g133755133790%_))))
                                        (_%g133754133787%_
                                         _%g133755133790%_))))
                                (_%g133754133787%_ _%g133755133790%_))))
                        (let ((_%expr133775133847%_
                               (reverse _%expr133773133818%_))
                              (_%hd133776133849%_
                               (reverse _%hd133774133820%_)))
                          ((lambda (_%L133852%_
                                    _%L133853%_
                                    _%L133854%_
                                    _%L133855%_)
                             (let ((__tmp135995
                                    (lambda ()
                                      (let* ((_%g133875133891%_
                                              (lambda (_%g133876133888%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g133876133888%_))))
                                             (_%g133874133973%_
                                              (lambda (_%g133876133894%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g133876133894%_))
                                                    (let ((_g135996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g133876133894%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g135997_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g135996_)
                             (##vector-length _g135996_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g135997_ 2)))
                      (error "Context expects 2 values" _g135997_)))
                (let ((_%target133878133896%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135996_ 0)))
                      (_%tl133880133898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135996_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl133880133898%_))
                      (letrec ((_%loop133881133901%_
                                (lambda (_%hd133879133904%_
                                         _%expr133885133906%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd133879133904%_))
                                      (let ((_%e133882133909%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd133879133904%_))))
                                        (let ((_%lp-hd133883133912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133882133909%_)))
                                              (_%lp-tl133884133914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133882133909%_))))
                                          (_%loop133881133901%_
                                           _%lp-tl133884133914%_
                                           (cons _%lp-hd133883133912%_
                                                 _%expr133885133906%_))))
                                      (let ((_%expr133886133917%_
                                             (reverse _%expr133885133906%_)))
                                        ((lambda (_%L133920%_)
                                           (let* ((_%g133934133941%_
                                                   (lambda (_%g133935133938%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133935133938%_))))
                                                  (_%g133933133966%_
                                                   (lambda (_%g133935133944%_)
                                                     ((lambda (_%L133946%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133855%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133920%_
                                  _%L133854%_))
                               (let ((__tmp135998
                                      (lambda (_%g133955133959%_
                                               _%g133956133961%_
                                               _%g133957133963%_)
                                        (cons (cons _%g133956133961%_
                                                    (cons _%g133955133959%_
                                                          '()))
                                              _%g133957133963%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135998
                                  '()
                                  _%L133920%_
                                  _%L133854%_)))
                             _%L133946%_))
                 _%stx133752%_))
              _%g133935133944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133933133966%_
                                              (map (lambda (_%g133968133970%_)
                                                     (gxc#compile-e__1
                                                      _%self133751%_
                                                      _%g133968133970%_))
                                                   _%L133852%_))))
                                         _%expr133886133917%_))))))
                        (_%loop133881133901%_ _%target133878133896%_ '()))
                      (_%g133875133891%_ _%g133876133894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133875133891%_
                                                     _%g133876133894%_)))))
                                        (_%g133874133973%_
                                         (map (lambda (_%g133975133977%_)
                                                (gxc#compile-e__1
                                                 _%self133751%_
                                                 _%g133975133977%_))
                                              (let ((__tmp135999
                                                     (lambda (_%g133979133982%_
                                                              _%g133980133984%_)
                                                       (cons _%g133979133982%_
                                                             _%g133980133984%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp135999
                                                 '()
                                                 _%L133853%_)))))))
                                   (__tmp135993
                                    (gxc#xform-let-locals
                                     (let ((__tmp135994
                                            (lambda (_%g133986133989%_
                                                     _%g133987133991%_)
                                              (cons _%g133986133989%_
                                                    _%g133987133991%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135994
                                        '()
                                        _%L133854%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135995
                                gxc#current-compile-local-env
                                __tmp135993)))
                           _%tl133765133805%_
                           _%expr133775133847%_
                           _%hd133776133849%_
                           _%hd133761133795%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133769133813%_
                                                   _%target133766133808%_
                                                   '()
                                                   '()))
                                                (_%g133754133787%_
                                                 _%g133755133790%_)))))
                                      (_%g133754133787%_ _%g133755133790%_))))
                              (_%g133754133787%_ _%g133755133790%_))))
                      (_%g133754133787%_ _%g133755133790%_)))))
          (_%g133753133994%_ _%stx133752%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings133618%_)
        (letrec ((_%flatten133620%_
                  (lambda (_%maybe-lst133678%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst133678%_))
                        (cons _%maybe-lst133678%_ '())
                        (let _%loop133680%_ ((_%rest133682%_
                                              _%maybe-lst133678%_)
                                             (_%result133683%_ '()))
                          (let* ((_%__stx135887135888%_ _%rest133682%_)
                                 (_%g133687133699%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx135887135888%_)))))
                            (let ((_%__kont135889135890%_
                                   (lambda (_%L133737%_ _%L133738%_)
                                     (_%loop133680%_
                                      _%L133737%_
                                      (let ((__tmp136000
                                             (_%flatten133620%_ _%L133738%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result133683%_
                                         __tmp136000)))))
                                  (_%__kont135891135892%_
                                   (lambda (_%L133711%_)
                                     (cons _%L133711%_ _%result133683%_)))
                                  (_%__kont135893135894%_
                                   (lambda () _%result133683%_)))
                              (let ((_%g133685133724%_
                                     (lambda ()
                                       (let ((_%L133711%_
                                              _%__stx135887135888%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L133711%_))
                                             (_%__kont135891135892%_
                                              _%L133711%_)
                                             (_%__kont135893135894%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx135887135888%_))
                                    (let ((_%e133691133729%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx135887135888%_))))
                                      (let ((_%tl133693133734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133691133729%_)))
                                            (_%hd133692133732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133691133729%_))))
                                        (_%__kont135889135890%_
                                         _%tl133693133734%_
                                         _%hd133692133732%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g133685133724%_)))))))))))
          (let _%loop133622%_ ((_%rest133624%_
                                (_%flatten133620%_ _%bindings133618%_))
                               (_%locals133625%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest133626133637%_ _%rest133624%_)
                   (_%E133630133641%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest133626133637%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K133633133666%_
                     (lambda (_%rest133663%_ _%id133664%_)
                       (_%loop133622%_
                        _%rest133663%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id133664%_))
                              _%locals133625%_))))
                    (_%K133632133655%_
                     (lambda (_%id133653%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id133653%_))
                             _%locals133625%_)))
                    (_%K133631133646%_ (lambda () _%locals133625%_)))
                (let ((_%try-match133628133660%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest133626133637%_))
                             (let ((_%id133658%_ _%rest133626133637%_))
                               (_%K133632133655%_ _%id133658%_))
                             (_%K133631133646%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest133626133637%_))
                      (let ((_%tl133635133671%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest133626133637%_)))
                            (_%hd133634133669%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest133626133637%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd133634133669%_))
                            (let ((_%id133674%_ _%hd133634133669%_)
                                  (_%rest133676%_ _%tl133635133671%_))
                              (_%K133633133666%_ _%rest133676%_ _%id133674%_))
                            (_%K133631133646%_)))
                      (_%try-match133628133660%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133570%_ _%stx133571%_)
        (let* ((_%g133573133584%_
                (lambda (_%g133574133581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133574133581%_))))
               (_%g133572133615%_
                (lambda (_%g133574133587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133574133587%_))
                      (let ((_%e133577133589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133574133587%_))))
                        (let ((_%hd133578133592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133577133589%_)))
                              (_%tl133579133594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133577133589%_))))
                          ((lambda (_%L133597%_ _%L133598%_)
                             (let ((_%rands133613%_
                                    (map (lambda (_%g133608133610%_)
                                           (gxc#compile-e__1
                                            _%self133570%_
                                            _%g133608133610%_))
                                         _%L133597%_)))
                               (gxc#xform-wrap-source
                                (cons _%L133598%_ _%rands133613%_)
                                _%stx133571%_)))
                           _%tl133579133594%_
                           _%hd133578133592%_)))
                      (_%g133573133584%_ _%g133574133587%_)))))
          (_%g133572133615%_ _%stx133571%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133500%_ _%stx133501%_)
        (let* ((_%g133503133520%_
                (lambda (_%g133504133517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133504133517%_))))
               (_%g133502133567%_
                (lambda (_%g133504133523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133504133523%_))
                      (let ((_%e133507133525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133504133523%_))))
                        (let ((_%hd133508133528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133507133525%_)))
                              (_%tl133509133530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133507133525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133509133530%_))
                              (let ((_%e133510133533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133509133530%_))))
                                (let ((_%hd133511133536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133510133533%_)))
                                      (_%tl133512133538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133510133533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133512133538%_))
                                      (let ((_%e133513133541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133512133538%_))))
                                        (let ((_%hd133514133544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133513133541%_)))
                                              (_%tl133515133546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133513133541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133515133546%_))
                                              ((lambda (_%L133549%_
                                                        _%L133550%_)
                                                 (let ((_%expr133565%_
                                                        (gxc#compile-e__1
                                                         _%self133500%_
                                                         _%L133549%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133550%_
                                                                (cons _%expr133565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133501%_)))
                                               _%hd133514133544%_
                                               _%hd133511133536%_)
                                              (_%g133503133520%_
                                               _%g133504133523%_))))
                                      (_%g133503133520%_ _%g133504133523%_))))
                              (_%g133503133520%_ _%g133504133523%_))))
                      (_%g133503133520%_ _%g133504133523%_)))))
          (_%g133502133567%_ _%stx133501%_))))))
