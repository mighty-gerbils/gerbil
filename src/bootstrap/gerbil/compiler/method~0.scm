(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712846035)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx135725%_)
        (let* ((_%self135727%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e135729%_
                (let ((__tmp135925 (gxc#stx-car-e _%stx135725%_)))
                  (declare (not safe))
                  (method-ref _%self135727%_ __tmp135925))))
          (if _%$e135729%_
              ((lambda (_%method135732%_)
                 (declare (not safe))
                 (_%method135732%_ _%self135727%_ _%stx135725%_))
               _%$e135729%_)
              (let ((__tmp135927 (gxc#stx-car-e _%stx135725%_))
                    (__tmp135926
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135725%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135727%_
                       __tmp135927
                       __tmp135926))))))
    (define gxc#compile-e__1
      (lambda (_%self135736%_ _%stx135737%_)
        (let ((_%$e135739%_
               (let ((__tmp135928 (gxc#stx-car-e _%stx135737%_)))
                 (declare (not safe))
                 (method-ref _%self135736%_ __tmp135928))))
          (if _%$e135739%_
              ((lambda (_%method135742%_)
                 (declare (not safe))
                 (_%method135742%_ _%self135736%_ _%stx135737%_))
               _%$e135739%_)
              (let ((__tmp135930 (gxc#stx-car-e _%stx135737%_))
                    (__tmp135929
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx135737%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self135736%_
                       __tmp135930
                       __tmp135929))))))
    (define gxc#compile-e
      (lambda _g135932_
        (let ((_g135931_ (let () (declare (not safe)) (##length _g135932_))))
          (cond ((let () (declare (not safe)) (##fx= _g135931_ 1))
                 (apply gxc#compile-e__0 _g135932_))
                ((let () (declare (not safe)) (##fx= _g135931_ 2))
                 (apply gxc#compile-e__1 _g135932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g135932_))))))
    (define gxc#stx-car-e
      (lambda (_%stx135723%_)
        (let ((__tmp135933
               (car (let () (declare (not safe)) (gx#stx-e _%stx135723%_)))))
          (declare (not safe))
          (gx#stx-e __tmp135933))))
    (define gxc#void-method (lambda (_%self135720%_ _%stx135721%_) '#!void))
    (define gxc#false-method (lambda (_%self135717%_ _%stx135718%_) '#f))
    (define gxc#true-method (lambda (_%self135714%_ _%stx135715%_) '#t))
    (define gxc#identity-method
      (lambda (_%self135711%_ _%stx135712%_) _%stx135712%_))
    (define gxc#::void-expression::t
      (let ((__tmp135934 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp135934
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args135708%_
        (apply make-instance gxc#::void-expression::t _%$args135708%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp135935
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
        (__make-promise __tmp135935)))
    (define gxc#::void-special-form::t
      (let ((__tmp135936 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp135936
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args135704%_
        (apply make-instance gxc#::void-special-form::t _%$args135704%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp135937
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
        (__make-promise __tmp135937)))
    (define gxc#::void::t
      (let ((__tmp135938
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp135938 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args135700%_
        (apply make-instance gxc#::void::t _%$args135700%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp135939
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135939)))
    (define gxc#::false-expression::t
      (let ((__tmp135940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp135940
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args135696%_
        (apply make-instance gxc#::false-expression::t _%$args135696%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp135941
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
        (__make-promise __tmp135941)))
    (define gxc#::false-special-form::t
      (let ((__tmp135942 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp135942
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args135692%_
        (apply make-instance gxc#::false-special-form::t _%$args135692%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp135943
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
        (__make-promise __tmp135943)))
    (define gxc#::false::t
      (let ((__tmp135944
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp135944 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args135688%_
        (apply make-instance gxc#::false::t _%$args135688%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp135945
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135945)))
    (define gxc#::identity-expression::t
      (let ((__tmp135946 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp135946
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args135684%_
        (apply make-instance gxc#::identity-expression::t _%$args135684%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp135947
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
        (__make-promise __tmp135947)))
    (define gxc#::identity-special-form::t
      (let ((__tmp135948 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp135948
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args135680%_
        (apply make-instance gxc#::identity-special-form::t _%$args135680%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp135949
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
        (__make-promise __tmp135949)))
    (define gxc#::identity::t
      (let ((__tmp135950
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp135950
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args135676%_
        (apply make-instance gxc#::identity::t _%$args135676%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp135951
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp135951)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp135952 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp135952
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args135672%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args135672%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp135953
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
        (__make-promise __tmp135953)))
    (define gxc#::basic-xform::t
      (let ((__tmp135954
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp135954
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args135668%_
        (apply make-instance gxc#::basic-xform::t _%$args135668%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp135955
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
        (__make-promise __tmp135955)))
    (define gxc#apply-begin%
      (lambda (_%self135624%_ _%stx135625%_)
        (let* ((_%g135627135637%_
                (lambda (_%g135628135634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135628135634%_))))
               (_%g135626135664%_
                (lambda (_%g135628135640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135628135640%_))
                      (let ((_%e135630135642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135628135640%_))))
                        (let ((_%hd135631135645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135630135642%_)))
                              (_%tl135632135647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135630135642%_))))
                          ((lambda (_%L135650%_)
                             (for-each
                              (lambda (_%g135659135661%_)
                                (gxc#compile-e__1
                                 _%self135624%_
                                 _%g135659135661%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L135650%_))))
                           _%tl135632135647%_)))
                      (_%g135627135637%_ _%g135628135640%_)))))
          (_%g135626135664%_ _%stx135625%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135585%_ _%stx135586%_)
        (let* ((_%g135588135598%_
                (lambda (_%g135589135595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135589135595%_))))
               (_%g135587135621%_
                (lambda (_%g135589135601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135589135601%_))
                      (let ((_%e135591135603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135589135601%_))))
                        (let ((_%hd135592135606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135591135603%_)))
                              (_%tl135593135608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135591135603%_))))
                          ((lambda (_%L135611%_)
                             (gxc#compile-e__1
                              _%self135585%_
                              (last _%L135611%_)))
                           _%tl135593135608%_)))
                      (_%g135588135598%_ _%g135589135601%_)))))
          (_%g135587135621%_ _%stx135586%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135581%_ _%stx135582%_)
        (let ((__tmp135958
               (lambda () (gxc#apply-begin% _%self135581%_ _%stx135582%_)))
              (__tmp135956
               (let ((__tmp135957
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp135957 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp135958
           gx#current-expander-phi
           __tmp135956))))
    (define gxc#apply-module%
      (lambda (_%self135520%_ _%stx135521%_)
        (let* ((_%g135523135537%_
                (lambda (_%g135524135534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135524135534%_))))
               (_%g135522135578%_
                (lambda (_%g135524135540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135524135540%_))
                      (let ((_%e135527135542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135524135540%_))))
                        (let ((_%hd135528135545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135527135542%_)))
                              (_%tl135529135547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135527135542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135529135547%_))
                              (let ((_%e135530135550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135529135547%_))))
                                (let ((_%hd135531135553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135530135550%_)))
                                      (_%tl135532135555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135530135550%_))))
                                  ((lambda (_%L135558%_ _%L135559%_)
                                     (let* ((_%ctx135572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135559%_)))
                                            (_%ctx-stx135574%_
                                             (##structure-ref
                                              _%ctx135572%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp135959
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135520%_
                                                _%ctx-stx135574%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135959
                                        gx#current-expander-context
                                        _%ctx135572%_)))
                                   _%tl135532135555%_
                                   _%hd135531135553%_)))
                              (_%g135523135537%_ _%g135524135540%_))))
                      (_%g135523135537%_ _%g135524135540%_)))))
          (_%g135522135578%_ _%stx135521%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135452%_ _%stx135453%_)
        (let* ((_%g135455135472%_
                (lambda (_%g135456135469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135456135469%_))))
               (_%g135454135517%_
                (lambda (_%g135456135475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135456135475%_))
                      (let ((_%e135459135477%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135456135475%_))))
                        (let ((_%hd135460135480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135459135477%_)))
                              (_%tl135461135482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135459135477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135461135482%_))
                              (let ((_%e135462135485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135461135482%_))))
                                (let ((_%hd135463135488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135462135485%_)))
                                      (_%tl135464135490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135462135485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135464135490%_))
                                      (let ((_%e135465135493%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135464135490%_))))
                                        (let ((_%hd135466135496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135465135493%_)))
                                              (_%tl135467135498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135465135493%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135467135498%_))
                                              ((lambda (_%L135501%_
                                                        _%L135502%_)
                                                 (gxc#compile-e__1
                                                  _%self135452%_
                                                  _%L135501%_))
                                               _%hd135466135496%_
                                               _%hd135463135488%_)
                                              (_%g135455135472%_
                                               _%g135456135475%_))))
                                      (_%g135455135472%_ _%g135456135475%_))))
                              (_%g135455135472%_ _%g135456135475%_))))
                      (_%g135455135472%_ _%g135456135475%_)))))
          (_%g135454135517%_ _%stx135453%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135384%_ _%stx135385%_)
        (let* ((_%g135387135404%_
                (lambda (_%g135388135401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135388135401%_))))
               (_%g135386135449%_
                (lambda (_%g135388135407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135388135407%_))
                      (let ((_%e135391135409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135388135407%_))))
                        (let ((_%hd135392135412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135391135409%_)))
                              (_%tl135393135414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135391135409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135393135414%_))
                              (let ((_%e135394135417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135393135414%_))))
                                (let ((_%hd135395135420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135394135417%_)))
                                      (_%tl135396135422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135394135417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135396135422%_))
                                      (let ((_%e135397135425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135396135422%_))))
                                        (let ((_%hd135398135428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135397135425%_)))
                                              (_%tl135399135430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135397135425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135399135430%_))
                                              ((lambda (_%L135433%_
                                                        _%L135434%_)
                                                 (gxc#compile-e__1
                                                  _%self135384%_
                                                  _%L135433%_))
                                               _%hd135398135428%_
                                               _%hd135395135420%_)
                                              (_%g135387135404%_
                                               _%g135388135407%_))))
                                      (_%g135387135404%_ _%g135388135407%_))))
                              (_%g135387135404%_ _%g135388135407%_))))
                      (_%g135387135404%_ _%g135388135407%_)))))
          (_%g135386135449%_ _%stx135385%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135315%_ _%stx135316%_)
        (let* ((_%g135318135335%_
                (lambda (_%g135319135332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135319135332%_))))
               (_%g135317135381%_
                (lambda (_%g135319135338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135319135338%_))
                      (let ((_%e135322135340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135319135338%_))))
                        (let ((_%hd135323135343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135322135340%_)))
                              (_%tl135324135345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135322135340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135324135345%_))
                              (let ((_%e135325135348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135324135345%_))))
                                (let ((_%hd135326135351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135325135348%_)))
                                      (_%tl135327135353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135325135348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135327135353%_))
                                      (let ((_%e135328135356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135327135353%_))))
                                        (let ((_%hd135329135359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135328135356%_)))
                                              (_%tl135330135361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135328135356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135330135361%_))
                                              ((lambda (_%L135364%_
                                                        _%L135365%_)
                                                 (let ((__tmp135962
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135315%_
                                                           _%L135364%_)))
                                                       (__tmp135960
                                                        (let ((__tmp135961
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135961 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135962
                                                    gx#current-expander-phi
                                                    __tmp135960)))
                                               _%hd135329135359%_
                                               _%hd135326135351%_)
                                              (_%g135318135335%_
                                               _%g135319135338%_))))
                                      (_%g135318135335%_ _%g135319135338%_))))
                              (_%g135318135335%_ _%g135319135338%_))))
                      (_%g135318135335%_ _%g135319135338%_)))))
          (_%g135317135381%_ _%stx135316%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135247%_ _%stx135248%_)
        (let* ((_%g135250135267%_
                (lambda (_%g135251135264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135251135264%_))))
               (_%g135249135312%_
                (lambda (_%g135251135270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135251135270%_))
                      (let ((_%e135254135272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135251135270%_))))
                        (let ((_%hd135255135275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135254135272%_)))
                              (_%tl135256135277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135254135272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135256135277%_))
                              (let ((_%e135257135280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135256135277%_))))
                                (let ((_%hd135258135283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135257135280%_)))
                                      (_%tl135259135285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135257135280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135259135285%_))
                                      (let ((_%e135260135288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135259135285%_))))
                                        (let ((_%hd135261135291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135260135288%_)))
                                              (_%tl135262135293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135260135288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135262135293%_))
                                              ((lambda (_%L135296%_
                                                        _%L135297%_)
                                                 (gxc#compile-e__1
                                                  _%self135247%_
                                                  _%L135296%_))
                                               _%hd135261135291%_
                                               _%hd135258135283%_)
                                              (_%g135250135267%_
                                               _%g135251135270%_))))
                                      (_%g135250135267%_ _%g135251135270%_))))
                              (_%g135250135267%_ _%g135251135270%_))))
                      (_%g135250135267%_ _%g135251135270%_)))))
          (_%g135249135312%_ _%stx135248%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135129%_ _%stx135130%_)
        (let* ((_%g135132135160%_
                (lambda (_%g135133135157%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135133135157%_))))
               (_%g135131135244%_
                (lambda (_%g135133135163%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135133135163%_))
                      (let ((_%e135136135165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135133135163%_))))
                        (let ((_%hd135137135168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135136135165%_)))
                              (_%tl135138135170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135136135165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135138135170%_))
                              (let ((_g135963_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135138135170%_
                                        '0))))
                                (begin
                                  (let ((_g135964_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135963_)
                                               (##vector-length _g135963_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135964_ 2)))
                                        (error "Context expects 2 values"
                                               _g135964_)))
                                  (let ((_%target135139135173%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135963_ 0)))
                                        (_%tl135141135175%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135963_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135141135175%_))
                                        (letrec ((_%loop135142135178%_
                                                  (lambda (_%hd135140135181%_
                                                           _%body135146135183%_
                                                           _%hd135147135185%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135140135181%_))
                                                        (let ((_%e135143135188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135140135181%_))))
                  (let ((_%lp-hd135144135191%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135143135188%_)))
                        (_%lp-tl135145135193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135143135188%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135144135191%_))
                        (let ((_%e135150135196%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135144135191%_))))
                          (let ((_%hd135151135199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135150135196%_)))
                                (_%tl135152135201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135150135196%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135152135201%_))
                                (let ((_%e135153135204%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135152135201%_))))
                                  (let ((_%hd135154135207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135153135204%_)))
                                        (_%tl135155135209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135153135204%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135155135209%_))
                                        (_%loop135142135178%_
                                         _%lp-tl135145135193%_
                                         (cons _%hd135154135207%_
                                               _%body135146135183%_)
                                         (cons _%hd135151135199%_
                                               _%hd135147135185%_))
                                        (_%g135132135160%_
                                         _%g135133135163%_))))
                                (_%g135132135160%_ _%g135133135163%_))))
                        (_%g135132135160%_ _%g135133135163%_))))
                (let ((_%body135148135212%_ (reverse _%body135146135183%_))
                      (_%hd135149135214%_ (reverse _%hd135147135185%_)))
                  ((lambda (_%L135217%_ _%L135218%_)
                     (for-each
                      (lambda (_%g135232135234%_)
                        (gxc#compile-e__1 _%self135129%_ _%g135232135234%_))
                      (let ((__tmp135965
                             (lambda (_%g135236135239%_ _%g135237135241%_)
                               (cons _%g135236135239%_ _%g135237135241%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135965 '() _%L135217%_))))
                   _%body135148135212%_
                   _%hd135149135214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135142135178%_
                                           _%target135139135173%_
                                           '()
                                           '()))
                                        (_%g135132135160%_
                                         _%g135133135163%_)))))
                              (_%g135132135160%_ _%g135133135163%_))))
                      (_%g135132135160%_ _%g135133135163%_)))))
          (_%g135131135244%_ _%stx135130%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self134982%_ _%stx134983%_)
        (let* ((_%g134985135020%_
                (lambda (_%g134986135017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134986135017%_))))
               (_%g134984135126%_
                (lambda (_%g134986135023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134986135023%_))
                      (let ((_%e134990135025%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134986135023%_))))
                        (let ((_%hd134991135028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134990135025%_)))
                              (_%tl134992135030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134990135025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134992135030%_))
                              (let ((_%e134993135033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134992135030%_))))
                                (let ((_%hd134994135036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134993135033%_)))
                                      (_%tl134995135038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134993135033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134994135036%_))
                                      (let ((_g135966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134994135036%_
                                                '0))))
                                        (begin
                                          (let ((_g135967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135966_)
                                                       (##vector-length
                                                        _g135966_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135967_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135967_)))
                                          (let ((_%target134996135041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135966_ 0)))
                                                (_%tl134998135043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135966_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134998135043%_))
                                                (letrec ((_%loop134999135046%_
                                                          (lambda (_%hd134997135049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135003135051%_
                           _%hd135004135053%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134997135049%_))
                        (let ((_%e135000135056%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134997135049%_))))
                          (let ((_%lp-hd135001135059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135000135056%_)))
                                (_%lp-tl135002135061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135000135056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135001135059%_))
                                (let ((_%e135010135064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135001135059%_))))
                                  (let ((_%hd135011135067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135010135064%_)))
                                        (_%tl135012135069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135010135064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135012135069%_))
                                        (let ((_%e135013135072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135012135069%_))))
                                          (let ((_%hd135014135075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135013135072%_)))
                                                (_%tl135015135077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135013135072%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135015135077%_))
                                                (_%loop134999135046%_
                                                 _%lp-tl135002135061%_
                                                 (cons _%hd135014135075%_
                                                       _%expr135003135051%_)
                                                 (cons _%hd135011135067%_
                                                       _%hd135004135053%_))
                                                (_%g134985135020%_
                                                 _%g134986135023%_))))
                                        (_%g134985135020%_
                                         _%g134986135023%_))))
                                (_%g134985135020%_ _%g134986135023%_))))
                        (let ((_%expr135005135080%_
                               (reverse _%expr135003135051%_))
                              (_%hd135006135082%_
                               (reverse _%hd135004135053%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134995135038%_))
                              (let ((_%e135007135085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134995135038%_))))
                                (let ((_%hd135008135088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135007135085%_)))
                                      (_%tl135009135090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135007135085%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135009135090%_))
                                      ((lambda (_%L135093%_
                                                _%L135094%_
                                                _%L135095%_)
                                         (for-each
                                          (lambda (_%g135114135116%_)
                                            (gxc#compile-e__1
                                             _%self134982%_
                                             _%g135114135116%_))
                                          (let ((__tmp135969
                                                 (lambda (_%g135118135121%_
                                                          _%g135119135123%_)
                                                   (cons _%g135118135121%_
                                                         _%g135119135123%_)))
                                                (__tmp135968
                                                 (cons _%L135093%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135969
                                             __tmp135968
                                             _%L135094%_))))
                                       _%hd135008135088%_
                                       _%expr135005135080%_
                                       _%hd135006135082%_)
                                      (_%g134985135020%_ _%g134986135023%_))))
                              (_%g134985135020%_ _%g134986135023%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134999135046%_
                                                   _%target134996135041%_
                                                   '()
                                                   '()))
                                                (_%g134985135020%_
                                                 _%g134986135023%_)))))
                                      (_%g134985135020%_ _%g134986135023%_))))
                              (_%g134985135020%_ _%g134986135023%_))))
                      (_%g134985135020%_ _%g134986135023%_)))))
          (_%g134984135126%_ _%stx134983%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self134927%_ _%stx134928%_)
        (let* ((_%g134930134944%_
                (lambda (_%g134931134941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134931134941%_))))
               (_%g134929134979%_
                (lambda (_%g134931134947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134931134947%_))
                      (let ((_%e134934134949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134931134947%_))))
                        (let ((_%hd134935134952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134934134949%_)))
                              (_%tl134936134954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134934134949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134936134954%_))
                              (let ((_%e134937134957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134936134954%_))))
                                (let ((_%hd134938134960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134937134957%_)))
                                      (_%tl134939134962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134937134957%_))))
                                  ((lambda (_%L134965%_ _%L134966%_)
                                     (gxc#compile-e__1
                                      _%self134927%_
                                      (last _%L134965%_)))
                                   _%tl134939134962%_
                                   _%hd134938134960%_)))
                              (_%g134930134944%_ _%g134931134947%_))))
                      (_%g134930134944%_ _%g134931134947%_)))))
          (_%g134929134979%_ _%stx134928%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self134859%_ _%stx134860%_)
        (let* ((_%g134862134879%_
                (lambda (_%g134863134876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134863134876%_))))
               (_%g134861134924%_
                (lambda (_%g134863134882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134863134882%_))
                      (let ((_%e134866134884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134863134882%_))))
                        (let ((_%hd134867134887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134866134884%_)))
                              (_%tl134868134889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134866134884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134868134889%_))
                              (let ((_%e134869134892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134868134889%_))))
                                (let ((_%hd134870134895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134869134892%_)))
                                      (_%tl134871134897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134869134892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134871134897%_))
                                      (let ((_%e134872134900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134871134897%_))))
                                        (let ((_%hd134873134903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134872134900%_)))
                                              (_%tl134874134905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134872134900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134874134905%_))
                                              ((lambda (_%L134908%_
                                                        _%L134909%_)
                                                 (gxc#compile-e__1
                                                  _%self134859%_
                                                  _%L134908%_))
                                               _%hd134873134903%_
                                               _%hd134870134895%_)
                                              (_%g134862134879%_
                                               _%g134863134882%_))))
                                      (_%g134862134879%_ _%g134863134882%_))))
                              (_%g134862134879%_ _%g134863134882%_))))
                      (_%g134862134879%_ _%g134863134882%_)))))
          (_%g134861134924%_ _%stx134860%_))))
    (define gxc#apply-operands
      (lambda (_%self134772%_ _%stx134773%_)
        (let* ((_%g134775134794%_
                (lambda (_%g134776134791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134776134791%_))))
               (_%g134774134856%_
                (lambda (_%g134776134797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134776134797%_))
                      (let ((_%e134778134799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134776134797%_))))
                        (let ((_%hd134779134802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134778134799%_)))
                              (_%tl134780134804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134778134799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl134780134804%_))
                              (let ((_g135970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl134780134804%_
                                        '0))))
                                (begin
                                  (let ((_g135971_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g135970_)
                                               (##vector-length _g135970_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g135971_ 2)))
                                        (error "Context expects 2 values"
                                               _g135971_)))
                                  (let ((_%target134781134807%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135970_ 0)))
                                        (_%tl134783134809%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g135970_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl134783134809%_))
                                        (letrec ((_%loop134784134812%_
                                                  (lambda (_%hd134782134815%_
                                                           _%rands134788134817%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd134782134815%_))
                                                        (let ((_%e134785134820%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd134782134815%_))))
                  (let ((_%lp-hd134786134823%_
                         (let ()
                           (declare (not safe))
                           (##car _%e134785134820%_)))
                        (_%lp-tl134787134825%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e134785134820%_))))
                    (_%loop134784134812%_
                     _%lp-tl134787134825%_
                     (cons _%lp-hd134786134823%_ _%rands134788134817%_))))
                (let ((_%rands134789134828%_ (reverse _%rands134788134817%_)))
                  ((lambda (_%L134831%_)
                     (for-each
                      (lambda (_%g134844134846%_)
                        (gxc#compile-e__1 _%self134772%_ _%g134844134846%_))
                      (let ((__tmp135972
                             (lambda (_%g134848134851%_ _%g134849134853%_)
                               (cons _%g134848134851%_ _%g134849134853%_))))
                        (declare (not safe))
                        (__foldr1 __tmp135972 '() _%L134831%_))))
                   _%rands134789134828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop134784134812%_
                                           _%target134781134807%_
                                           '()))
                                        (_%g134775134794%_
                                         _%g134776134797%_)))))
                              (_%g134775134794%_ _%g134776134797%_))))
                      (_%g134775134794%_ _%g134776134797%_)))))
          (_%g134774134856%_ _%stx134773%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx134769%_ _%src-stx134770%_)
        (let ((__tmp135973
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx134770%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx134769%_ __tmp135973))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx134765%_ _%src-stx134766%_ _%ctx134767%_)
        (gxc#compile-e__1
         _%ctx134767%_
         (gxc#xform-wrap-source _%stx134765%_ _%src-stx134766%_))))
    (define gxc#xform-begin%
      (lambda (_%self134720%_ _%stx134721%_)
        (let* ((_%g134723134733%_
                (lambda (_%g134724134730%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134724134730%_))))
               (_%g134722134762%_
                (lambda (_%g134724134736%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134724134736%_))
                      (let ((_%e134726134738%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134724134736%_))))
                        (let ((_%hd134727134741%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134726134738%_)))
                              (_%tl134728134743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134726134738%_))))
                          ((lambda (_%L134746%_)
                             (let ((_%forms134760%_
                                    (map (lambda (_%g134755134757%_)
                                           (gxc#compile-e__1
                                            _%self134720%_
                                            _%g134755134757%_))
                                         _%L134746%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms134760%_)
                                _%stx134721%_)))
                           _%tl134728134743%_)))
                      (_%g134723134733%_ _%g134724134736%_)))))
          (_%g134722134762%_ _%stx134721%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self134674%_ _%stx134675%_)
        (let* ((_%g134677134687%_
                (lambda (_%g134678134684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134678134684%_))))
               (_%g134676134717%_
                (lambda (_%g134678134690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134678134690%_))
                      (let ((_%e134680134692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134678134690%_))))
                        (let ((_%hd134681134695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134680134692%_)))
                              (_%tl134682134697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134680134692%_))))
                          ((lambda (_%L134700%_)
                             (let ((__tmp135976
                                    (lambda ()
                                      (let ((_%forms134715%_
                                             (map (lambda (_%g134710134712%_)
                                                    (gxc#compile-e__1
                                                     _%self134674%_
                                                     _%g134710134712%_))
                                                  _%L134700%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms134715%_)
                                         _%stx134675%_))))
                                   (__tmp135974
                                    (let ((__tmp135975
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp135975 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135976
                                gx#current-expander-phi
                                __tmp135974)))
                           _%tl134682134697%_)))
                      (_%g134677134687%_ _%g134678134690%_)))))
          (_%g134676134717%_ _%stx134675%_))))
    (define gxc#xform-module%
      (lambda (_%self134611%_ _%stx134612%_)
        (let* ((_%g134614134628%_
                (lambda (_%g134615134625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134615134625%_))))
               (_%g134613134671%_
                (lambda (_%g134615134631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134615134631%_))
                      (let ((_%e134618134633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134615134631%_))))
                        (let ((_%hd134619134636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134618134633%_)))
                              (_%tl134620134638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134618134633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134620134638%_))
                              (let ((_%e134621134641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134620134638%_))))
                                (let ((_%hd134622134644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134621134641%_)))
                                      (_%tl134623134646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134621134641%_))))
                                  ((lambda (_%L134649%_ _%L134650%_)
                                     (let* ((_%ctx134663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134650%_)))
                                            (_%code134665%_
                                             (##structure-ref
                                              _%ctx134663%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code134668%_
                                             (let ((__tmp135977
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self134611%_
                                                       _%code134665%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp135977
                                                gx#current-expander-context
                                                _%ctx134663%_))))
                                       (##structure-set!
                                        _%ctx134663%_
                                        _%code134668%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L134650%_
                                                    (cons _%code134668%_ '())))
                                        _%stx134612%_)))
                                   _%tl134623134646%_
                                   _%hd134622134644%_)))
                              (_%g134614134628%_ _%g134615134631%_))))
                      (_%g134614134628%_ _%g134615134631%_)))))
          (_%g134613134671%_ _%stx134612%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134541%_ _%stx134542%_)
        (let* ((_%g134544134561%_
                (lambda (_%g134545134558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134545134558%_))))
               (_%g134543134608%_
                (lambda (_%g134545134564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134545134564%_))
                      (let ((_%e134548134566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134545134564%_))))
                        (let ((_%hd134549134569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134548134566%_)))
                              (_%tl134550134571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134548134566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134550134571%_))
                              (let ((_%e134551134574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134550134571%_))))
                                (let ((_%hd134552134577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134551134574%_)))
                                      (_%tl134553134579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134551134574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134553134579%_))
                                      (let ((_%e134554134582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134553134579%_))))
                                        (let ((_%hd134555134585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134554134582%_)))
                                              (_%tl134556134587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134554134582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134556134587%_))
                                              ((lambda (_%L134590%_
                                                        _%L134591%_)
                                                 (let ((_%expr134606%_
                                                        (gxc#compile-e__1
                                                         _%self134541%_
                                                         _%L134590%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134591%_
                                                                (cons _%expr134606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134542%_)))
                                               _%hd134555134585%_
                                               _%hd134552134577%_)
                                              (_%g134544134561%_
                                               _%g134545134564%_))))
                                      (_%g134544134561%_ _%g134545134564%_))))
                              (_%g134544134561%_ _%g134545134564%_))))
                      (_%g134544134561%_ _%g134545134564%_)))))
          (_%g134543134608%_ _%stx134542%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134470%_ _%stx134471%_)
        (let* ((_%g134473134490%_
                (lambda (_%g134474134487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134474134487%_))))
               (_%g134472134538%_
                (lambda (_%g134474134493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134474134493%_))
                      (let ((_%e134477134495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134474134493%_))))
                        (let ((_%hd134478134498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134477134495%_)))
                              (_%tl134479134500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134477134495%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134479134500%_))
                              (let ((_%e134480134503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134479134500%_))))
                                (let ((_%hd134481134506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134480134503%_)))
                                      (_%tl134482134508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134480134503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134482134508%_))
                                      (let ((_%e134483134511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134482134508%_))))
                                        (let ((_%hd134484134514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134483134511%_)))
                                              (_%tl134485134516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134483134511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134485134516%_))
                                              ((lambda (_%L134519%_
                                                        _%L134520%_)
                                                 (let ((__tmp135980
                                                        (lambda ()
                                                          (let ((_%expr134536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134470%_ _%L134519%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134520%_ (cons _%expr134536%_ '())))
                     _%stx134471%_))))
               (__tmp135978
                (let ((__tmp135979
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp135979 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp135980
                                                    gx#current-expander-phi
                                                    __tmp135978)))
                                               _%hd134484134514%_
                                               _%hd134481134506%_)
                                              (_%g134473134490%_
                                               _%g134474134493%_))))
                                      (_%g134473134490%_ _%g134474134493%_))))
                              (_%g134473134490%_ _%g134474134493%_))))
                      (_%g134473134490%_ _%g134474134493%_)))))
          (_%g134472134538%_ _%stx134471%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134400%_ _%stx134401%_)
        (let* ((_%g134403134420%_
                (lambda (_%g134404134417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134404134417%_))))
               (_%g134402134467%_
                (lambda (_%g134404134423%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134404134423%_))
                      (let ((_%e134407134425%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134404134423%_))))
                        (let ((_%hd134408134428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134407134425%_)))
                              (_%tl134409134430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134407134425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134409134430%_))
                              (let ((_%e134410134433%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134409134430%_))))
                                (let ((_%hd134411134436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134410134433%_)))
                                      (_%tl134412134438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134410134433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134412134438%_))
                                      (let ((_%e134413134441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134412134438%_))))
                                        (let ((_%hd134414134444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134413134441%_)))
                                              (_%tl134415134446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134413134441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134415134446%_))
                                              ((lambda (_%L134449%_
                                                        _%L134450%_)
                                                 (let ((_%expr134465%_
                                                        (gxc#compile-e__1
                                                         _%self134400%_
                                                         _%L134449%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134450%_
                                                                (cons _%expr134465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134401%_)))
                                               _%hd134414134444%_
                                               _%hd134411134436%_)
                                              (_%g134403134420%_
                                               _%g134404134423%_))))
                                      (_%g134403134420%_ _%g134404134423%_))))
                              (_%g134403134420%_ _%g134404134423%_))))
                      (_%g134403134420%_ _%g134404134423%_)))))
          (_%g134402134467%_ _%stx134401%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134338%_ _%stx134339%_)
        (let* ((_%g134341134355%_
                (lambda (_%g134342134352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134342134352%_))))
               (_%g134340134397%_
                (lambda (_%g134342134358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134342134358%_))
                      (let ((_%e134345134360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134342134358%_))))
                        (let ((_%hd134346134363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134345134360%_)))
                              (_%tl134347134365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134345134360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134347134365%_))
                              (let ((_%e134348134368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134347134365%_))))
                                (let ((_%hd134349134371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134348134368%_)))
                                      (_%tl134350134373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134348134368%_))))
                                  ((lambda (_%L134376%_ _%L134377%_)
                                     (let ((__tmp135982
                                            (lambda ()
                                              (let ((_%body134395%_
                                                     (map (lambda (_%g134390134392%_)
                                                            (gxc#compile-e__1
                                                             _%self134338%_
                                                             _%g134390134392%_))
                                                          _%L134376%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134377%_
                                                             _%body134395%_))
                                                 _%stx134339%_))))
                                           (__tmp135981
                                            (gxc#xform-let-locals
                                             _%L134377%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp135982
                                        gxc#current-compile-local-env
                                        __tmp135981)))
                                   _%tl134350134373%_
                                   _%hd134349134371%_)))
                              (_%g134341134355%_ _%g134342134358%_))))
                      (_%g134341134355%_ _%g134342134358%_)))))
          (_%g134340134397%_ _%stx134339%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134246%_ _%stx134247%_)
        (letrec ((_%clause-e134249%_
                  (lambda (_%clause134290%_)
                    (let* ((_%g134292134303%_
                            (lambda (_%g134293134300%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134293134300%_))))
                           (_%g134291134335%_
                            (lambda (_%g134293134306%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134293134306%_))
                                  (let ((_%e134296134308%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134293134306%_))))
                                    (let ((_%hd134297134311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134296134308%_)))
                                          (_%tl134298134313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134296134308%_))))
                                      ((lambda (_%L134316%_ _%L134317%_)
                                         (let ((__tmp135984
                                                (lambda ()
                                                  (let ((_%body134333%_
                                                         (map (lambda (_%g134328134330%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134246%_
                         _%g134328134330%_))
                      _%L134316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134317%_
                                                          _%body134333%_))))
                                               (__tmp135983
                                                (gxc#xform-let-locals
                                                 _%L134317%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp135984
                                            gxc#current-compile-local-env
                                            __tmp135983)))
                                       _%tl134298134313%_
                                       _%hd134297134311%_)))
                                  (_%g134292134303%_ _%g134293134306%_)))))
                      (_%g134291134335%_ _%clause134290%_)))))
          (let* ((_%g134251134261%_
                  (lambda (_%g134252134258%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134252134258%_))))
                 (_%g134250134287%_
                  (lambda (_%g134252134264%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134252134264%_))
                        (let ((_%e134254134266%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134252134264%_))))
                          (let ((_%hd134255134269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134254134266%_)))
                                (_%tl134256134271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134254134266%_))))
                            ((lambda (_%L134274%_)
                               (let ((_%clauses134285%_
                                      (map _%clause-e134249%_ _%L134274%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134285%_)
                                  _%stx134247%_)))
                             _%tl134256134271%_)))
                        (_%g134251134261%_ _%g134252134264%_)))))
            (_%g134250134287%_ _%stx134247%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134000%_ _%stx134001%_)
        (let* ((_%g134003134036%_
                (lambda (_%g134004134033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134004134033%_))))
               (_%g134002134243%_
                (lambda (_%g134004134039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134004134039%_))
                      (let ((_%e134009134041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134004134039%_))))
                        (let ((_%hd134010134044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134009134041%_)))
                              (_%tl134011134046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134009134041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134011134046%_))
                              (let ((_%e134012134049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134011134046%_))))
                                (let ((_%hd134013134052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134012134049%_)))
                                      (_%tl134014134054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134012134049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134013134052%_))
                                      (let ((_g135985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134013134052%_
                                                '0))))
                                        (begin
                                          (let ((_g135986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135985_)
                                                       (##vector-length
                                                        _g135985_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135986_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135986_)))
                                          (let ((_%target134015134057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135985_ 0)))
                                                (_%tl134017134059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135985_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134017134059%_))
                                                (letrec ((_%loop134018134062%_
                                                          (lambda (_%hd134016134065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134022134067%_
                           _%hd134023134069%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134016134065%_))
                        (let ((_%e134019134072%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134016134065%_))))
                          (let ((_%lp-hd134020134075%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134019134072%_)))
                                (_%lp-tl134021134077%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134019134072%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134020134075%_))
                                (let ((_%e134026134080%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134020134075%_))))
                                  (let ((_%hd134027134083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134026134080%_)))
                                        (_%tl134028134085%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134026134080%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134028134085%_))
                                        (let ((_%e134029134088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134028134085%_))))
                                          (let ((_%hd134030134091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134029134088%_)))
                                                (_%tl134031134093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134029134088%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134031134093%_))
                                                (_%loop134018134062%_
                                                 _%lp-tl134021134077%_
                                                 (cons _%hd134030134091%_
                                                       _%expr134022134067%_)
                                                 (cons _%hd134027134083%_
                                                       _%hd134023134069%_))
                                                (_%g134003134036%_
                                                 _%g134004134039%_))))
                                        (_%g134003134036%_
                                         _%g134004134039%_))))
                                (_%g134003134036%_ _%g134004134039%_))))
                        (let ((_%expr134024134096%_
                               (reverse _%expr134022134067%_))
                              (_%hd134025134098%_
                               (reverse _%hd134023134069%_)))
                          ((lambda (_%L134101%_
                                    _%L134102%_
                                    _%L134103%_
                                    _%L134104%_)
                             (let* ((_%g134123134139%_
                                     (lambda (_%g134124134136%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134124134136%_))))
                                    (_%g134122134229%_
                                     (lambda (_%g134124134142%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134124134142%_))
                                           (let ((_g135987_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134124134142%_
                                                     '0))))
                                             (begin
                                               (let ((_g135988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g135987_)
                                                            (##vector-length
                                                             _g135987_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g135988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g135988_)))
                                               (let ((_%target134126134144%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135987_
                                                         0)))
                                                     (_%tl134128134146%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g135987_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134128134146%_))
                                                     (letrec ((_%loop134129134149%_
                                                               (lambda (_%hd134127134152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134133134154%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134127134152%_))
                             (let ((_%e134130134157%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134127134152%_))))
                               (let ((_%lp-hd134131134160%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134130134157%_)))
                                     (_%lp-tl134132134162%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134130134157%_))))
                                 (_%loop134129134149%_
                                  _%lp-tl134132134162%_
                                  (cons _%lp-hd134131134160%_
                                        _%expr134133134154%_))))
                             (let ((_%expr134134134165%_
                                    (reverse _%expr134133134154%_)))
                               ((lambda (_%L134168%_)
                                  (let ((__tmp135991
                                         (lambda ()
                                           (let* ((_%g134182134189%_
                                                   (lambda (_%g134183134186%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134183134186%_))))
                                                  (_%g134181134215%_
                                                   (lambda (_%g134183134192%_)
                                                     ((lambda (_%L134194%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134104%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134168%_
                                  _%L134103%_))
                               (let ((__tmp135992
                                      (lambda (_%g134204134208%_
                                               _%g134205134210%_
                                               _%g134206134212%_)
                                        (cons (cons _%g134205134210%_
                                                    (cons _%g134204134208%_
                                                          '()))
                                              _%g134206134212%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp135992
                                  '()
                                  _%L134168%_
                                  _%L134103%_)))
                             _%L134194%_))
                 _%stx134001%_))
              _%g134183134192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134181134215%_
                                              (map (lambda (_%g134217134219%_)
                                                     (gxc#compile-e__1
                                                      _%self134000%_
                                                      _%g134217134219%_))
                                                   _%L134101%_)))))
                                        (__tmp135989
                                         (gxc#xform-let-locals
                                          (let ((__tmp135990
                                                 (lambda (_%g134221134224%_
                                                          _%g134222134226%_)
                                                   (cons _%g134221134224%_
                                                         _%g134222134226%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp135990
                                             '()
                                             _%L134103%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp135991
                                     gxc#current-compile-local-env
                                     __tmp135989)))
                                _%expr134134134165%_))))))
               (_%loop134129134149%_ _%target134126134144%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134123134139%_
                                                      _%g134124134142%_)))))
                                           (_%g134123134139%_
                                            _%g134124134142%_)))))
                               (_%g134122134229%_
                                (map (lambda (_%g134231134233%_)
                                       (gxc#compile-e__1
                                        _%self134000%_
                                        _%g134231134233%_))
                                     (let ((__tmp135993
                                            (lambda (_%g134235134238%_
                                                     _%g134236134240%_)
                                              (cons _%g134235134238%_
                                                    _%g134236134240%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135993
                                        '()
                                        _%L134102%_))))))
                           _%tl134014134054%_
                           _%expr134024134096%_
                           _%hd134025134098%_
                           _%hd134010134044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134018134062%_
                                                   _%target134015134057%_
                                                   '()
                                                   '()))
                                                (_%g134003134036%_
                                                 _%g134004134039%_)))))
                                      (_%g134003134036%_ _%g134004134039%_))))
                              (_%g134003134036%_ _%g134004134039%_))))
                      (_%g134003134036%_ _%g134004134039%_)))))
          (_%g134002134243%_ _%stx134001%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self133754%_ _%stx133755%_)
        (let* ((_%g133757133790%_
                (lambda (_%g133758133787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133758133787%_))))
               (_%g133756133997%_
                (lambda (_%g133758133793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133758133793%_))
                      (let ((_%e133763133795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133758133793%_))))
                        (let ((_%hd133764133798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133763133795%_)))
                              (_%tl133765133800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133763133795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133765133800%_))
                              (let ((_%e133766133803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133765133800%_))))
                                (let ((_%hd133767133806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133766133803%_)))
                                      (_%tl133768133808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133766133803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133767133806%_))
                                      (let ((_g135994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133767133806%_
                                                '0))))
                                        (begin
                                          (let ((_g135995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135994_)
                                                       (##vector-length
                                                        _g135994_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135995_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135995_)))
                                          (let ((_%target133769133811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135994_ 0)))
                                                (_%tl133771133813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135994_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133771133813%_))
                                                (letrec ((_%loop133772133816%_
                                                          (lambda (_%hd133770133819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133776133821%_
                           _%hd133777133823%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133770133819%_))
                        (let ((_%e133773133826%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133770133819%_))))
                          (let ((_%lp-hd133774133829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133773133826%_)))
                                (_%lp-tl133775133831%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133773133826%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133774133829%_))
                                (let ((_%e133780133834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133774133829%_))))
                                  (let ((_%hd133781133837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133780133834%_)))
                                        (_%tl133782133839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133780133834%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133782133839%_))
                                        (let ((_%e133783133842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133782133839%_))))
                                          (let ((_%hd133784133845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133783133842%_)))
                                                (_%tl133785133847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133783133842%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133785133847%_))
                                                (_%loop133772133816%_
                                                 _%lp-tl133775133831%_
                                                 (cons _%hd133784133845%_
                                                       _%expr133776133821%_)
                                                 (cons _%hd133781133837%_
                                                       _%hd133777133823%_))
                                                (_%g133757133790%_
                                                 _%g133758133793%_))))
                                        (_%g133757133790%_
                                         _%g133758133793%_))))
                                (_%g133757133790%_ _%g133758133793%_))))
                        (let ((_%expr133778133850%_
                               (reverse _%expr133776133821%_))
                              (_%hd133779133852%_
                               (reverse _%hd133777133823%_)))
                          ((lambda (_%L133855%_
                                    _%L133856%_
                                    _%L133857%_
                                    _%L133858%_)
                             (let ((__tmp135998
                                    (lambda ()
                                      (let* ((_%g133878133894%_
                                              (lambda (_%g133879133891%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g133879133891%_))))
                                             (_%g133877133976%_
                                              (lambda (_%g133879133897%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g133879133897%_))
                                                    (let ((_g135999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g133879133897%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136000_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g135999_)
                             (##vector-length _g135999_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136000_ 2)))
                      (error "Context expects 2 values" _g136000_)))
                (let ((_%target133881133899%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135999_ 0)))
                      (_%tl133883133901%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g135999_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl133883133901%_))
                      (letrec ((_%loop133884133904%_
                                (lambda (_%hd133882133907%_
                                         _%expr133888133909%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd133882133907%_))
                                      (let ((_%e133885133912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd133882133907%_))))
                                        (let ((_%lp-hd133886133915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133885133912%_)))
                                              (_%lp-tl133887133917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133885133912%_))))
                                          (_%loop133884133904%_
                                           _%lp-tl133887133917%_
                                           (cons _%lp-hd133886133915%_
                                                 _%expr133888133909%_))))
                                      (let ((_%expr133889133920%_
                                             (reverse _%expr133888133909%_)))
                                        ((lambda (_%L133923%_)
                                           (let* ((_%g133937133944%_
                                                   (lambda (_%g133938133941%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g133938133941%_))))
                                                  (_%g133936133969%_
                                                   (lambda (_%g133938133947%_)
                                                     ((lambda (_%L133949%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L133858%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L133923%_
                                  _%L133857%_))
                               (let ((__tmp136001
                                      (lambda (_%g133958133962%_
                                               _%g133959133964%_
                                               _%g133960133966%_)
                                        (cons (cons _%g133959133964%_
                                                    (cons _%g133958133962%_
                                                          '()))
                                              _%g133960133966%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136001
                                  '()
                                  _%L133923%_
                                  _%L133857%_)))
                             _%L133949%_))
                 _%stx133755%_))
              _%g133938133947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g133936133969%_
                                              (map (lambda (_%g133971133973%_)
                                                     (gxc#compile-e__1
                                                      _%self133754%_
                                                      _%g133971133973%_))
                                                   _%L133855%_))))
                                         _%expr133889133920%_))))))
                        (_%loop133884133904%_ _%target133881133899%_ '()))
                      (_%g133878133894%_ _%g133879133897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g133878133894%_
                                                     _%g133879133897%_)))))
                                        (_%g133877133976%_
                                         (map (lambda (_%g133978133980%_)
                                                (gxc#compile-e__1
                                                 _%self133754%_
                                                 _%g133978133980%_))
                                              (let ((__tmp136002
                                                     (lambda (_%g133982133985%_
                                                              _%g133983133987%_)
                                                       (cons _%g133982133985%_
                                                             _%g133983133987%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136002
                                                 '()
                                                 _%L133856%_)))))))
                                   (__tmp135996
                                    (gxc#xform-let-locals
                                     (let ((__tmp135997
                                            (lambda (_%g133989133992%_
                                                     _%g133990133994%_)
                                              (cons _%g133989133992%_
                                                    _%g133990133994%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp135997
                                        '()
                                        _%L133857%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp135998
                                gxc#current-compile-local-env
                                __tmp135996)))
                           _%tl133768133808%_
                           _%expr133778133850%_
                           _%hd133779133852%_
                           _%hd133764133798%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop133772133816%_
                                                   _%target133769133811%_
                                                   '()
                                                   '()))
                                                (_%g133757133790%_
                                                 _%g133758133793%_)))))
                                      (_%g133757133790%_ _%g133758133793%_))))
                              (_%g133757133790%_ _%g133758133793%_))))
                      (_%g133757133790%_ _%g133758133793%_)))))
          (_%g133756133997%_ _%stx133755%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings133621%_)
        (letrec ((_%flatten133623%_
                  (lambda (_%maybe-lst133681%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst133681%_))
                        (cons _%maybe-lst133681%_ '())
                        (let _%loop133683%_ ((_%rest133685%_
                                              _%maybe-lst133681%_)
                                             (_%result133686%_ '()))
                          (let* ((_%__stx135890135891%_ _%rest133685%_)
                                 (_%g133690133702%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx135890135891%_)))))
                            (let ((_%__kont135892135893%_
                                   (lambda (_%L133740%_ _%L133741%_)
                                     (_%loop133683%_
                                      _%L133740%_
                                      (let ((__tmp136003
                                             (_%flatten133623%_ _%L133741%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result133686%_
                                         __tmp136003)))))
                                  (_%__kont135894135895%_
                                   (lambda (_%L133714%_)
                                     (cons _%L133714%_ _%result133686%_)))
                                  (_%__kont135896135897%_
                                   (lambda () _%result133686%_)))
                              (let ((_%g133688133727%_
                                     (lambda ()
                                       (let ((_%L133714%_
                                              _%__stx135890135891%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L133714%_))
                                             (_%__kont135894135895%_
                                              _%L133714%_)
                                             (_%__kont135896135897%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx135890135891%_))
                                    (let ((_%e133694133732%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx135890135891%_))))
                                      (let ((_%tl133696133737%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133694133732%_)))
                                            (_%hd133695133735%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133694133732%_))))
                                        (_%__kont135892135893%_
                                         _%tl133696133737%_
                                         _%hd133695133735%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g133688133727%_)))))))))))
          (let _%loop133625%_ ((_%rest133627%_
                                (_%flatten133623%_ _%bindings133621%_))
                               (_%locals133628%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest133629133640%_ _%rest133627%_)
                   (_%E133633133644%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest133629133640%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K133636133669%_
                     (lambda (_%rest133666%_ _%id133667%_)
                       (_%loop133625%_
                        _%rest133666%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id133667%_))
                              _%locals133628%_))))
                    (_%K133635133658%_
                     (lambda (_%id133656%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id133656%_))
                             _%locals133628%_)))
                    (_%K133634133649%_ (lambda () _%locals133628%_)))
                (let ((_%try-match133631133663%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest133629133640%_))
                             (let ((_%id133661%_ _%rest133629133640%_))
                               (_%K133635133658%_ _%id133661%_))
                             (_%K133634133649%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest133629133640%_))
                      (let ((_%tl133638133674%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest133629133640%_)))
                            (_%hd133637133672%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest133629133640%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd133637133672%_))
                            (let ((_%id133677%_ _%hd133637133672%_)
                                  (_%rest133679%_ _%tl133638133674%_))
                              (_%K133636133669%_ _%rest133679%_ _%id133677%_))
                            (_%K133634133649%_)))
                      (_%try-match133631133663%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133573%_ _%stx133574%_)
        (let* ((_%g133576133587%_
                (lambda (_%g133577133584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133577133584%_))))
               (_%g133575133618%_
                (lambda (_%g133577133590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133577133590%_))
                      (let ((_%e133580133592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133577133590%_))))
                        (let ((_%hd133581133595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133580133592%_)))
                              (_%tl133582133597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133580133592%_))))
                          ((lambda (_%L133600%_ _%L133601%_)
                             (let ((_%rands133616%_
                                    (map (lambda (_%g133611133613%_)
                                           (gxc#compile-e__1
                                            _%self133573%_
                                            _%g133611133613%_))
                                         _%L133600%_)))
                               (gxc#xform-wrap-source
                                (cons _%L133601%_ _%rands133616%_)
                                _%stx133574%_)))
                           _%tl133582133597%_
                           _%hd133581133595%_)))
                      (_%g133576133587%_ _%g133577133590%_)))))
          (_%g133575133618%_ _%stx133574%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133503%_ _%stx133504%_)
        (let* ((_%g133506133523%_
                (lambda (_%g133507133520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133507133520%_))))
               (_%g133505133570%_
                (lambda (_%g133507133526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133507133526%_))
                      (let ((_%e133510133528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133507133526%_))))
                        (let ((_%hd133511133531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133510133528%_)))
                              (_%tl133512133533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133510133528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133512133533%_))
                              (let ((_%e133513133536%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133512133533%_))))
                                (let ((_%hd133514133539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133513133536%_)))
                                      (_%tl133515133541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133513133536%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133515133541%_))
                                      (let ((_%e133516133544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133515133541%_))))
                                        (let ((_%hd133517133547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133516133544%_)))
                                              (_%tl133518133549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133516133544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133518133549%_))
                                              ((lambda (_%L133552%_
                                                        _%L133553%_)
                                                 (let ((_%expr133568%_
                                                        (gxc#compile-e__1
                                                         _%self133503%_
                                                         _%L133552%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133553%_
                                                                (cons _%expr133568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133504%_)))
                                               _%hd133517133547%_
                                               _%hd133514133539%_)
                                              (_%g133506133523%_
                                               _%g133507133526%_))))
                                      (_%g133506133523%_ _%g133507133526%_))))
                              (_%g133506133523%_ _%g133507133526%_))))
                      (_%g133506133523%_ _%g133507133526%_)))))
          (_%g133505133570%_ _%stx133504%_))))))
