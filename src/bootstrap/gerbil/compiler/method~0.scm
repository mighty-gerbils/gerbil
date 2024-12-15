(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1734280447)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx138723%_)
        (let* ((_%self138725%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e138727%_
                (let ((__tmp138923 (gxc#stx-car-e _%stx138723%_)))
                  (declare (not safe))
                  (method-ref _%self138725%_ __tmp138923))))
          (if _%$e138727%_
              ((lambda (_%method138730%_)
                 (declare (not safe))
                 (_%method138730%_ _%self138725%_ _%stx138723%_))
               _%$e138727%_)
              (let ((__tmp138925 (gxc#stx-car-e _%stx138723%_))
                    (__tmp138924
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138723%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138725%_
                       __tmp138925
                       __tmp138924))))))
    (define gxc#compile-e__1
      (lambda (_%self138734%_ _%stx138735%_)
        (let ((_%$e138737%_
               (let ((__tmp138926 (gxc#stx-car-e _%stx138735%_)))
                 (declare (not safe))
                 (method-ref _%self138734%_ __tmp138926))))
          (if _%$e138737%_
              ((lambda (_%method138740%_)
                 (declare (not safe))
                 (_%method138740%_ _%self138734%_ _%stx138735%_))
               _%$e138737%_)
              (let ((__tmp138928 (gxc#stx-car-e _%stx138735%_))
                    (__tmp138927
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx138735%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self138734%_
                       __tmp138928
                       __tmp138927))))))
    (define gxc#compile-e
      (lambda _g138930_
        (let ((_g138929_ (let () (declare (not safe)) (##length _g138930_))))
          (cond ((let () (declare (not safe)) (##fx= _g138929_ 1))
                 (apply gxc#compile-e__0 _g138930_))
                ((let () (declare (not safe)) (##fx= _g138929_ 2))
                 (apply gxc#compile-e__1 _g138930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g138930_))))))
    (define gxc#stx-car-e
      (lambda (_%stx138721%_)
        (let ((__tmp138931
               (car (let () (declare (not safe)) (gx#stx-e _%stx138721%_)))))
          (declare (not safe))
          (gx#stx-e __tmp138931))))
    (define gxc#void-method (lambda (_%self138718%_ _%stx138719%_) '#!void))
    (define gxc#false-method (lambda (_%self138715%_ _%stx138716%_) '#f))
    (define gxc#true-method (lambda (_%self138712%_ _%stx138713%_) '#t))
    (define gxc#identity-method
      (lambda (_%self138709%_ _%stx138710%_) _%stx138710%_))
    (define gxc#::void-expression::t
      (let ((__tmp138932 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp138932
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args138706%_
        (apply make-instance gxc#::void-expression::t _%$args138706%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp138933
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
        (__make-promise __tmp138933)))
    (define gxc#::void-special-form::t
      (let ((__tmp138934 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp138934
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args138702%_
        (apply make-instance gxc#::void-special-form::t _%$args138702%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp138935
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
        (__make-promise __tmp138935)))
    (define gxc#::void::t
      (let ((__tmp138936
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp138936 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args138698%_
        (apply make-instance gxc#::void::t _%$args138698%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp138937
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138937)))
    (define gxc#::false-expression::t
      (let ((__tmp138938 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp138938
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args138694%_
        (apply make-instance gxc#::false-expression::t _%$args138694%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp138939
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
        (__make-promise __tmp138939)))
    (define gxc#::false-special-form::t
      (let ((__tmp138940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp138940
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args138690%_
        (apply make-instance gxc#::false-special-form::t _%$args138690%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp138941
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
        (__make-promise __tmp138941)))
    (define gxc#::false::t
      (let ((__tmp138942
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp138942 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args138686%_
        (apply make-instance gxc#::false::t _%$args138686%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp138943
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138943)))
    (define gxc#::identity-expression::t
      (let ((__tmp138944 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp138944
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args138682%_
        (apply make-instance gxc#::identity-expression::t _%$args138682%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp138945
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
        (__make-promise __tmp138945)))
    (define gxc#::identity-special-form::t
      (let ((__tmp138946 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp138946
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args138678%_
        (apply make-instance gxc#::identity-special-form::t _%$args138678%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp138947
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
        (__make-promise __tmp138947)))
    (define gxc#::identity::t
      (let ((__tmp138948
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp138948
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args138674%_
        (apply make-instance gxc#::identity::t _%$args138674%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp138949
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp138949)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp138950 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp138950
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args138670%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args138670%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp138951
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
        (__make-promise __tmp138951)))
    (define gxc#::basic-xform::t
      (let ((__tmp138952
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp138952
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args138666%_
        (apply make-instance gxc#::basic-xform::t _%$args138666%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp138953
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
        (__make-promise __tmp138953)))
    (define gxc#apply-begin%
      (lambda (_%self138622%_ _%stx138623%_)
        (let* ((_%g138625138635%_
                (lambda (_%g138626138632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138626138632%_))))
               (_%g138624138662%_
                (lambda (_%g138626138638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138626138638%_))
                      (let ((_%e138628138640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138626138638%_))))
                        (let ((_%hd138629138643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138628138640%_)))
                              (_%tl138630138645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138628138640%_))))
                          ((lambda (_%L138648%_)
                             (for-each
                              (lambda (_%g138657138659%_)
                                (gxc#compile-e__1
                                 _%self138622%_
                                 _%g138657138659%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L138648%_))))
                           _%tl138630138645%_)))
                      (_%g138625138635%_ _%g138626138638%_)))))
          (_%g138624138662%_ _%stx138623%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self138583%_ _%stx138584%_)
        (let* ((_%g138586138596%_
                (lambda (_%g138587138593%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138587138593%_))))
               (_%g138585138619%_
                (lambda (_%g138587138599%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138587138599%_))
                      (let ((_%e138589138601%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138587138599%_))))
                        (let ((_%hd138590138604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138589138601%_)))
                              (_%tl138591138606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138589138601%_))))
                          ((lambda (_%L138609%_)
                             (gxc#compile-e__1
                              _%self138583%_
                              (last _%L138609%_)))
                           _%tl138591138606%_)))
                      (_%g138586138596%_ _%g138587138599%_)))))
          (_%g138585138619%_ _%stx138584%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self138579%_ _%stx138580%_)
        (let ((__tmp138956
               (lambda () (gxc#apply-begin% _%self138579%_ _%stx138580%_)))
              (__tmp138954
               (let ((__tmp138955
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp138955 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp138956
           gx#current-expander-phi
           __tmp138954))))
    (define gxc#apply-module%
      (lambda (_%self138518%_ _%stx138519%_)
        (let* ((_%g138521138535%_
                (lambda (_%g138522138532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138522138532%_))))
               (_%g138520138576%_
                (lambda (_%g138522138538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138522138538%_))
                      (let ((_%e138525138540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138522138538%_))))
                        (let ((_%hd138526138543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138525138540%_)))
                              (_%tl138527138545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138525138540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138527138545%_))
                              (let ((_%e138528138548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138527138545%_))))
                                (let ((_%hd138529138551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138528138548%_)))
                                      (_%tl138530138553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138528138548%_))))
                                  ((lambda (_%L138556%_ _%L138557%_)
                                     (let* ((_%ctx138570%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L138557%_)))
                                            (_%ctx-stx138572%_
                                             (##structure-ref
                                              _%ctx138570%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp138957
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self138518%_
                                                _%ctx-stx138572%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138957
                                        gx#current-expander-context
                                        _%ctx138570%_)))
                                   _%tl138530138553%_
                                   _%hd138529138551%_)))
                              (_%g138521138535%_ _%g138522138538%_))))
                      (_%g138521138535%_ _%g138522138538%_)))))
          (_%g138520138576%_ _%stx138519%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self138450%_ _%stx138451%_)
        (let* ((_%g138453138470%_
                (lambda (_%g138454138467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138454138467%_))))
               (_%g138452138515%_
                (lambda (_%g138454138473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138454138473%_))
                      (let ((_%e138457138475%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138454138473%_))))
                        (let ((_%hd138458138478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138457138475%_)))
                              (_%tl138459138480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138457138475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138459138480%_))
                              (let ((_%e138460138483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138459138480%_))))
                                (let ((_%hd138461138486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138460138483%_)))
                                      (_%tl138462138488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138460138483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138462138488%_))
                                      (let ((_%e138463138491%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138462138488%_))))
                                        (let ((_%hd138464138494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138463138491%_)))
                                              (_%tl138465138496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138463138491%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138465138496%_))
                                              ((lambda (_%L138499%_
                                                        _%L138500%_)
                                                 (gxc#compile-e__1
                                                  _%self138450%_
                                                  _%L138499%_))
                                               _%hd138464138494%_
                                               _%hd138461138486%_)
                                              (_%g138453138470%_
                                               _%g138454138473%_))))
                                      (_%g138453138470%_ _%g138454138473%_))))
                              (_%g138453138470%_ _%g138454138473%_))))
                      (_%g138453138470%_ _%g138454138473%_)))))
          (_%g138452138515%_ _%stx138451%_))))
    (define gxc#apply-define-values%
      (lambda (_%self138382%_ _%stx138383%_)
        (let* ((_%g138385138402%_
                (lambda (_%g138386138399%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138386138399%_))))
               (_%g138384138447%_
                (lambda (_%g138386138405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138386138405%_))
                      (let ((_%e138389138407%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138386138405%_))))
                        (let ((_%hd138390138410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138389138407%_)))
                              (_%tl138391138412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138389138407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138391138412%_))
                              (let ((_%e138392138415%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138391138412%_))))
                                (let ((_%hd138393138418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138392138415%_)))
                                      (_%tl138394138420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138392138415%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138394138420%_))
                                      (let ((_%e138395138423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138394138420%_))))
                                        (let ((_%hd138396138426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138395138423%_)))
                                              (_%tl138397138428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138395138423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138397138428%_))
                                              ((lambda (_%L138431%_
                                                        _%L138432%_)
                                                 (gxc#compile-e__1
                                                  _%self138382%_
                                                  _%L138431%_))
                                               _%hd138396138426%_
                                               _%hd138393138418%_)
                                              (_%g138385138402%_
                                               _%g138386138405%_))))
                                      (_%g138385138402%_ _%g138386138405%_))))
                              (_%g138385138402%_ _%g138386138405%_))))
                      (_%g138385138402%_ _%g138386138405%_)))))
          (_%g138384138447%_ _%stx138383%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self138313%_ _%stx138314%_)
        (let* ((_%g138316138333%_
                (lambda (_%g138317138330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138317138330%_))))
               (_%g138315138379%_
                (lambda (_%g138317138336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138317138336%_))
                      (let ((_%e138320138338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138317138336%_))))
                        (let ((_%hd138321138341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138320138338%_)))
                              (_%tl138322138343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138320138338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138322138343%_))
                              (let ((_%e138323138346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138322138343%_))))
                                (let ((_%hd138324138349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138323138346%_)))
                                      (_%tl138325138351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138323138346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138325138351%_))
                                      (let ((_%e138326138354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138325138351%_))))
                                        (let ((_%hd138327138357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138326138354%_)))
                                              (_%tl138328138359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138326138354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138328138359%_))
                                              ((lambda (_%L138362%_
                                                        _%L138363%_)
                                                 (let ((__tmp138960
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self138313%_
                                                           _%L138362%_)))
                                                       (__tmp138958
                                                        (let ((__tmp138959
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138959 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138960
                                                    gx#current-expander-phi
                                                    __tmp138958)))
                                               _%hd138327138357%_
                                               _%hd138324138349%_)
                                              (_%g138316138333%_
                                               _%g138317138336%_))))
                                      (_%g138316138333%_ _%g138317138336%_))))
                              (_%g138316138333%_ _%g138317138336%_))))
                      (_%g138316138333%_ _%g138317138336%_)))))
          (_%g138315138379%_ _%stx138314%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self138245%_ _%stx138246%_)
        (let* ((_%g138248138265%_
                (lambda (_%g138249138262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138249138262%_))))
               (_%g138247138310%_
                (lambda (_%g138249138268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138249138268%_))
                      (let ((_%e138252138270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138249138268%_))))
                        (let ((_%hd138253138273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138252138270%_)))
                              (_%tl138254138275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138252138270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138254138275%_))
                              (let ((_%e138255138278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138254138275%_))))
                                (let ((_%hd138256138281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138255138278%_)))
                                      (_%tl138257138283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138255138278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138257138283%_))
                                      (let ((_%e138258138286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138257138283%_))))
                                        (let ((_%hd138259138289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138258138286%_)))
                                              (_%tl138260138291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138258138286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138260138291%_))
                                              ((lambda (_%L138294%_
                                                        _%L138295%_)
                                                 (gxc#compile-e__1
                                                  _%self138245%_
                                                  _%L138294%_))
                                               _%hd138259138289%_
                                               _%hd138256138281%_)
                                              (_%g138248138265%_
                                               _%g138249138268%_))))
                                      (_%g138248138265%_ _%g138249138268%_))))
                              (_%g138248138265%_ _%g138249138268%_))))
                      (_%g138248138265%_ _%g138249138268%_)))))
          (_%g138247138310%_ _%stx138246%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self138127%_ _%stx138128%_)
        (let* ((_%g138130138158%_
                (lambda (_%g138131138155%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138131138155%_))))
               (_%g138129138242%_
                (lambda (_%g138131138161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138131138161%_))
                      (let ((_%e138134138163%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138131138161%_))))
                        (let ((_%hd138135138166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138134138163%_)))
                              (_%tl138136138168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138134138163%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl138136138168%_))
                              (let ((_g138961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl138136138168%_
                                        '0))))
                                (begin
                                  (let ((_g138962_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138961_)
                                               (##values-length _g138961_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138962_ 2)))
                                        (error "Context expects 2 values"
                                               _g138962_)))
                                  (let ((_%target138137138171%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138961_ 0)))
                                        (_%tl138139138173%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138961_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138139138173%_))
                                        (letrec ((_%loop138140138176%_
                                                  (lambda (_%hd138138138179%_
                                                           _%body138144138181%_
                                                           _%hd138145138183%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138138138179%_))
                                                        (let ((_%e138141138186%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138138138179%_))))
                  (let ((_%lp-hd138142138189%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138141138186%_)))
                        (_%lp-tl138143138191%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138141138186%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd138142138189%_))
                        (let ((_%e138148138194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd138142138189%_))))
                          (let ((_%hd138149138197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138148138194%_)))
                                (_%tl138150138199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138148138194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138150138199%_))
                                (let ((_%e138151138202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138150138199%_))))
                                  (let ((_%hd138152138205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138151138202%_)))
                                        (_%tl138153138207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138151138202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138153138207%_))
                                        (_%loop138140138176%_
                                         _%lp-tl138143138191%_
                                         (cons _%hd138152138205%_
                                               _%body138144138181%_)
                                         (cons _%hd138149138197%_
                                               _%hd138145138183%_))
                                        (_%g138130138158%_
                                         _%g138131138161%_))))
                                (_%g138130138158%_ _%g138131138161%_))))
                        (_%g138130138158%_ _%g138131138161%_))))
                (let ((_%body138146138210%_ (reverse _%body138144138181%_))
                      (_%hd138147138212%_ (reverse _%hd138145138183%_)))
                  ((lambda (_%L138215%_ _%L138216%_)
                     (for-each
                      (lambda (_%g138230138232%_)
                        (gxc#compile-e__1 _%self138127%_ _%g138230138232%_))
                      (let ((__tmp138963
                             (lambda (_%g138234138237%_ _%g138235138239%_)
                               (cons _%g138234138237%_ _%g138235138239%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138963 '() _%L138215%_))))
                   _%body138146138210%_
                   _%hd138147138212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop138140138176%_
                                           _%target138137138171%_
                                           '()
                                           '()))
                                        (_%g138130138158%_
                                         _%g138131138161%_)))))
                              (_%g138130138158%_ _%g138131138161%_))))
                      (_%g138130138158%_ _%g138131138161%_)))))
          (_%g138129138242%_ _%stx138128%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self137980%_ _%stx137981%_)
        (let* ((_%g137983138018%_
                (lambda (_%g137984138015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137984138015%_))))
               (_%g137982138124%_
                (lambda (_%g137984138021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137984138021%_))
                      (let ((_%e137988138023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137984138021%_))))
                        (let ((_%hd137989138026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137988138023%_)))
                              (_%tl137990138028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137988138023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137990138028%_))
                              (let ((_%e137991138031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137990138028%_))))
                                (let ((_%hd137992138034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137991138031%_)))
                                      (_%tl137993138036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137991138031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137992138034%_))
                                      (let ((_g138964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137992138034%_
                                                '0))))
                                        (begin
                                          (let ((_g138965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138964_)
                                                       (##values-length
                                                        _g138964_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138965_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138965_)))
                                          (let ((_%target137994138039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138964_ 0)))
                                                (_%tl137996138041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138964_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137996138041%_))
                                                (letrec ((_%loop137997138044%_
                                                          (lambda (_%hd137995138047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr138001138049%_
                           _%hd138002138051%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137995138047%_))
                        (let ((_%e137998138054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137995138047%_))))
                          (let ((_%lp-hd137999138057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137998138054%_)))
                                (_%lp-tl138000138059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137998138054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137999138057%_))
                                (let ((_%e138008138062%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137999138057%_))))
                                  (let ((_%hd138009138065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138008138062%_)))
                                        (_%tl138010138067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138008138062%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138010138067%_))
                                        (let ((_%e138011138070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138010138067%_))))
                                          (let ((_%hd138012138073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138011138070%_)))
                                                (_%tl138013138075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138011138070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138013138075%_))
                                                (_%loop137997138044%_
                                                 _%lp-tl138000138059%_
                                                 (cons _%hd138012138073%_
                                                       _%expr138001138049%_)
                                                 (cons _%hd138009138065%_
                                                       _%hd138002138051%_))
                                                (_%g137983138018%_
                                                 _%g137984138021%_))))
                                        (_%g137983138018%_
                                         _%g137984138021%_))))
                                (_%g137983138018%_ _%g137984138021%_))))
                        (let ((_%expr138003138078%_
                               (reverse _%expr138001138049%_))
                              (_%hd138004138080%_
                               (reverse _%hd138002138051%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137993138036%_))
                              (let ((_%e138005138083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137993138036%_))))
                                (let ((_%hd138006138086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138005138083%_)))
                                      (_%tl138007138088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138005138083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138007138088%_))
                                      ((lambda (_%L138091%_
                                                _%L138092%_
                                                _%L138093%_)
                                         (for-each
                                          (lambda (_%g138112138114%_)
                                            (gxc#compile-e__1
                                             _%self137980%_
                                             _%g138112138114%_))
                                          (let ((__tmp138967
                                                 (lambda (_%g138116138119%_
                                                          _%g138117138121%_)
                                                   (cons _%g138116138119%_
                                                         _%g138117138121%_)))
                                                (__tmp138966
                                                 (cons _%L138091%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138967
                                             __tmp138966
                                             _%L138092%_))))
                                       _%hd138006138086%_
                                       _%expr138003138078%_
                                       _%hd138004138080%_)
                                      (_%g137983138018%_ _%g137984138021%_))))
                              (_%g137983138018%_ _%g137984138021%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137997138044%_
                                                   _%target137994138039%_
                                                   '()
                                                   '()))
                                                (_%g137983138018%_
                                                 _%g137984138021%_)))))
                                      (_%g137983138018%_ _%g137984138021%_))))
                              (_%g137983138018%_ _%g137984138021%_))))
                      (_%g137983138018%_ _%g137984138021%_)))))
          (_%g137982138124%_ _%stx137981%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self137925%_ _%stx137926%_)
        (let* ((_%g137928137942%_
                (lambda (_%g137929137939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137929137939%_))))
               (_%g137927137977%_
                (lambda (_%g137929137945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137929137945%_))
                      (let ((_%e137932137947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137929137945%_))))
                        (let ((_%hd137933137950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137932137947%_)))
                              (_%tl137934137952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137932137947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137934137952%_))
                              (let ((_%e137935137955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137934137952%_))))
                                (let ((_%hd137936137958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137935137955%_)))
                                      (_%tl137937137960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137935137955%_))))
                                  ((lambda (_%L137963%_ _%L137964%_)
                                     (gxc#compile-e__1
                                      _%self137925%_
                                      (last _%L137963%_)))
                                   _%tl137937137960%_
                                   _%hd137936137958%_)))
                              (_%g137928137942%_ _%g137929137945%_))))
                      (_%g137928137942%_ _%g137929137945%_)))))
          (_%g137927137977%_ _%stx137926%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self137857%_ _%stx137858%_)
        (let* ((_%g137860137877%_
                (lambda (_%g137861137874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137861137874%_))))
               (_%g137859137922%_
                (lambda (_%g137861137880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137861137880%_))
                      (let ((_%e137864137882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137861137880%_))))
                        (let ((_%hd137865137885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137864137882%_)))
                              (_%tl137866137887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137864137882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137866137887%_))
                              (let ((_%e137867137890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137866137887%_))))
                                (let ((_%hd137868137893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137867137890%_)))
                                      (_%tl137869137895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137867137890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137869137895%_))
                                      (let ((_%e137870137898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137869137895%_))))
                                        (let ((_%hd137871137901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137870137898%_)))
                                              (_%tl137872137903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137870137898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137872137903%_))
                                              ((lambda (_%L137906%_
                                                        _%L137907%_)
                                                 (gxc#compile-e__1
                                                  _%self137857%_
                                                  _%L137906%_))
                                               _%hd137871137901%_
                                               _%hd137868137893%_)
                                              (_%g137860137877%_
                                               _%g137861137880%_))))
                                      (_%g137860137877%_ _%g137861137880%_))))
                              (_%g137860137877%_ _%g137861137880%_))))
                      (_%g137860137877%_ _%g137861137880%_)))))
          (_%g137859137922%_ _%stx137858%_))))
    (define gxc#apply-operands
      (lambda (_%self137770%_ _%stx137771%_)
        (let* ((_%g137773137792%_
                (lambda (_%g137774137789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137774137789%_))))
               (_%g137772137854%_
                (lambda (_%g137774137795%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137774137795%_))
                      (let ((_%e137776137797%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137774137795%_))))
                        (let ((_%hd137777137800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137776137797%_)))
                              (_%tl137778137802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137776137797%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl137778137802%_))
                              (let ((_g138968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl137778137802%_
                                        '0))))
                                (begin
                                  (let ((_g138969_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g138968_)
                                               (##values-length _g138968_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g138969_ 2)))
                                        (error "Context expects 2 values"
                                               _g138969_)))
                                  (let ((_%target137779137805%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138968_ 0)))
                                        (_%tl137781137807%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g138968_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137781137807%_))
                                        (letrec ((_%loop137782137810%_
                                                  (lambda (_%hd137780137813%_
                                                           _%rands137786137815%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd137780137813%_))
                                                        (let ((_%e137783137818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd137780137813%_))))
                  (let ((_%lp-hd137784137821%_
                         (let ()
                           (declare (not safe))
                           (##car _%e137783137818%_)))
                        (_%lp-tl137785137823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137783137818%_))))
                    (_%loop137782137810%_
                     _%lp-tl137785137823%_
                     (cons _%lp-hd137784137821%_ _%rands137786137815%_))))
                (let ((_%rands137787137826%_ (reverse _%rands137786137815%_)))
                  ((lambda (_%L137829%_)
                     (for-each
                      (lambda (_%g137842137844%_)
                        (gxc#compile-e__1 _%self137770%_ _%g137842137844%_))
                      (let ((__tmp138970
                             (lambda (_%g137846137849%_ _%g137847137851%_)
                               (cons _%g137846137849%_ _%g137847137851%_))))
                        (declare (not safe))
                        (__foldr1 __tmp138970 '() _%L137829%_))))
                   _%rands137787137826%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop137782137810%_
                                           _%target137779137805%_
                                           '()))
                                        (_%g137773137792%_
                                         _%g137774137795%_)))))
                              (_%g137773137792%_ _%g137774137795%_))))
                      (_%g137773137792%_ _%g137774137795%_)))))
          (_%g137772137854%_ _%stx137771%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx137767%_ _%src-stx137768%_)
        (let ((__tmp138971
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx137768%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx137767%_ __tmp138971))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx137763%_ _%src-stx137764%_ _%ctx137765%_)
        (gxc#compile-e__1
         _%ctx137765%_
         (gxc#xform-wrap-source _%stx137763%_ _%src-stx137764%_))))
    (define gxc#xform-begin%
      (lambda (_%self137718%_ _%stx137719%_)
        (let* ((_%g137721137731%_
                (lambda (_%g137722137728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137722137728%_))))
               (_%g137720137760%_
                (lambda (_%g137722137734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137722137734%_))
                      (let ((_%e137724137736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137722137734%_))))
                        (let ((_%hd137725137739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137724137736%_)))
                              (_%tl137726137741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137724137736%_))))
                          ((lambda (_%L137744%_)
                             (let ((_%forms137758%_
                                    (map (lambda (_%g137753137755%_)
                                           (gxc#compile-e__1
                                            _%self137718%_
                                            _%g137753137755%_))
                                         _%L137744%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms137758%_)
                                _%stx137719%_)))
                           _%tl137726137741%_)))
                      (_%g137721137731%_ _%g137722137734%_)))))
          (_%g137720137760%_ _%stx137719%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self137672%_ _%stx137673%_)
        (let* ((_%g137675137685%_
                (lambda (_%g137676137682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137676137682%_))))
               (_%g137674137715%_
                (lambda (_%g137676137688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137676137688%_))
                      (let ((_%e137678137690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137676137688%_))))
                        (let ((_%hd137679137693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137678137690%_)))
                              (_%tl137680137695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137678137690%_))))
                          ((lambda (_%L137698%_)
                             (let ((__tmp138974
                                    (lambda ()
                                      (let ((_%forms137713%_
                                             (map (lambda (_%g137708137710%_)
                                                    (gxc#compile-e__1
                                                     _%self137672%_
                                                     _%g137708137710%_))
                                                  _%L137698%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms137713%_)
                                         _%stx137673%_))))
                                   (__tmp138972
                                    (let ((__tmp138973
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp138973 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138974
                                gx#current-expander-phi
                                __tmp138972)))
                           _%tl137680137695%_)))
                      (_%g137675137685%_ _%g137676137688%_)))))
          (_%g137674137715%_ _%stx137673%_))))
    (define gxc#xform-module%
      (lambda (_%self137609%_ _%stx137610%_)
        (let* ((_%g137612137626%_
                (lambda (_%g137613137623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137613137623%_))))
               (_%g137611137669%_
                (lambda (_%g137613137629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137613137629%_))
                      (let ((_%e137616137631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137613137629%_))))
                        (let ((_%hd137617137634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137616137631%_)))
                              (_%tl137618137636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137616137631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137618137636%_))
                              (let ((_%e137619137639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137618137636%_))))
                                (let ((_%hd137620137642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137619137639%_)))
                                      (_%tl137621137644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137619137639%_))))
                                  ((lambda (_%L137647%_ _%L137648%_)
                                     (let* ((_%ctx137661%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137648%_)))
                                            (_%code137663%_
                                             (##structure-ref
                                              _%ctx137661%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code137666%_
                                             (let ((__tmp138975
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self137609%_
                                                       _%code137663%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp138975
                                                gx#current-expander-context
                                                _%ctx137661%_))))
                                       (##structure-set!
                                        _%ctx137661%_
                                        _%code137666%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L137648%_
                                                    (cons _%code137666%_ '())))
                                        _%stx137610%_)))
                                   _%tl137621137644%_
                                   _%hd137620137642%_)))
                              (_%g137612137626%_ _%g137613137629%_))))
                      (_%g137612137626%_ _%g137613137629%_)))))
          (_%g137611137669%_ _%stx137610%_))))
    (define gxc#xform-define-values%
      (lambda (_%self137539%_ _%stx137540%_)
        (let* ((_%g137542137559%_
                (lambda (_%g137543137556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137543137556%_))))
               (_%g137541137606%_
                (lambda (_%g137543137562%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137543137562%_))
                      (let ((_%e137546137564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137543137562%_))))
                        (let ((_%hd137547137567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137546137564%_)))
                              (_%tl137548137569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137546137564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137548137569%_))
                              (let ((_%e137549137572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137548137569%_))))
                                (let ((_%hd137550137575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137549137572%_)))
                                      (_%tl137551137577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137549137572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137551137577%_))
                                      (let ((_%e137552137580%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137551137577%_))))
                                        (let ((_%hd137553137583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137552137580%_)))
                                              (_%tl137554137585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137552137580%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137554137585%_))
                                              ((lambda (_%L137588%_
                                                        _%L137589%_)
                                                 (let ((_%expr137604%_
                                                        (gxc#compile-e__1
                                                         _%self137539%_
                                                         _%L137588%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L137589%_
                                                                (cons _%expr137604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137540%_)))
                                               _%hd137553137583%_
                                               _%hd137550137575%_)
                                              (_%g137542137559%_
                                               _%g137543137562%_))))
                                      (_%g137542137559%_ _%g137543137562%_))))
                              (_%g137542137559%_ _%g137543137562%_))))
                      (_%g137542137559%_ _%g137543137562%_)))))
          (_%g137541137606%_ _%stx137540%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self137468%_ _%stx137469%_)
        (let* ((_%g137471137488%_
                (lambda (_%g137472137485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137472137485%_))))
               (_%g137470137536%_
                (lambda (_%g137472137491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137472137491%_))
                      (let ((_%e137475137493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137472137491%_))))
                        (let ((_%hd137476137496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137475137493%_)))
                              (_%tl137477137498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137475137493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137477137498%_))
                              (let ((_%e137478137501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137477137498%_))))
                                (let ((_%hd137479137504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137478137501%_)))
                                      (_%tl137480137506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137478137501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137480137506%_))
                                      (let ((_%e137481137509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137480137506%_))))
                                        (let ((_%hd137482137512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137481137509%_)))
                                              (_%tl137483137514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137481137509%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137483137514%_))
                                              ((lambda (_%L137517%_
                                                        _%L137518%_)
                                                 (let ((__tmp138978
                                                        (lambda ()
                                                          (let ((_%expr137534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self137468%_ _%L137517%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L137518%_ (cons _%expr137534%_ '())))
                     _%stx137469%_))))
               (__tmp138976
                (let ((__tmp138977
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp138977 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp138978
                                                    gx#current-expander-phi
                                                    __tmp138976)))
                                               _%hd137482137512%_
                                               _%hd137479137504%_)
                                              (_%g137471137488%_
                                               _%g137472137491%_))))
                                      (_%g137471137488%_ _%g137472137491%_))))
                              (_%g137471137488%_ _%g137472137491%_))))
                      (_%g137471137488%_ _%g137472137491%_)))))
          (_%g137470137536%_ _%stx137469%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self137398%_ _%stx137399%_)
        (let* ((_%g137401137418%_
                (lambda (_%g137402137415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137402137415%_))))
               (_%g137400137465%_
                (lambda (_%g137402137421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137402137421%_))
                      (let ((_%e137405137423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137402137421%_))))
                        (let ((_%hd137406137426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137405137423%_)))
                              (_%tl137407137428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137405137423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137407137428%_))
                              (let ((_%e137408137431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137407137428%_))))
                                (let ((_%hd137409137434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137408137431%_)))
                                      (_%tl137410137436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137408137431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137410137436%_))
                                      (let ((_%e137411137439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137410137436%_))))
                                        (let ((_%hd137412137442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137411137439%_)))
                                              (_%tl137413137444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137411137439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137413137444%_))
                                              ((lambda (_%L137447%_
                                                        _%L137448%_)
                                                 (let ((_%expr137463%_
                                                        (gxc#compile-e__1
                                                         _%self137398%_
                                                         _%L137447%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L137448%_
                                                                (cons _%expr137463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx137399%_)))
                                               _%hd137412137442%_
                                               _%hd137409137434%_)
                                              (_%g137401137418%_
                                               _%g137402137421%_))))
                                      (_%g137401137418%_ _%g137402137421%_))))
                              (_%g137401137418%_ _%g137402137421%_))))
                      (_%g137401137418%_ _%g137402137421%_)))))
          (_%g137400137465%_ _%stx137399%_))))
    (define gxc#xform-lambda%
      (lambda (_%self137336%_ _%stx137337%_)
        (let* ((_%g137339137353%_
                (lambda (_%g137340137350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137340137350%_))))
               (_%g137338137395%_
                (lambda (_%g137340137356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137340137356%_))
                      (let ((_%e137343137358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137340137356%_))))
                        (let ((_%hd137344137361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137343137358%_)))
                              (_%tl137345137363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137343137358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137345137363%_))
                              (let ((_%e137346137366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137345137363%_))))
                                (let ((_%hd137347137369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137346137366%_)))
                                      (_%tl137348137371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137346137366%_))))
                                  ((lambda (_%L137374%_ _%L137375%_)
                                     (let ((__tmp138980
                                            (lambda ()
                                              (let ((_%body137393%_
                                                     (map (lambda (_%g137388137390%_)
                                                            (gxc#compile-e__1
                                                             _%self137336%_
                                                             _%g137388137390%_))
                                                          _%L137374%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L137375%_
                                                             _%body137393%_))
                                                 _%stx137337%_))))
                                           (__tmp138979
                                            (gxc#xform-let-locals
                                             _%L137375%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp138980
                                        gxc#current-compile-local-env
                                        __tmp138979)))
                                   _%tl137348137371%_
                                   _%hd137347137369%_)))
                              (_%g137339137353%_ _%g137340137356%_))))
                      (_%g137339137353%_ _%g137340137356%_)))))
          (_%g137338137395%_ _%stx137337%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self137244%_ _%stx137245%_)
        (letrec ((_%clause-e137247%_
                  (lambda (_%clause137288%_)
                    (let* ((_%g137290137301%_
                            (lambda (_%g137291137298%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g137291137298%_))))
                           (_%g137289137333%_
                            (lambda (_%g137291137304%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g137291137304%_))
                                  (let ((_%e137294137306%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g137291137304%_))))
                                    (let ((_%hd137295137309%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137294137306%_)))
                                          (_%tl137296137311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137294137306%_))))
                                      ((lambda (_%L137314%_ _%L137315%_)
                                         (let ((__tmp138982
                                                (lambda ()
                                                  (let ((_%body137331%_
                                                         (map (lambda (_%g137326137328%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self137244%_
                         _%g137326137328%_))
                      _%L137314%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L137315%_
                                                          _%body137331%_))))
                                               (__tmp138981
                                                (gxc#xform-let-locals
                                                 _%L137315%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp138982
                                            gxc#current-compile-local-env
                                            __tmp138981)))
                                       _%tl137296137311%_
                                       _%hd137295137309%_)))
                                  (_%g137290137301%_ _%g137291137304%_)))))
                      (_%g137289137333%_ _%clause137288%_)))))
          (let* ((_%g137249137259%_
                  (lambda (_%g137250137256%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137250137256%_))))
                 (_%g137248137285%_
                  (lambda (_%g137250137262%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137250137262%_))
                        (let ((_%e137252137264%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137250137262%_))))
                          (let ((_%hd137253137267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137252137264%_)))
                                (_%tl137254137269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137252137264%_))))
                            ((lambda (_%L137272%_)
                               (let ((_%clauses137283%_
                                      (map _%clause-e137247%_ _%L137272%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses137283%_)
                                  _%stx137245%_)))
                             _%tl137254137269%_)))
                        (_%g137249137259%_ _%g137250137262%_)))))
            (_%g137248137285%_ _%stx137245%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self136998%_ _%stx136999%_)
        (let* ((_%g137001137034%_
                (lambda (_%g137002137031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137002137031%_))))
               (_%g137000137241%_
                (lambda (_%g137002137037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137002137037%_))
                      (let ((_%e137007137039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137002137037%_))))
                        (let ((_%hd137008137042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137007137039%_)))
                              (_%tl137009137044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137007137039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137009137044%_))
                              (let ((_%e137010137047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137009137044%_))))
                                (let ((_%hd137011137050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137010137047%_)))
                                      (_%tl137012137052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137010137047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd137011137050%_))
                                      (let ((_g138983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd137011137050%_
                                                '0))))
                                        (begin
                                          (let ((_g138984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138983_)
                                                       (##values-length
                                                        _g138983_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138984_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138984_)))
                                          (let ((_%target137013137055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138983_ 0)))
                                                (_%tl137015137057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138983_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137015137057%_))
                                                (letrec ((_%loop137016137060%_
                                                          (lambda (_%hd137014137063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr137020137065%_
                           _%hd137021137067%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd137014137063%_))
                        (let ((_%e137017137070%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd137014137063%_))))
                          (let ((_%lp-hd137018137073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137017137070%_)))
                                (_%lp-tl137019137075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137017137070%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd137018137073%_))
                                (let ((_%e137024137078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd137018137073%_))))
                                  (let ((_%hd137025137081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137024137078%_)))
                                        (_%tl137026137083%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137024137078%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137026137083%_))
                                        (let ((_%e137027137086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137026137083%_))))
                                          (let ((_%hd137028137089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137027137086%_)))
                                                (_%tl137029137091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137027137086%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137029137091%_))
                                                (_%loop137016137060%_
                                                 _%lp-tl137019137075%_
                                                 (cons _%hd137028137089%_
                                                       _%expr137020137065%_)
                                                 (cons _%hd137025137081%_
                                                       _%hd137021137067%_))
                                                (_%g137001137034%_
                                                 _%g137002137037%_))))
                                        (_%g137001137034%_
                                         _%g137002137037%_))))
                                (_%g137001137034%_ _%g137002137037%_))))
                        (let ((_%expr137022137094%_
                               (reverse _%expr137020137065%_))
                              (_%hd137023137096%_
                               (reverse _%hd137021137067%_)))
                          ((lambda (_%L137099%_
                                    _%L137100%_
                                    _%L137101%_
                                    _%L137102%_)
                             (let* ((_%g137121137137%_
                                     (lambda (_%g137122137134%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137122137134%_))))
                                    (_%g137120137227%_
                                     (lambda (_%g137122137140%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g137122137140%_))
                                           (let ((_g138985_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g137122137140%_
                                                     '0))))
                                             (begin
                                               (let ((_g138986_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g138985_)
                                                            (##values-length
                                                             _g138985_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g138986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g138986_)))
                                               (let ((_%target137124137142%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138985_
                                                         0)))
                                                     (_%tl137126137144%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g138985_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl137126137144%_))
                                                     (letrec ((_%loop137127137147%_
                                                               (lambda (_%hd137125137150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr137131137152%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd137125137150%_))
                             (let ((_%e137128137155%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd137125137150%_))))
                               (let ((_%lp-hd137129137158%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137128137155%_)))
                                     (_%lp-tl137130137160%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137128137155%_))))
                                 (_%loop137127137147%_
                                  _%lp-tl137130137160%_
                                  (cons _%lp-hd137129137158%_
                                        _%expr137131137152%_))))
                             (let ((_%expr137132137163%_
                                    (reverse _%expr137131137152%_)))
                               ((lambda (_%L137166%_)
                                  (let ((__tmp138989
                                         (lambda ()
                                           (let* ((_%g137180137187%_
                                                   (lambda (_%g137181137184%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g137181137184%_))))
                                                  (_%g137179137213%_
                                                   (lambda (_%g137181137190%_)
                                                     ((lambda (_%L137192%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L137102%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L137166%_
                                  _%L137101%_))
                               (let ((__tmp138990
                                      (lambda (_%g137202137206%_
                                               _%g137203137208%_
                                               _%g137204137210%_)
                                        (cons (cons _%g137203137208%_
                                                    (cons _%g137202137206%_
                                                          '()))
                                              _%g137204137210%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138990
                                  '()
                                  _%L137166%_
                                  _%L137101%_)))
                             _%L137192%_))
                 _%stx136999%_))
              _%g137181137190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g137179137213%_
                                              (map (lambda (_%g137215137217%_)
                                                     (gxc#compile-e__1
                                                      _%self136998%_
                                                      _%g137215137217%_))
                                                   _%L137099%_)))))
                                        (__tmp138987
                                         (gxc#xform-let-locals
                                          (let ((__tmp138988
                                                 (lambda (_%g137219137222%_
                                                          _%g137220137224%_)
                                                   (cons _%g137219137222%_
                                                         _%g137220137224%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp138988
                                             '()
                                             _%L137101%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp138989
                                     gxc#current-compile-local-env
                                     __tmp138987)))
                                _%expr137132137163%_))))))
               (_%loop137127137147%_ _%target137124137142%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137121137137%_
                                                      _%g137122137140%_)))))
                                           (_%g137121137137%_
                                            _%g137122137140%_)))))
                               (_%g137120137227%_
                                (map (lambda (_%g137229137231%_)
                                       (gxc#compile-e__1
                                        _%self136998%_
                                        _%g137229137231%_))
                                     (let ((__tmp138991
                                            (lambda (_%g137233137236%_
                                                     _%g137234137238%_)
                                              (cons _%g137233137236%_
                                                    _%g137234137238%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138991
                                        '()
                                        _%L137100%_))))))
                           _%tl137012137052%_
                           _%expr137022137094%_
                           _%hd137023137096%_
                           _%hd137008137042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop137016137060%_
                                                   _%target137013137055%_
                                                   '()
                                                   '()))
                                                (_%g137001137034%_
                                                 _%g137002137037%_)))))
                                      (_%g137001137034%_ _%g137002137037%_))))
                              (_%g137001137034%_ _%g137002137037%_))))
                      (_%g137001137034%_ _%g137002137037%_)))))
          (_%g137000137241%_ _%stx136999%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self136752%_ _%stx136753%_)
        (let* ((_%g136755136788%_
                (lambda (_%g136756136785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136756136785%_))))
               (_%g136754136995%_
                (lambda (_%g136756136791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136756136791%_))
                      (let ((_%e136761136793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136756136791%_))))
                        (let ((_%hd136762136796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136761136793%_)))
                              (_%tl136763136798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136761136793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136763136798%_))
                              (let ((_%e136764136801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136763136798%_))))
                                (let ((_%hd136765136804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136764136801%_)))
                                      (_%tl136766136806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136764136801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136765136804%_))
                                      (let ((_g138992_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136765136804%_
                                                '0))))
                                        (begin
                                          (let ((_g138993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g138992_)
                                                       (##values-length
                                                        _g138992_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g138993_ 2)))
                                                (error "Context expects 2 values"
                                                       _g138993_)))
                                          (let ((_%target136767136809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g138992_ 0)))
                                                (_%tl136769136811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g138992_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136769136811%_))
                                                (letrec ((_%loop136770136814%_
                                                          (lambda (_%hd136768136817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136774136819%_
                           _%hd136775136821%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136768136817%_))
                        (let ((_%e136771136824%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136768136817%_))))
                          (let ((_%lp-hd136772136827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136771136824%_)))
                                (_%lp-tl136773136829%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136771136824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136772136827%_))
                                (let ((_%e136778136832%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136772136827%_))))
                                  (let ((_%hd136779136835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136778136832%_)))
                                        (_%tl136780136837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136778136832%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136780136837%_))
                                        (let ((_%e136781136840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136780136837%_))))
                                          (let ((_%hd136782136843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136781136840%_)))
                                                (_%tl136783136845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136781136840%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136783136845%_))
                                                (_%loop136770136814%_
                                                 _%lp-tl136773136829%_
                                                 (cons _%hd136782136843%_
                                                       _%expr136774136819%_)
                                                 (cons _%hd136779136835%_
                                                       _%hd136775136821%_))
                                                (_%g136755136788%_
                                                 _%g136756136791%_))))
                                        (_%g136755136788%_
                                         _%g136756136791%_))))
                                (_%g136755136788%_ _%g136756136791%_))))
                        (let ((_%expr136776136848%_
                               (reverse _%expr136774136819%_))
                              (_%hd136777136850%_
                               (reverse _%hd136775136821%_)))
                          ((lambda (_%L136853%_
                                    _%L136854%_
                                    _%L136855%_
                                    _%L136856%_)
                             (let ((__tmp138996
                                    (lambda ()
                                      (let* ((_%g136876136892%_
                                              (lambda (_%g136877136889%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g136877136889%_))))
                                             (_%g136875136974%_
                                              (lambda (_%g136877136895%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g136877136895%_))
                                                    (let ((_g138997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g136877136895%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g138998_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g138997_)
                             (##values-length _g138997_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g138998_ 2)))
                      (error "Context expects 2 values" _g138998_)))
                (let ((_%target136879136897%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138997_ 0)))
                      (_%tl136881136899%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g138997_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136881136899%_))
                      (letrec ((_%loop136882136902%_
                                (lambda (_%hd136880136905%_
                                         _%expr136886136907%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd136880136905%_))
                                      (let ((_%e136883136910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd136880136905%_))))
                                        (let ((_%lp-hd136884136913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136883136910%_)))
                                              (_%lp-tl136885136915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136883136910%_))))
                                          (_%loop136882136902%_
                                           _%lp-tl136885136915%_
                                           (cons _%lp-hd136884136913%_
                                                 _%expr136886136907%_))))
                                      (let ((_%expr136887136918%_
                                             (reverse _%expr136886136907%_)))
                                        ((lambda (_%L136921%_)
                                           (let* ((_%g136935136942%_
                                                   (lambda (_%g136936136939%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g136936136939%_))))
                                                  (_%g136934136967%_
                                                   (lambda (_%g136936136945%_)
                                                     ((lambda (_%L136947%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L136856%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L136921%_
                                  _%L136855%_))
                               (let ((__tmp138999
                                      (lambda (_%g136956136960%_
                                               _%g136957136962%_
                                               _%g136958136964%_)
                                        (cons (cons _%g136957136962%_
                                                    (cons _%g136956136960%_
                                                          '()))
                                              _%g136958136964%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp138999
                                  '()
                                  _%L136921%_
                                  _%L136855%_)))
                             _%L136947%_))
                 _%stx136753%_))
              _%g136936136945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g136934136967%_
                                              (map (lambda (_%g136969136971%_)
                                                     (gxc#compile-e__1
                                                      _%self136752%_
                                                      _%g136969136971%_))
                                                   _%L136853%_))))
                                         _%expr136887136918%_))))))
                        (_%loop136882136902%_ _%target136879136897%_ '()))
                      (_%g136876136892%_ _%g136877136895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136876136892%_
                                                     _%g136877136895%_)))))
                                        (_%g136875136974%_
                                         (map (lambda (_%g136976136978%_)
                                                (gxc#compile-e__1
                                                 _%self136752%_
                                                 _%g136976136978%_))
                                              (let ((__tmp139000
                                                     (lambda (_%g136980136983%_
                                                              _%g136981136985%_)
                                                       (cons _%g136980136983%_
                                                             _%g136981136985%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp139000
                                                 '()
                                                 _%L136854%_)))))))
                                   (__tmp138994
                                    (gxc#xform-let-locals
                                     (let ((__tmp138995
                                            (lambda (_%g136987136990%_
                                                     _%g136988136992%_)
                                              (cons _%g136987136990%_
                                                    _%g136988136992%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp138995
                                        '()
                                        _%L136855%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp138996
                                gxc#current-compile-local-env
                                __tmp138994)))
                           _%tl136766136806%_
                           _%expr136776136848%_
                           _%hd136777136850%_
                           _%hd136762136796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136770136814%_
                                                   _%target136767136809%_
                                                   '()
                                                   '()))
                                                (_%g136755136788%_
                                                 _%g136756136791%_)))))
                                      (_%g136755136788%_ _%g136756136791%_))))
                              (_%g136755136788%_ _%g136756136791%_))))
                      (_%g136755136788%_ _%g136756136791%_)))))
          (_%g136754136995%_ _%stx136753%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings136619%_)
        (letrec ((_%flatten136621%_
                  (lambda (_%maybe-lst136679%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst136679%_))
                        (cons _%maybe-lst136679%_ '())
                        (let _%loop136681%_ ((_%rest136683%_
                                              _%maybe-lst136679%_)
                                             (_%result136684%_ '()))
                          (let* ((_%__stx138888138889%_ _%rest136683%_)
                                 (_%g136688136700%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx138888138889%_)))))
                            (let ((_%__kont138890138891%_
                                   (lambda (_%L136738%_ _%L136739%_)
                                     (_%loop136681%_
                                      _%L136738%_
                                      (let ((__tmp139001
                                             (_%flatten136621%_ _%L136739%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result136684%_
                                         __tmp139001)))))
                                  (_%__kont138892138893%_
                                   (lambda (_%L136712%_)
                                     (cons _%L136712%_ _%result136684%_)))
                                  (_%__kont138894138895%_
                                   (lambda () _%result136684%_)))
                              (let ((_%g136686136725%_
                                     (lambda ()
                                       (let ((_%L136712%_
                                              _%__stx138888138889%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L136712%_))
                                             (_%__kont138892138893%_
                                              _%L136712%_)
                                             (_%__kont138894138895%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx138888138889%_))
                                    (let ((_%e136692136730%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx138888138889%_))))
                                      (let ((_%tl136694136735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136692136730%_)))
                                            (_%hd136693136733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136692136730%_))))
                                        (_%__kont138890138891%_
                                         _%tl136694136735%_
                                         _%hd136693136733%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g136686136725%_)))))))))))
          (let _%loop136623%_ ((_%rest136625%_
                                (_%flatten136621%_ _%bindings136619%_))
                               (_%locals136626%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest136627136638%_ _%rest136625%_)
                   (_%E136631136642%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest136627136638%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K136634136667%_
                     (lambda (_%rest136664%_ _%id136665%_)
                       (_%loop136623%_
                        _%rest136664%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id136665%_))
                              _%locals136626%_))))
                    (_%K136633136656%_
                     (lambda (_%id136654%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id136654%_))
                             _%locals136626%_)))
                    (_%K136632136647%_ (lambda () _%locals136626%_)))
                (let ((_%try-match136629136661%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest136627136638%_))
                             (let ((_%id136659%_ _%rest136627136638%_))
                               (_%K136633136656%_ _%id136659%_))
                             (_%K136632136647%_)))))
                  (if (pair? _%rest136627136638%_)
                      (let ((_%tl136636136672%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest136627136638%_)))
                            (_%hd136635136670%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest136627136638%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd136635136670%_))
                            (let ((_%id136675%_ _%hd136635136670%_)
                                  (_%rest136677%_ _%tl136636136672%_))
                              (_%K136634136667%_ _%rest136677%_ _%id136675%_))
                            (_%K136632136647%_)))
                      (_%try-match136629136661%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self136571%_ _%stx136572%_)
        (let* ((_%g136574136585%_
                (lambda (_%g136575136582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136575136582%_))))
               (_%g136573136616%_
                (lambda (_%g136575136588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136575136588%_))
                      (let ((_%e136578136590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136575136588%_))))
                        (let ((_%hd136579136593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136578136590%_)))
                              (_%tl136580136595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136578136590%_))))
                          ((lambda (_%L136598%_ _%L136599%_)
                             (let ((_%rands136614%_
                                    (map (lambda (_%g136609136611%_)
                                           (gxc#compile-e__1
                                            _%self136571%_
                                            _%g136609136611%_))
                                         _%L136598%_)))
                               (gxc#xform-wrap-source
                                (cons _%L136599%_ _%rands136614%_)
                                _%stx136572%_)))
                           _%tl136580136595%_
                           _%hd136579136593%_)))
                      (_%g136574136585%_ _%g136575136588%_)))))
          (_%g136573136616%_ _%stx136572%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self136501%_ _%stx136502%_)
        (let* ((_%g136504136521%_
                (lambda (_%g136505136518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136505136518%_))))
               (_%g136503136568%_
                (lambda (_%g136505136524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136505136524%_))
                      (let ((_%e136508136526%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136505136524%_))))
                        (let ((_%hd136509136529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136508136526%_)))
                              (_%tl136510136531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136508136526%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136510136531%_))
                              (let ((_%e136511136534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136510136531%_))))
                                (let ((_%hd136512136537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136511136534%_)))
                                      (_%tl136513136539%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136511136534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136513136539%_))
                                      (let ((_%e136514136542%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136513136539%_))))
                                        (let ((_%hd136515136545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136514136542%_)))
                                              (_%tl136516136547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136514136542%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136516136547%_))
                                              ((lambda (_%L136550%_
                                                        _%L136551%_)
                                                 (let ((_%expr136566%_
                                                        (gxc#compile-e__1
                                                         _%self136501%_
                                                         _%L136550%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L136551%_
                                                                (cons _%expr136566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136502%_)))
                                               _%hd136515136545%_
                                               _%hd136512136537%_)
                                              (_%g136504136521%_
                                               _%g136505136524%_))))
                                      (_%g136504136521%_ _%g136505136524%_))))
                              (_%g136504136521%_ _%g136505136524%_))))
                      (_%g136504136521%_ _%g136505136524%_)))))
          (_%g136503136568%_ _%stx136502%_))))))
